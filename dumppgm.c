/* Generate output Assembler file.                                   */
/*                                John Hartmann 29 Jan 2015 13:02:26 */

/*********************************************************************/
/* Change activity:                                                  */
/*29 Jan 2015  New module.                                           */
/*********************************************************************/

static char aligns[]="?XH?F???D";

/* Forward declarations:                                             */
static int genop(struct operand * op);
static char * psname(struct symbol * sp);
/* End of forward declarations.                                      */

static int
dumppgm(struct statement * stmt)
{
   int i;
   char * t;

   for (; stmt; stmt = stmt->next)
   {
      if (stmt->nogen) continue;
      switch (stmt->type)
      {
         case stmt_label:
            P("%s EQU *\n", psname(stmt->ps));
            break;
         case stmt_align:
            P(" DS 0%c\n", aligns[stmt->i]);
            break;
         case stmt_dc:
            if (stmt->ps)             /* Relocatable                 */
               P(" DC %cl%d(%s)\n", stmt->dctype, stmt->dcsize, psname(stmt->ps));
            else P(" DC %cl%d'%d'\n", stmt->dctype, stmt->dcsize, stmt->i);
            break;
         case stmt_sym:
            break;
         case stmt_ident:
            break;
         case stmt_comment:           /* Full-line comment           */
            P("* %s\n", stmt->string);
            break;
         case stmt_file:
            printf(" @fileix %d,%s\n", stmt->i, stmt->string);
            break;
         case stmt_infile:
            t = strrchr(filename, '/');
            if (!t) t = filename;
            else t++;                 /* Skip slash                  */
            P(" @file %s\n", t);
            break;
         case stmt_machine:
            P(" %-8s  ", stmt->string);
            if (stmt->mask) P("%d,", stmt->mask);
            for (i = 0; stmt->i > i; i++)
            {
               if (i) P(",");
               genop(stmt->opers[i]);
            }
            P("\n");
            fflush(stdout);
            break;
         case stmt_section:
            break;
         case stmt_function:
            break;
         case stmt_location:
            P(" @loc  %d,%d,%d\n", stmt->i, stmt->fline, stmt->pos);
            if (!sources || stmt->fline > lines) break;
            printf("* %s\n", sources[stmt->fline - 1]);
            break;
         default:
            assert(0);
      }
   }
   P(" @end\n end\n");
   return 0;
}

/*********************************************************************/
/* Generate operand                                                  */
/*********************************************************************/

static int
genop(struct operand * op)
{
   int len;

   switch (op->type)
   {
      case opt_dunno:
         break;
      case opt_int:/* Integer value; register mask immediate in .reg */
         return P("%d", op->reg);
      case opt_symbol:                /* Single relocatable symbol   */
         return P("%s", psname(op->ps));
      case opt_absolute:             /* difference beween two symbols */
         len = P("%s-%s", psname(op->dp->left), psname(op->dp->right));
         break;
      case opt_bd:                    /* base/displacement           */
         len = P("%d", op->disp);
         break;
      default:
         assert(0);
   }

   if (op->index) len += P("(%d,%d)", op->index, op->base);
   else len += P("(%d)", op->base);
   return len;
}

/*********************************************************************/
/* Symbol name                                                       */
/*********************************************************************/

static char *
psname(struct symbol * sp)
{
   char * t;

   if (sp->xlated) return sp->name;

   for (t = strchr(sp->name, '.'); t ; t = strchr(t + 1, '.'))
      *t = '@';
   sp->xlated = 1;
   return sp->name;
}
