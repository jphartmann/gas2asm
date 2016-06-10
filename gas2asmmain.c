/* Embedded in the lexer                                             */
/*                                John Hartmann 28 Jan 2015 21:08:40 */

/*********************************************************************/
/* The compiler generates code in four types of sections:            */
/*                                                                   */
/* .text    (1) The executable code and read only data.  We generate */
/*          this into an RSECT.                                      */
/*                                                                   */
/* .data    (2) Initialised data.  Aka writable static.  We assemble */
/*          an  instance  of this for initialisation.  These go into */
/*          PC (private code) so we don't have to bother with names. */
/*          We  also  generate an external dummy section of the same */
/*          length for allocation.                                   */
/*                                                                   */
/* .comm    (3) External data that is not initialised in this module */
/*          (but  could  in  some  other  module).  This generates a */
/*          global  common.   This also gets mapped into an external */
/*          dummy section.                                           */
/*                                                                   */
/* .comm    (4)  Static uninitialised data.  Also defined as .local. */
/*          We map this into a an external dsect that is not shared. */
/*          This  may  be a challenge, but we can always call it the */
/*          same as the RSECT (the name spaces are disjoint).        */
/*                                                                   */
/* The  constants  module  also  has a CXD instruction to tell stack */
/* initialisation how much to allocate for the writable storage.  It */
/* thenmoves  the  constants  and  somehow miracuously relocates any */
/* address  constants  (they will be to the RSECTS only).  This will */
/* be a challenge.                                                   */
/*                                                                   */
/* Anyhow,  the  writable  base  lives  in the offset 4 of the stack */
/* frame  (which  is  reserved  for  the compiler).  We have to hack */
/* prologues  to  copy it on allocation (and alloca).  This may also */
/* be a challenge.                                                   */
/*                                                                   */
/* The  upshot  is  that  we  need  to  be rather inquisitive of the */
/* program; build a real symbol table and code generation delayed to */
/* the end of input.                                                 */
/*                                                                   */
/* A  challenge will be to determine which external constants are to */
/* RSECTs;  they will be function pointers, but one could be passed. */
/* This  is not a problem since the only thing that can be addressed */
/* directly  is  in an RSECT.  Relocation in the initialiser is fine */
/* to the RSECT.                                                     */
/*                                                                   */
/* Change activity:                                                  */
/*28 Jan 2015  New module.                                           */
/*********************************************************************/


/* Forward declarations in gas2asm.l                                 */

int
main(int argc, char ** argv)
{
   int rc;
   yy_flex_debug = 0;

   while (1 < argc)
   {
      if (0 == strcmp(argv[1], "-j") || 0 == strcmp(argv[1], "--jhlasm"))
         usejhlasm = 1;
      else if (0 == strcmp(argv[1], "-f") || 0 == strcmp(argv[1], "--flexdebug"))
         yy_flex_debug = 1;
      else fprintf(stderr, "gas2asm ignoring '%s'.  Input is read from standard input.\n", argv[1]);

      argc--;
      argv++;
   }

   rc = yylex();
   if (rc) fprintf(stderr, "RC=%d\n", rc);
   return rc;
}

static void
dochar(int c)
{
   if (20<slen++)
   {
      printf("'\n dc x'");
      slen=1;
   }
   printf("%02x", c);
}

static void
dohash(void)
{
   int i;

   for (i=0; yyleng>i; i++)
      if ('.' == yytext[i]) yytext[i]='#';
}
