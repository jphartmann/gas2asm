# Macros required to assemble the output from gas2asm.

# Note:	One  of	HLASM's  may  bugs  is  that  the  case  of the macro
#			prototype must match the case of the member.  So keep them up!
.PHONY: all clean install
LIB:=fplg2a
M:=${LIB}.maclib

COPY:=${wildcard *.macro}
ICOPY:=${addprefix  ${HOME}/macros/,${COPY}}

MAC:=${shell which maclib}

ifndef MAC
${error Install maclib from https://github.com/jphartmann/CMS-TXTLIB}
endif

$M: ${COPY}
	maclib $@ ${COPY}

all: $M
ifdef VMHOST
all:
	(echo 'site fix 80'; echo 'bin'; echo put $M ) |ftp ${VMHOST}
else
${info You must transfer $M to your VM system manually.}
endif

clean:
	rm -f $M

install: ${ICOPY} | ${HOME}/macros

${HOME}/macros:
	mkdir $@

${HOME}/macros/%: %
	cp -p $< $@

