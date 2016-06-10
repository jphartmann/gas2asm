	.file	"dummy.c"
# GNU C (GCC) version 4.3.2 (s390-ibm-linux-gnu)
#	compiled by GNU C version 4.3.2, GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=47 --param ggc-min-heapsize=31990
# options passed:  -fpreprocessed dummy.i -m31 -mesa -march=g5 -Wno-format
# -Werror -fexec-charset=IBM-1047 -fverbose-asm
# options enabled:  -falign-loops -fargument-alias
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fcommon
# -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
# -fident -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-debug-strings -fmove-loop-invariants -fpcc-struct-return
# -fpeephole -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
# -fsigned-zeros -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-reassoc -ftree-scev-cprop
# -ftree-vect-loop-version -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m31 -mesa -mfused-madd -mglibc -mhard-float
# -mlong-double-128

# Compiler executable checksum: 4296b0e2af9321280a10b5f7881524fe

.text
	.align	4
.globl dummy
	.type	dummy, @function
dummy:
.LFB2:
	stm	%r11,%r12,44(%r15)	#,,
.LCFI0:
	lr	%r11,%r15	#,
.LCFI1:
	lhi	%r1,0	# D.1200,
	lr	%r2,%r1	#, <result>
	lm	%r11,%r12,44(%r11)	#,,
	br	%r14	#
.LFE2:
	.size	dummy, .-dummy
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.4byte	.LECIE1-.LSCIE1
.LSCIE1:
	.4byte	0x0
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xf
	.uleb128 0x60
	.align	4
.LECIE1:
.LSFDE1:
	.4byte	.LEFDE1-.LASFDE1
.LASFDE1:
	.4byte	.LASFDE1-.Lframe1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE1:
	.ident	"GCC: (GNU) 4.3.2"
	.section	.note.GNU-stack,"",@progbits
