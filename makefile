# This  directory contains C code for execution on Linux thus it builds
# .o and executables.

# gnu make required.

INSTALLBIN:=${HOME}/bin
CFLAGS:=-g -Wall -Werror
YFLAGS:=-Wall -Werror

${INSTALLBIN}/%: %
	cp -p $< $@

M:=gas2asm asmxpnd
all: $M

# Ensure that the generated flex output stays.	OpenSuse 11 ships a
# broken flex that mangles things somewhat royal.
gas2asm.c: gas2asm.l
gas2asm.o: gas2asm.c symtab.c loadfile.c le128.c lookup3.c gas2asmmain.c

install: | ${INSTALLBIN}

${INSTALLBIN}:
	mkdir -p ${INSTALLBIN}

install: ${INSTALLBIN}/gas2asm
install: ${INSTALLBIN}/asmxpnd

t: $M
	rm -f core
	./gas2asm -f <t.s >t.out 2>t.dbg

clean:
	rm -f core *.o $M t.out t.dbg

check: $M
	(cd test; make)
