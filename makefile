# This directory contains C code for execution on Linux; thus it builds
# .o and executables.

# gnu make required.  flex not required unless you change the .l file.

.SUFFIXES: .maclib .macro
.PHONY: m

INSTALLBIN:=${HOME}/bin
INSTALLMAC:=${HOME}/macros
MACS:=${wildcard macros/*.macro}
MACROS:=${notdir ${MACS}}

CFLAGS:=-g -Wall -Werror
YFLAGS:=-Wall -Werror

${INSTALLBIN}/%: %
	cp -p $< $@

${INSTALLMAC}/%: macros/%
	cp -p $< $@

M:=gas2asm asmxpnd
ML:=../cmslib-exec/fplg2a.maclib
all: $M m

m: ${ML}

${ML}: ${MACS}
	maclib ${ML} ${MACS}

# Ensure that the generated flex output stays.	OpenSuse 11 ships a
# broken flex that mangles things somewhat royal.
gas2asm.c: gas2asm.l
gas2asm.o: gas2asm.c symtab.c loadfile.c le128.c lookup3.c gas2asmmain.c

${INSTALLBIN}:
	mkdir -p ${INSTALLBIN}

${INSTALLMAC}:
	mkdir -p ${INSTALLMAC}

install: ${INSTALLBIN}/gas2asm ${INSTALLBIN}/asmxpnd | ${INSTALLBIN}

MP:=${addprefix ${INSTALLMAC}/,${MACROS}}
install-macros: ${MP} | ${INSTALLMAC}

.PHONY: say
say:
	@echo Macros: ${MACROS}

t: $M
	rm -f core
	./gas2asm -f <t.s >t.out 2>t.dbg

q3: $M
	rm -f core
	./gas2asm -f <sqlite3.s >sql3.out 2>sql3.dbg

test: $M
	rm -f core
	./gas2asm -f <test/test.s >test.assemble 2>test.dbg
	hlasm --macrobase macros test

clean:
	rm -f core *.o $M t.out t.dbg
	make -C test clean

check: $M
	(cd test; make)
