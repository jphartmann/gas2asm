/* Maintain symbol table                                             */
/*                                John Hartmann 11 Jun 2011 08:32:06 */

/*********************************************************************/
/* We need to know which symbols are defined in the module so we can */
/* refer to them as local symbols.                                   */
/*                                                                   */
/* We also need to resolve duplicate symbols when they are truncated */
/* to  8  characters.   So  we  have a separate table of the first 8 */
/* characters  of  long  symbols  that  point to tthe actual symbol. */
/* That  symbol  gets  truncated  in EXTRN and ENTRY statements; the */
/* rest of the synonyms are replaced by a hash.                      */
/*                                                                   */
/* Change activity:                                                  */
/* 4 Jul 2011  +++ Also do debug info.                               */
/*11 Jun 2011  New module.                                           */
/*********************************************************************/


/* Forward declarations in gas2asm.l                                 */

#include <string.h>

struct varent
{
   char * name;
   char extname[9];                   /* Name to use in ENTRY/EXTRN  */
   enum vtype flag;
};

struct node
{
   struct varent * ve;
   struct node * left;
   struct node * right;
   int red;
};

static void * root;
static struct varent * veh;

static void
defsymbol(void)
{
   readyveh(defined);                 /* Remove colon                */
}

static void
lclsymbol(void)
{
   readyveh(defined);                 /* Remove colon                */
}

static void
globsymbol(void)
{
   readyveh(global);
   BEGIN(INITIAL);
}

static void
refsymbol(void)
{
   readyveh(referenced);
}

static void
procsyms(void)
{
   twalk(root, &donode);
}

static void
donode(const void * p, const VISIT which, const int depth)
{
   const struct node * n = p;
   const struct varent * ve = n->ve;
   int len;

   if (postorder!=which && leaf!=which) return;
   if (defined & ve->flag && 0==(global & ve->flag)) return;
   if (global == ve->flag) return;
   if (usejhlasm)
   {
      printf(" %s %s\n", (defined & ve->flag ? "entry" : "extrn"), ve->name);
   }
   else
   {
      len = strlen(ve->name);
      if (8<len)
      {
         if (defined & ve->flag) printf("%.8s equ %s\n", ve->extname, ve->name);
         else printf("%s equ %.8s\n", ve->name, ve->extname);
         showmap(ve->extname, ve->name, (defined & ve->flag ? "(entry)" : "(extrn)"));
      }
      printf(" %s %.8s\n", (defined & ve->flag ? "entry" : "extrn"), ve->extname);
   }
}

static void
showmap(const char sname[9], const char * name, const char * what)
{
   fprintf(stderr, "%-8s maps %s\n", sname, name);
   printf(" punch '*map %s %s %s in %s'\n", sname, name, what, filename);
}

/*********************************************************************/
/* Ready the varent for search.  The name pointer is to yytext until */
/* it is determined that a new entry is allocated, in which case the */
/* name is hardened.                                                 */
/*********************************************************************/

static void
readyveh(const enum vtype flag)
{
   struct varent * ve;
   struct node * np;

   dohash();                          /* . -> #                      */
   if (NULL==veh) veh=calloc(1, sizeof(struct varent));
   veh->name=yytext;
   np=tsearch(veh, &root, &tcomp);
   ve=np->ve;
   if (!ve->flag)                     /* First time name met         */
   {
      veh=NULL;
      ve->name = strdup(yytext);
      if (usejhlasm || 8 >= yyleng) sprintf(ve->extname, "%.8s", ve->name);
      else hashname(ve->extname, ve->name);
   }
   ve->flag |= flag;
}

/*********************************************************************/
/* Generate  the  truncated,  possibly hashed name for a long global */
/* symbol and store in the ve structure.                             */
/*                                                                   */
/* Using  the truncated name will not work because different modules */
/* will  have  different opinions as to what is behind the truncated */
/* name.                                                             */
/*                                                                   */
/* We get here only first time the long name is encountered.         */
/*********************************************************************/

static void
hashname(char xname [9], char * name)
{
   int ix;
   unsigned int hash;
   static char enc[33] = "abcdefghijklmnopqrstuvwxyz0123456";

   hash = hashlittle(name, strlen(name), 0);
   sprintf(xname, "$");
   for (ix = 1; hash; hash >>= 5, ix++)
   {
      int low = 0x1f & hash;

      xname[ix] = enc[low];
   }
   xname[ix] = 0;
}

/*********************************************************************/
/* Tree compare routine.  The left pointer is our parameter; no need */
/* to check that.                                                    */
/*********************************************************************/

static int
tcomp(const void * pl, const void * pr)
{
   const struct varent * vl=pl;
   const struct varent * vr=pr;

   return strcmp(vl->name, vr->name);
}
