# Macros required to assemble the output form gas2asm.

# Note:	One  of	HLASM's  may  bugs  is  that  the  case  of the macro
#			prototype must match the case of the member.  So keep them up!

LIB:=fplgcc
default: copy

COPY:=${wildcard *.macro}

include ../cms390.makefile

all:
	(echo 'site fix 80'; echo 'prompt'; echo 'mput *.macro' ) |ftp ${VMHOST}
