/* Load source file and build record array.                          */
/*                                 John Hartmann 1 Aug 2011 11:44:54 */

/*********************************************************************/
/* This  represents an early attempt as annotating the .s output.  A */
/* much better way is the gcc options -fverbose-asm -g.              */
/*                                                                   */
/* Change activity:                                                  */
/* 1 Aug 2011  New module.                                           */
/*********************************************************************/

#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

/* Forward declarations in gas2asm.l                                 */

static void
loadfile(void)
{
   struct stat st;
   int rv;
   int fd = open(files[1], O_RDONLY);
   char * src;
   int nls;
   int i;
   size_t size;

   if (-1 == fd)
   {
      return;                         /* Let's be quiet about this   */
      fprintf(stderr, "gas2asm cannot open '%s':  %m\n", files[1]);
      return;
   }

   rv = fstat(fd, &st);
   size = st.st_size;

   src = malloc(size+1);
   if (!src) return;

   rv = read(fd, src, size);
   if (-1 == rv)
   {
      fprintf(stderr, "gas2asm cannot read '%s':  %m\n", files[1]);
      return;
   }
   if (rv != size)
   {
      fprintf(stderr, "gas2asm:  Size mismatch for '%s'.  Size %zd, read %d",
         files[1], size, rv);
      return;
   }

   src[size]=0;                       /* Terminate last              */
   while (size && '\n' == src[size -1])
      src[--size] = 0;

   for (nls = 1, i=0; size>i; i++)
   {
      if (!src[i]) return;
      if ('\n' == src[i]) nls++;
   }
#if defined(DEBUG)
   fprintf(stderr, "%s %d lines\n", files[1], nls);
#endif

   sources = malloc(nls * sizeof(void *));
   if (!sources) return;

   sources[0] = src;

   for (nls = 1, i=0; size>i; i++)
   {
      if ('\n' == src[i])
      {
         src[i] = 0;
         sources[nls++] = src+i+1;
      }
   }
   lines = nls;
   close(fd);
}
