/* Process the symbol table                                          */
/*                                John Hartmann 31 Jan 2015 11:35:38 */

/*********************************************************************/
/* Change activity:                                                  */
/*31 Jan 2015  New module.                                           */
/*********************************************************************/

#include <search.h>

#define DECST(x) DEC(x, symboltype)

static void * anchor;                 /* Anchor of symbol table tree */

struct node                     /* What tsearch and tfind returns */
{
   struct symbol * sp;
};

/* Forward declarations:                                             */
static void hashname(struct symbol * sp);
/* End of forward declarations.                                      */

/*********************************************************************/
/* Look up a symbol create it if it does not exist.                  */
/*********************************************************************/

static void
makesym(enum symboltype type)
{
   struct node * np;
   struct symbol * sp;
   /* temporary node used for lookup                                 */
   struct symbol lusym = { .name = yytext };

   int tcomp(const void * vl, const void * vr)
   {
      const struct symbol * ln = vl;
      const struct symbol * rn = vr;

      return strcmp(ln->name, rn->name);
   }

   /* See if symbol is defined                                       */
   np = tfind(&lusym, &anchor, tcomp);

   if (np)                            /* Symbol exists               */
   {
      sp = np->sp;
      if (st_unknown == sp->type) sp->type = type;
      else if (type != st_unknown && type != sp->type)
      {
         fprintf(stderr, "Line %d:  symbol type mismatch.  Have %d %s want %d %s:  %s\n",
            lineno, sp->type, DECST(sp->type), type, DECST(type), yytext );
      }
   }
   else                               /* New symbol                  */
   {
      sp = calloc(1, sizeof(struct symbol));
      sp->type = type;
      sp->name = strdup(yytext);
      tsearch(sp, &anchor, tcomp);
      hashname(sp);
   }
   yylval.sym = sp;
}

/*********************************************************************/
/* Interlude processing after all symbols have been defined.         */
/*********************************************************************/

static int
interlude(void)
{
   int symcnt = 0;
   int tcount[pgms_count] = { 0 };    /* Distribution of where       */
   int stcount[st_count] = { 0 };     /* Distribution of what        */
   int i;
   int rv = 0;
   char * s;
   char * t;

   void
   action(const void * vp, const VISIT which, const int depth)
   {
      const struct node * np = vp;
      struct symbol * sp = np->sp;

      if (preorder == which) return;
      if (endorder == which) return;
      SDEBUG("Line %d type %s %s size %d hash %s:  %s",
         sp->line,
         DEC(sp->type, symboltype) + 3,
         DEC(sp->state.pgmstate, pgmstate) + 5,
         sp->size, sp->hash, sp->name);
      tcount[sp->state.pgmstate]++;
      stcount[sp->type]++;
      symcnt++;

      switch (sp->type)
      {
         case st_unknown:
            FIXME("Line %d:  %s is of unknown type.", sp->line, sp->name);
            break;
         case st_local:
            break;
         case st_global:
            s = sp->name;
            t = sp->line ? "entry" : "extrn";
            if (8 < strlen(sp->name))
            {
               P("%s equ %s\n", sp->hash, sp->name);
               s = sp->hash;
               INFO("%-8s maps %s", s, sp->name);
               P(" punch '*map %s %s %s in %s'\n", s, sp->name, t, filename);
            }
            P(" %s %s\n", t, s);
            break;
         default:
            assert(0);
      }
   }

   twalk(anchor, action);

   DEBUG("%d symbols defined.", symcnt);
   if (stcount[st_unknown])
   {
      FIXME("%d symbols of unknown type.\n", stcount[st_unknown]);
      rv = 12;
   }
   if (symcnt == tcount[pgms_text])
   {
      DEBUG("All symbols in text section.");
      INFO("Program is reentrant.  No writable storage required.");
      if (!rv) isdone = 1;
   }
   else if (debug)
   {
      for (i = 0; pgms_count > i; i++)
      {
         if (tcount[i])
            DEBUG("   %4d %s", tcount[i], DEC(i, pgmstate));
      }
   }
   return rv;
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
hashname(struct symbol * sp)
{
   int ix;
   unsigned int hash;
   static char enc[33] = "abcdefghijklmnopqrstuvwxyz0123456";

   hash = hashlittle(sp->name, strlen(sp->name), 0);
   sprintf(sp->hash, "$");
   for (ix = 1; hash; hash >>= 5, ix++)
   {
      int low = 0x1f & hash;

      sp->hash[ix] = enc[low];
   }
   sp->hash[ix] = 0;
}
