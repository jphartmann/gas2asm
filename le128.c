/* little endian 128 encoding.  What a waste!                        */
/*                                 John Hartmann 2 Jul 2013 19:13:55 */

/*********************************************************************/
/* Input  is a hexadecimal string in yytext.  Emit the corresponding */
/* encoded bytes as a hexadcimal constant.                           */
/*                                                                   */
/* From wikipedia:                                                   */
#if 0
do {
  byte = low order 7 bits of value;
  value >>= 7;
  if (value != 0) /* more bytes to come */
    set high order bit of byte;
  emit byte;
} while (value != 0);
#endif
/*                                                                   */
/* Change activity:                                                  */
/* 2 Jul 2013  New module.                                           */
/*********************************************************************/

#include <ctype.h>

/* Forward declarations in gas2asm.l                                 */

static void
ule(void)
{
   int todo = yyleng - 2;             /* Number of hex digits to do  */
   int val = 0;                       /* What we have.               */
   int bits = 0;                      /* number of bits in val       */

   printf(" dc x'");
   do
   {
      int part;

      while (7 > bits && 0 < todo)
      {
         char c = yytext[todo + 1];
         int dig = isdigit(c) ? 0xf & c : (0xf & c) + 9;

         val <<= 4;
         val |= dig << bits;
         bits += 4;
         todo--;
      }

      part = 0x7f & val;
      val >>= 7;
      bits -= 7;

      if (val || 0 < todo) part |= 0x80;
      printf("%02x", part);
   }
   while (0 < todo);
   printf("' unsigned %s\n", yytext);
}

/*********************************************************************/
/* yytext is -<number>                                               */
/*********************************************************************/

static void
sle(void)
{
   long long int val;
   int rc;

   printf(" dc x'");
   rc = sscanf(yytext, "%lld", &val);
   if (1 != rc)
   {
      fprintf(stderr, "Cannot convert %s to integer.\n", yytext);
      printf("?error?");              /* Poison pill for stmt        */
   }
   else
   {
      int isend;

      do
      {
         int part = 0x7f & val;

         val >>= 7;
         val |= 0xfe000000000000ll;   /* Retain sign                 */
         isend = -1 == val && (0x40 & part);
         if (!isend) val |= 0x80;
         printf("%02x", part);
      }
      while (!isend);
   }
   printf("' signed %s\n", yytext);

}
