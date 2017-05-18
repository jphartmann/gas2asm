	.file	"wc.c"
# GNU C11 (Ubuntu 5.4.0-6ubuntu1~16.04.2) version 5.4.0 20160609 (s390x-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=84 --param ggc-min-heapsize=101661
# options passed:  -nostdinc -I . -I ../include -imultilib 32
# -imultiarch s390-linux-gnu -D __ZVM__ -D __CMS__ -U __gnu_linux__ wc.c
# -m31 -march=g5 -mesa -auxbase-strip z/wc.s -g -O -Wall -Werror
# -Wno-pointer-sign -Wformat=0 -fno-use-linker-plugin -fverbose-asm
# -fexec-charset=IBM-1047 -fstack-protector-strong
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -finline -finline-atomics -finline-functions-called-once -fipa-profile
# -fipa-pure-const -fipa-reference -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-pressure -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt
# -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
# -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter
# -funit-at-a-time -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss -m31
# -mbranch-cost= -mesa -mglibc -mhard-float -mhtm -mlong-double-128 -mlra
# -mvx

.text
.Ltext0:
	.section	.rodata.str1.2,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"l\204@l\204@l\204%"
.text
	.align	8
.globl main
	.type	main, @function
main:
.LFB0:
	.file 1 "wc.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	stm	%r6,%r15,24(%r15)	#,,
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	basr	%r13,0	#
.L11:
	ahi	%r15,-96	#,
	.cfi_def_cfa_offset 192
	l	%r12,.L12-.L11(%r13)	#,
	la	%r12,0(%r12,%r13)	#,
.LVL1:
	.loc 1 20 0
	lhi	%r8,0	# inword,
	.loc 1 19 0
	lhi	%r10,0	# lines,
	.loc 1 18 0
	lhi	%r9,0	# words,
	.loc 1 17 0
	lhi	%r6,0	# chars,
	.loc 1 22 0
	l	%r11,.L13-.L11(%r13)	# tmp85,
	j	.L2	#
.LVL2:
.L7:
.LBB2:
	.loc 1 24 0
	l	%r1,.L13-.L11(%r13)	# tmp76,
	bas	%r14,0(%r1,%r12)	#,
.LVL3:
	l	%r2,72(%r2)	#, _17->prealloc
	l	%r1,.L14-.L11(%r13)	# tmp77,
	bas	%r14,0(%r1,%r12)	#,
.LVL4:
	.loc 1 25 0
	chi	%r2,37	# c,
	je	.L4	#,
	chi	%r2,64	# c,
	je	.L8	#,
	chi	%r2,-1	# c,
	jne	.L9	#,
	j	.L6	#
.L4:
	.loc 1 28 0
	ahi	%r10,1	# lines,
.LVL5:
	.loc 1 30 0
	lhi	%r8,0	# inword,
.LVL6:
	j	.L5	#
.LVL7:
.L9:
	.loc 1 35 0
	ltr	%r8,%r8	# inword
	jne	.L5	#,
.LVL8:
	.loc 1 37 0
	ahi	%r9,1	# words,
.LVL9:
	.loc 1 36 0
	lhi	%r8,1	# inword,
	j	.L5	#
.LVL10:
.L8:
	.loc 1 30 0
	lhi	%r8,0	# inword,
.LVL11:
.L5:
	.loc 1 39 0
	ahi	%r6,1	# chars,
.LVL12:
.L2:
.LBE2:
	.loc 1 22 0
	bas	%r14,0(%r11,%r12)	#,
.LVL13:
	l	%r1,72(%r2)	# _12->prealloc, _12->prealloc
	tm	93(%r1),128	# *_13,
	je	.L7	#,
.L6:
	.loc 1 43 0
	l	%r1,.L13-.L11(%r13)	# tmp81,
	bas	%r14,0(%r1,%r12)	#,
.LVL14:
	lr	%r5,%r9	#, words
	lr	%r4,%r10	#, lines
	l	%r1,.L15-.L11(%r13)	# tmp82,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _25->prealloc
	l	%r1,.L16-.L11(%r13)	# tmp83,
	bas	%r14,0(%r1,%r12)	#,
.LVL15:
	.loc 1 45 0
	lhi	%r2,0	#,
	l	%r4,152(%r15)	#,
	lm	%r6,%r15,120(%r15)	#,,
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa_offset 96
.LVL16:
	br	%r4	#
	.align	4	#
.L16:
	.long	fprintf@PLTOFF
.L15:
	.long	.LC2@GOTOFF
.L14:
	.long	fgetc@PLTOFF
.L13:
	.long	__getgbl@PLTOFF
.L12:
	.long	_GLOBAL_OFFSET_TABLE_-.L11
	.align	2	#
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x114
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0xf
	.4byte	0x48
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0xf
	.4byte	0x48
	.4byte	.LLST0
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0xf
	.4byte	0x10b
	.4byte	.LLST1
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x12
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x13
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x14
	.4byte	0x48
	.4byte	.LLST5
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2a
	.4byte	.L6
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xef
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x18
	.4byte	0x48
	.4byte	.LLST6
	.byte	0
	.uleb128 0xa
	.4byte	.LVL15
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x111
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"unsigned int"
.LASF14:
	.string	"/home/dave/src/githib/cmslib/src/samples/wc"
.LASF13:
	.string	"wc.c"
.LASF11:
	.string	"inword"
.LASF16:
	.string	"done"
.LASF2:
	.string	"long unsigned int"
.LASF8:
	.string	"chars"
.LASF3:
	.string	"char"
.LASF5:
	.string	"unsigned char"
.LASF15:
	.string	"main"
.LASF1:
	.string	"long int"
.LASF12:
	.string	"GNU C11 5.4.0 20160609 -m31 -march=g5 -mesa -g -O -fno-use-linker-plugin -fexec-charset=IBM-1047 -fstack-protector-strong"
.LASF6:
	.string	"argc"
.LASF9:
	.string	"words"
.LASF10:
	.string	"lines"
.LASF0:
	.string	"sizetype"
.LASF7:
	.string	"argv"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
