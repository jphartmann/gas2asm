.SUFFIXES: .assemble .text .asmj .textj
.PHONY: all clean check ok
.SECONDARY: .assemble

OLD_SHELL:=${SHELL}
# SHELL=$(warning [target: $@  modified: ($?)])$(OLD_SHELL)

%.assemble: %.s
	((../gas2asm <$< | ../asmxpnd >$@) || (mv $@ $*.asm; exit 1))

%.asmj: %.s
	((../gas2asm -j <$< | ../asmxpnd >$@) || (mv $@ $*.asmjx; exit 1))

*.assemble: ../asmxpnd ../gas2asm
*.asmj: ../asmxpnd ../gas2asm

check: all
	cat *.assemble *.asmj >check.asm
	diff check.asm check.asmok
	@echo '>>> all pass <<<'

ok:
	mv check.asm check.asmok

all: dummy.assemble
all: deflate.assemble
all: deflate.asmj
all: pcre_byte_order.assemble
all: pcre_jte.assemble

# This works only if you have a hlasm that runs on the platform
# --macrobase should point to the directory containing the @file etc. macros
%.text: %.assemble
	hlasm --macrobase ../macros $*

# This works only with jHLASM
%.textj: %.asmj makefile
	hlasm -v --long --respect --xsd --macrobase ../macros \
		--listingfile $*.listj --objectfile $@ \
		$<

clean:
	rm -f *.assemble *.asmj *.text check.asm
