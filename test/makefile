.SUFFIXES: .assemble .text .asmj .textj
.PHONY: all clean check ok
.SECONDARY: .assemble

OLD_SHELL:=${SHELL}
# SHELL=$(warning [target: $@  modified: ($?)])$(OLD_SHELL)
MOD := ../gas2asm
XPD := ../asmxpnd

FNS:=${basename ${wildcard *.s}}
ASM:=${addsuffix .assemble,${FNS}}

%.assemble: %.s ${MOD} ${XPD}
	((${MOD} <$< | ${XPD} >$@) || (mv $@ $*.asm; exit 1))

%.asmj: %.s ${MOD}  ${XPD}
	((${MOD} -j <$< | ${XPD} >$@) || (mv $@ $*.asmjx; exit 1))

check: ${ASM}
	cat *.assemble *.asmj >check.asm
	diff check.asmok check.asm >check.out
	@echo '>>> all pass <<<'

ok:
	mv check.asm check.asmok

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
