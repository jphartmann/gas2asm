.SUFFIXES: assemble s

.SECONDARY: .assemble

OLD_SHELL:=${SHELL}
# SHELL=$(warning [target: $@  modified: ($?)])$(OLD_SHELL)

%.assemble: %.s ../asmxpnd ../gas2asm
	((../gas2asm <$< | ../asmxpnd >$@) || (mv $@ $*.asm; exit 1))

%.asmj: %.s ../asmxpnd ../gas2asm
	((../gas2asm -j <$< | ../asmxpnd >$@) || (mv $@ $*.asmjx; exit 1))

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
