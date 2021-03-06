/* Convert gas 390 assembler to hlasm compatible stuff               */
/*                                 John Hartmann 8 Jun 2011 11:05:47 */

/*********************************************************************/
/* This  flexer converts a 390 assembler file from gas to hlasm with */
/* the intent of generating oldfashioned object modules.             */
/*                                                                   */
/* *   Remove debugger information.                                  */
/*                                                                   */
/* The  gas handling of symbols is difficult to emulate.  We need to */
/* maintain  a symbol table to determine whether a long refers to an */
/* external symbol or not.                                           */
/*                                                                   */
/* Martin writes for j* instructions:                                */
/*                                                                   */
/* *  expands  to  "o" (0x01), "h" (0x02), "p" (0x02), "nle" (0x03), */
/* "l"  (0x04),  "m" (0x04), "nhe" (0x05), "lh" (0x06), "ne" (0x07), */
/* "nz"  (0x07),  "e" (0x08), "z" (0x08), "nlh" (0x09), "he" (0x0a), */
/* "nl"  (0x0b),  "nm" (0x0b), "le" (0x0c), "nh" (0x0d), "np" (0x0d) */
/* and "no" (0x0e).                                                  */
/*                                                                   */
/* Local  symbols: Must still be unique within an assembly, but they */
/* are not exposed to the rest of the world.                         */
/*                                                                   */
/* Global offset table (GOT):                                        */
/*                                                                   */
/* As  of  version  5,  gcc  generates what it calls a global offset */
/* table  for  position independent code.  It also refers to this as */
/* the program linkage table.                                        */
/*                                                                   */
/* This   is  mostly  a  misnomer  since  the  program  still  needs */
/* modification at load time.  We push it to RLDs.                   */
/*                                                                   */
/* However,  note  that  each  function has its own GOT/PLT, so that */
/* fprintf@PLTOFF  may be different offsets.  So whe need to qualify */
/* this by the function (or the GOT rather).                         */
/*                                                                   */
/* To  do  this  we need to know which function we are in, which was */
/* only known to the @type macro.  We need to decode that some more. */
/*                                                                   */
/* Change activity:                                                  */
/*15 Jun 2011  +++ Global symbols are not always defined.            */
/* 8 Jun 2011  New scanner.                                          */
/*********************************************************************/

/*********************************************************************/
/* Note  that  some  of  the  processing  is  relegated  to  macros, */
/* originally a set implementing the assembler directives (much like */
/* the  original  AT&T  C for OS and CMS).  These all begin @.  Over */
/* time,  processing  have  been  moved  inboard  as  more cntext or */
/* whatnot was required.                                             */
/*                                                                   */
/* Unused macros are: $ptr.macro                                     */
/*********************************************************************/

%{

#include <stdio.h>
#include <search.h>

struct varent;

enum vtype
{
   defined=1, referenced=2, global=4,
};

static enum strtype
{
   str_string,
   str_ascii,
} strtype;

enum sectiontype
{
   sect_text,                         /* Code                        */
   sect_data,                         /* Initialised data            */
   sect_com,                          /* Uninitialised object        */
   /* What should have been a .bss is implemented as .local .comm    */
};

static int lineno=1;
static int slen;
static char algs[]="??h?f???d";
#define NUMF 32
static char * files[NUMF];
static char ** sources;               /* File 1                      */
static int lines;                     /* Number of source lines      */
static int fileix;
static int locnos[3];
static int locix;
static char * filename;
static int usejhlasm;           /* -j not to hash up long externals. */
static int nodotloc;                 /* -l; do not issue @loc macros */

/* Forward declarations:                                             */
static void dochar(int c);
static void dohash(void);
static int tcomp(const void * pl, const void * pr);
static void defsymbol(void);
static void refsymbol(void);
static void procsyms(void);
static void donode(const void * p, const VISIT which, const int depth);
static void lclsymbol(void);
static void globsymbol(void);
static void loadfile(void);
static void ule(void);
static void sle(void);
static void readyveh(const enum vtype flag);
static void hashname(char xname [9], char * name);
static void showmap(const char sname[9], const char * name, const char * what);
static void dounsigned(void);
/* End of forward declarations.                                      */
unsigned int
hashlittle( const void *key, size_t length, unsigned int initval);

%}

%option never-interactive caseless nounput noyywrap
%option warn batch nodefault noinput debug

/* 1     2     3      4      5     6    7       8     9     10        */
%x xfile xskip xmacop xasmop xmach xstr xstring xlong xdefs xglob

/* 11    12     13   14     15   16   17    18    19   20            */
%x xquad xfiled xloc xdebug xule xsle xcomm xun2  xprs

B                             [ ]+|[\t]
S                             [ \t\r]+
SB                            ^{S}
OPCODE                        [[:alpha:]_][[:alnum:]_]*
IDENT                         [[:alpha:]_][[:alnum:]._]*
UINT                          [[:digit:]]+
INT                           [-+]?[[:digit:]]+

%%

<xdebug,INITIAL>{
{SB}".section"{S}".debug_"    BEGIN(xdebug);
^".text"                      printf(" @%s\n", yytext+1); BEGIN(INITIAL);
}

<INITIAL>{
^"#"[^\n]*                    printf("* %s\n", yytext+1);
"#"[^\n]*                     printf(" %s\n", yytext+1);
   /* Maint file name                                                */
{SB}".file"{S}[""]            BEGIN(xfile);
   /* File name for dwarf.                                           */
{SB}".file"{S}/[[:digit:]]    BEGIN(xfiled);
{SB}[.]                       BEGIN(xasmop);
   /* .data  tells  as to assemble the following statements onto the */
   /* end  of  the  data subsection numbered subsection (which is an */
   /* absolute expression). If subsection is omitted, it defaults to */
   /* zero.                                                          */
^".data"                      printf("   @data , \n");
   /* This directive switches to the .bss section.                   */
^".bss"                       printf("   @bss , \n");
   /* A label.                                                       */
^[.]?{IDENT}+":"              {
                                 yytext[yyleng - 1] = 0; /* Remove colon */
                                 dohash();
                                 defsymbol();
                                 printf("%s equ *\n", yytext);
                              }
^".globl"{S}                  BEGIN(xglob);
   /* These  guys  are  not  the  long  relative  ops.   Also, avoid */
   /* branching on cc3.                                              */
^{B}bher{B}                   printf("   bcr   10,"); BEGIN(xmach);
^{B}bler{B}                   printf("   bcr   12,"); BEGIN(xmach);

^{B}jhe{B}                    printf("   brc   10,"); BEGIN(xmach);
^{B}jle{B}                    printf("   brc   12,"); BEGIN(xmach);
   /* This guy is used after SLRs to branch on not zero              */
^{B}jnhe{B}                   printf("   jc    05,"); BEGIN(xmach);
^{B}jnle{B}                   printf("   jc    03,"); BEGIN(xmach);
   /* Fall through to general opcode                                 */
^{B}{OPCODE}{B}               printf("   %.*s  ", yyleng-2, yytext+1); BEGIN(xmach);
}

<xdebug>{
{SB}".section"{S}             printf(" @section "); BEGIN(xmacop);
[^ \t\n]*                     ;
}

    /* .file <number> <name>                                         */
<xfiled>{
[[:digit:]]+                  {
                                 fileix = atol(yytext);
                                 if (NUMF <= fileix)
                                 {
                                    fprintf(stderr, "file %d requested\n", fileix);
                                    BEGIN(xskip);
                                 }
                              }
["][^"\n]+                    {
                                 printf(" @fileix %d,%s\n", fileix, yytext+1);
                                 files[fileix] = strdup(yytext+1);
                                 if (1==fileix) loadfile();
                              }
[""]                          BEGIN(INITIAL);
}

<xglob>{
{IDENT}/\n                    globsymbol(); BEGIN(INITIAL);
}

   /******************************************************************/
   /* gas directives.  We have seen a dot (.) so far                 */
   /******************************************************************/

<xasmop>{
"ident"                       |
"hidden"                      |
"cfi"                         BEGIN(xskip);

"type"                        |
"zero"                        |
"section"                     printf(" @%-7s ", yytext); BEGIN(xmacop);
   /* string is null terminated; ascii is not                        */
("string"){S}[""]             strtype = str_string; printf(" dc x'"); slen=0; BEGIN(xstring);
("ascii"){S}[""]              strtype = str_ascii ; printf(" dc x'"); slen=0; BEGIN(xstring);
"align"{S}[248]               {
                                 printf(" dc 0%c\n", algs[0xf & yytext[yyleng-1]]);
                                 BEGIN(INITIAL);
                              }
"byte"{S}                     {
                                 printf(" dc al1(");
                                 BEGIN(xprs);
                              }
   /* Negative relocatable(?) Y values attract ASMA072               */
"word"{S}                     |
"2byte"{S}                    |
"short"{S}                    {
                                 printf(" dc y(");
                                 BEGIN(xprs);
                              }

   /* There  are  some constants we need to intercept, notably those */
   /* related  to  the  global  offset table.  We need to find those */
   /* here before delving into general expressions.                  */


   /* Other fullword constants in general:                           */

"long"{S}                     BEGIN(xlong);        /* Decode further */
"4byte"{S}                    {
                                 printf(" dc a(");
                                 BEGIN(xprs);
                              }
"comm"                        BEGIN(xcomm);
"local"                       printf(" @%-7s ", yytext); BEGIN(xdefs);
"size"                        printf(" @%-7s ", yytext); BEGIN(xmach);
"quad"{S}                     BEGIN(xquad);
"loc"                         BEGIN(xloc);
"uleb128"                     BEGIN(xule);
"sleb128"                     BEGIN(xsle);
}

   /******************************************************************/
   /* .long 4-byte address constant.                                 */
   /*                                                                */
   /* To process special constants we assume: (a) only one operand   */
   /*                                                                */
   /* gas  assumes that it can generate an unsigned address, that is */
   /* up  to  4G,  but  HLASM  does  not  support this so we have to */
   /* convert the long to hex.                                       */
   /******************************************************************/

<xlong>{
   /* .long _GLOBAL_OFFSET_TABLE_-.L3                                */

"_GLOBAL_OFFSET_TABLE_-"[.]{IDENT} {
                                 char * hyp = strchr(yytext, '-');

                                 dohash();
                                 printf(" @gotorg %s\n", hyp + 1);
                                 BEGIN(INITIAL);
                              }
   /* .long environ@GOT                                              */
   /* .long .LC6@GOTOFF                                              */
   /* .long .LC12@GOTOFF+7                                           */
   /* .long fprintf@PLTOFF                                           */

[.]?{IDENT}/[@]               {
                                 dohash();
                                 refsymbol();
                                 printf(" @gotref %s", yytext);
                              }

[@][[:upper:]]+([+][[:digit:]]+)? {
                                 char * plus = strchr(yytext, '+');
                                 int atlen = plus ? plus - (yytext) : yyleng;

                                 printf(",%.*s", atlen, yytext);
                                 if (plus) printf(",%s", plus);
                                 printf("\n");
                                 BEGIN(INITIAL);
                              }
   /* .long in general                                               */
.                             {
                                 yyless(0);
                                 printf(" dc a(");
                                 BEGIN(xprs);
                              }
}

   /******************************************************************/
   /* .loc                                                           */
   /******************************************************************/

<xloc>{
[[:digit:]]+                  {
                                 if (nodotloc) break; /* Don't want it */
                                 locnos[locix++] = atol(yytext);
                                 if (3 > locix) break; /* Bad source */
                                 locix = 0;
                                 if (NUMF <= locnos[0]) break;
                                 printf(" @loc  %d,%d,%d\n",
                                    locnos[0], locnos[1], locnos[2]);
                                 if (!sources || locnos[1] > lines) break;
                                 printf("* %s\n", sources[locnos[1]-1]);
                              }
[^  \t\r\n[:digit:]]          BEGIN(xskip);
[\n]                          lineno++; BEGIN(INITIAL);
}

<xquad>{
0x[[:xdigit:]]+               printf(" dc xl16'%s'\n", yytext+2); BEGIN(INITIAL);
}

<xcomm>{
{IDENT}                       {
                                 dohash();
                                 if (usejhlasm || yyleng <= 8) printf(" @comm  %s", yytext);
                                 else
                                 {
                                    char nm[9];

                                    hashname(nm, yytext);
                                    showmap(nm, yytext, "(com)");
                                    printf("%s equ %s\n @comm  %s", yytext, nm, nm);
                                 }
                                 lclsymbol();
                              }
}

<xdefs>{
{IDENT}                       dohash(); printf("%s", yytext); lclsymbol();
}

<xcomm,xdefs>{
,                             printf(","); BEGIN(xmacop);
}

   /* Expression list in an A-type DC instruction                    */
<xprs>{
\n                            printf(")\n"); lineno++; BEGIN(INITIAL);
[()-]                         printf("%c", yytext[0]);
[.]{IDENT}/@                  dohash(); printf("%s-", yytext);
[.]{IDENT}                    dohash(); printf("%s", yytext);
{IDENT}/@                     refsymbol(); printf("%s-", yytext);
{IDENT}                       refsymbol(); printf("%s", yytext);
@{IDENT}                      printf("%s", yytext);
"0x"[[:xdigit:]]+             printf("x'%s%s'", (1 & yyleng ? "0" : ""), yytext + 2);
   /* HLASM  cannot  generate  a()  this  value  because the integer */
   /* overflows before making negative.                              */
"-2147483648"                 printf("x'80000000'");
   /* To  support  unsigned  integers,  we  need  to play games with */
   /* numbers in the range 2G .. 4G-1.  They have to be assembled as */
   /* hex too.                                                       */
{UINT}                        dounsigned();
{INT}                         printf("%s", yytext);
   /* What are these?  They'll get you errors                        */
"__fixdfsi"/\n                printf(" dc v(__fxdfsi)\n"); BEGIN(INITIAL);
"__floatsidf"/\n              printf(" dc v(__flsidf)\n"); BEGIN(INITIAL);
}

   /* Machine  instruction.   Use only float registers 0-3 and remap */
   /* them to the original fp registers.                             */

<xmach>{
"%"[arf]                      ;       /* register specifier          */
   /* At  some  point we were trying to limit fp registers to 4, but */
   /* that is just not possible                                      */
   /* f[[:digit:]]+                 printf("%s", yytext+1); */ /* fp register */
"."?{IDENT}                   dohash(); printf("%s", yytext);
[[:digit:]]+                  |
,                             |
[-/+*()]+                     printf("%s", yytext);
"#"[^\n]*                     printf(" %s", yytext+1);
"."                           printf("*");
}

   /* Macro operand in general                                       */

<xmacop>{
[""]                          BEGIN(xstr);
,                             printf(",");
[^"" ''\t\n,]+                dohash(); printf("%s", yytext);
}

   /* Ascii string                                                   */

<xstr>{
[^""''\\\n]+[""]              printf("'%.*s'", yyleng-1, yytext); BEGIN(xmacop);
[^""''\\\n]+                  printf("'%s',", yytext);
[\\][""]                      printf("'\"',");
"\n"/\n                       printf("n");
[\\][tnr]                     printf("%c,", yytext[1]);
[""]                          BEGIN(xmacop);
}

  /* String converted to cp 1047                                     */

<xstring>{
[\\][0-3][0-7]{2}             {
                                 dochar(((0x3 & yytext[1])<<6)
                                    | ((0x7 & yytext[2])<<3)
                                    | (0x7 & yytext[3]));
                              }
[^""\\]                       dochar(0xff & yytext[0]);
[\\][""\\]                    dochar(0xff & yytext[1]);
[\\]b                         dochar('\b');
[\\]f                         dochar('\f');
[\\]n                         dochar('\n');
[\\]r                         dochar('\r');
[\\]t                         dochar('\t');
[""]                          {
                                 printf("%s'", str_string == strtype ? "00" : "");
                                 BEGIN(xmacop);
                              }
}

<xule>{
0x[[:xdigit:]]+               ule(); BEGIN(INITIAL);
}

<xsle>{
-[[:digit:]]+                 sle(); BEGIN(INITIAL);
}

<xmacop,xmach,xdefs>{
[\n]                          printf("\n"); lineno++; BEGIN(INITIAL);
}

<xfile>{
[^\n.""]+                     {
                                 printf(" @file    %s\n", yytext);
                                 filename = strdup(yytext);
                                 BEGIN(xskip);
                              }
}

<xskip>{
[^\n]*                        BEGIN(INITIAL);
}

<*>{
\n                            lineno++;
{S}                           ;
.                             {
                                 char * t;

                                 yytext[1] = yy_hold_char;
                                 t = strchr(yytext, '\n');
                                 if (t) *t = 0;
                                 fprintf(stderr, "flex is jammed on input line %d state %d.  Unmatched '%s'\n",
                                    lineno, YY_START, yytext);
                                 return 1;
                              }
}

<<EOF>>                       procsyms(); printf(" @end\n end\n"); return 0;

%%

/* Have this for the default tab stops.                              */
#include "gas2asmmain.c"

#include "symtab.c"
#include "loadfile.c"
#include "le128.c"
#define SELF_TEST 0
#include "lookup3.c"

