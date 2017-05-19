	.file	"test.c"
# GNU C11 (Ubuntu 5.4.0-6ubuntu1~16.04.2) version 5.4.0 20160609 (s390x-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=84 --param ggc-min-heapsize=101661
# options passed:  -nostdinc -I . -I ../include -imultilib 32
# -imultiarch s390-linux-gnu -D __ZVM__ -D __CMS__ -U __gnu_linux__ test.c
# -m31 -march=g5 -mesa -auxbase-strip z/test.s -g -O -Wall -Werror
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
.LC3:
	.string	"\205\227\223@l\227@\245\227@l\242@l\227@l\227@l\227@l\227%"
	.align	2
.LC6:
	.string	"\245\205\231\202@}lK\\\242}@z@}lK\\\242}%"
.text
	.align	8
	.type	sub, @function
sub:
.LFB1:
	.file 1 "test.c"
	.loc 1 116 0
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
.L3:
	ahi	%r15,-112	#,
	.cfi_def_cfa_offset 208
	l	%r12,.L4-.L3(%r13)	#,
	la	%r12,0(%r12,%r13)	#,
	lr	%r11,%r3	# epl, epl
	lr	%r7,%r4	# vp, vp
.LVL1:
	.loc 1 118 0
	l	%r1,4(%r3)	# D.2155, epl_3(D)->eplargbg
	lr	%r9,%r1	# vl, D.2155
	s	%r9,0(%r3)	# vl, epl_3(D)->eplcmd
.LVL2:
	.loc 1 119 0
	l	%r10,8(%r3)	# epl_3(D)->eplargnd, epl_3(D)->eplargnd
	sr	%r10,%r1	# al, D.2155
.LVL3:
	.loc 1 121 0
	l	%r1,.L5-.L3(%r13)	# tmp83,
	lr	%r8,%r1	# tmp83, tmp83
	bas	%r14,0(%r1,%r12)	#,
.LVL4:
	l	%r1,12(%r11)	# tmp93, epl_3(D)->epluword
	st	%r1,104(%r15)	# tmp93,
	l	%r1,8(%r11)	# tmp94, epl_3(D)->eplargnd
	st	%r1,100(%r15)	# tmp94,
	l	%r1,4(%r11)	# tmp95, epl_3(D)->eplargbg
	st	%r1,96(%r15)	# tmp95,
	l	%r6,0(%r11)	#, epl_3(D)->eplcmd
	lr	%r5,%r7	#, vp
	lr	%r4,%r11	#, epl
	l	%r1,.L6-.L3(%r13)	# tmp84,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _13->prealloc
	l	%r1,.L7-.L3(%r13)	# tmp85,
	lr	%r7,%r1	# tmp85, tmp85
.LVL5:
	bas	%r14,0(%r1,%r12)	#,
.LVL6:
	.loc 1 123 0
	bas	%r14,0(%r8,%r12)	#,
.LVL7:
	l	%r1,4(%r11)	# tmp99, epl_3(D)->eplargbg
	st	%r1,96(%r15)	# tmp99,
	lr	%r6,%r10	#, al
	l	%r5,0(%r11)	#, epl_3(D)->eplcmd
	lr	%r4,%r9	#, vl
	l	%r1,.L8-.L3(%r13)	# tmp87,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _21->prealloc
	bas	%r14,0(%r7,%r12)	#,
.LVL8:
	.loc 1 125 0
	lhi	%r2,0	#,
	l	%r4,168(%r15)	#,
	lm	%r6,%r15,136(%r15)	#,,
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
.LVL9:
	br	%r4	#
	.align	4	#
.L8:
	.long	.LC6@GOTOFF
.L7:
	.long	fprintf@PLTOFF
.L6:
	.long	.LC3@GOTOFF
.L5:
	.long	__getgbl@PLTOFF
.L4:
	.long	_GLOBAL_OFFSET_TABLE_-.L3
	.align	2	#
	.cfi_endproc
.LFE1:
	.size	sub, .-sub
	.section	.rodata.str1.2
	.align	2
.LC12:
	.string	"\224\205\243\205\242\243@\210\226\246\204\250@\243\210\205\231\205"
	.align	2
.LC19:
	.string	"\205\225\245@l\227@\255\360\275@l\227@\255\361\275@l\227@\205\247\243\205\231\225@l\227%"
	.align	2
.LC23:
	.string	"l\242%"
	.align	2
.LC25:
	.string	"\245\201\231"
	.align	2
.LC28:
	.string	"\245\201\231@l\242%"
	.align	2
.LC30:
	.string	"\201\202\203"
	.align	2
.LC31:
	.string	"\324\305\343\305\342\343"
	.align	2
.LC36:
	.string	"\331\205\207\211\242\243\205\231@\242\244\202\203\226\224@\231\245@l\204%"
	.align	2
.LC38:
	.string	"\342\244\202\203\226\224@\203\210\201\211\225z"
	.align	2
.LC42:
	.string	"\305\225\204@\226\206@\242\244\202\203\226\224@\203\210\201\211\225K@@\342\344\302\324\301\327@\231\245@l\204%"
	.align	2
.LC44:
	.string	"\342\244\202\203\226\224@\231\245@l\204@\360\247l\247%"
	.align	2
.LC46:
	.string	"\221\231\205\247\247@\207\226\243\205\242\243"
	.align	2
.LC49:
	.string	"\221\231\205\247\247@\231\245@l\204%"
	.align	2
.LC52:
	.string	"\304\205\223\205\243\205@\331\345@l\204K@@\342\244\202\203\226\224@\203\210\201\211\225@\201\206\243\205\231@\204\205\223\205\243\205z%"
	.align	2
.LC54:
	.string	"\231\202"
	.align	2
.LC58:
	.string	"\303\201\225\225\226\243@\226\227\205\225@l\242z@@l\224%"
	.align	2
.LC60:
	.string	"\226\227\205\225\205\204@l\242K@\205\226\206@l\204%"
	.align	2
.LC63:
	.string	"\303\226\244\223\204@\225\226\243@\231\205\201\204@\231\205\203\226\231\204@l\204%"
	.align	2
.LC65:
	.string	"\304\211\204@\225\226\243@\207\205\243@\364@\202\250\243\205\242@\206\226\231@l\204K@@\307\226\243@l\204K%"
	.align	2
.LC67:
	.string	"\305\247\227\205\203\243@l\204^@\207\226\243@l\204%"
	.align	2
.LC70:
	.string	"l\204@\231\205\203\226\231\204\242@\231\205\201\204@\206\231\226\224@\206\211\223\223\205\204%"
	.section	.rodata
	.align	2
.LC1:
	.ascii	"\305\347\305\303@@@@"
	.ascii	"\342\344\302\324\301\327@@"
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.align	2
.LC0:
# pl:
	.ascii	"\324\305\343\305\342\343@@\310\326\346\304\350@@@\343\310\305"
	.ascii	"\331\305@@@"
# f:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
.text
	.align	8
.globl main
	.type	main, @function
main:
.LFB0:
	.loc 1 26 0
	.cfi_startproc
.LVL10:
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
.L28:
	ahi	%r15,-200	#,
	.cfi_def_cfa_offset 296
	l	%r12,.L29-.L28(%r13)	#,
	la	%r12,0(%r12,%r13)	#,
	lr	%r11,%r4	# env, env
	.loc 1 26 0
	ear	%r1,%a0	# tmp151,
	mvc	196(4,%r15),20(%r1)	# D.2182,
.LVL11:
	.loc 1 30 0
	xc	132(32,%r15),132(%r15)	# epl,
	lr	%r1,%r12	# tmp256,
	a	%r1,.L30-.L28(%r13)	# tmp256,
	st	%r1,132(%r15)	# tmp256, epl.eplcmd
	lr	%r1,%r12	# tmp257,
	a	%r1,.L31-.L28(%r13)	# tmp257,
	st	%r1,136(%r15)	# tmp257, epl.eplargbg
	lr	%r1,%r12	# tmp258,
	a	%r1,.L32-.L28(%r13)	# tmp258,
	st	%r1,140(%r15)	# tmp258, epl.eplargnd
	.loc 1 35 0
	l	%r1,.L33-.L28(%r13)	# tmp161,
	la	%r1,0(%r1,%r12)	# tmp259,
	mvc	164(32,%r15),0(%r1)	# p,,
	.loc 1 40 0
	l	%r1,.L34-.L28(%r13)	# tmp162,
	la	%r1,0(%r1,%r12)	# tmp260,
	mvc	108(24,%r15),0(%r1)	# subc,,
	.loc 1 44 0
	l	%r1,.L35-.L28(%r13)	# tmp163,
	bas	%r14,0(%r1,%r12)	#,
.LVL12:
	l	%r1,.L36-.L28(%r13)	# tmp164,
	l	%r1,0(%r1,%r12)	# tmp164,
	l	%r1,0(%r1)	# tmp261, environ
	st	%r1,96(%r15)	# tmp261,
	l	%r6,4(%r11)	#, MEM[(char * *)env_20(D) + 4B]
	l	%r5,0(%r11)	#, *env_20(D)
	lr	%r4,%r11	#, env
	l	%r1,.L37-.L28(%r13)	# tmp165,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _18->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp166,
	bas	%r14,0(%r1,%r12)	#,
.LVL13:
	.loc 1 45 0
	ltr	%r11,%r11	# env
	je	.L10	#,
	icm	%r1,15,0(%r11)	# tmp254, *env_20(D)
	je	.L10	#,
	.loc 1 47 0 discriminator 3
	l	%r10,.L35-.L28(%r13)	# tmp250,
.L24:
	bas	%r14,0(%r10,%r12)	#,
.LVL14:
	l	%r4,0(%r11)	#, MEM[base: env_124, offset: 0B]
	l	%r1,.L39-.L28(%r13)	# tmp169,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _27->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp170,
	bas	%r14,0(%r1,%r12)	#,
.LVL15:
	.loc 1 45 0 discriminator 3
	ahi	%r11,4	# env,
.LVL16:
	je	.L10	#,
	.loc 1 45 0 is_stmt 0 discriminator 2
	icm	%r1,15,0(%r11)	# tmp255, MEM[base: env_31, offset: 0B]
	jne	.L24	#,
.L10:
	.loc 1 49 0 is_stmt 1
	l	%r1,.L35-.L28(%r13)	# tmp172,
	lr	%r10,%r1	# tmp172, tmp172
	bas	%r14,0(%r1,%r12)	#,
.LVL17:
	l	%r11,76(%r2)	# D.2175, _33->prealloc
.LVL18:
	l	%r1,.L40-.L28(%r13)	# tmp173,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L41-.L28(%r13)	# tmp174,
	bas	%r14,0(%r1,%r12)	#,
.LVL19:
	lr	%r4,%r2	#,
	l	%r1,.L42-.L28(%r13)	# tmp175,
	la	%r3,0(%r1,%r12)	#,
	lr	%r2,%r11	#, D.2175
	l	%r1,.L38-.L28(%r13)	# tmp176,
	lr	%r9,%r1	# tmp176, tmp176
	bas	%r14,0(%r1,%r12)	#,
.LVL20:
	.loc 1 52 0
	l	%r1,.L43-.L28(%r13)	# tmp177,
	la	%r5,0(%r1,%r12)	#,
	l	%r1,.L44-.L28(%r13)	# tmp178,
	la	%r4,0(%r1,%r12)	#,
	lhi	%r3,0	#,
	l	%r1,.L45-.L28(%r13)	# tmp179,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L46-.L28(%r13)	# tmp180,
	bas	%r14,0(%r1,%r12)	#,
.LVL21:
	lr	%r11,%r2	# rsn,
.LVL22:
	.loc 1 53 0
	bas	%r14,0(%r10,%r12)	#,
.LVL23:
	lr	%r4,%r11	#, rsn
	l	%r1,.L47-.L28(%r13)	# tmp182,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _41->prealloc
	bas	%r14,0(%r9,%r12)	#,
.LVL24:
	.loc 1 54 0
	ltr	%r11,%r11	# rsn
	je	.L12	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	lr	%r2,%r11	# D.2173, rsn
	j	.L13	#
.L12:
	.loc 1 55 0 is_stmt 1
	lhi	%r3,13	#,
	l	%r1,.L48-.L28(%r13)	# tmp184,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L49-.L28(%r13)	# tmp185,
	bas	%r14,0(%r1,%r12)	#,
.LVL25:
	.loc 1 56 0
	lr	%r8,%r15	# tmp186,
	ahi	%r8,108	# tmp186,
	lhi	%r5,0	#,
	lhi	%r4,0	#,
	lr	%r3,%r8	#, tmp186
	lhi	%r2,0	#,
	l	%r9,.L50-.L28(%r13)	# tmp187,
	bas	%r14,0(%r9,%r12)	#,
.LVL26:
	lr	%r11,%r2	# rv,
.LVL27:
	.loc 1 57 0
	l	%r10,.L35-.L28(%r13)	# tmp188,
	bas	%r14,0(%r10,%r12)	#,
.LVL28:
	lr	%r4,%r11	#, rv
	l	%r1,.L51-.L28(%r13)	# tmp189,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _49->prealloc
	l	%r11,.L38-.L28(%r13)	# tmp190,
.LVL29:
	bas	%r14,0(%r11,%r12)	#,
.LVL30:
	.loc 1 59 0
	lhi	%r5,0	#,
	l	%r4,.L52-.L28(%r13)	#,
	la	%r3,164(%r15)	#,
	la	%r2,132(%r15)	#,
	bas	%r14,0(%r9,%r12)	#,
.LVL31:
	lr	%r6,%r2	# rv,
.LVL32:
	.loc 1 60 0
	bas	%r14,0(%r10,%r12)	#,
.LVL33:
	lr	%r5,%r6	#, rv
	lr	%r4,%r6	#, rv
	l	%r1,.L53-.L28(%r13)	# tmp195,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _55->prealloc
	bas	%r14,0(%r11,%r12)	#,
.LVL34:
	.loc 1 62 0
	l	%r1,.L54-.L28(%r13)	# tmp197,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L55-.L28(%r13)	# tmp198,
	bas	%r14,0(%r1,%r12)	#,
.LVL35:
	lr	%r6,%r2	# rv,
.LVL36:
	.loc 1 63 0
	bas	%r14,0(%r10,%r12)	#,
.LVL37:
	lr	%r4,%r6	#, rv
	l	%r1,.L56-.L28(%r13)	# tmp200,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _61->prealloc
	bas	%r14,0(%r11,%r12)	#,
.LVL38:
	.loc 1 64 0
	l	%r1,.L45-.L28(%r13)	# tmp202,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L57-.L28(%r13)	# tmp203,
	bas	%r14,0(%r1,%r12)	#,
.LVL39:
	lr	%r6,%r2	# D.2178,
.LVL40:
	.loc 1 65 0
	bas	%r14,0(%r10,%r12)	#,
.LVL41:
	lr	%r4,%r6	#, D.2178
	l	%r1,.L58-.L28(%r13)	# tmp205,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _68->prealloc
	bas	%r14,0(%r11,%r12)	#,
.LVL42:
	.loc 1 66 0
	lhi	%r5,0	#,
	lhi	%r4,0	#,
	lr	%r3,%r8	#, tmp186
	lhi	%r2,0	#,
	bas	%r14,0(%r9,%r12)	#,
.LVL43:
	.loc 1 72 0
	l	%r1,.L59-.L28(%r13)	# tmp209,
	la	%r3,0(%r1,%r12)	#,
	l	%r1,.L60-.L28(%r13)	# tmp210,
	la	%r2,0(%r1,%r12)	#,
	l	%r1,.L61-.L28(%r13)	# tmp211,
	bas	%r14,0(%r1,%r12)	#,
.LVL44:
	.loc 1 73 0
	ltr	%r10,%r2	# f,
	jne	.L14	#,
	.loc 1 73 0 is_stmt 0 discriminator 1
	l	%r1,.L35-.L28(%r13)	# tmp212,
	bas	%r14,0(%r1,%r12)	#,
.LVL45:
	l	%r1,.L60-.L28(%r13)	# tmp213,
	la	%r4,0(%r1,%r12)	#,
	l	%r1,.L62-.L28(%r13)	# tmp214,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _75->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp215,
	bas	%r14,0(%r1,%r12)	#,
.LVL46:
	.loc 1 111 0 is_stmt 1 discriminator 1
	lhi	%r2,0	# D.2173,
	j	.L13	#
.LVL47:
.L14:
.LBB2:
	.loc 1 79 0
	l	%r1,.L35-.L28(%r13)	# tmp216,
	bas	%r14,0(%r1,%r12)	#,
.LVL48:
	icm	%r5,8,93(%r10)	#,, *f_73
	srl	%r5,31	#,
	l	%r1,.L60-.L28(%r13)	# tmp222,
	la	%r4,0(%r1,%r12)	#,
	l	%r1,.L63-.L28(%r13)	# tmp223,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _79->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp224,
	bas	%r14,0(%r1,%r12)	#,
.LVL49:
	.loc 1 80 0
	tm	93(%r10),128	# *f_73,
	jne	.L23	#,
	lhi	%r11,1	# i,
.LBB3:
	.loc 1 85 0
	lr	%r8,%r15	# tmp249,
	ahi	%r8,104	# tmp249,
.LVL50:
.L20:
	.loc 1 84 0
	lhi	%r1,-1	# tmp270,
	st	%r1,104(%r15)	# tmp270, k
	.loc 1 85 0
	lr	%r5,%r10	#, f
	lhi	%r4,1	#,
	lhi	%r3,4	#,
	lr	%r2,%r8	#, tmp249
	l	%r1,.L64-.L28(%r13)	# tmp227,
	bas	%r14,0(%r1,%r12)	#,
.LVL51:
	lr	%r9,%r2	# rv,
.LVL52:
	.loc 1 86 0
	l	%r1,92(%r10)	# D.2181, *f_73
	tmh	%r1,64	# D.2181,
	je	.L16	#,
	.loc 1 88 0
	l	%r1,.L35-.L28(%r13)	# tmp229,
	bas	%r14,0(%r1,%r12)	#,
.LVL53:
	lr	%r4,%r11	#, i
	l	%r1,.L65-.L28(%r13)	# tmp230,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _105->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp231,
	bas	%r14,0(%r1,%r12)	#,
.LVL54:
	.loc 1 90 0
	j	.L17	#
.LVL55:
.L16:
	.loc 1 93 0
	tmh	%r1,128	# D.2181,
	jne	.L15	#,
	.loc 1 95 0
	chi	%r2,1	# rv,
	je	.L18	#,
	.loc 1 97 0
	l	%r1,.L35-.L28(%r13)	# tmp233,
	bas	%r14,0(%r1,%r12)	#,
.LVL56:
	lr	%r5,%r9	#, rv
	lr	%r4,%r11	#, i
	l	%r1,.L66-.L28(%r13)	# tmp234,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _101->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp235,
	bas	%r14,0(%r1,%r12)	#,
.LVL57:
	.loc 1 99 0
	j	.L17	#
.LVL58:
.L18:
	.loc 1 101 0
	c	%r11,104(%r15)	# i, k
	je	.L19	#,
	.loc 1 103 0
	l	%r1,.L35-.L28(%r13)	# tmp237,
	bas	%r14,0(%r1,%r12)	#,
.LVL59:
	l	%r5,104(%r15)	#, k
	lr	%r4,%r11	#, i
	l	%r1,.L67-.L28(%r13)	# tmp238,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _96->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp239,
	bas	%r14,0(%r1,%r12)	#,
.LVL60:
	.loc 1 105 0
	j	.L17	#
.LVL61:
.L19:
.LBE3:
	.loc 1 80 0 discriminator 2
	ahi	%r11,1	# i,
.LVL62:
	j	.L20	#
.LVL63:
.L21:
.LBE2:
	.loc 1 111 0
	lhi	%r2,0	# D.2173,
.LVL64:
.L13:
	.loc 1 112 0
	ear	%r1,%a0	# tmp247,
	clc	196(4,%r15),20(%r1)	# D.2182,
	je	.L22	#,
	j	.L26	#
.LVL65:
.L17:
.LBB4:
	.loc 1 108 0
	lr	%r2,%r10	#, f
	l	%r1,.L68-.L28(%r13)	# tmp241,
	bas	%r14,0(%r1,%r12)	#,
.LVL66:
	j	.L21	#
.LVL67:
.L23:
	.loc 1 80 0
	lhi	%r11,1	# i,
.LVL68:
.L15:
	.loc 1 108 0
	lr	%r2,%r10	#, f
	l	%r1,.L68-.L28(%r13)	# tmp242,
	bas	%r14,0(%r1,%r12)	#,
.LVL69:
	.loc 1 109 0
	l	%r1,.L35-.L28(%r13)	# tmp243,
	bas	%r14,0(%r1,%r12)	#,
.LVL70:
	lr	%r4,%r11	#, i
	l	%r1,.L69-.L28(%r13)	# tmp244,
	la	%r3,0(%r1,%r12)	#,
	l	%r2,76(%r2)	#, _110->prealloc
	l	%r1,.L38-.L28(%r13)	# tmp245,
	bas	%r14,0(%r1,%r12)	#,
.LVL71:
	j	.L21	#
.LVL72:
.L26:
.LBE4:
	.loc 1 112 0
	l	%r1,.L70-.L28(%r13)	# tmp248,
	bas	%r14,0(%r1,%r12)	#,
.LVL73:
.L22:
	l	%r4,256(%r15)	#,
	lm	%r6,%r15,224(%r15)	#,,
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
	br	%r4	#
	.align	4	#
.L70:
	.long	__stack_chk_fail@PLTOFF
.L69:
	.long	.LC70@GOTOFF
.L68:
	.long	fclose@PLTOFF
.L67:
	.long	.LC67@GOTOFF
.L66:
	.long	.LC65@GOTOFF
.L65:
	.long	.LC63@GOTOFF
.L64:
	.long	fread@PLTOFF
.L63:
	.long	.LC60@GOTOFF
.L62:
	.long	.LC58@GOTOFF
.L61:
	.long	fopen@PLTOFF
.L60:
	.long	bfile@GOTOFF
.L59:
	.long	.LC54@GOTOFF
.L58:
	.long	.LC52@GOTOFF
.L57:
	.long	cmssubdl@PLTOFF
.L56:
	.long	.LC49@GOTOFF
.L55:
	.long	system@PLTOFF
.L54:
	.long	.LC46@GOTOFF
.L53:
	.long	.LC44@GOTOFF
.L52:
	.long	33554432
.L51:
	.long	.LC42@GOTOFF
.L50:
	.long	__svc204@PLTOFF
.L49:
	.long	__say@PLTOFF
.L48:
	.long	.LC38@GOTOFF
.L47:
	.long	.LC36@GOTOFF
.L46:
	.long	cmssubcr@PLTOFF
.L45:
	.long	.LC31@GOTOFF
.L44:
	.long	sub@GOTOFF
.L43:
	.long	.LC30@GOTOFF
.L42:
	.long	.LC28@GOTOFF
.L41:
	.long	getenv@PLTOFF
.L40:
	.long	.LC25@GOTOFF
.L39:
	.long	.LC23@GOTOFF
.L38:
	.long	fprintf@PLTOFF
.L37:
	.long	.LC19@GOTOFF
.L36:
	.long	environ@GOT
.L35:
	.long	__getgbl@PLTOFF
.L34:
	.long	.LC1@GOTOFF
.L33:
	.long	.LC0@GOTOFF
.L32:
	.long	.LC12@GOTOFF+18
.L31:
	.long	.LC12@GOTOFF+7
.L30:
	.long	.LC12@GOTOFF
.L29:
	.long	_GLOBAL_OFFSET_TABLE_-.L28
	.align	2	#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	2
	.type	bfile, @object
	.size	bfile, 11
bfile:
	.string	"\243\205\242\243\361K\204\201\243\201"
.text
.Letext0:
	.file 2 "../include/stddef.h"
	.file 3 "../include/eplist.h"
	.file 4 "../include/__cmsfile.h"
	.file 5 "../include/usersave.h"
	.file 6 "../include/cmssubcom.h"
	.file 7 "../include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa32
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
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
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x14
	.4byte	0x35
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x20
	.byte	0x3
	.byte	0x1e
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x3
	.byte	0x20
	.4byte	0xc6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x3
	.byte	0x21
	.4byte	0xc6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x3
	.byte	0x22
	.4byte	0xc6
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x3
	.byte	0x23
	.4byte	0x33
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x25
	.4byte	0x33
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x26
	.4byte	0x33
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x28
	.4byte	0xd1
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x29
	.4byte	0xf0
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x8
	.4byte	0x52
	.uleb128 0x9
	.4byte	0x33
	.4byte	0xe1
	.uleb128 0xa
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xf0
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x113
	.uleb128 0xa
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x60
	.byte	0x4
	.byte	0x30
	.4byte	0x26a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x32
	.4byte	0x401
	.byte	0
	.uleb128 0xd
	.string	"pac"
	.byte	0x4
	.byte	0x34
	.4byte	0x411
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x35
	.4byte	0x33
	.byte	0x8
	.uleb128 0xe
	.4byte	0x3b9
	.byte	0xc
	.uleb128 0xd
	.string	"fd"
	.byte	0x4
	.byte	0x3f
	.4byte	0xfc
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.4byte	0x270
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.4byte	0xfc
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.4byte	0xfc
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x43
	.4byte	0xfc
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x44
	.4byte	0x3c
	.byte	0x28
	.uleb128 0xe
	.4byte	0x3e2
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4a
	.4byte	0xf5
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4c
	.4byte	0x41c
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4f
	.4byte	0x3c
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x50
	.4byte	0x3c
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.byte	0x51
	.4byte	0x3c
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x53
	.4byte	0xfc
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x54
	.4byte	0xfc
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.byte	0x57
	.4byte	0x3c
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x4
	.byte	0x58
	.4byte	0x3c
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0x59
	.4byte	0x3c
	.byte	0x54
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5a
	.4byte	0xfc
	.byte	0x58
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5b
	.4byte	0x52
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5c
	.4byte	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5d
	.4byte	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x4
	.byte	0x5e
	.4byte	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x4
	.byte	0x5f
	.4byte	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x5c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x4
	.4byte	0xf5
	.byte	0x4
	.byte	0x17
	.4byte	0x299
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x24
	.byte	0x4
	.byte	0x1f
	.4byte	0x306
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x4
	.byte	0x21
	.4byte	0x103
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x4
	.byte	0x22
	.4byte	0x324
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x4
	.byte	0x23
	.4byte	0x339
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x4
	.byte	0x24
	.4byte	0x339
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x4
	.byte	0x26
	.4byte	0x358
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x4
	.byte	0x27
	.4byte	0x36d
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x4
	.byte	0x28
	.4byte	0x36d
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x4
	.byte	0x29
	.4byte	0x392
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	0xfc
	.4byte	0x324
	.uleb128 0x13
	.4byte	0x26a
	.uleb128 0x13
	.4byte	0xc6
	.uleb128 0x13
	.4byte	0xfc
	.uleb128 0x13
	.4byte	0xc6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x306
	.uleb128 0x12
	.4byte	0x47
	.4byte	0x339
	.uleb128 0x13
	.4byte	0x26a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x12
	.4byte	0xfc
	.4byte	0x353
	.uleb128 0x13
	.4byte	0x26a
	.uleb128 0x13
	.4byte	0x353
	.byte	0
	.uleb128 0x8
	.4byte	0x3c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x33f
	.uleb128 0x12
	.4byte	0xfc
	.4byte	0x36d
	.uleb128 0x13
	.4byte	0x26a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x35e
	.uleb128 0x12
	.4byte	0xfc
	.4byte	0x387
	.uleb128 0x13
	.4byte	0x26a
	.uleb128 0x13
	.4byte	0x387
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x38d
	.uleb128 0x14
	.4byte	.LASF90
	.uleb128 0x7
	.byte	0x4
	.4byte	0x373
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.byte	0x39
	.4byte	0x3b9
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x4
	.byte	0x3b
	.4byte	0xfc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x4
	.byte	0x3c
	.4byte	0xfc
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x4
	.byte	0x36
	.4byte	0x3d2
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x4
	.byte	0x38
	.4byte	0x3d2
	.uleb128 0x18
	.4byte	0x398
	.byte	0
	.uleb128 0x9
	.4byte	0x113
	.4byte	0x3e2
	.uleb128 0xa
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.byte	0x45
	.4byte	0x401
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x4
	.byte	0x47
	.4byte	0x3c
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x4
	.byte	0x48
	.4byte	0x3c
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x411
	.uleb128 0xa
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x417
	.uleb128 0x8
	.4byte	0x299
	.uleb128 0x7
	.byte	0x4
	.4byte	0x113
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x4
	.byte	0x60
	.4byte	0x11a
	.uleb128 0x15
	.byte	0x60
	.byte	0x5
	.byte	0x14
	.4byte	0x44e
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x5
	.byte	0x16
	.4byte	0x44e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x5
	.byte	0x17
	.4byte	0x45e
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0xfc
	.4byte	0x45e
	.uleb128 0xa
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0xfc
	.4byte	0x46e
	.uleb128 0xa
	.4byte	0x25
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.byte	0x60
	.byte	0x5
	.byte	0x11
	.4byte	0x487
	.uleb128 0x17
	.4byte	.LASF12
	.byte	0x5
	.byte	0x13
	.4byte	0x487
	.uleb128 0x18
	.4byte	0x42d
	.byte	0
	.uleb128 0x9
	.4byte	0x497
	.4byte	0x497
	.uleb128 0xa
	.4byte	0x25
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF62
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x68
	.byte	0x5
	.byte	0xf
	.4byte	0x4ed
	.uleb128 0xe
	.4byte	0x46e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x5
	.byte	0x1a
	.4byte	0x113
	.byte	0x60
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x5
	.byte	0x1b
	.4byte	0x113
	.byte	0x61
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x5
	.byte	0x1c
	.4byte	0x4ed
	.byte	0x62
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x5
	.byte	0x1d
	.4byte	0x113
	.byte	0x64
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x5
	.byte	0x20
	.4byte	0x4fd
	.byte	0x65
	.byte	0
	.uleb128 0x9
	.4byte	0x113
	.4byte	0x4fd
	.uleb128 0xa
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x113
	.4byte	0x50d
	.uleb128 0xa
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x4
	.4byte	0xf5
	.byte	0x6
	.byte	0x15
	.4byte	0x566
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x49e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x59
	.uleb128 0x19
	.string	"sub"
	.byte	0x1
	.byte	0x73
	.4byte	0xfc
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x622
	.uleb128 0x1a
	.string	"usv"
	.byte	0x1
	.byte	0x73
	.4byte	0x566
	.4byte	.LLST0
	.uleb128 0x1a
	.string	"epl"
	.byte	0x1
	.byte	0x73
	.4byte	0x56c
	.4byte	.LLST1
	.uleb128 0x1a
	.string	"vp"
	.byte	0x1
	.byte	0x73
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0x75
	.4byte	0x622
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"vl"
	.byte	0x1
	.byte	0x76
	.4byte	0xfc
	.4byte	.LLST4
	.uleb128 0x1b
	.string	"al"
	.byte	0x1
	.byte	0x77
	.4byte	0xfc
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LVL6
	.4byte	0x606
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x52
	.uleb128 0x1f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x19
	.4byte	0xfc
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0x20
	.4byte	.LASF83
	.byte	0x1
	.byte	0x19
	.4byte	0xfc
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0x1
	.byte	0x19
	.4byte	0x9d2
	.4byte	.LLST7
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.byte	0x19
	.4byte	0x9d2
	.4byte	.LLST8
	.uleb128 0x1b
	.string	"rsn"
	.byte	0x1
	.byte	0x1b
	.4byte	0x50d
	.4byte	.LLST9
	.uleb128 0x1b
	.string	"rv"
	.byte	0x1
	.byte	0x1c
	.4byte	0xfc
	.4byte	.LLST10
	.uleb128 0x21
	.string	"str"
	.byte	0x1
	.byte	0x1d
	.4byte	0x622
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.uleb128 0x21
	.string	"epl"
	.byte	0x1
	.byte	0x1e
	.4byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x15
	.byte	0x20
	.byte	0x1
	.byte	0x1f
	.4byte	0x6ca
	.uleb128 0xd
	.string	"pl"
	.byte	0x1
	.byte	0x21
	.4byte	0x9d8
	.byte	0
	.uleb128 0xd
	.string	"f"
	.byte	0x1
	.byte	0x22
	.4byte	0x103
	.byte	0x18
	.byte	0
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.byte	0x23
	.4byte	0x6ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x22
	.4byte	.LASF85
	.byte	0x1
	.byte	0x28
	.4byte	0x9e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x2a
	.4byte	0x9fe
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7ff
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.4byte	0xfc
	.4byte	.LLST12
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0x4c
	.4byte	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.string	"ok"
	.byte	0x1
	.byte	0x4d
	.4byte	0xfc
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x7ad
	.uleb128 0x1b
	.string	"rv"
	.byte	0x1
	.byte	0x52
	.4byte	0xfc
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LVL51
	.4byte	0x75f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL54
	.4byte	0x778
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL57
	.4byte	0x797
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL60
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL49
	.4byte	0x7c9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	bfile
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL66
	.4byte	0x7d9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL69
	.4byte	0x7e9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL71
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x81e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL15
	.4byte	0x831
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0x844
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0x85d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0x887
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	sub
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0x8a0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL25
	.4byte	0x8b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL26
	.4byte	0x8d7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL30
	.4byte	0x8ea
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x907
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL34
	.4byte	0x926
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0x939
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x952
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL39
	.4byte	0x965
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL42
	.4byte	0x97e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL43
	.4byte	0x99d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0x9b9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	bfile
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	bfile
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x622
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x9e8
	.uleb128 0xa
	.4byte	0x25
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.4byte	0x52
	.4byte	0x9fe
	.uleb128 0xa
	.4byte	0x25
	.byte	0x2
	.uleb128 0xa
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x422
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xa14
	.uleb128 0xa
	.4byte	0x25
	.byte	0xa
	.byte	0
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.byte	0x12
	.4byte	0xa25
	.uleb128 0x5
	.byte	0x3
	.4byte	bfile
	.uleb128 0x8
	.4byte	0xa04
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x7
	.byte	0x49
	.4byte	0x9d2
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-1-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56-1-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x59
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"size_t"
.LASF52:
	.string	"close"
.LASF85:
	.string	"subc"
.LASF4:
	.string	"ssize_t"
.LASF31:
	.string	"sfsreason"
.LASF33:
	.string	"readpointer"
.LASF46:
	.string	"type"
.LASF63:
	.string	"usersave"
.LASF18:
	.string	"ckwd"
.LASF37:
	.string	"eofInd"
.LASF38:
	.string	"errorInd"
.LASF90:
	.string	"stat"
.LASF89:
	.string	"/home/dave/src/githib/cmslib/src/samples/test1"
.LASF50:
	.string	"extend"
.LASF61:
	.string	"gcc390global"
.LASF58:
	.string	"i_size"
.LASF39:
	.string	"isopen"
.LASF1:
	.string	"long int"
.LASF34:
	.string	"writepointer"
.LASF30:
	.string	"sfsrc"
.LASF88:
	.string	"test.c"
.LASF6:
	.string	"eplcmd"
.LASF62:
	.string	"double"
.LASF86:
	.string	"bfile"
.LASF27:
	.string	"buffersize"
.LASF44:
	.string	"_f_sfs"
.LASF66:
	.string	"__fill3"
.LASF68:
	.string	"__fill4"
.LASF19:
	.string	"accwork"
.LASF14:
	.string	"unsigned int"
.LASF70:
	.string	"cmssubcomreason"
.LASF29:
	.string	"byteptr"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"epfunret"
.LASF76:
	.string	"cmssub_exists"
.LASF22:
	.string	"blksize"
.LASF24:
	.string	"numrecs"
.LASF92:
	.string	"environ"
.LASF57:
	.string	"numblks"
.LASF79:
	.string	"cmssub_nocmscore"
.LASF67:
	.string	"usemflg"
.LASF72:
	.string	"cmssub_noname"
.LASF49:
	.string	"write"
.LASF77:
	.string	"cmssub_nocore"
.LASF87:
	.string	"GNU C11 5.4.0 20160609 -m31 -march=g5 -mesa -g -O -fno-use-linker-plugin -fexec-charset=IBM-1047 -fstack-protector-strong"
.LASF40:
	.string	"stdfile"
.LASF0:
	.string	"sizetype"
.LASF12:
	.string	"__fill1"
.LASF47:
	.string	"open"
.LASF8:
	.string	"eplargnd"
.LASF41:
	.string	"_f_unknown"
.LASF42:
	.string	"_f_term"
.LASF71:
	.string	"cmssub_ok"
.LASF73:
	.string	"cmssub_namelong"
.LASF69:
	.string	"__ftype"
.LASF28:
	.string	"hiwater"
.LASF13:
	.string	"eplscant"
.LASF56:
	.string	"token"
.LASF60:
	.string	"smallsave"
.LASF9:
	.string	"epluword"
.LASF55:
	.string	"inode"
.LASF65:
	.string	"useuflg"
.LASF82:
	.string	"cmssub_gone"
.LASF15:
	.string	"unsigned char"
.LASF17:
	.string	"__file"
.LASF21:
	.string	"oflags"
.LASF75:
	.string	"cmssub_nocallback"
.LASF45:
	.string	"__access"
.LASF54:
	.string	"diskix"
.LASF59:
	.string	"FILE"
.LASF78:
	.string	"cmssub_badname"
.LASF36:
	.string	"recform"
.LASF23:
	.string	"lrecl"
.LASF5:
	.string	"char"
.LASF80:
	.string	"cmssub_badcms"
.LASF26:
	.string	"buffer"
.LASF64:
	.string	"usectyp"
.LASF35:
	.string	"ungetCh"
.LASF32:
	.string	"offset"
.LASF74:
	.string	"cmssub_nohandle"
.LASF20:
	.string	"ftype"
.LASF51:
	.string	"flush"
.LASF84:
	.string	"argv"
.LASF25:
	.string	"i_mode"
.LASF81:
	.string	"cmssub_nonesuch"
.LASF53:
	.string	"fstat"
.LASF48:
	.string	"read"
.LASF83:
	.string	"argc"
.LASF7:
	.string	"eplargbg"
.LASF10:
	.string	"eparglst"
.LASF16:
	.string	"eplist"
.LASF43:
	.string	"_f_pipe"
.LASF91:
	.string	"main"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
