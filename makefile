# This directory contains C code for execution on Linux; thus it builds
# .o and executables.

# gnu make required.  flex not required unless you change the .l file.

INSTALLBIN:=${HOME}/bin
INSTALLMAC:=${HOME}/macros
MACROS:=${notdir ${wildcard macros/*.macro}}

CFLAGS:=-g -Wall -Werror
YFLAGS:=-Wall -Werror

${INSTALLBIN}/%: %
	cp -p $< $@

${INSTALLMAC}/%: macros/%
	cp -p $< $@

M:=gas2asm asmxpnd
all: $M

# Ensure that the generated flex output stays.	OpenSuse 11 ships a
# broken flex that mangles things somewhat royal.
gas2asm.c: gas2asm.l
gas2asm.o: gas2asm.c symtab.c loadfile.c le128.c lookup3.c gas2asmmain.c

install: | ${INSTALLBIN}
install: | ${INSTALLMAC}

${INSTALLBIN}:
	mkdir -p ${INSTALLBIN}

${INSTALLMAC}:
	mkdir -p ${INSTALLMAC}

install: ${INSTALLBIN}/gas2asm
install: ${INSTALLBIN}/asmxpnd

install:
	make -C macros install

MP:=${addprefix ${INSTALLMAC}/,${MACROS}}
install: ${MP}

.PHONY: say
say:
	@echo Macros: ${MACROS}

t: $M
	rm -f core
	./gas2asm -f <t.s >t.out 2>t.dbg

clean:
	rm -f core *.o $M t.out t.dbg
	make -C test clean

check: $M
	(cd test; make)
