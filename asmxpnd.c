/* Expand assembler statements that are longer than 71               */
/*                                John Hartmann 28 Jul 2011 14:01:59 */

/*********************************************************************/
/* Change activity:                                                  */
/*28 Jul 2011  New module.                                           */
/*********************************************************************/

#include <stdio.h>

/* Forward declarations:                                             */
/* End of forward declarations.                                      */

int
main(int argc, char ** argv)
{
   int col = 1;
   int c;

   while (EOF != (c = getchar()))
   {
      if ('\n' == c)
      {
         putchar(c);
         col = 1;
      }
      else if (71 < col++)
      {
         printf("+\n%*s%c", 15, "", c);
         col = 17;
      }
      else putchar(c);
   }


   return 0;
}
