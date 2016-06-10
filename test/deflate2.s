	.file	"deflate.c"
# GNU C (SUSE Linux) version 4.3.4 [gcc-4_3-branch revision 152973] (s390x-suse-linux)
#	compiled by GNU C version 4.3.4 [gcc-4_3-branch revision 152973], GMP version 4.2.3, MPFR version 2.3.2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed deflate.i -m31 -march=g5 -mtune=z9-109
# -mesa -Wno-format -Werror -Wall -fexec-charset=IBM-1047 -fverbose-asm
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

# Compiler executable checksum: 508d862eaf4205b444fc28fd448263b4

.globl deflate_copyright
	.section	.rodata
	.align	2
	.type	deflate_copyright, @object
	.size	deflate_copyright, 68
deflate_copyright:
	.string	"@\204\205\206\223\201\243\205@\361K\362K\370@\303\226\227\250\231\211\207\210\243@\361\371\371\365`\362\360\361\363@\321\205\201\225`\223\226\244\227@\307\201\211\223\223\250@\201\225\204@\324\201\231\222@\301\204\223\205\231@"
	.align	4
	.type	configuration_table, @object
	.size	configuration_table, 120
configuration_table:
# good_length:
	.word	0
# max_lazy:
	.word	0
# nice_length:
	.word	0
# max_chain:
	.word	0
# func:
	.long	deflate_stored
# good_length:
	.word	4
# max_lazy:
	.word	4
# nice_length:
	.word	8
# max_chain:
	.word	4
# func:
	.long	deflate_fast
# good_length:
	.word	4
# max_lazy:
	.word	5
# nice_length:
	.word	16
# max_chain:
	.word	8
# func:
	.long	deflate_fast
# good_length:
	.word	4
# max_lazy:
	.word	6
# nice_length:
	.word	32
# max_chain:
	.word	32
# func:
	.long	deflate_fast
# good_length:
	.word	4
# max_lazy:
	.word	4
# nice_length:
	.word	16
# max_chain:
	.word	16
# func:
	.long	deflate_slow
# good_length:
	.word	8
# max_lazy:
	.word	16
# nice_length:
	.word	32
# max_chain:
	.word	32
# func:
	.long	deflate_slow
# good_length:
	.word	8
# max_lazy:
	.word	16
# nice_length:
	.word	128
# max_chain:
	.word	128
# func:
	.long	deflate_slow
# good_length:
	.word	8
# max_lazy:
	.word	32
# nice_length:
	.word	128
# max_chain:
	.word	256
# func:
	.long	deflate_slow
# good_length:
	.word	32
# max_lazy:
	.word	128
# nice_length:
	.word	258
# max_chain:
	.word	1024
# func:
	.long	deflate_slow
# good_length:
	.word	32
# max_lazy:
	.word	258
# nice_length:
	.word	258
# max_chain:
	.word	4096
# func:
	.long	deflate_slow
.text
	.align	4
.globl deflateInit_
	.type	deflateInit_, @function
deflateInit_:
.LFB2:
	stm	%r6,%r15,24(%r15)	#,,
.LCFI0:
	basr	%r13,0	#
.L3:
	ahi	%r15,-128	#,
.LCFI1:
	lr	%r11,%r15	#,
.LCFI2:
	st	%r2,124(%r11)	# strm, strm
	st	%r3,120(%r11)	# level, level
	st	%r4,116(%r11)	# version, version
	st	%r5,112(%r11)	# stream_size, stream_size
	lhi	%r1,0	#,
	st	%r1,96(%r15)	#,
	l	%r1,116(%r11)	#, version
	st	%r1,100(%r15)	#,
	l	%r1,112(%r11)	#, stream_size
	st	%r1,104(%r15)	#,
	l	%r2,124(%r11)	#, strm
	l	%r3,120(%r11)	#, level
	lhi	%r4,8	#,
	lhi	%r5,15	#,
	lhi	%r6,8	#,
	l	%r1,.L4-.L3(%r13)	# tmp46,
	basr	%r14,%r1	#, tmp46
	lr	%r1,%r2	# D.1879,
	lr	%r2,%r1	#, <result>
	l	%r4,184(%r11)	#,
	lm	%r6,%r15,152(%r11)	#,,
	br	%r4	#
	.align	4	#
.L4:
	.long	deflateInit2_
	.align	2	#
.LFE2:
	.size	deflateInit_, .-deflateInit_
	.section	.rodata
	.align	2
	.type	my_version.1893, @object
	.size	my_version.1893, 6
my_version.1893:
	.string	"\361K\362K\370"
.text
	.align	4
.globl deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
.LFB3:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI3:
	basr	%r13,0	#
.L22:
	ahi	%r15,-136	#,
.LCFI4:
	lr	%r11,%r15	#,
.LCFI5:
	st	%r2,116(%r11)	# strm, strm
	st	%r3,112(%r11)	# level, level
	st	%r4,108(%r11)	# method, method
	st	%r5,104(%r11)	# windowBits, windowBits
	st	%r6,100(%r11)	# memLevel, memLevel
	lhi	%r1,1	#,
	st	%r1,128(%r11)	#, wrap
	l	%r1,236(%r11)	# tmp110, version
	ltr	%r1,%r1	# tmp110
	je	.L6	#,
	l	%r1,236(%r11)	# tmp111, version
	ic	%r2,0(%r1)	# D.1897,
	l	%r1,.L23-.L22(%r13)	# tmp112,
	ic	%r1,0(%r1)	# D.1898, my_version
	n	%r2,.L24-.L22(%r13)	# tmp113,
	n	%r1,.L24-.L22(%r13)	# tmp114,
	cr	%r2,%r1	# tmp113, tmp114
	jne	.L6	#,
	l	%r1,240(%r11)	# tmp115, stream_size
	chi	%r1,56	# tmp115,
	je	.L7	#,
.L6:
	lhi	%r2,-6	#,
	st	%r2,96(%r11)	#, D.1899
	j	.L8	#
.L7:
	l	%r1,116(%r11)	# tmp116, strm
	ltr	%r1,%r1	# tmp116
	jne	.L9	#,
	lhi	%r3,-2	#,
	st	%r3,96(%r11)	#, D.1899
	j	.L8	#
.L9:
	l	%r1,116(%r11)	# tmp117, strm
	lhi	%r2,0	#,
	st	%r2,24(%r1)	#, <variable>.msg
	l	%r1,116(%r11)	# tmp118, strm
	l	%r1,32(%r1)	# D.1900, <variable>.zalloc
	ltr	%r1,%r1	# D.1900
	jne	.L10	#,
	l	%r1,116(%r11)	# tmp119, strm
	l	%r3,.L25-.L22(%r13)	#,
	st	%r3,32(%r1)	#, <variable>.zalloc
	l	%r1,116(%r11)	# tmp120, strm
	lhi	%r2,0	#,
	st	%r2,40(%r1)	#, <variable>.opaque
.L10:
	l	%r1,116(%r11)	# tmp121, strm
	l	%r1,36(%r1)	# D.1901, <variable>.zfree
	ltr	%r1,%r1	# D.1901
	jne	.L11	#,
	l	%r1,116(%r11)	# tmp122, strm
	l	%r3,.L26-.L22(%r13)	#,
	st	%r3,36(%r1)	#, <variable>.zfree
.L11:
	l	%r1,112(%r11)	# tmp123, level
	chi	%r1,-1	# tmp123,
	jne	.L12	#,
	lhi	%r1,6	#,
	st	%r1,112(%r11)	#, level
.L12:
	l	%r1,104(%r11)	# tmp124, windowBits
	ltr	%r1,%r1	# tmp124
	jhe	.L13	#,
	lhi	%r2,0	#,
	st	%r2,128(%r11)	#, wrap
	l	%r1,104(%r11)	# tmp125, windowBits
	lcr	%r1,%r1	# tmp126, tmp125
	st	%r1,104(%r11)	# tmp126, windowBits
	j	.L14	#
.L13:
	l	%r1,104(%r11)	# tmp127, windowBits
	chi	%r1,15	# tmp127,
	jle	.L14	#,
	lhi	%r3,2	#,
	st	%r3,128(%r11)	#, wrap
	l	%r1,104(%r11)	#, windowBits
	ahi	%r1,-16	#,
	st	%r1,104(%r11)	#, windowBits
.L14:
	l	%r1,100(%r11)	# tmp128, memLevel
	ltr	%r1,%r1	# tmp128
	jle	.L15	#,
	l	%r1,100(%r11)	# tmp129, memLevel
	chi	%r1,9	# tmp129,
	jh	.L15	#,
	l	%r1,108(%r11)	# tmp130, method
	chi	%r1,8	# tmp130,
	jne	.L15	#,
	l	%r1,104(%r11)	# tmp131, windowBits
	chi	%r1,7	# tmp131,
	jle	.L15	#,
	l	%r1,104(%r11)	# tmp132, windowBits
	chi	%r1,15	# tmp132,
	jh	.L15	#,
	l	%r1,112(%r11)	# tmp133, level
	ltr	%r1,%r1	# tmp133
	jl	.L15	#,
	l	%r1,112(%r11)	# tmp134, level
	chi	%r1,9	# tmp134,
	jh	.L15	#,
	l	%r1,232(%r11)	# tmp135, strategy
	ltr	%r1,%r1	# tmp135
	jl	.L15	#,
	l	%r1,232(%r11)	# tmp136, strategy
	chi	%r1,4	# tmp136,
	jle	.L16	#,
.L15:
	lhi	%r2,-2	#,
	st	%r2,96(%r11)	#, D.1899
	j	.L8	#
.L16:
	l	%r1,104(%r11)	# tmp137, windowBits
	chi	%r1,8	# tmp137,
	jne	.L17	#,
	lhi	%r3,9	#,
	st	%r3,104(%r11)	#, windowBits
.L17:
	l	%r1,116(%r11)	# tmp138, strm
	l	%r5,32(%r1)	# D.1904, <variable>.zalloc
	l	%r1,116(%r11)	# tmp139, strm
	l	%r1,40(%r1)	# D.1905, <variable>.opaque
	lr	%r2,%r1	#, D.1905
	lhi	%r3,1	#,
	lhi	%r4,5828	#,
	basr	%r14,%r5	#, D.1904
	lr	%r1,%r2	# D.1906,
	st	%r1,124(%r11)	# D.1906, s
	l	%r1,124(%r11)	# tmp140, s
	ltr	%r1,%r1	# tmp140
	jne	.L18	#,
	lhi	%r1,-4	#,
	st	%r1,96(%r11)	#, D.1899
	j	.L8	#
.L18:
	l	%r1,116(%r11)	# tmp141, strm
	l	%r2,124(%r11)	#, s
	st	%r2,28(%r1)	#, <variable>.state
	l	%r1,124(%r11)	# tmp142, s
	l	%r3,116(%r11)	#, strm
	st	%r3,0(%r1)	#, <variable>.strm
	l	%r1,124(%r11)	# tmp143, s
	l	%r2,128(%r11)	#, wrap
	st	%r2,24(%r1)	#, <variable>.wrap
	l	%r1,124(%r11)	# tmp144, s
	lhi	%r3,0	#,
	st	%r3,28(%r1)	#, <variable>.gzhead
	l	%r2,104(%r11)	# windowBits.0, windowBits
	l	%r1,124(%r11)	# tmp145, s
	st	%r2,48(%r1)	# windowBits.0, <variable>.w_bits
	l	%r1,124(%r11)	# tmp146, s
	l	%r1,48(%r1)	# D.1908, <variable>.w_bits
	lr	%r2,%r1	# D.1909, D.1908
	lhi	%r1,1	# tmp147,
	sll	%r1,0(%r2)	# D.1910, D.1909
	lr	%r2,%r1	# D.1911, D.1910
	l	%r1,124(%r11)	# tmp148, s
	st	%r2,44(%r1)	# D.1911, <variable>.w_size
	l	%r1,124(%r11)	# tmp149, s
	l	%r1,44(%r1)	# D.1912, <variable>.w_size
	lr	%r2,%r1	# D.1913, D.1912
	ahi	%r2,-1	# D.1913,
	l	%r1,124(%r11)	# tmp150, s
	st	%r2,52(%r1)	# D.1913, <variable>.w_mask
	l	%r1,100(%r11)	# D.1914, memLevel
	ahi	%r1,7	# D.1914,
	lr	%r2,%r1	# D.1915, D.1914
	l	%r1,124(%r11)	# tmp151, s
	st	%r2,80(%r1)	# D.1915, <variable>.hash_bits
	l	%r1,124(%r11)	# tmp152, s
	l	%r1,80(%r1)	# D.1916, <variable>.hash_bits
	lr	%r2,%r1	# D.1917, D.1916
	lhi	%r1,1	# tmp153,
	sll	%r1,0(%r2)	# D.1918, D.1917
	lr	%r2,%r1	# D.1919, D.1918
	l	%r1,124(%r11)	# tmp154, s
	st	%r2,76(%r1)	# D.1919, <variable>.hash_size
	l	%r1,124(%r11)	# tmp155, s
	l	%r1,76(%r1)	# D.1920, <variable>.hash_size
	lr	%r2,%r1	# D.1921, D.1920
	ahi	%r2,-1	# D.1921,
	l	%r1,124(%r11)	# tmp156, s
	st	%r2,84(%r1)	# D.1921, <variable>.hash_mask
	l	%r1,124(%r11)	# tmp157, s
	l	%r1,80(%r1)	# D.1922, <variable>.hash_bits
	ahi	%r1,2	# D.1923,
	lhi	%r4,3	# tmp159,
	lr	%r3,%r1	# tmp158, D.1923
	lhi	%r2,0	#,
	dr	%r2,%r4	# tmp158, tmp159
	lr	%r2,%r3	# D.1924, tmp158
	l	%r1,124(%r11)	# tmp160, s
	st	%r2,88(%r1)	# D.1924, <variable>.hash_shift
	l	%r1,116(%r11)	# tmp161, strm
	l	%r5,32(%r1)	# D.1925, <variable>.zalloc
	l	%r1,116(%r11)	# tmp162, strm
	l	%r2,40(%r1)	# D.1926, <variable>.opaque
	l	%r1,124(%r11)	# tmp163, s
	l	%r1,44(%r1)	# D.1927, <variable>.w_size
	lr	%r3,%r1	#, D.1927
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.1925
	lr	%r1,%r2	# D.1928,
	lr	%r2,%r1	# D.1929, D.1928
	l	%r1,124(%r11)	# tmp164, s
	st	%r2,56(%r1)	# D.1929, <variable>.window
	l	%r1,116(%r11)	# tmp165, strm
	l	%r5,32(%r1)	# D.1930, <variable>.zalloc
	l	%r1,116(%r11)	# tmp166, strm
	l	%r2,40(%r1)	# D.1931, <variable>.opaque
	l	%r1,124(%r11)	# tmp167, s
	l	%r1,44(%r1)	# D.1932, <variable>.w_size
	lr	%r3,%r1	#, D.1932
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.1930
	lr	%r1,%r2	# D.1933,
	lr	%r2,%r1	# D.1934, D.1933
	l	%r1,124(%r11)	# tmp168, s
	st	%r2,64(%r1)	# D.1934, <variable>.prev
	l	%r1,116(%r11)	# tmp169, strm
	l	%r5,32(%r1)	# D.1935, <variable>.zalloc
	l	%r1,116(%r11)	# tmp170, strm
	l	%r2,40(%r1)	# D.1936, <variable>.opaque
	l	%r1,124(%r11)	# tmp171, s
	l	%r1,76(%r1)	# D.1937, <variable>.hash_size
	lr	%r3,%r1	#, D.1937
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.1935
	lr	%r1,%r2	# D.1938,
	lr	%r2,%r1	# D.1939, D.1938
	l	%r1,124(%r11)	# tmp172, s
	st	%r2,68(%r1)	# D.1939, <variable>.head
	l	%r2,124(%r11)	# tmp173, s
	lhi	%r1,4096	# tmp174,
	lhi	%r3,0	#,
	st	%r3,1728(%r1,%r2)	#, <variable>.high_water
	l	%r2,100(%r11)	# D.1940, memLevel
	ahi	%r2,6	# D.1940,
	lhi	%r1,1	# tmp176,
	sll	%r1,0(%r2)	# D.1941, D.1940
	lr	%r3,%r1	# D.1942, D.1941
	l	%r2,124(%r11)	# tmp177, s
	lhi	%r1,4096	# tmp178,
	st	%r3,1692(%r1,%r2)	# D.1942, <variable>.lit_bufsize
	l	%r1,116(%r11)	# tmp180, strm
	l	%r5,32(%r1)	# D.1943, <variable>.zalloc
	l	%r1,116(%r11)	# tmp181, strm
	l	%r3,40(%r1)	# D.1944, <variable>.opaque
	l	%r2,124(%r11)	# tmp182, s
	lhi	%r1,4096	# tmp183,
	l	%r1,1692(%r1,%r2)	# D.1945, <variable>.lit_bufsize
	lr	%r2,%r3	#, D.1944
	lr	%r3,%r1	#, D.1945
	lhi	%r4,4	#,
	basr	%r14,%r5	#, D.1943
	lr	%r1,%r2	# D.1946,
	st	%r1,132(%r11)	# D.1946, overlay
	l	%r2,132(%r11)	# overlay.1, overlay
	l	%r1,124(%r11)	# tmp185, s
	st	%r2,8(%r1)	# overlay.1, <variable>.pending_buf
	l	%r2,124(%r11)	# tmp186, s
	lhi	%r1,4096	# tmp187,
	l	%r1,1692(%r1,%r2)	# D.1948, <variable>.lit_bufsize
	lr	%r2,%r1	# D.1949, D.1948
	sll	%r2,2	# D.1949,
	l	%r1,124(%r11)	# tmp189, s
	st	%r2,12(%r1)	# D.1949, <variable>.pending_buf_size
	l	%r1,124(%r11)	# tmp190, s
	l	%r1,56(%r1)	# D.1952, <variable>.window
	ltr	%r1,%r1	# D.1952
	je	.L19	#,
	l	%r1,124(%r11)	# tmp191, s
	l	%r1,64(%r1)	# D.1953, <variable>.prev
	ltr	%r1,%r1	# D.1953
	je	.L19	#,
	l	%r1,124(%r11)	# tmp192, s
	l	%r1,68(%r1)	# D.1954, <variable>.head
	ltr	%r1,%r1	# D.1954
	je	.L19	#,
	l	%r1,124(%r11)	# tmp193, s
	l	%r1,8(%r1)	# D.1955, <variable>.pending_buf
	ltr	%r1,%r1	# D.1955
	jne	.L20	#,
.L19:
	l	%r1,124(%r11)	# tmp194, s
	lhi	%r2,666	#,
	st	%r2,4(%r1)	#, <variable>.status
	l	%r1,.L27-.L22(%r13)	# tmp195,
	l	%r2,24(%r1)	# D.1956, z_errmsg
	l	%r1,116(%r11)	# tmp196, strm
	st	%r2,24(%r1)	# D.1956, <variable>.msg
	l	%r2,116(%r11)	#, strm
	l	%r1,.L28-.L22(%r13)	# tmp197,
	basr	%r14,%r1	#, tmp197
	lhi	%r3,-4	#,
	st	%r3,96(%r11)	#, D.1899
	j	.L8	#
.L20:
	l	%r2,124(%r11)	# tmp198, s
	lhi	%r1,4096	# tmp199,
	l	%r1,1692(%r1,%r2)	# D.1957, <variable>.lit_bufsize
	srl	%r1,1	# D.1958,
	sll	%r1,1	# D.1959,
	l	%r3,132(%r11)	# D.1960, overlay
	ar	%r3,%r1	# D.1960, D.1959
	l	%r2,124(%r11)	# tmp201, s
	lhi	%r1,4096	# tmp202,
	st	%r3,1700(%r1,%r2)	# D.1960, <variable>.d_buf
	l	%r1,124(%r11)	# tmp204, s
	l	%r3,8(%r1)	# D.1961, <variable>.pending_buf
	l	%r2,124(%r11)	# tmp205, s
	lhi	%r1,4096	# tmp206,
	l	%r1,1692(%r1,%r2)	# D.1962, <variable>.lit_bufsize
	mhi	%r1,3	# D.1963,
	ar	%r3,%r1	# D.1964, D.1963
	l	%r2,124(%r11)	# tmp208, s
	lhi	%r1,4096	# tmp209,
	st	%r3,1688(%r1,%r2)	# D.1964, <variable>.l_buf
	l	%r1,124(%r11)	# tmp211, s
	l	%r2,112(%r11)	#, level
	st	%r2,132(%r1)	#, <variable>.level
	l	%r1,124(%r11)	# tmp212, s
	l	%r3,232(%r11)	#, strategy
	st	%r3,136(%r1)	#, <variable>.strategy
	l	%r1,108(%r11)	# tmp213, method
	lr	%r2,%r1	# D.1965, tmp213
	l	%r1,124(%r11)	# tmp214, s
	stc	%r2,36(%r1)	# D.1965, <variable>.method
	l	%r2,116(%r11)	#, strm
	l	%r1,.L29-.L22(%r13)	# tmp215,
	basr	%r14,%r1	#, tmp215
	lr	%r1,%r2	# D.1966,
	st	%r1,96(%r11)	# D.1966, D.1899
.L8:
	l	%r1,96(%r11)	# <result>, D.1899
	lr	%r2,%r1	#, <result>
	l	%r4,192(%r11)	#,
	lm	%r11,%r15,180(%r11)	#,,
	br	%r4	#
	.align	4	#
.L29:
	.long	deflateReset
.L28:
	.long	deflateEnd
.L27:
	.long	z_errmsg
.L26:
	.long	zcfree
.L25:
	.long	zcalloc
.L24:
	.long	255
.L23:
	.long	my_version.1893
	.align	2	#
.LFE3:
	.size	deflateInit2_, .-deflateInit2_
	.align	4
.globl deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
.LFB4:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI6:
	basr	%r13,0	#
.L44:
	ahi	%r15,-136	#,
.LCFI7:
	lr	%r11,%r15	#,
.LCFI8:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# dictionary, dictionary
	st	%r4,100(%r11)	# dictLength, dictLength
	l	%r1,108(%r11)	# tmp99, strm
	ltr	%r1,%r1	# tmp99
	je	.L31	#,
	l	%r1,108(%r11)	# tmp100, strm
	l	%r1,28(%r1)	# D.2016, <variable>.state
	ltr	%r1,%r1	# D.2016
	je	.L31	#,
	l	%r1,104(%r11)	# tmp101, dictionary
	ltr	%r1,%r1	# tmp101
	jne	.L32	#,
.L31:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2017
	j	.L33	#
.L32:
	l	%r1,108(%r11)	# tmp102, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,112(%r11)	#, s
	l	%r1,112(%r11)	# tmp103, s
	l	%r3,24(%r1)	#, <variable>.wrap
	st	%r3,124(%r11)	#, wrap
	l	%r1,124(%r11)	# tmp104, wrap
	chi	%r1,2	# tmp104,
	je	.L34	#,
	l	%r1,124(%r11)	# tmp105, wrap
	chi	%r1,1	# tmp105,
	jne	.L35	#,
	l	%r1,112(%r11)	# tmp106, s
	l	%r1,4(%r1)	# D.2021, <variable>.status
	chi	%r1,42	# D.2021,
	jne	.L34	#,
.L35:
	l	%r1,112(%r11)	# tmp107, s
	l	%r1,116(%r1)	# D.2022, <variable>.lookahead
	ltr	%r1,%r1	# D.2022
	je	.L36	#,
.L34:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2017
	j	.L33	#
.L36:
	l	%r1,124(%r11)	# tmp108, wrap
	chi	%r1,1	# tmp108,
	jne	.L37	#,
	l	%r1,108(%r11)	# tmp109, strm
	l	%r1,48(%r1)	# D.2023, <variable>.adler
	lr	%r2,%r1	#, D.2023
	l	%r3,104(%r11)	#, dictionary
	l	%r4,100(%r11)	#, dictLength
	l	%r1,.L45-.L44(%r13)	# tmp110,
	basr	%r14,%r1	#, tmp110
	l	%r1,108(%r11)	# tmp111, strm
	st	%r2,48(%r1)	# D.2024, <variable>.adler
.L37:
	l	%r1,112(%r11)	# tmp112, s
	lhi	%r2,0	#,
	st	%r2,24(%r1)	#, <variable>.wrap
	l	%r1,112(%r11)	# tmp113, s
	l	%r1,44(%r1)	# D.2025, <variable>.w_size
	cl	%r1,100(%r11)	# D.2025, dictLength
	jh	.L38	#,
	l	%r1,124(%r11)	# tmp114, wrap
	ltr	%r1,%r1	# tmp114
	jne	.L39	#,
	l	%r1,112(%r11)	# tmp115, s
	l	%r2,68(%r1)	# D.2026, <variable>.head
	l	%r1,112(%r11)	# tmp116, s
	l	%r1,76(%r1)	# D.2027, <variable>.hash_size
	ahi	%r1,-1	# D.2028,
	sll	%r1,1	# D.2029,
	ar	%r1,%r2	# D.2030, D.2026
	lhi	%r3,0	#,
	sth	%r3,0(%r1)	#,* D.2030
	l	%r1,112(%r11)	# tmp117, s
	l	%r2,68(%r1)	# D.2031, <variable>.head
	l	%r1,112(%r11)	# tmp118, s
	l	%r1,76(%r1)	# D.2032, <variable>.hash_size
	a	%r1,.L46-.L44(%r13)	# D.2033,
	sll	%r1,1	# D.2034,
	lhi	%r3,0	#,
	lr	%r4,%r1	#, D.2034
	l	%r1,.L47-.L44(%r13)	# tmp119,
	basr	%r14,%r1	#, tmp119
	l	%r1,112(%r11)	# tmp120, s
	lhi	%r2,0	#,
	st	%r2,108(%r1)	#, <variable>.strstart
	l	%r1,112(%r11)	# tmp121, s
	lhi	%r3,0	#,
	st	%r3,92(%r1)	#, <variable>.block_start
	l	%r2,112(%r11)	# tmp122, s
	lhi	%r1,4096	# tmp123,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
.L39:
	l	%r1,112(%r11)	# tmp125, s
	l	%r2,44(%r1)	# D.2035, <variable>.w_size
	l	%r1,100(%r11)	# tmp126, dictLength
	sr	%r1,%r2	# D.2036, D.2035
	l	%r2,104(%r11)	#, dictionary
	ar	%r2,%r1	#, D.2036
	st	%r2,104(%r11)	#, dictionary
	l	%r1,112(%r11)	# tmp127, s
	l	%r3,44(%r1)	#, <variable>.w_size
	st	%r3,100(%r11)	#, dictLength
.L38:
	l	%r1,108(%r11)	# tmp128, strm
	l	%r2,4(%r1)	#, <variable>.avail_in
	st	%r2,128(%r11)	#, avail
	l	%r1,108(%r11)	# tmp129, strm
	l	%r3,0(%r1)	#, <variable>.next_in
	st	%r3,132(%r11)	#, next
	l	%r1,108(%r11)	# tmp130, strm
	l	%r2,100(%r11)	#, dictLength
	st	%r2,4(%r1)	#, <variable>.avail_in
	l	%r2,104(%r11)	# dictionary.2, dictionary
	l	%r1,108(%r11)	# tmp131, strm
	st	%r2,0(%r1)	# dictionary.2, <variable>.next_in
	l	%r2,112(%r11)	#, s
	l	%r1,.L48-.L44(%r13)	# tmp132,
	basr	%r14,%r1	#, tmp132
	j	.L40	#
.L42:
	l	%r1,112(%r11)	# tmp133, s
	l	%r3,108(%r1)	#, <variable>.strstart
	st	%r3,116(%r11)	#, str
	l	%r1,112(%r11)	# tmp134, s
	l	%r1,116(%r1)	# D.2038, <variable>.lookahead
	lr	%r2,%r1	#, D.2038
	ahi	%r2,-2	#,
	st	%r2,120(%r11)	#, n
.L41:
	l	%r1,112(%r11)	# tmp135, s
	l	%r2,72(%r1)	# D.2039, <variable>.ins_h
	l	%r1,112(%r11)	# tmp136, s
	l	%r1,88(%r1)	# D.2040, <variable>.hash_shift
	lr	%r3,%r2	# D.2042, D.2039
	sll	%r3,0(%r1)	# D.2042, D.2041
	l	%r1,112(%r11)	# tmp137, s
	l	%r2,56(%r1)	# D.2043, <variable>.window
	l	%r1,116(%r11)	# D.2044, str
	ahi	%r1,2	# D.2044,
	ar	%r1,%r2	# D.2045, D.2043
	ic	%r1,0(%r1)	# D.2046,* D.2045
	n	%r1,.L49-.L44(%r13)	# D.2047,
	lr	%r2,%r3	# D.2048, D.2042
	xr	%r2,%r1	# D.2048, D.2047
	l	%r1,112(%r11)	# tmp138, s
	l	%r1,84(%r1)	# D.2049, <variable>.hash_mask
	nr	%r2,%r1	# D.2050, D.2049
	l	%r1,112(%r11)	# tmp139, s
	st	%r2,72(%r1)	# D.2050, <variable>.ins_h
	l	%r1,112(%r11)	# tmp140, s
	l	%r2,64(%r1)	# D.2051, <variable>.prev
	l	%r1,112(%r11)	# tmp141, s
	l	%r1,52(%r1)	# D.2052, <variable>.w_mask
	n	%r1,116(%r11)	# D.2053, str
	sll	%r1,1	# D.2054,
	lr	%r3,%r2	# D.2055, D.2051
	ar	%r3,%r1	# D.2055, D.2054
	l	%r1,112(%r11)	# tmp142, s
	l	%r2,68(%r1)	# D.2056, <variable>.head
	l	%r1,112(%r11)	# tmp143, s
	l	%r1,72(%r1)	# D.2057, <variable>.ins_h
	sll	%r1,1	# D.2058,
	ar	%r1,%r2	# D.2059, D.2056
	lh	%r1,0(%r1)	# D.2060,* D.2059
	sth	%r1,0(%r3)	# D.2060,* D.2055
	l	%r1,112(%r11)	# tmp144, s
	l	%r2,68(%r1)	# D.2061, <variable>.head
	l	%r1,112(%r11)	# tmp145, s
	l	%r1,72(%r1)	# D.2062, <variable>.ins_h
	sll	%r1,1	# D.2063,
	ar	%r2,%r1	# D.2064, D.2063
	l	%r1,116(%r11)	# tmp146, str
	sth	%r1,0(%r2)	# D.2065,* D.2064
	l	%r3,116(%r11)	#, str
	ahi	%r3,1	#,
	st	%r3,116(%r11)	#, str
	l	%r1,120(%r11)	#, n
	ahi	%r1,-1	#,
	st	%r1,120(%r11)	#, n
	l	%r1,120(%r11)	# tmp147, n
	ltr	%r1,%r1	# tmp147
	jne	.L41	#,
	l	%r1,112(%r11)	# tmp148, s
	l	%r2,116(%r11)	#, str
	st	%r2,108(%r1)	#, <variable>.strstart
	l	%r1,112(%r11)	# tmp149, s
	lhi	%r3,2	#,
	st	%r3,116(%r1)	#, <variable>.lookahead
	l	%r2,112(%r11)	#, s
	l	%r1,.L48-.L44(%r13)	# tmp150,
	basr	%r14,%r1	#, tmp150
.L40:
	l	%r1,112(%r11)	# tmp151, s
	l	%r1,116(%r1)	# D.2066, <variable>.lookahead
	cl	%r1,.L50-.L44(%r13)	# D.2066,
	jh	.L42	#,
	l	%r1,112(%r11)	# tmp152, s
	l	%r2,108(%r1)	# D.2067, <variable>.strstart
	l	%r1,112(%r11)	# tmp153, s
	l	%r1,116(%r1)	# D.2068, <variable>.lookahead
	ar	%r2,%r1	# D.2069, D.2068
	l	%r1,112(%r11)	# tmp154, s
	st	%r2,108(%r1)	# D.2069, <variable>.strstart
	l	%r1,112(%r11)	# tmp155, s
	l	%r1,108(%r1)	# D.2070, <variable>.strstart
	lr	%r2,%r1	# D.2071, D.2070
	l	%r1,112(%r11)	# tmp156, s
	st	%r2,92(%r1)	# D.2071, <variable>.block_start
	l	%r1,112(%r11)	# tmp157, s
	l	%r3,116(%r1)	# D.2072, <variable>.lookahead
	l	%r2,112(%r11)	# tmp158, s
	lhi	%r1,4096	# tmp159,
	st	%r3,1716(%r1,%r2)	# D.2072, <variable>.insert
	l	%r1,112(%r11)	# tmp161, s
	lhi	%r2,0	#,
	st	%r2,116(%r1)	#, <variable>.lookahead
	l	%r1,112(%r11)	# tmp162, s
	lhi	%r3,2	#,
	st	%r3,120(%r1)	#, <variable>.prev_length
	l	%r1,112(%r11)	# tmp163, s
	l	%r2,120(%r1)	# D.2073, <variable>.prev_length
	l	%r1,112(%r11)	# tmp164, s
	st	%r2,96(%r1)	# D.2073, <variable>.match_length
	l	%r1,112(%r11)	# tmp165, s
	lhi	%r2,0	#,
	st	%r2,104(%r1)	#, <variable>.match_available
	l	%r1,108(%r11)	# tmp166, strm
	l	%r3,132(%r11)	#, next
	st	%r3,0(%r1)	#, <variable>.next_in
	l	%r1,108(%r11)	# tmp167, strm
	l	%r2,128(%r11)	#, avail
	st	%r2,4(%r1)	#, <variable>.avail_in
	l	%r1,112(%r11)	# tmp168, s
	l	%r3,124(%r11)	#, wrap
	st	%r3,24(%r1)	#, <variable>.wrap
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.2017
.L33:
	l	%r1,96(%r11)	# <result>, D.2017
	lr	%r2,%r1	#, <result>
	l	%r4,192(%r11)	#,
	lm	%r11,%r15,180(%r11)	#,,
	br	%r4	#
	.align	4	#
.L50:
	.long	2
.L49:
	.long	255
.L48:
	.long	fill_window
.L47:
	.long	memset
.L46:
	.long	2147483647
.L45:
	.long	adler32
	.align	2	#
.LFE4:
	.size	deflateSetDictionary, .-deflateSetDictionary
	.align	4
.globl deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
.LFB5:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI9:
	basr	%r13,0	#
.L61:
	ahi	%r15,-120	#,
.LCFI10:
	lr	%r11,%r15	#,
.LCFI11:
	st	%r2,108(%r11)	# strm, strm
	l	%r1,108(%r11)	# tmp59, strm
	ltr	%r1,%r1	# tmp59
	je	.L52	#,
	l	%r1,108(%r11)	# tmp60, strm
	l	%r1,28(%r1)	# D.2091, <variable>.state
	ltr	%r1,%r1	# D.2091
	je	.L52	#,
	l	%r1,108(%r11)	# tmp61, strm
	l	%r1,32(%r1)	# D.2092, <variable>.zalloc
	ltr	%r1,%r1	# D.2092
	je	.L52	#,
	l	%r1,108(%r11)	# tmp62, strm
	l	%r1,36(%r1)	# D.2093, <variable>.zfree
	ltr	%r1,%r1	# D.2093
	jne	.L53	#,
.L52:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2094
	j	.L54	#
.L53:
	l	%r1,108(%r11)	# tmp63, strm
	lhi	%r2,0	#,
	st	%r2,20(%r1)	#, <variable>.total_out
	l	%r1,108(%r11)	# tmp64, strm
	l	%r2,20(%r1)	# D.2095, <variable>.total_out
	l	%r1,108(%r11)	# tmp65, strm
	st	%r2,8(%r1)	# D.2095, <variable>.total_in
	l	%r1,108(%r11)	# tmp66, strm
	lhi	%r2,0	#,
	st	%r2,24(%r1)	#, <variable>.msg
	l	%r1,108(%r11)	# tmp67, strm
	lhi	%r2,2	#,
	st	%r2,44(%r1)	#, <variable>.data_type
	l	%r1,108(%r11)	# tmp68, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,116(%r11)	#, s
	l	%r1,116(%r11)	# tmp69, s
	lhi	%r2,0	#,
	st	%r2,20(%r1)	#, <variable>.pending
	l	%r1,116(%r11)	# tmp70, s
	l	%r2,8(%r1)	# D.2096, <variable>.pending_buf
	l	%r1,116(%r11)	# tmp71, s
	st	%r2,16(%r1)	# D.2096, <variable>.pending_out
	l	%r1,116(%r11)	# tmp72, s
	l	%r1,24(%r1)	# D.2097, <variable>.wrap
	ltr	%r1,%r1	# D.2097
	jhe	.L55	#,
	l	%r1,116(%r11)	# tmp73, s
	l	%r1,24(%r1)	# D.2098, <variable>.wrap
	lcr	%r2,%r1	# D.2099, D.2098
	l	%r1,116(%r11)	# tmp74, s
	st	%r2,24(%r1)	# D.2099, <variable>.wrap
.L55:
	l	%r1,116(%r11)	# tmp75, s
	l	%r1,24(%r1)	# D.2101, <variable>.wrap
	ltr	%r1,%r1	# D.2101
	je	.L56	#,
	lhi	%r1,42	#,
	st	%r1,100(%r11)	#, iftmp.3
	j	.L57	#
.L56:
	lhi	%r2,113	#,
	st	%r2,100(%r11)	#, iftmp.3
.L57:
	l	%r1,116(%r11)	# tmp76, s
	l	%r2,100(%r11)	#, iftmp.3
	st	%r2,4(%r1)	#, <variable>.status
	l	%r1,116(%r11)	# tmp77, s
	l	%r1,24(%r1)	# D.2103, <variable>.wrap
	chi	%r1,2	# D.2103,
	jne	.L58	#,
	lhi	%r2,0	#,
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	l	%r1,.L62-.L61(%r13)	# tmp78,
	basr	%r14,%r1	#, tmp78
	lr	%r1,%r2	# D.2104,
	st	%r1,104(%r11)	# D.2104, iftmp.4
	j	.L59	#
.L58:
	lhi	%r2,0	#,
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	l	%r1,.L63-.L61(%r13)	# tmp79,
	basr	%r14,%r1	#, tmp79
	lr	%r1,%r2	# D.2105,
	st	%r1,104(%r11)	# D.2105, iftmp.4
.L59:
	l	%r1,108(%r11)	# tmp80, strm
	l	%r2,104(%r11)	#, iftmp.4
	st	%r2,48(%r1)	#, <variable>.adler
	l	%r1,116(%r11)	# tmp81, s
	lhi	%r2,0	#,
	st	%r2,40(%r1)	#, <variable>.last_flush
	l	%r2,116(%r11)	#, s
	l	%r1,.L64-.L61(%r13)	# tmp82,
	basr	%r14,%r1	#, tmp82
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.2094
.L54:
	l	%r1,96(%r11)	# <result>, D.2094
	lr	%r2,%r1	#, <result>
	l	%r4,176(%r11)	#,
	lm	%r11,%r15,164(%r11)	#,,
	br	%r4	#
	.align	4	#
.L64:
	.long	_tr_init
.L63:
	.long	adler32
.L62:
	.long	crc32
	.align	2	#
.LFE5:
	.size	deflateResetKeep, .-deflateResetKeep
	.align	4
.globl deflateReset
	.type	deflateReset, @function
deflateReset:
.LFB6:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI12:
	basr	%r13,0	#
.L68:
	ahi	%r15,-112	#,
.LCFI13:
	lr	%r11,%r15	#,
.LCFI14:
	st	%r2,100(%r11)	# strm, strm
	l	%r2,100(%r11)	#, strm
	l	%r1,.L69-.L68(%r13)	# tmp47,
	basr	%r14,%r1	#, tmp47
	lr	%r1,%r2	# ret.5,
	st	%r1,108(%r11)	# ret.5, ret
	l	%r1,108(%r11)	# tmp48, ret
	ltr	%r1,%r1	# tmp48
	jne	.L66	#,
	l	%r1,100(%r11)	# tmp49, strm
	l	%r1,28(%r1)	# D.2123, <variable>.state
	lr	%r2,%r1	#, D.2123
	l	%r1,.L70-.L68(%r13)	# tmp50,
	basr	%r14,%r1	#, tmp50
.L66:
	l	%r1,108(%r11)	# D.2124, ret
	lr	%r2,%r1	#, <result>
	l	%r4,168(%r11)	#,
	lm	%r11,%r15,156(%r11)	#,,
	br	%r4	#
	.align	4	#
.L70:
	.long	lm_init
.L69:
	.long	deflateResetKeep
	.align	2	#
.LFE6:
	.size	deflateReset, .-deflateReset
	.align	4
.globl deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
.LFB7:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI15:
	ahi	%r15,-112	#,
.LCFI16:
	lr	%r11,%r15	#,
.LCFI17:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# head, head
	l	%r1,108(%r11)	# tmp49, strm
	ltr	%r1,%r1	# tmp49
	je	.L72	#,
	l	%r1,108(%r11)	# tmp50, strm
	l	%r1,28(%r1)	# D.2134, <variable>.state
	ltr	%r1,%r1	# D.2134
	jne	.L73	#,
.L72:
	lhi	%r1,-2	#,
	st	%r1,100(%r11)	#, D.2135
	j	.L74	#
.L73:
	l	%r1,108(%r11)	# tmp51, strm
	l	%r1,28(%r1)	# D.2136, <variable>.state
	l	%r1,24(%r1)	# D.2137, <variable>.wrap
	chi	%r1,2	# D.2137,
	je	.L75	#,
	lhi	%r2,-2	#,
	st	%r2,100(%r11)	#, D.2135
	j	.L74	#
.L75:
	l	%r1,108(%r11)	# tmp52, strm
	l	%r1,28(%r1)	# D.2138, <variable>.state
	l	%r2,104(%r11)	#, head
	st	%r2,28(%r1)	#, <variable>.gzhead
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.2135
.L74:
	l	%r1,100(%r11)	# <result>, D.2135
	lr	%r2,%r1	#, <result>
	l	%r4,168(%r11)	#,
	lm	%r11,%r15,156(%r11)	#,,
	br	%r4	#
.LFE7:
	.size	deflateSetHeader, .-deflateSetHeader
	.align	4
.globl deflatePending
	.type	deflatePending, @function
deflatePending:
.LFB8:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI18:
	ahi	%r15,-112	#,
.LCFI19:
	lr	%r11,%r15	#,
.LCFI20:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# pending, pending
	st	%r4,100(%r11)	# bits, bits
	l	%r1,108(%r11)	# tmp50, strm
	ltr	%r1,%r1	# tmp50
	je	.L79	#,
	l	%r1,108(%r11)	# tmp51, strm
	l	%r1,28(%r1)	# D.2150, <variable>.state
	ltr	%r1,%r1	# D.2150
	jne	.L80	#,
.L79:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2151
	j	.L81	#
.L80:
	l	%r1,104(%r11)	# tmp52, pending
	ltr	%r1,%r1	# tmp52
	je	.L82	#,
	l	%r1,108(%r11)	# tmp53, strm
	l	%r1,28(%r1)	# D.2152, <variable>.state
	l	%r2,20(%r1)	# D.2153, <variable>.pending
	l	%r1,104(%r11)	# tmp54, pending
	st	%r2,0(%r1)	# D.2153,
.L82:
	l	%r1,100(%r11)	# tmp55, bits
	ltr	%r1,%r1	# tmp55
	je	.L83	#,
	l	%r1,108(%r11)	# tmp56, strm
	l	%r2,28(%r1)	# D.2154, <variable>.state
	lhi	%r1,4096	# tmp57,
	l	%r2,1724(%r1,%r2)	# D.2155, <variable>.bi_valid
	l	%r1,100(%r11)	# tmp59, bits
	st	%r2,0(%r1)	# D.2155,
.L83:
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.2151
.L81:
	l	%r1,96(%r11)	# <result>, D.2151
	lr	%r2,%r1	#, <result>
	l	%r4,168(%r11)	#,
	lm	%r11,%r15,156(%r11)	#,,
	br	%r4	#
.LFE8:
	.size	deflatePending, .-deflatePending
	.align	4
.globl deflatePrime
	.type	deflatePrime, @function
deflatePrime:
.LFB9:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI21:
	basr	%r13,0	#
.L93:
	ahi	%r15,-120	#,
.LCFI22:
	lr	%r11,%r15	#,
.LCFI23:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# bits, bits
	st	%r4,100(%r11)	# value, value
	l	%r1,108(%r11)	# tmp61, strm
	ltr	%r1,%r1	# tmp61
	je	.L87	#,
	l	%r1,108(%r11)	# tmp62, strm
	l	%r1,28(%r1)	# D.2173, <variable>.state
	ltr	%r1,%r1	# D.2173
	jne	.L88	#,
.L87:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2174
	j	.L89	#
.L88:
	l	%r1,108(%r11)	# tmp63, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,112(%r11)	#, s
	l	%r2,112(%r11)	# tmp64, s
	lhi	%r1,4096	# tmp65,
	l	%r1,1700(%r1,%r2)	# D.2175, <variable>.d_buf
	lr	%r2,%r1	# D.2176, D.2175
	l	%r1,112(%r11)	# tmp67, s
	l	%r1,16(%r1)	# D.2177, <variable>.pending_out
	ahi	%r1,2	# D.2178,
	clr	%r2,%r1	# D.2176, D.2178
	jhe	.L90	#,
	lhi	%r3,-5	#,
	st	%r3,96(%r11)	#, D.2174
	j	.L89	#
.L90:
	l	%r2,112(%r11)	# tmp68, s
	lhi	%r1,4096	# tmp69,
	l	%r2,1724(%r1,%r2)	# D.2179, <variable>.bi_valid
	lhi	%r1,16	# tmp71,
	sr	%r1,%r2	# tmp72, D.2179
	st	%r1,116(%r11)	# tmp72, put
	l	%r1,116(%r11)	# tmp73, put
	c	%r1,104(%r11)	# tmp73, bits
	jle	.L91	#,
	l	%r1,104(%r11)	#, bits
	st	%r1,116(%r11)	#, put
.L91:
	l	%r2,112(%r11)	# tmp74, s
	lhi	%r1,4096	# tmp75,
	lh	%r4,1720(%r1,%r2)	# D.2180, <variable>.bi_buf
	lhi	%r2,1	# tmp77,
	l	%r1,116(%r11)	# tmp78, put
	lr	%r3,%r2	#, tmp77
	sll	%r3,0(%r1)	#, tmp78
	lr	%r1,%r3	# D.2181,
	ahi	%r1,-1	# D.2182,
	lr	%r3,%r1	# D.2183, D.2182
	n	%r3,100(%r11)	# D.2183, value
	l	%r2,112(%r11)	# tmp79, s
	lhi	%r1,4096	# tmp80,
	l	%r1,1724(%r1,%r2)	# D.2184, <variable>.bi_valid
	lr	%r2,%r3	#, D.2183
	sll	%r2,0(%r1)	#, D.2184
	lr	%r1,%r2	# D.2185,
	lr	%r3,%r4	#,
	or	%r3,%r1	#, D.2186
	l	%r2,112(%r11)	# tmp82, s
	lhi	%r1,4096	# tmp83,
	sth	%r3,1720(%r1,%r2)	# D.2187, <variable>.bi_buf
	l	%r2,112(%r11)	# tmp85, s
	lhi	%r1,4096	# tmp86,
	l	%r1,1724(%r1,%r2)	# D.2188, <variable>.bi_valid
	lr	%r3,%r1	# D.2189, D.2188
	a	%r3,116(%r11)	# D.2189, put
	l	%r2,112(%r11)	# tmp88, s
	lhi	%r1,4096	# tmp89,
	st	%r3,1724(%r1,%r2)	# D.2189, <variable>.bi_valid
	l	%r2,112(%r11)	#, s
	l	%r1,.L94-.L93(%r13)	# tmp91,
	basr	%r14,%r1	#, tmp91
	l	%r2,100(%r11)	# tmp92, value
	l	%r1,116(%r11)	# tmp93, put
	lr	%r3,%r2	#, tmp92
	sra	%r3,0(%r1)	#, tmp93
	lr	%r1,%r3	# tmp94,
	st	%r1,100(%r11)	# tmp94, value
	l	%r1,104(%r11)	# tmp95, bits
	s	%r1,116(%r11)	# tmp96, put
	st	%r1,104(%r11)	# tmp96, bits
	l	%r1,104(%r11)	# tmp97, bits
	ltr	%r1,%r1	# tmp97
	jne	.L90	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.2174
.L89:
	l	%r1,96(%r11)	# <result>, D.2174
	lr	%r2,%r1	#, <result>
	l	%r4,176(%r11)	#,
	lm	%r11,%r15,164(%r11)	#,,
	br	%r4	#
	.align	4	#
.L94:
	.long	_tr_flush_bits
	.align	2	#
.LFE9:
	.size	deflatePrime, .-deflatePrime
	.align	4
.globl deflateParams
	.type	deflateParams, @function
deflateParams:
.LFB10:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI24:
	basr	%r13,0	#
.L106:
	ahi	%r15,-128	#,
.LCFI25:
	lr	%r11,%r15	#,
.LCFI26:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# level, level
	st	%r4,100(%r11)	# strategy, strategy
	lhi	%r1,0	#,
	st	%r1,124(%r11)	#, err
	l	%r1,108(%r11)	# tmp66, strm
	ltr	%r1,%r1	# tmp66
	je	.L96	#,
	l	%r1,108(%r11)	# tmp67, strm
	l	%r1,28(%r1)	# D.2206, <variable>.state
	ltr	%r1,%r1	# D.2206
	jne	.L97	#,
.L96:
	lhi	%r2,-2	#,
	st	%r2,96(%r11)	#, D.2207
	j	.L98	#
.L97:
	l	%r1,108(%r11)	# tmp68, strm
	l	%r3,28(%r1)	#, <variable>.state
	st	%r3,116(%r11)	#, s
	l	%r1,104(%r11)	# tmp69, level
	chi	%r1,-1	# tmp69,
	jne	.L99	#,
	lhi	%r1,6	#,
	st	%r1,104(%r11)	#, level
.L99:
	l	%r1,104(%r11)	# tmp70, level
	ltr	%r1,%r1	# tmp70
	jl	.L100	#,
	l	%r1,104(%r11)	# tmp71, level
	chi	%r1,9	# tmp71,
	jh	.L100	#,
	l	%r1,100(%r11)	# tmp72, strategy
	ltr	%r1,%r1	# tmp72
	jl	.L100	#,
	l	%r1,100(%r11)	# tmp73, strategy
	chi	%r1,4	# tmp73,
	jle	.L101	#,
.L100:
	lhi	%r2,-2	#,
	st	%r2,96(%r11)	#, D.2207
	j	.L98	#
.L101:
	l	%r1,116(%r11)	# tmp74, s
	l	%r1,132(%r1)	# D.2210, <variable>.level
	l	%r2,.L107-.L106(%r13)	# tmp75,
	mhi	%r1,12	# tmp76,
	l	%r3,8(%r1,%r2)	#, <variable>.func
	st	%r3,120(%r11)	#, func
	l	%r1,116(%r11)	# tmp77, s
	l	%r1,136(%r1)	# D.2213, <variable>.strategy
	c	%r1,100(%r11)	# D.2213, strategy
	jne	.L102	#,
	l	%r1,104(%r11)	# level.6, level
	l	%r2,.L107-.L106(%r13)	# tmp78,
	mhi	%r1,12	# tmp79,
	l	%r1,8(%r1,%r2)	# D.2215, <variable>.func
	c	%r1,120(%r11)	# D.2215, func
	je	.L103	#,
.L102:
	l	%r1,108(%r11)	# tmp80, strm
	l	%r1,8(%r1)	# D.2216, <variable>.total_in
	ltr	%r1,%r1	# D.2216
	je	.L103	#,
	l	%r2,108(%r11)	#, strm
	lhi	%r3,5	#,
	l	%r1,.L108-.L106(%r13)	# tmp81,
	basr	%r14,%r1	#, tmp81
	lr	%r1,%r2	# err.7,
	st	%r1,124(%r11)	# err.7, err
	l	%r1,124(%r11)	# tmp82, err
	chi	%r1,-5	# tmp82,
	jne	.L103	#,
	l	%r1,116(%r11)	# tmp83, s
	l	%r1,20(%r1)	# D.2218, <variable>.pending
	ltr	%r1,%r1	# D.2218
	jne	.L103	#,
	lhi	%r1,0	#,
	st	%r1,124(%r11)	#, err
.L103:
	l	%r1,116(%r11)	# tmp84, s
	l	%r1,132(%r1)	# D.2219, <variable>.level
	c	%r1,104(%r11)	# D.2219, level
	je	.L104	#,
	l	%r1,116(%r11)	# tmp85, s
	l	%r2,104(%r11)	#, level
	st	%r2,132(%r1)	#, <variable>.level
	l	%r1,104(%r11)	# level.8, level
	l	%r2,.L107-.L106(%r13)	# tmp86,
	mhi	%r1,12	# tmp87,
	lh	%r1,2(%r1,%r2)	# D.2221, <variable>.max_lazy
	lr	%r2,%r1	# D.2222,
	n	%r2,.L109-.L106(%r13)	# D.2222,
	l	%r1,116(%r11)	# tmp88, s
	st	%r2,128(%r1)	# D.2222, <variable>.max_lazy_match
	l	%r1,104(%r11)	# level.9, level
	l	%r2,.L107-.L106(%r13)	# tmp89,
	mhi	%r1,12	# tmp90,
	lh	%r1,0(%r1,%r2)	# D.2224, <variable>.good_length
	lr	%r2,%r1	# D.2225,
	n	%r2,.L109-.L106(%r13)	# D.2225,
	l	%r1,116(%r11)	# tmp91, s
	st	%r2,140(%r1)	# D.2225, <variable>.good_match
	l	%r1,104(%r11)	# level.10, level
	l	%r2,.L107-.L106(%r13)	# tmp92,
	mhi	%r1,12	# tmp93,
	lh	%r1,4(%r1,%r2)	# D.2227, <variable>.nice_length
	lr	%r2,%r1	# D.2228,
	n	%r2,.L109-.L106(%r13)	# D.2228,
	l	%r1,116(%r11)	# tmp94, s
	st	%r2,144(%r1)	# D.2228, <variable>.nice_match
	l	%r1,104(%r11)	# level.11, level
	l	%r2,.L107-.L106(%r13)	# tmp95,
	mhi	%r1,12	# tmp96,
	lh	%r1,6(%r1,%r2)	# D.2230, <variable>.max_chain
	lr	%r2,%r1	# D.2231,
	n	%r2,.L109-.L106(%r13)	# D.2231,
	l	%r1,116(%r11)	# tmp97, s
	st	%r2,124(%r1)	# D.2231, <variable>.max_chain_length
.L104:
	l	%r1,116(%r11)	# tmp98, s
	l	%r3,100(%r11)	#, strategy
	st	%r3,136(%r1)	#, <variable>.strategy
	l	%r1,124(%r11)	#, err
	st	%r1,96(%r11)	#, D.2207
.L98:
	l	%r1,96(%r11)	# <result>, D.2207
	lr	%r2,%r1	#, <result>
	l	%r4,184(%r11)	#,
	lm	%r11,%r15,172(%r11)	#,,
	br	%r4	#
	.align	4	#
.L109:
	.long	65535
.L108:
	.long	deflate
.L107:
	.long	configuration_table
	.align	2	#
.LFE10:
	.size	deflateParams, .-deflateParams
	.align	4
.globl deflateTune
	.type	deflateTune, @function
deflateTune:
.LFB11:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI27:
	ahi	%r15,-128	#,
.LCFI28:
	lr	%r11,%r15	#,
.LCFI29:
	st	%r2,116(%r11)	# strm, strm
	st	%r3,112(%r11)	# good_length, good_length
	st	%r4,108(%r11)	# max_lazy, max_lazy
	st	%r5,104(%r11)	# nice_length, nice_length
	st	%r6,100(%r11)	# max_chain, max_chain
	l	%r1,116(%r11)	# tmp49, strm
	ltr	%r1,%r1	# tmp49
	je	.L111	#,
	l	%r1,116(%r11)	# tmp50, strm
	l	%r1,28(%r1)	# D.2258, <variable>.state
	ltr	%r1,%r1	# D.2258
	jne	.L112	#,
.L111:
	lhi	%r1,-2	#,
	st	%r1,96(%r11)	#, D.2259
	j	.L113	#
.L112:
	l	%r1,116(%r11)	# tmp51, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,124(%r11)	#, s
	l	%r2,112(%r11)	# good_length.12, good_length
	l	%r1,124(%r11)	# tmp52, s
	st	%r2,140(%r1)	# good_length.12, <variable>.good_match
	l	%r2,108(%r11)	# max_lazy.13, max_lazy
	l	%r1,124(%r11)	# tmp53, s
	st	%r2,128(%r1)	# max_lazy.13, <variable>.max_lazy_match
	l	%r1,124(%r11)	# tmp54, s
	l	%r2,104(%r11)	#, nice_length
	st	%r2,144(%r1)	#, <variable>.nice_match
	l	%r2,100(%r11)	# max_chain.14, max_chain
	l	%r1,124(%r11)	# tmp55, s
	st	%r2,124(%r1)	# max_chain.14, <variable>.max_chain_length
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.2259
.L113:
	l	%r1,96(%r11)	# <result>, D.2259
	lr	%r2,%r1	#, <result>
	l	%r4,184(%r11)	#,
	lm	%r11,%r15,172(%r11)	#,,
	br	%r4	#
.LFE11:
	.size	deflateTune, .-deflateTune
	.align	4
.globl deflateBound
	.type	deflateBound, @function
deflateBound:
.LFB12:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI30:
	basr	%r5,0	#
.L139:
	ahi	%r15,-152	#,
.LCFI31:
	lr	%r11,%r15	#,
.LCFI32:
	st	%r2,132(%r11)	# strm, strm
	st	%r3,128(%r11)	# sourceLen, sourceLen
	l	%r1,128(%r11)	# D.2282, sourceLen
	ahi	%r1,7	# D.2282,
	srl	%r1,3	# D.2283,
	lr	%r2,%r1	# D.2284, D.2283
	a	%r2,128(%r11)	# D.2284, sourceLen
	l	%r1,128(%r11)	# D.2285, sourceLen
	ahi	%r1,63	# D.2285,
	srl	%r1,6	# D.2286,
	ar	%r1,%r2	# D.2287, D.2284
	lr	%r2,%r1	#, D.2287
	ahi	%r2,5	#,
	st	%r2,140(%r11)	#, complen
	l	%r1,132(%r11)	# tmp78, strm
	ltr	%r1,%r1	# tmp78
	je	.L117	#,
	l	%r1,132(%r11)	# tmp79, strm
	l	%r1,28(%r1)	# D.2290, <variable>.state
	ltr	%r1,%r1	# D.2290
	jne	.L118	#,
.L117:
	l	%r1,140(%r11)	#, complen
	ahi	%r1,6	#,
	st	%r1,116(%r11)	#, D.2291
	j	.L119	#
.L118:
	l	%r1,132(%r11)	# tmp80, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,136(%r11)	#, s
	l	%r1,136(%r11)	# tmp81, s
	l	%r1,24(%r1)	#, <variable>.wrap
	st	%r1,120(%r11)	#, D.2292
	l	%r1,120(%r11)	#, D.2292
	chi	%r1,1	#,
	je	.L122	#,
	l	%r2,120(%r11)	#, D.2292
	chi	%r2,2	#,
	je	.L123	#,
	l	%r1,120(%r11)	#, D.2292
	ltr	%r1,%r1	#
	jne	.L138	#,
.L121:
	lhi	%r2,0	#,
	st	%r2,144(%r11)	#, wraplen
	j	.L124	#
.L122:
	l	%r1,136(%r11)	# tmp82, s
	l	%r1,108(%r1)	# D.2294, <variable>.strstart
	ltr	%r1,%r1	# D.2294
	je	.L125	#,
	lhi	%r1,10	#,
	st	%r1,124(%r11)	#, iftmp.15
	j	.L126	#
.L125:
	lhi	%r2,6	#,
	st	%r2,124(%r11)	#, iftmp.15
.L126:
	l	%r1,124(%r11)	#, iftmp.15
	st	%r1,144(%r11)	#, wraplen
	j	.L124	#
.L123:
	lhi	%r2,18	#,
	st	%r2,144(%r11)	#, wraplen
	l	%r1,136(%r11)	# tmp83, s
	l	%r1,28(%r1)	# D.2295, <variable>.gzhead
	ltr	%r1,%r1	# D.2295
	je	.L124	#,
	l	%r1,136(%r11)	# tmp84, s
	l	%r1,28(%r1)	# D.2296, <variable>.gzhead
	l	%r1,16(%r1)	# D.2297, <variable>.extra
	ltr	%r1,%r1	# D.2297
	je	.L128	#,
	l	%r1,136(%r11)	# tmp85, s
	l	%r1,28(%r1)	# D.2298, <variable>.gzhead
	l	%r1,20(%r1)	# D.2299, <variable>.extra_len
	a	%r1,144(%r11)	# D.2300, wraplen
	lr	%r2,%r1	#, D.2300
	ahi	%r2,2	#,
	st	%r2,144(%r11)	#, wraplen
.L128:
	l	%r1,136(%r11)	# tmp86, s
	l	%r1,28(%r1)	# D.2301, <variable>.gzhead
	l	%r2,28(%r1)	#, <variable>.name
	st	%r2,148(%r11)	#, str
	l	%r1,148(%r11)	# tmp87, str
	ltr	%r1,%r1	# tmp87
	je	.L129	#,
.L131:
	l	%r1,144(%r11)	#, wraplen
	ahi	%r1,1	#,
	st	%r1,144(%r11)	#, wraplen
	l	%r1,148(%r11)	# tmp88, str
	ic	%r1,0(%r1)	# D.2302,
	stc	%r1,111(%r11)	# D.2302,
	ic	%r1,111(%r11)	#,
	n	%r1,.L140-.L139(%r5)	# tmp90,
	ltr	%r1,%r1	# tmp90
	je	.L130	#,
	mvi	111(%r11),1	#,
.L130:
	ic	%r1,111(%r11)	# D.2303,
	l	%r2,148(%r11)	#, str
	ahi	%r2,1	#,
	st	%r2,148(%r11)	#, str
	n	%r1,.L140-.L139(%r5)	# tmp91,
	ltr	%r1,%r1	# tmp91
	jne	.L131	#,
.L129:
	l	%r1,136(%r11)	# tmp92, s
	l	%r1,28(%r1)	# D.2304, <variable>.gzhead
	l	%r2,36(%r1)	#, <variable>.comment
	st	%r2,148(%r11)	#, str
	l	%r1,148(%r11)	# tmp93, str
	ltr	%r1,%r1	# tmp93
	je	.L132	#,
.L134:
	l	%r1,144(%r11)	#, wraplen
	ahi	%r1,1	#,
	st	%r1,144(%r11)	#, wraplen
	l	%r1,148(%r11)	# tmp94, str
	ic	%r1,0(%r1)	# D.2305,
	stc	%r1,103(%r11)	# D.2305,
	ic	%r1,103(%r11)	#,
	n	%r1,.L140-.L139(%r5)	# tmp96,
	ltr	%r1,%r1	# tmp96
	je	.L133	#,
	mvi	103(%r11),1	#,
.L133:
	ic	%r1,103(%r11)	# D.2306,
	l	%r2,148(%r11)	#, str
	ahi	%r2,1	#,
	st	%r2,148(%r11)	#, str
	n	%r1,.L140-.L139(%r5)	# tmp97,
	ltr	%r1,%r1	# tmp97
	jne	.L134	#,
.L132:
	l	%r1,136(%r11)	# tmp98, s
	l	%r1,28(%r1)	# D.2307, <variable>.gzhead
	l	%r1,44(%r1)	# D.2308, <variable>.hcrc
	ltr	%r1,%r1	# D.2308
	je	.L124	#,
	l	%r1,144(%r11)	#, wraplen
	ahi	%r1,2	#,
	st	%r1,144(%r11)	#, wraplen
	j	.L124	#
.L138:
	lhi	%r2,6	#,
	st	%r2,144(%r11)	#, wraplen
.L124:
	l	%r1,136(%r11)	# tmp99, s
	l	%r1,48(%r1)	# D.2311, <variable>.w_bits
	chi	%r1,15	# D.2311,
	jne	.L135	#,
	l	%r1,136(%r11)	# tmp100, s
	l	%r1,80(%r1)	# D.2312, <variable>.hash_bits
	chi	%r1,15	# D.2312,
	je	.L136	#,
.L135:
	l	%r1,140(%r11)	#, complen
	a	%r1,144(%r11)	#, wraplen
	st	%r1,116(%r11)	#, D.2291
	j	.L119	#
.L136:
	l	%r1,128(%r11)	# tmp101, sourceLen
	srl	%r1,12	# D.2313,
	lr	%r2,%r1	# D.2314, D.2313
	a	%r2,128(%r11)	# D.2314, sourceLen
	l	%r1,128(%r11)	# tmp102, sourceLen
	srl	%r1,14	# D.2315,
	ar	%r2,%r1	# D.2316, D.2315
	l	%r1,128(%r11)	# tmp103, sourceLen
	srl	%r1,25	# D.2317,
	ar	%r1,%r2	# D.2318, D.2316
	a	%r1,144(%r11)	# D.2319, wraplen
	lr	%r2,%r1	#, D.2319
	ahi	%r2,7	#,
	st	%r2,116(%r11)	#, D.2291
.L119:
	l	%r1,116(%r11)	# <result>, D.2291
	lr	%r2,%r1	#, <result>
	l	%r4,208(%r11)	#,
	lm	%r11,%r15,196(%r11)	#,,
	br	%r4	#
	.align	4	#
.L140:
	.long	255
	.align	2	#
.LFE12:
	.size	deflateBound, .-deflateBound
	.align	4
	.type	putShortMSB, @function
putShortMSB:
.LFB13:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI33:
	ahi	%r15,-104	#,
.LCFI34:
	lr	%r11,%r15	#,
.LCFI35:
	st	%r2,100(%r11)	# s, s
	st	%r3,96(%r11)	# b, b
	l	%r1,100(%r11)	# tmp54, s
	l	%r2,8(%r1)	# D.2340, <variable>.pending_buf
	l	%r1,100(%r11)	# tmp55, s
	l	%r3,20(%r1)	# D.2341, <variable>.pending
	ar	%r2,%r3	# D.2343, D.2341
	l	%r1,96(%r11)	# tmp56, b
	srl	%r1,8	# D.2344,
	stc	%r1,0(%r2)	# D.2345,* D.2343
	lr	%r2,%r3	# D.2342, D.2341
	ahi	%r2,1	# D.2342,
	l	%r1,100(%r11)	# tmp57, s
	st	%r2,20(%r1)	# D.2342, <variable>.pending
	l	%r1,100(%r11)	# tmp58, s
	l	%r2,8(%r1)	# D.2346, <variable>.pending_buf
	l	%r1,100(%r11)	# tmp59, s
	l	%r3,20(%r1)	# D.2347, <variable>.pending
	ar	%r2,%r3	# D.2349, D.2347
	l	%r1,96(%r11)	# tmp60, b
	stc	%r1,0(%r2)	# D.2350,* D.2349
	lr	%r2,%r3	# D.2348, D.2347
	ahi	%r2,1	# D.2348,
	l	%r1,100(%r11)	# tmp61, s
	st	%r2,20(%r1)	# D.2348, <variable>.pending
	l	%r4,160(%r11)	#,
	lm	%r11,%r15,148(%r11)	#,,
	br	%r4	#
.LFE13:
	.size	putShortMSB, .-putShortMSB
	.align	4
	.type	flush_pending, @function
flush_pending:
.LFB14:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI36:
	basr	%r13,0	#
.L148:
	ahi	%r15,-112	#,
.LCFI37:
	lr	%r11,%r15	#,
.LCFI38:
	st	%r2,100(%r11)	# strm, strm
	l	%r1,100(%r11)	# tmp58, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,108(%r11)	#, s
	l	%r2,108(%r11)	#, s
	l	%r1,.L149-.L148(%r13)	# tmp59,
	basr	%r14,%r1	#, tmp59
	l	%r1,108(%r11)	# tmp60, s
	l	%r2,20(%r1)	#, <variable>.pending
	st	%r2,104(%r11)	#, len
	l	%r1,100(%r11)	# tmp61, strm
	l	%r1,16(%r1)	# D.2356, <variable>.avail_out
	cl	%r1,104(%r11)	# D.2356, len
	jhe	.L145	#,
	l	%r1,100(%r11)	# tmp62, strm
	l	%r2,16(%r1)	#, <variable>.avail_out
	st	%r2,104(%r11)	#, len
.L145:
	l	%r1,104(%r11)	# tmp63, len
	ltr	%r1,%r1	# tmp63
	je	.L147	#,
	l	%r1,100(%r11)	# tmp64, strm
	l	%r2,12(%r1)	# D.2357, <variable>.next_out
	l	%r1,108(%r11)	# tmp65, s
	l	%r1,16(%r1)	# D.2358, <variable>.pending_out
	lr	%r3,%r1	#, D.2358
	l	%r4,104(%r11)	#, len
	l	%r1,.L150-.L148(%r13)	# tmp66,
	basr	%r14,%r1	#, tmp66
	l	%r1,100(%r11)	# tmp67, strm
	l	%r1,12(%r1)	# D.2359, <variable>.next_out
	lr	%r2,%r1	# D.2360, D.2359
	a	%r2,104(%r11)	# D.2360, len
	l	%r1,100(%r11)	# tmp68, strm
	st	%r2,12(%r1)	# D.2360, <variable>.next_out
	l	%r1,108(%r11)	# tmp69, s
	l	%r1,16(%r1)	# D.2361, <variable>.pending_out
	lr	%r2,%r1	# D.2362, D.2361
	a	%r2,104(%r11)	# D.2362, len
	l	%r1,108(%r11)	# tmp70, s
	st	%r2,16(%r1)	# D.2362, <variable>.pending_out
	l	%r1,100(%r11)	# tmp71, strm
	l	%r1,20(%r1)	# D.2363, <variable>.total_out
	lr	%r2,%r1	# D.2364, D.2363
	a	%r2,104(%r11)	# D.2364, len
	l	%r1,100(%r11)	# tmp72, strm
	st	%r2,20(%r1)	# D.2364, <variable>.total_out
	l	%r1,100(%r11)	# tmp73, strm
	l	%r1,16(%r1)	# D.2365, <variable>.avail_out
	lr	%r2,%r1	# D.2366, D.2365
	s	%r2,104(%r11)	# D.2366, len
	l	%r1,100(%r11)	# tmp74, strm
	st	%r2,16(%r1)	# D.2366, <variable>.avail_out
	l	%r1,108(%r11)	# tmp75, s
	l	%r1,20(%r1)	# D.2367, <variable>.pending
	lr	%r2,%r1	# D.2368, D.2367
	s	%r2,104(%r11)	# D.2368, len
	l	%r1,108(%r11)	# tmp76, s
	st	%r2,20(%r1)	# D.2368, <variable>.pending
	l	%r1,108(%r11)	# tmp77, s
	l	%r1,20(%r1)	# D.2369, <variable>.pending
	ltr	%r1,%r1	# D.2369
	jne	.L147	#,
	l	%r1,108(%r11)	# tmp78, s
	l	%r2,8(%r1)	# D.2370, <variable>.pending_buf
	l	%r1,108(%r11)	# tmp79, s
	st	%r2,16(%r1)	# D.2370, <variable>.pending_out
.L147:
	l	%r4,168(%r11)	#,
	lm	%r11,%r15,156(%r11)	#,,
	br	%r4	#
	.align	4	#
.L150:
	.long	memcpy
.L149:
	.long	_tr_flush_bits
	.align	2	#
.LFE14:
	.size	flush_pending, .-flush_pending
	.align	4
.globl deflate
	.type	deflate, @function
deflate:
.LFB15:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI39:
	bras	%r13,.L265	#,
.L250:
	.align	4	#
.L264:
	.long	memset
.L263:
	.long	2147483647
.L262:
	.long	_tr_stored_block
.L261:
	.long	_tr_align
.L260:
	.long	configuration_table
.L259:
	.long	deflate_rle
.L258:
	.long	deflate_huff
.L257:
	.long	255
.L256:
	.long	flush_pending
.L255:
	.long	adler32
.L254:
	.long	65535
.L253:
	.long	putShortMSB
.L252:
	.long	crc32
.L251:
	.long	z_errmsg
	.align	2	#
.L265:
	ahi	%r15,-288	#,
.LCFI40:
	lr	%r11,%r15	#,
.LCFI41:
	st	%r2,244(%r11)	# strm, strm
	st	%r3,240(%r11)	# flush, flush
	l	%r1,244(%r11)	# tmp452, strm
	ltr	%r1,%r1	# tmp452
	je	.L152	#,
	l	%r1,244(%r11)	# tmp453, strm
	l	%r1,28(%r1)	# D.2400, <variable>.state
	ltr	%r1,%r1	# D.2400
	je	.L152	#,
	l	%r1,240(%r11)	# tmp454, flush
	chi	%r1,5	# tmp454,
	jh	.L152	#,
	l	%r1,240(%r11)	# tmp455, flush
	ltr	%r1,%r1	# tmp455
	jhe	.L153	#,
.L152:
	lhi	%r1,-2	#,
	st	%r1,104(%r11)	#, D.2401
	j	.L154	#
.L153:
	l	%r1,244(%r11)	# tmp456, strm
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,252(%r11)	#, s
	l	%r1,244(%r11)	# tmp457, strm
	l	%r1,12(%r1)	# D.2405, <variable>.next_out
	ltr	%r1,%r1	# D.2405
	je	.L155	#,
	l	%r1,244(%r11)	# tmp458, strm
	l	%r1,0(%r1)	# D.2406, <variable>.next_in
	ltr	%r1,%r1	# D.2406
	jne	.L156	#,
	l	%r1,244(%r11)	# tmp459, strm
	l	%r1,4(%r1)	# D.2407, <variable>.avail_in
	ltr	%r1,%r1	# D.2407
	jne	.L155	#,
.L156:
	l	%r1,252(%r11)	# tmp460, s
	l	%r1,4(%r1)	# D.2408, <variable>.status
	chi	%r1,666	# D.2408,
	jne	.L157	#,
	l	%r1,240(%r11)	# tmp461, flush
	chi	%r1,4	# tmp461,
	je	.L157	#,
.L155:
	l	%r1,.L251-.L250(%r13)	# tmp462,
	l	%r2,16(%r1)	# D.2409, z_errmsg
	l	%r1,244(%r11)	# tmp463, strm
	st	%r2,24(%r1)	# D.2409, <variable>.msg
	lhi	%r3,-2	#,
	st	%r3,104(%r11)	#, D.2401
	j	.L154	#
.L157:
	l	%r1,244(%r11)	# tmp464, strm
	l	%r1,16(%r1)	# D.2410, <variable>.avail_out
	ltr	%r1,%r1	# D.2410
	jne	.L158	#,
	l	%r1,.L251-.L250(%r13)	# tmp465,
	l	%r2,28(%r1)	# D.2411, z_errmsg
	l	%r1,244(%r11)	# tmp466, strm
	st	%r2,24(%r1)	# D.2411, <variable>.msg
	lhi	%r1,-5	#,
	st	%r1,104(%r11)	#, D.2401
	j	.L154	#
.L158:
	l	%r1,252(%r11)	# tmp467, s
	l	%r2,244(%r11)	#, strm
	st	%r2,0(%r1)	#, <variable>.strm
	l	%r1,252(%r11)	# tmp468, s
	l	%r3,40(%r1)	#, <variable>.last_flush
	st	%r3,248(%r11)	#, old_flush
	l	%r1,252(%r11)	# tmp469, s
	l	%r2,240(%r11)	#, flush
	st	%r2,40(%r1)	#, <variable>.last_flush
	l	%r1,252(%r11)	# tmp470, s
	l	%r1,4(%r1)	# D.2412, <variable>.status
	chi	%r1,42	# D.2412,
	jne	.L159	#,
	l	%r1,252(%r11)	# tmp471, s
	l	%r1,24(%r1)	# D.2413, <variable>.wrap
	chi	%r1,2	# D.2413,
	jne	.L160	#,
	lhi	%r2,0	#,
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	l	%r1,.L252-.L250(%r13)	# tmp472,
	basr	%r14,%r1	#, tmp472
	l	%r1,244(%r11)	# tmp473, strm
	st	%r2,48(%r1)	# D.2414, <variable>.adler
	l	%r1,252(%r11)	# tmp474, s
	l	%r3,8(%r1)	# D.2415, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp475, s
	l	%r2,20(%r1)	# D.2416, <variable>.pending
	lr	%r1,%r3	# D.2418, D.2415
	ar	%r1,%r2	# D.2418, D.2416
	mvi	0(%r1),31	#* D.2418,
	ahi	%r2,1	# D.2417,
	l	%r1,252(%r11)	# tmp476, s
	st	%r2,20(%r1)	# D.2417, <variable>.pending
	l	%r1,252(%r11)	# tmp477, s
	l	%r3,8(%r1)	# D.2419, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp478, s
	l	%r2,20(%r1)	# D.2420, <variable>.pending
	lr	%r1,%r3	# D.2422, D.2419
	ar	%r1,%r2	# D.2422, D.2420
	mvi	0(%r1),139	#* D.2422,
	ahi	%r2,1	# D.2421,
	l	%r1,252(%r11)	# tmp479, s
	st	%r2,20(%r1)	# D.2421, <variable>.pending
	l	%r1,252(%r11)	# tmp480, s
	l	%r3,8(%r1)	# D.2423, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp481, s
	l	%r2,20(%r1)	# D.2424, <variable>.pending
	lr	%r1,%r3	# D.2426, D.2423
	ar	%r1,%r2	# D.2426, D.2424
	mvi	0(%r1),8	#* D.2426,
	ahi	%r2,1	# D.2425,
	l	%r1,252(%r11)	# tmp482, s
	st	%r2,20(%r1)	# D.2425, <variable>.pending
	l	%r1,252(%r11)	# tmp483, s
	l	%r1,28(%r1)	# D.2427, <variable>.gzhead
	ltr	%r1,%r1	# D.2427
	jne	.L161	#,
	l	%r1,252(%r11)	# tmp484, s
	l	%r3,8(%r1)	# D.2428, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp485, s
	l	%r2,20(%r1)	# D.2429, <variable>.pending
	lr	%r1,%r3	# D.2431, D.2428
	ar	%r1,%r2	# D.2431, D.2429
	mvi	0(%r1),0	#* D.2431,
	ahi	%r2,1	# D.2430,
	l	%r1,252(%r11)	# tmp486, s
	st	%r2,20(%r1)	# D.2430, <variable>.pending
	l	%r1,252(%r11)	# tmp487, s
	l	%r3,8(%r1)	# D.2432, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp488, s
	l	%r2,20(%r1)	# D.2433, <variable>.pending
	lr	%r1,%r3	# D.2435, D.2432
	ar	%r1,%r2	# D.2435, D.2433
	mvi	0(%r1),0	#* D.2435,
	ahi	%r2,1	# D.2434,
	l	%r1,252(%r11)	# tmp489, s
	st	%r2,20(%r1)	# D.2434, <variable>.pending
	l	%r1,252(%r11)	# tmp490, s
	l	%r3,8(%r1)	# D.2436, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp491, s
	l	%r2,20(%r1)	# D.2437, <variable>.pending
	lr	%r1,%r3	# D.2439, D.2436
	ar	%r1,%r2	# D.2439, D.2437
	mvi	0(%r1),0	#* D.2439,
	ahi	%r2,1	# D.2438,
	l	%r1,252(%r11)	# tmp492, s
	st	%r2,20(%r1)	# D.2438, <variable>.pending
	l	%r1,252(%r11)	# tmp493, s
	l	%r3,8(%r1)	# D.2440, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp494, s
	l	%r2,20(%r1)	# D.2441, <variable>.pending
	lr	%r1,%r3	# D.2443, D.2440
	ar	%r1,%r2	# D.2443, D.2441
	mvi	0(%r1),0	#* D.2443,
	ahi	%r2,1	# D.2442,
	l	%r1,252(%r11)	# tmp495, s
	st	%r2,20(%r1)	# D.2442, <variable>.pending
	l	%r1,252(%r11)	# tmp496, s
	l	%r3,8(%r1)	# D.2444, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp497, s
	l	%r2,20(%r1)	# D.2445, <variable>.pending
	lr	%r1,%r3	# D.2447, D.2444
	ar	%r1,%r2	# D.2447, D.2445
	mvi	0(%r1),0	#* D.2447,
	ahi	%r2,1	# D.2446,
	l	%r1,252(%r11)	# tmp498, s
	st	%r2,20(%r1)	# D.2446, <variable>.pending
	l	%r1,252(%r11)	# tmp499, s
	l	%r2,8(%r1)	# D.2448, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp500, s
	l	%r1,20(%r1)	#, <variable>.pending
	st	%r1,108(%r11)	#, D.2449
	l	%r3,108(%r11)	#, D.2449
	ar	%r3,%r2	#, D.2448
	st	%r3,112(%r11)	#, D.2451
	l	%r1,252(%r11)	# tmp501, s
	l	%r1,132(%r1)	# D.2453, <variable>.level
	chi	%r1,9	# D.2453,
	je	.L162	#,
	l	%r1,252(%r11)	# tmp502, s
	l	%r1,136(%r1)	# D.2458, <variable>.strategy
	chi	%r1,1	# D.2458,
	jh	.L163	#,
	l	%r1,252(%r11)	# tmp503, s
	l	%r1,132(%r1)	# D.2459, <variable>.level
	chi	%r1,1	# D.2459,
	jh	.L164	#,
.L163:
	mvi	119(%r11),4	# iftmp.17,
	j	.L165	#
.L164:
	mvi	119(%r11),0	# iftmp.17,
.L165:
	ic	%r1,119(%r11)	#, iftmp.17
	stc	%r1,118(%r11)	#, iftmp.16
	j	.L166	#
.L162:
	mvi	118(%r11),2	# iftmp.16,
.L166:
	ic	%r3,118(%r11)	#, iftmp.16
	l	%r2,112(%r11)	#, D.2451
	stc	%r3,0(%r2)	#,
	l	%r2,108(%r11)	# D.2450, D.2449
	ahi	%r2,1	# D.2450,
	l	%r1,252(%r11)	# tmp504, s
	st	%r2,20(%r1)	# D.2450, <variable>.pending
	l	%r1,252(%r11)	# tmp505, s
	l	%r3,8(%r1)	# D.2460, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp506, s
	l	%r2,20(%r1)	# D.2461, <variable>.pending
	lr	%r1,%r3	# D.2463, D.2460
	ar	%r1,%r2	# D.2463, D.2461
	mvi	0(%r1),3	#* D.2463,
	ahi	%r2,1	# D.2462,
	l	%r1,252(%r11)	# tmp507, s
	st	%r2,20(%r1)	# D.2462, <variable>.pending
	l	%r1,252(%r11)	# tmp508, s
	lhi	%r2,113	#,
	st	%r2,4(%r1)	#, <variable>.status
	j	.L159	#
.L161:
	l	%r1,252(%r11)	# tmp509, s
	l	%r2,8(%r1)	# D.2464, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp510, s
	l	%r1,20(%r1)	#, <variable>.pending
	st	%r1,120(%r11)	#, D.2465
	l	%r3,120(%r11)	#, D.2465
	ar	%r3,%r2	#, D.2464
	st	%r3,124(%r11)	#, D.2467
	l	%r1,252(%r11)	# tmp511, s
	l	%r1,28(%r1)	# D.2468, <variable>.gzhead
	l	%r1,0(%r1)	# D.2469, <variable>.text
	mvi	135(%r11),0	# D.2470,
	ltr	%r1,%r1	# D.2469
	je	.L168	#,
	mvi	135(%r11),1	# D.2470,
.L168:
	l	%r1,252(%r11)	# tmp512, s
	l	%r1,28(%r1)	# D.2472, <variable>.gzhead
	l	%r1,44(%r1)	# D.2473, <variable>.hcrc
	ltr	%r1,%r1	# D.2473
	je	.L169	#,
	mvi	143(%r11),2	# iftmp.18,
	j	.L170	#
.L169:
	mvi	143(%r11),0	# iftmp.18,
.L170:
	ic	%r1,135(%r11)	#, D.2470
	ic	%r2,143(%r11)	#, iftmp.18
	ar	%r1,%r2	# tmp513,
	stc	%r1,151(%r11)	# tmp513, D.2474
	l	%r1,252(%r11)	# tmp514, s
	l	%r1,28(%r1)	# D.2476, <variable>.gzhead
	l	%r1,16(%r1)	# D.2477, <variable>.extra
	ltr	%r1,%r1	# D.2477
	jne	.L171	#,
	mvi	159(%r11),0	# iftmp.19,
	j	.L172	#
.L171:
	mvi	159(%r11),4	# iftmp.19,
.L172:
	ic	%r1,151(%r11)	#, D.2474
	ic	%r3,159(%r11)	#, iftmp.19
	ar	%r1,%r3	# tmp515,
	stc	%r1,167(%r11)	# tmp515, D.2478
	l	%r1,252(%r11)	# tmp516, s
	l	%r1,28(%r1)	# D.2480, <variable>.gzhead
	l	%r1,28(%r1)	# D.2481, <variable>.name
	ltr	%r1,%r1	# D.2481
	jne	.L173	#,
	mvi	175(%r11),0	# iftmp.20,
	j	.L174	#
.L173:
	mvi	175(%r11),8	# iftmp.20,
.L174:
	ic	%r1,167(%r11)	#, D.2478
	ic	%r2,175(%r11)	#, iftmp.20
	ar	%r1,%r2	# tmp517,
	stc	%r1,183(%r11)	# tmp517, D.2482
	l	%r1,252(%r11)	# tmp518, s
	l	%r1,28(%r1)	# D.2484, <variable>.gzhead
	l	%r1,36(%r1)	# D.2485, <variable>.comment
	ltr	%r1,%r1	# D.2485
	jne	.L175	#,
	mvi	191(%r11),0	# iftmp.21,
	j	.L176	#
.L175:
	mvi	191(%r11),16	# iftmp.21,
.L176:
	ic	%r1,183(%r11)	#, D.2482
	ic	%r3,191(%r11)	#, iftmp.21
	ar	%r1,%r3	# tmp519,
	l	%r2,124(%r11)	#, D.2467
	stc	%r1,0(%r2)	# D.2486,
	l	%r2,120(%r11)	# D.2466, D.2465
	ahi	%r2,1	# D.2466,
	l	%r1,252(%r11)	# tmp520, s
	st	%r2,20(%r1)	# D.2466, <variable>.pending
	l	%r1,252(%r11)	# tmp521, s
	l	%r2,8(%r1)	# D.2487, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp522, s
	l	%r3,20(%r1)	# D.2488, <variable>.pending
	ar	%r2,%r3	# D.2490, D.2488
	l	%r1,252(%r11)	# tmp523, s
	l	%r1,28(%r1)	# D.2491, <variable>.gzhead
	l	%r1,4(%r1)	# D.2492, <variable>.time
	stc	%r1,0(%r2)	# D.2493,* D.2490
	lr	%r2,%r3	# D.2489, D.2488
	ahi	%r2,1	# D.2489,
	l	%r1,252(%r11)	# tmp524, s
	st	%r2,20(%r1)	# D.2489, <variable>.pending
	l	%r1,252(%r11)	# tmp525, s
	l	%r2,8(%r1)	# D.2494, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp526, s
	l	%r3,20(%r1)	# D.2495, <variable>.pending
	ar	%r2,%r3	# D.2497, D.2495
	l	%r1,252(%r11)	# tmp527, s
	l	%r1,28(%r1)	# D.2498, <variable>.gzhead
	l	%r1,4(%r1)	# D.2499, <variable>.time
	srl	%r1,8	# D.2500,
	stc	%r1,0(%r2)	# D.2501,* D.2497
	lr	%r2,%r3	# D.2496, D.2495
	ahi	%r2,1	# D.2496,
	l	%r1,252(%r11)	# tmp528, s
	st	%r2,20(%r1)	# D.2496, <variable>.pending
	l	%r1,252(%r11)	# tmp529, s
	l	%r2,8(%r1)	# D.2502, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp530, s
	l	%r3,20(%r1)	# D.2503, <variable>.pending
	ar	%r2,%r3	# D.2505, D.2503
	l	%r1,252(%r11)	# tmp531, s
	l	%r1,28(%r1)	# D.2506, <variable>.gzhead
	l	%r1,4(%r1)	# D.2507, <variable>.time
	srl	%r1,16	# D.2508,
	stc	%r1,0(%r2)	# D.2509,* D.2505
	lr	%r2,%r3	# D.2504, D.2503
	ahi	%r2,1	# D.2504,
	l	%r1,252(%r11)	# tmp532, s
	st	%r2,20(%r1)	# D.2504, <variable>.pending
	l	%r1,252(%r11)	# tmp533, s
	l	%r2,8(%r1)	# D.2510, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp534, s
	l	%r3,20(%r1)	# D.2511, <variable>.pending
	ar	%r2,%r3	# D.2513, D.2511
	l	%r1,252(%r11)	# tmp535, s
	l	%r1,28(%r1)	# D.2514, <variable>.gzhead
	l	%r1,4(%r1)	# D.2515, <variable>.time
	srl	%r1,24	# D.2516,
	stc	%r1,0(%r2)	# D.2517,* D.2513
	lr	%r2,%r3	# D.2512, D.2511
	ahi	%r2,1	# D.2512,
	l	%r1,252(%r11)	# tmp536, s
	st	%r2,20(%r1)	# D.2512, <variable>.pending
	l	%r1,252(%r11)	# tmp537, s
	l	%r2,8(%r1)	# D.2518, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp538, s
	l	%r1,20(%r1)	#, <variable>.pending
	st	%r1,196(%r11)	#, D.2519
	l	%r3,196(%r11)	#, D.2519
	ar	%r3,%r2	#, D.2518
	st	%r3,200(%r11)	#, D.2521
	l	%r1,252(%r11)	# tmp539, s
	l	%r1,132(%r1)	# D.2523, <variable>.level
	chi	%r1,9	# D.2523,
	je	.L177	#,
	l	%r1,252(%r11)	# tmp540, s
	l	%r1,136(%r1)	# D.2528, <variable>.strategy
	chi	%r1,1	# D.2528,
	jh	.L178	#,
	l	%r1,252(%r11)	# tmp541, s
	l	%r1,132(%r1)	# D.2529, <variable>.level
	chi	%r1,1	# D.2529,
	jh	.L179	#,
.L178:
	mvi	207(%r11),4	# iftmp.23,
	j	.L180	#
.L179:
	mvi	207(%r11),0	# iftmp.23,
.L180:
	ic	%r1,207(%r11)	#, iftmp.23
	stc	%r1,206(%r11)	#, iftmp.22
	j	.L181	#
.L177:
	mvi	206(%r11),2	# iftmp.22,
.L181:
	ic	%r3,206(%r11)	#, iftmp.22
	l	%r2,200(%r11)	#, D.2521
	stc	%r3,0(%r2)	#,
	l	%r2,196(%r11)	# D.2520, D.2519
	ahi	%r2,1	# D.2520,
	l	%r1,252(%r11)	# tmp542, s
	st	%r2,20(%r1)	# D.2520, <variable>.pending
	l	%r1,252(%r11)	# tmp543, s
	l	%r2,8(%r1)	# D.2530, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp544, s
	l	%r3,20(%r1)	# D.2531, <variable>.pending
	ar	%r2,%r3	# D.2533, D.2531
	l	%r1,252(%r11)	# tmp545, s
	l	%r1,28(%r1)	# D.2534, <variable>.gzhead
	l	%r1,12(%r1)	# D.2535, <variable>.os
	stc	%r1,0(%r2)	# D.2536,* D.2533
	lr	%r2,%r3	# D.2532, D.2531
	ahi	%r2,1	# D.2532,
	l	%r1,252(%r11)	# tmp546, s
	st	%r2,20(%r1)	# D.2532, <variable>.pending
	l	%r1,252(%r11)	# tmp547, s
	l	%r1,28(%r1)	# D.2537, <variable>.gzhead
	l	%r1,16(%r1)	# D.2538, <variable>.extra
	ltr	%r1,%r1	# D.2538
	je	.L182	#,
	l	%r1,252(%r11)	# tmp548, s
	l	%r2,8(%r1)	# D.2539, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp549, s
	l	%r3,20(%r1)	# D.2540, <variable>.pending
	ar	%r2,%r3	# D.2542, D.2540
	l	%r1,252(%r11)	# tmp550, s
	l	%r1,28(%r1)	# D.2543, <variable>.gzhead
	l	%r1,20(%r1)	# D.2544, <variable>.extra_len
	stc	%r1,0(%r2)	# D.2545,* D.2542
	lr	%r2,%r3	# D.2541, D.2540
	ahi	%r2,1	# D.2541,
	l	%r1,252(%r11)	# tmp551, s
	st	%r2,20(%r1)	# D.2541, <variable>.pending
	l	%r1,252(%r11)	# tmp552, s
	l	%r2,8(%r1)	# D.2546, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp553, s
	l	%r3,20(%r1)	# D.2547, <variable>.pending
	ar	%r2,%r3	# D.2549, D.2547
	l	%r1,252(%r11)	# tmp554, s
	l	%r1,28(%r1)	# D.2550, <variable>.gzhead
	l	%r1,20(%r1)	# D.2551, <variable>.extra_len
	srl	%r1,8	# D.2552,
	stc	%r1,0(%r2)	# D.2553,* D.2549
	lr	%r2,%r3	# D.2548, D.2547
	ahi	%r2,1	# D.2548,
	l	%r1,252(%r11)	# tmp555, s
	st	%r2,20(%r1)	# D.2548, <variable>.pending
.L182:
	l	%r1,252(%r11)	# tmp556, s
	l	%r1,28(%r1)	# D.2554, <variable>.gzhead
	l	%r1,44(%r1)	# D.2555, <variable>.hcrc
	ltr	%r1,%r1	# D.2555
	je	.L183	#,
	l	%r1,244(%r11)	# tmp557, strm
	l	%r2,48(%r1)	# D.2556, <variable>.adler
	l	%r1,252(%r11)	# tmp558, s
	l	%r3,8(%r1)	# D.2557, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp559, s
	l	%r1,20(%r1)	# D.2558, <variable>.pending
	lr	%r4,%r1	#, D.2558
	l	%r1,.L252-.L250(%r13)	# tmp560,
	basr	%r14,%r1	#, tmp560
	l	%r1,244(%r11)	# tmp561, strm
	st	%r2,48(%r1)	# D.2559, <variable>.adler
.L183:
	l	%r1,252(%r11)	# tmp562, s
	lhi	%r2,0	#,
	st	%r2,32(%r1)	#, <variable>.gzindex
	l	%r1,252(%r11)	# tmp563, s
	lhi	%r3,69	#,
	st	%r3,4(%r1)	#, <variable>.status
	j	.L159	#
.L160:
	l	%r1,252(%r11)	# tmp564, s
	l	%r1,48(%r1)	# D.2560, <variable>.w_bits
	ahi	%r1,-8	# D.2561,
	sll	%r1,4	# D.2562,
	ahi	%r1,8	# D.2563,
	sll	%r1,8	# tmp565,
	st	%r1,256(%r11)	# tmp565, header
	l	%r1,252(%r11)	# tmp566, s
	l	%r1,136(%r1)	# D.2567, <variable>.strategy
	chi	%r1,1	# D.2567,
	jh	.L184	#,
	l	%r1,252(%r11)	# tmp567, s
	l	%r1,132(%r1)	# D.2568, <variable>.level
	chi	%r1,1	# D.2568,
	jh	.L185	#,
.L184:
	lhi	%r1,0	#,
	st	%r1,260(%r11)	#, level_flags
	j	.L186	#
.L185:
	l	%r1,252(%r11)	# tmp568, s
	l	%r1,132(%r1)	# D.2569, <variable>.level
	chi	%r1,5	# D.2569,
	jh	.L187	#,
	lhi	%r2,1	#,
	st	%r2,260(%r11)	#, level_flags
	j	.L186	#
.L187:
	l	%r1,252(%r11)	# tmp569, s
	l	%r1,132(%r1)	# D.2570, <variable>.level
	chi	%r1,6	# D.2570,
	jne	.L188	#,
	lhi	%r3,2	#,
	st	%r3,260(%r11)	#, level_flags
	j	.L186	#
.L188:
	lhi	%r1,3	#,
	st	%r1,260(%r11)	#, level_flags
.L186:
	l	%r1,260(%r11)	# tmp570, level_flags
	sll	%r1,6	# D.2571,
	l	%r2,256(%r11)	#, header
	or	%r2,%r1	#, D.2571
	st	%r2,256(%r11)	#, header
	l	%r1,252(%r11)	# tmp571, s
	l	%r1,108(%r1)	# D.2572, <variable>.strstart
	ltr	%r1,%r1	# D.2572
	je	.L189	#,
	oi	259(%r11),32	# header,
.L189:
	l	%r3,256(%r11)	#, header
	st	%r3,100(%r11)	#,
	lhi	%r1,31	#,
	st	%r1,96(%r11)	#,
	l	%r2,100(%r11)	#,
	st	%r2,208(%r11)	#, D.2573
	l	%r3,96(%r11)	#,
	cl	%r3,100(%r11)	#,
	jh	.L192	#,
	l	%r1,96(%r11)	#,
	ltr	%r1,%r1	#
	jl	.L191	#,
	l	%r2,96(%r11)	#,
	chi	%r2,1	#,
	je	.L190	#,
	l	%r3,100(%r11)	# tmp574,
	lhi	%r2,0	#,
	d	%r2,96(%r11)	# tmp574,
	st	%r2,208(%r11)	#, D.2573
	j	.L192	#
.L190:
	lhi	%r3,0	#,
	st	%r3,208(%r11)	#, D.2573
	j	.L192	#
.L191:
	l	%r1,208(%r11)	#, D.2573
	s	%r1,96(%r11)	#,
	st	%r1,208(%r11)	#, D.2573
.L192:
	l	%r1,256(%r11)	# tmp575, header
	s	%r1,208(%r11)	# D.2574, D.2573
	lr	%r2,%r1	#, D.2574
	ahi	%r2,31	#,
	st	%r2,256(%r11)	#, header
	l	%r1,252(%r11)	# tmp576, s
	lhi	%r3,113	#,
	st	%r3,4(%r1)	#, <variable>.status
	l	%r2,252(%r11)	#, s
	l	%r3,256(%r11)	#, header
	l	%r1,.L253-.L250(%r13)	# tmp577,
	basr	%r14,%r1	#, tmp577
	l	%r1,252(%r11)	# tmp578, s
	l	%r1,108(%r1)	# D.2575, <variable>.strstart
	ltr	%r1,%r1	# D.2575
	je	.L193	#,
	l	%r1,244(%r11)	# tmp579, strm
	l	%r1,48(%r1)	# D.2576, <variable>.adler
	srl	%r1,16	# D.2577,
	l	%r2,252(%r11)	#, s
	lr	%r3,%r1	#, D.2577
	l	%r1,.L253-.L250(%r13)	# tmp580,
	basr	%r14,%r1	#, tmp580
	l	%r1,244(%r11)	# tmp581, strm
	l	%r1,48(%r1)	# D.2578, <variable>.adler
	n	%r1,.L254-.L250(%r13)	# D.2579,
	l	%r2,252(%r11)	#, s
	lr	%r3,%r1	#, D.2579
	l	%r1,.L253-.L250(%r13)	# tmp582,
	basr	%r14,%r1	#, tmp582
.L193:
	lhi	%r2,0	#,
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	l	%r1,.L255-.L250(%r13)	# tmp583,
	basr	%r14,%r1	#, tmp583
	l	%r1,244(%r11)	# tmp584, strm
	st	%r2,48(%r1)	# D.2580, <variable>.adler
.L159:
	l	%r1,252(%r11)	# tmp585, s
	l	%r1,4(%r1)	# D.2581, <variable>.status
	chi	%r1,69	# D.2581,
	jne	.L194	#,
	l	%r1,252(%r11)	# tmp586, s
	l	%r1,28(%r1)	# D.2582, <variable>.gzhead
	l	%r1,16(%r1)	# D.2583, <variable>.extra
	ltr	%r1,%r1	# D.2583
	je	.L195	#,
	l	%r1,252(%r11)	# tmp587, s
	l	%r2,20(%r1)	#, <variable>.pending
	st	%r2,264(%r11)	#, beg
	j	.L196	#
.L200:
	l	%r1,252(%r11)	# tmp588, s
	l	%r2,20(%r1)	# D.2584, <variable>.pending
	l	%r1,252(%r11)	# tmp589, s
	l	%r1,12(%r1)	# D.2585, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2584, D.2585
	jne	.L197	#,
	l	%r1,252(%r11)	# tmp590, s
	l	%r1,28(%r1)	# D.2586, <variable>.gzhead
	l	%r1,44(%r1)	# D.2587, <variable>.hcrc
	ltr	%r1,%r1	# D.2587
	je	.L198	#,
	l	%r1,252(%r11)	# tmp591, s
	l	%r1,20(%r1)	# D.2588, <variable>.pending
	cl	%r1,264(%r11)	# D.2588, beg
	jle	.L198	#,
	l	%r1,244(%r11)	# tmp592, strm
	l	%r2,48(%r1)	# D.2589, <variable>.adler
	l	%r1,252(%r11)	# tmp593, s
	l	%r1,8(%r1)	# D.2590, <variable>.pending_buf
	lr	%r3,%r1	# D.2591, D.2590
	a	%r3,264(%r11)	# D.2591, beg
	l	%r1,252(%r11)	# tmp594, s
	l	%r1,20(%r1)	# D.2592, <variable>.pending
	s	%r1,264(%r11)	# D.2593, beg
	lr	%r4,%r1	#, D.2593
	l	%r1,.L252-.L250(%r13)	# tmp595,
	basr	%r14,%r1	#, tmp595
	l	%r1,244(%r11)	# tmp596, strm
	st	%r2,48(%r1)	# D.2594, <variable>.adler
.L198:
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp597,
	basr	%r14,%r1	#, tmp597
	l	%r1,252(%r11)	# tmp598, s
	l	%r3,20(%r1)	#, <variable>.pending
	st	%r3,264(%r11)	#, beg
	l	%r1,252(%r11)	# tmp599, s
	l	%r2,20(%r1)	# D.2595, <variable>.pending
	l	%r1,252(%r11)	# tmp600, s
	l	%r1,12(%r1)	# D.2596, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2595, D.2596
	je	.L199	#,
.L197:
	l	%r1,252(%r11)	# tmp601, s
	l	%r2,8(%r1)	# D.2597, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp602, s
	l	%r3,20(%r1)	# D.2598, <variable>.pending
	lr	%r4,%r2	# D.2600, D.2597
	ar	%r4,%r3	# D.2600, D.2598
	l	%r1,252(%r11)	# tmp603, s
	l	%r1,28(%r1)	# D.2601, <variable>.gzhead
	l	%r2,16(%r1)	# D.2602, <variable>.extra
	l	%r1,252(%r11)	# tmp604, s
	l	%r1,32(%r1)	# D.2603, <variable>.gzindex
	ar	%r1,%r2	# D.2604, D.2602
	ic	%r1,0(%r1)	# D.2605,* D.2604
	stc	%r1,0(%r4)	# D.2605,* D.2600
	lr	%r2,%r3	# D.2599, D.2598
	ahi	%r2,1	# D.2599,
	l	%r1,252(%r11)	# tmp605, s
	st	%r2,20(%r1)	# D.2599, <variable>.pending
	l	%r1,252(%r11)	# tmp606, s
	l	%r1,32(%r1)	# D.2606, <variable>.gzindex
	lr	%r2,%r1	# D.2607, D.2606
	ahi	%r2,1	# D.2607,
	l	%r1,252(%r11)	# tmp607, s
	st	%r2,32(%r1)	# D.2607, <variable>.gzindex
.L196:
	l	%r1,252(%r11)	# tmp608, s
	l	%r2,32(%r1)	# D.2608, <variable>.gzindex
	l	%r1,252(%r11)	# tmp609, s
	l	%r1,28(%r1)	# D.2609, <variable>.gzhead
	l	%r1,20(%r1)	# D.2610, <variable>.extra_len
	n	%r1,.L254-.L250(%r13)	# D.2611,
	clr	%r2,%r1	# D.2608, D.2611
	jl	.L200	#,
.L199:
	l	%r1,252(%r11)	# tmp610, s
	l	%r1,28(%r1)	# D.2612, <variable>.gzhead
	l	%r1,44(%r1)	# D.2613, <variable>.hcrc
	ltr	%r1,%r1	# D.2613
	je	.L201	#,
	l	%r1,252(%r11)	# tmp611, s
	l	%r1,20(%r1)	# D.2614, <variable>.pending
	cl	%r1,264(%r11)	# D.2614, beg
	jle	.L201	#,
	l	%r1,244(%r11)	# tmp612, strm
	l	%r2,48(%r1)	# D.2615, <variable>.adler
	l	%r1,252(%r11)	# tmp613, s
	l	%r1,8(%r1)	# D.2616, <variable>.pending_buf
	lr	%r3,%r1	# D.2617, D.2616
	a	%r3,264(%r11)	# D.2617, beg
	l	%r1,252(%r11)	# tmp614, s
	l	%r1,20(%r1)	# D.2618, <variable>.pending
	s	%r1,264(%r11)	# D.2619, beg
	lr	%r4,%r1	#, D.2619
	l	%r1,.L252-.L250(%r13)	# tmp615,
	basr	%r14,%r1	#, tmp615
	l	%r1,244(%r11)	# tmp616, strm
	st	%r2,48(%r1)	# D.2620, <variable>.adler
.L201:
	l	%r1,252(%r11)	# tmp617, s
	l	%r2,32(%r1)	# D.2621, <variable>.gzindex
	l	%r1,252(%r11)	# tmp618, s
	l	%r1,28(%r1)	# D.2622, <variable>.gzhead
	l	%r1,20(%r1)	# D.2623, <variable>.extra_len
	cr	%r2,%r1	# D.2621, D.2623
	jne	.L194	#,
	l	%r1,252(%r11)	# tmp619, s
	lhi	%r2,0	#,
	st	%r2,32(%r1)	#, <variable>.gzindex
	l	%r1,252(%r11)	# tmp620, s
	lhi	%r3,73	#,
	st	%r3,4(%r1)	#, <variable>.status
	j	.L194	#
.L195:
	l	%r1,252(%r11)	# tmp621, s
	lhi	%r2,73	#,
	st	%r2,4(%r1)	#, <variable>.status
.L194:
	l	%r1,252(%r11)	# tmp622, s
	l	%r1,4(%r1)	# D.2624, <variable>.status
	chi	%r1,73	# D.2624,
	jne	.L203	#,
	l	%r1,252(%r11)	# tmp623, s
	l	%r1,28(%r1)	# D.2625, <variable>.gzhead
	l	%r1,28(%r1)	# D.2626, <variable>.name
	ltr	%r1,%r1	# D.2626
	je	.L204	#,
	l	%r1,252(%r11)	# tmp624, s
	l	%r3,20(%r1)	#, <variable>.pending
	st	%r3,268(%r11)	#, beg
.L208:
	l	%r1,252(%r11)	# tmp625, s
	l	%r2,20(%r1)	# D.2627, <variable>.pending
	l	%r1,252(%r11)	# tmp626, s
	l	%r1,12(%r1)	# D.2628, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2627, D.2628
	jne	.L205	#,
	l	%r1,252(%r11)	# tmp627, s
	l	%r1,28(%r1)	# D.2629, <variable>.gzhead
	l	%r1,44(%r1)	# D.2630, <variable>.hcrc
	ltr	%r1,%r1	# D.2630
	je	.L206	#,
	l	%r1,252(%r11)	# tmp628, s
	l	%r1,20(%r1)	# D.2631, <variable>.pending
	cl	%r1,268(%r11)	# D.2631, beg
	jle	.L206	#,
	l	%r1,244(%r11)	# tmp629, strm
	l	%r2,48(%r1)	# D.2632, <variable>.adler
	l	%r1,252(%r11)	# tmp630, s
	l	%r1,8(%r1)	# D.2633, <variable>.pending_buf
	lr	%r3,%r1	# D.2634, D.2633
	a	%r3,268(%r11)	# D.2634, beg
	l	%r1,252(%r11)	# tmp631, s
	l	%r1,20(%r1)	# D.2635, <variable>.pending
	s	%r1,268(%r11)	# D.2636, beg
	lr	%r4,%r1	#, D.2636
	l	%r1,.L252-.L250(%r13)	# tmp632,
	basr	%r14,%r1	#, tmp632
	l	%r1,244(%r11)	# tmp633, strm
	st	%r2,48(%r1)	# D.2637, <variable>.adler
.L206:
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp634,
	basr	%r14,%r1	#, tmp634
	l	%r1,252(%r11)	# tmp635, s
	l	%r2,20(%r1)	#, <variable>.pending
	st	%r2,268(%r11)	#, beg
	l	%r1,252(%r11)	# tmp636, s
	l	%r2,20(%r1)	# D.2638, <variable>.pending
	l	%r1,252(%r11)	# tmp637, s
	l	%r1,12(%r1)	# D.2639, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2638, D.2639
	jne	.L205	#,
	lhi	%r3,1	#,
	st	%r3,272(%r11)	#, val
	j	.L207	#
.L205:
	l	%r1,252(%r11)	# tmp638, s
	l	%r1,28(%r1)	# D.2640, <variable>.gzhead
	l	%r2,28(%r1)	# D.2641, <variable>.name
	l	%r1,252(%r11)	# tmp639, s
	l	%r3,32(%r1)	# D.2642, <variable>.gzindex
	lr	%r1,%r2	# D.2644, D.2641
	ar	%r1,%r3	# D.2644, D.2642
	ic	%r1,0(%r1)	# D.2645,* D.2644
	n	%r1,.L257-.L250(%r13)	# tmp640,
	st	%r1,272(%r11)	# tmp640, val
	lr	%r2,%r3	# D.2643, D.2642
	ahi	%r2,1	# D.2643,
	l	%r1,252(%r11)	# tmp641, s
	st	%r2,32(%r1)	# D.2643, <variable>.gzindex
	l	%r1,252(%r11)	# tmp642, s
	l	%r2,8(%r1)	# D.2646, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp643, s
	l	%r3,20(%r1)	# D.2647, <variable>.pending
	ar	%r2,%r3	# D.2649, D.2647
	l	%r1,272(%r11)	# tmp644, val
	stc	%r1,0(%r2)	# D.2650,* D.2649
	lr	%r2,%r3	# D.2648, D.2647
	ahi	%r2,1	# D.2648,
	l	%r1,252(%r11)	# tmp645, s
	st	%r2,20(%r1)	# D.2648, <variable>.pending
	l	%r1,272(%r11)	# tmp646, val
	ltr	%r1,%r1	# tmp646
	jne	.L208	#,
.L207:
	l	%r1,252(%r11)	# tmp647, s
	l	%r1,28(%r1)	# D.2651, <variable>.gzhead
	l	%r1,44(%r1)	# D.2652, <variable>.hcrc
	ltr	%r1,%r1	# D.2652
	je	.L209	#,
	l	%r1,252(%r11)	# tmp648, s
	l	%r1,20(%r1)	# D.2653, <variable>.pending
	cl	%r1,268(%r11)	# D.2653, beg
	jle	.L209	#,
	l	%r1,244(%r11)	# tmp649, strm
	l	%r2,48(%r1)	# D.2654, <variable>.adler
	l	%r1,252(%r11)	# tmp650, s
	l	%r1,8(%r1)	# D.2655, <variable>.pending_buf
	lr	%r3,%r1	# D.2656, D.2655
	a	%r3,268(%r11)	# D.2656, beg
	l	%r1,252(%r11)	# tmp651, s
	l	%r1,20(%r1)	# D.2657, <variable>.pending
	s	%r1,268(%r11)	# D.2658, beg
	lr	%r4,%r1	#, D.2658
	l	%r1,.L252-.L250(%r13)	# tmp652,
	basr	%r14,%r1	#, tmp652
	l	%r1,244(%r11)	# tmp653, strm
	st	%r2,48(%r1)	# D.2659, <variable>.adler
.L209:
	l	%r1,272(%r11)	# tmp654, val
	ltr	%r1,%r1	# tmp654
	jne	.L203	#,
	l	%r1,252(%r11)	# tmp655, s
	lhi	%r2,0	#,
	st	%r2,32(%r1)	#, <variable>.gzindex
	l	%r1,252(%r11)	# tmp656, s
	lhi	%r3,91	#,
	st	%r3,4(%r1)	#, <variable>.status
	j	.L203	#
.L204:
	l	%r1,252(%r11)	# tmp657, s
	lhi	%r2,91	#,
	st	%r2,4(%r1)	#, <variable>.status
.L203:
	l	%r1,252(%r11)	# tmp658, s
	l	%r1,4(%r1)	# D.2660, <variable>.status
	chi	%r1,91	# D.2660,
	jne	.L211	#,
	l	%r1,252(%r11)	# tmp659, s
	l	%r1,28(%r1)	# D.2661, <variable>.gzhead
	l	%r1,36(%r1)	# D.2662, <variable>.comment
	ltr	%r1,%r1	# D.2662
	je	.L212	#,
	l	%r1,252(%r11)	# tmp660, s
	l	%r3,20(%r1)	#, <variable>.pending
	st	%r3,276(%r11)	#, beg
.L216:
	l	%r1,252(%r11)	# tmp661, s
	l	%r2,20(%r1)	# D.2663, <variable>.pending
	l	%r1,252(%r11)	# tmp662, s
	l	%r1,12(%r1)	# D.2664, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2663, D.2664
	jne	.L213	#,
	l	%r1,252(%r11)	# tmp663, s
	l	%r1,28(%r1)	# D.2665, <variable>.gzhead
	l	%r1,44(%r1)	# D.2666, <variable>.hcrc
	ltr	%r1,%r1	# D.2666
	je	.L214	#,
	l	%r1,252(%r11)	# tmp664, s
	l	%r1,20(%r1)	# D.2667, <variable>.pending
	cl	%r1,276(%r11)	# D.2667, beg
	jle	.L214	#,
	l	%r1,244(%r11)	# tmp665, strm
	l	%r2,48(%r1)	# D.2668, <variable>.adler
	l	%r1,252(%r11)	# tmp666, s
	l	%r1,8(%r1)	# D.2669, <variable>.pending_buf
	lr	%r3,%r1	# D.2670, D.2669
	a	%r3,276(%r11)	# D.2670, beg
	l	%r1,252(%r11)	# tmp667, s
	l	%r1,20(%r1)	# D.2671, <variable>.pending
	s	%r1,276(%r11)	# D.2672, beg
	lr	%r4,%r1	#, D.2672
	l	%r1,.L252-.L250(%r13)	# tmp668,
	basr	%r14,%r1	#, tmp668
	l	%r1,244(%r11)	# tmp669, strm
	st	%r2,48(%r1)	# D.2673, <variable>.adler
.L214:
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp670,
	basr	%r14,%r1	#, tmp670
	l	%r1,252(%r11)	# tmp671, s
	l	%r2,20(%r1)	#, <variable>.pending
	st	%r2,276(%r11)	#, beg
	l	%r1,252(%r11)	# tmp672, s
	l	%r2,20(%r1)	# D.2674, <variable>.pending
	l	%r1,252(%r11)	# tmp673, s
	l	%r1,12(%r1)	# D.2675, <variable>.pending_buf_size
	cr	%r2,%r1	# D.2674, D.2675
	jne	.L213	#,
	lhi	%r3,1	#,
	st	%r3,280(%r11)	#, val
	j	.L215	#
.L213:
	l	%r1,252(%r11)	# tmp674, s
	l	%r1,28(%r1)	# D.2676, <variable>.gzhead
	l	%r2,36(%r1)	# D.2677, <variable>.comment
	l	%r1,252(%r11)	# tmp675, s
	l	%r3,32(%r1)	# D.2678, <variable>.gzindex
	lr	%r1,%r2	# D.2680, D.2677
	ar	%r1,%r3	# D.2680, D.2678
	ic	%r1,0(%r1)	# D.2681,* D.2680
	n	%r1,.L257-.L250(%r13)	# tmp676,
	st	%r1,280(%r11)	# tmp676, val
	lr	%r2,%r3	# D.2679, D.2678
	ahi	%r2,1	# D.2679,
	l	%r1,252(%r11)	# tmp677, s
	st	%r2,32(%r1)	# D.2679, <variable>.gzindex
	l	%r1,252(%r11)	# tmp678, s
	l	%r2,8(%r1)	# D.2682, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp679, s
	l	%r3,20(%r1)	# D.2683, <variable>.pending
	ar	%r2,%r3	# D.2685, D.2683
	l	%r1,280(%r11)	# tmp680, val
	stc	%r1,0(%r2)	# D.2686,* D.2685
	lr	%r2,%r3	# D.2684, D.2683
	ahi	%r2,1	# D.2684,
	l	%r1,252(%r11)	# tmp681, s
	st	%r2,20(%r1)	# D.2684, <variable>.pending
	l	%r1,280(%r11)	# tmp682, val
	ltr	%r1,%r1	# tmp682
	jne	.L216	#,
.L215:
	l	%r1,252(%r11)	# tmp683, s
	l	%r1,28(%r1)	# D.2687, <variable>.gzhead
	l	%r1,44(%r1)	# D.2688, <variable>.hcrc
	ltr	%r1,%r1	# D.2688
	je	.L217	#,
	l	%r1,252(%r11)	# tmp684, s
	l	%r1,20(%r1)	# D.2689, <variable>.pending
	cl	%r1,276(%r11)	# D.2689, beg
	jle	.L217	#,
	l	%r1,244(%r11)	# tmp685, strm
	l	%r2,48(%r1)	# D.2690, <variable>.adler
	l	%r1,252(%r11)	# tmp686, s
	l	%r1,8(%r1)	# D.2691, <variable>.pending_buf
	lr	%r3,%r1	# D.2692, D.2691
	a	%r3,276(%r11)	# D.2692, beg
	l	%r1,252(%r11)	# tmp687, s
	l	%r1,20(%r1)	# D.2693, <variable>.pending
	s	%r1,276(%r11)	# D.2694, beg
	lr	%r4,%r1	#, D.2694
	l	%r1,.L252-.L250(%r13)	# tmp688,
	basr	%r14,%r1	#, tmp688
	l	%r1,244(%r11)	# tmp689, strm
	st	%r2,48(%r1)	# D.2695, <variable>.adler
.L217:
	l	%r1,280(%r11)	# tmp690, val
	ltr	%r1,%r1	# tmp690
	jne	.L211	#,
	l	%r1,252(%r11)	# tmp691, s
	lhi	%r2,103	#,
	st	%r2,4(%r1)	#, <variable>.status
	j	.L211	#
.L212:
	l	%r1,252(%r11)	# tmp692, s
	lhi	%r3,103	#,
	st	%r3,4(%r1)	#, <variable>.status
.L211:
	l	%r1,252(%r11)	# tmp693, s
	l	%r1,4(%r1)	# D.2696, <variable>.status
	chi	%r1,103	# D.2696,
	jne	.L219	#,
	l	%r1,252(%r11)	# tmp694, s
	l	%r1,28(%r1)	# D.2697, <variable>.gzhead
	l	%r1,44(%r1)	# D.2698, <variable>.hcrc
	ltr	%r1,%r1	# D.2698
	je	.L220	#,
	l	%r1,252(%r11)	# tmp695, s
	l	%r1,20(%r1)	# D.2699, <variable>.pending
	lr	%r2,%r1	# D.2700, D.2699
	ahi	%r2,2	# D.2700,
	l	%r1,252(%r11)	# tmp696, s
	l	%r1,12(%r1)	# D.2701, <variable>.pending_buf_size
	clr	%r2,%r1	# D.2700, D.2701
	jle	.L221	#,
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp697,
	basr	%r14,%r1	#, tmp697
.L221:
	l	%r1,252(%r11)	# tmp698, s
	l	%r1,20(%r1)	# D.2702, <variable>.pending
	lr	%r2,%r1	# D.2703, D.2702
	ahi	%r2,2	# D.2703,
	l	%r1,252(%r11)	# tmp699, s
	l	%r1,12(%r1)	# D.2704, <variable>.pending_buf_size
	clr	%r2,%r1	# D.2703, D.2704
	jh	.L219	#,
	l	%r1,252(%r11)	# tmp700, s
	l	%r2,8(%r1)	# D.2705, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp701, s
	l	%r3,20(%r1)	# D.2706, <variable>.pending
	ar	%r2,%r3	# D.2708, D.2706
	l	%r1,244(%r11)	# tmp702, strm
	l	%r1,48(%r1)	# D.2709, <variable>.adler
	stc	%r1,0(%r2)	# D.2710,* D.2708
	lr	%r2,%r3	# D.2707, D.2706
	ahi	%r2,1	# D.2707,
	l	%r1,252(%r11)	# tmp703, s
	st	%r2,20(%r1)	# D.2707, <variable>.pending
	l	%r1,252(%r11)	# tmp704, s
	l	%r2,8(%r1)	# D.2711, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp705, s
	l	%r3,20(%r1)	# D.2712, <variable>.pending
	ar	%r2,%r3	# D.2714, D.2712
	l	%r1,244(%r11)	# tmp706, strm
	l	%r1,48(%r1)	# D.2715, <variable>.adler
	srl	%r1,8	# D.2716,
	stc	%r1,0(%r2)	# D.2717,* D.2714
	lr	%r2,%r3	# D.2713, D.2712
	ahi	%r2,1	# D.2713,
	l	%r1,252(%r11)	# tmp707, s
	st	%r2,20(%r1)	# D.2713, <variable>.pending
	lhi	%r2,0	#,
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	l	%r1,.L252-.L250(%r13)	# tmp708,
	basr	%r14,%r1	#, tmp708
	l	%r1,244(%r11)	# tmp709, strm
	st	%r2,48(%r1)	# D.2718, <variable>.adler
	l	%r1,252(%r11)	# tmp710, s
	lhi	%r2,113	#,
	st	%r2,4(%r1)	#, <variable>.status
	j	.L219	#
.L220:
	l	%r1,252(%r11)	# tmp711, s
	lhi	%r3,113	#,
	st	%r3,4(%r1)	#, <variable>.status
.L219:
	l	%r1,252(%r11)	# tmp712, s
	l	%r1,20(%r1)	# D.2719, <variable>.pending
	ltr	%r1,%r1	# D.2719
	je	.L223	#,
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp713,
	basr	%r14,%r1	#, tmp713
	l	%r1,244(%r11)	# tmp714, strm
	l	%r1,16(%r1)	# D.2720, <variable>.avail_out
	ltr	%r1,%r1	# D.2720
	jne	.L225	#,
	l	%r1,252(%r11)	# tmp715, s
	lhi	%r2,-1	#,
	st	%r2,40(%r1)	#, <variable>.last_flush
	lhi	%r3,0	#,
	st	%r3,104(%r11)	#, D.2401
	j	.L154	#
.L223:
	l	%r1,244(%r11)	# tmp716, strm
	l	%r1,4(%r1)	# D.2721, <variable>.avail_in
	ltr	%r1,%r1	# D.2721
	jne	.L225	#,
	l	%r1,240(%r11)	# tmp717, flush
	lr	%r2,%r1	#, tmp717
	sll	%r2,1	#,
	st	%r2,212(%r11)	#, D.2722
	l	%r1,240(%r11)	# tmp718, flush
	chi	%r1,4	# tmp718,
	jle	.L226	#,
	lhi	%r3,9	#,
	st	%r3,216(%r11)	#, iftmp.24
	j	.L227	#
.L226:
	lhi	%r1,0	#,
	st	%r1,216(%r11)	#, iftmp.24
.L227:
	l	%r2,212(%r11)	#, D.2722
	s	%r2,216(%r11)	#, iftmp.24
	st	%r2,220(%r11)	#, D.2724
	l	%r1,248(%r11)	# tmp719, old_flush
	lr	%r3,%r1	#, tmp719
	sll	%r3,1	#,
	st	%r3,224(%r11)	#, D.2725
	l	%r1,248(%r11)	# tmp720, old_flush
	chi	%r1,4	# tmp720,
	jle	.L228	#,
	lhi	%r1,9	#,
	st	%r1,228(%r11)	#, iftmp.25
	j	.L229	#
.L228:
	lhi	%r2,0	#,
	st	%r2,228(%r11)	#, iftmp.25
.L229:
	l	%r1,224(%r11)	# D.2727, D.2725
	s	%r1,228(%r11)	# D.2727, iftmp.25
	l	%r3,220(%r11)	#, D.2724
	cr	%r3,%r1	#, D.2727
	jh	.L225	#,
	l	%r1,240(%r11)	# tmp721, flush
	chi	%r1,4	# tmp721,
	je	.L225	#,
	l	%r1,.L251-.L250(%r13)	# tmp722,
	l	%r2,28(%r1)	# D.2728, z_errmsg
	l	%r1,244(%r11)	# tmp723, strm
	st	%r2,24(%r1)	# D.2728, <variable>.msg
	lhi	%r1,-5	#,
	st	%r1,104(%r11)	#, D.2401
	j	.L154	#
.L225:
	l	%r1,252(%r11)	# tmp724, s
	l	%r1,4(%r1)	# D.2729, <variable>.status
	chi	%r1,666	# D.2729,
	jne	.L230	#,
	l	%r1,244(%r11)	# tmp725, strm
	l	%r1,4(%r1)	# D.2730, <variable>.avail_in
	ltr	%r1,%r1	# D.2730
	je	.L230	#,
	l	%r1,.L251-.L250(%r13)	# tmp726,
	l	%r2,28(%r1)	# D.2731, z_errmsg
	l	%r1,244(%r11)	# tmp727, strm
	st	%r2,24(%r1)	# D.2731, <variable>.msg
	lhi	%r2,-5	#,
	st	%r2,104(%r11)	#, D.2401
	j	.L154	#
.L230:
	l	%r1,244(%r11)	# tmp728, strm
	l	%r1,4(%r1)	# D.2734, <variable>.avail_in
	ltr	%r1,%r1	# D.2734
	jne	.L231	#,
	l	%r1,252(%r11)	# tmp729, s
	l	%r1,116(%r1)	# D.2735, <variable>.lookahead
	ltr	%r1,%r1	# D.2735
	jne	.L231	#,
	l	%r1,240(%r11)	# tmp730, flush
	ltr	%r1,%r1	# tmp730
	je	.L232	#,
	l	%r1,252(%r11)	# tmp731, s
	l	%r1,4(%r1)	# D.2736, <variable>.status
	chi	%r1,666	# D.2736,
	je	.L232	#,
.L231:
	l	%r1,252(%r11)	# tmp732, s
	l	%r1,136(%r1)	# D.2738, <variable>.strategy
	chi	%r1,2	# D.2738,
	jne	.L233	#,
	l	%r2,252(%r11)	#, s
	l	%r3,240(%r11)	#, flush
	l	%r1,.L258-.L250(%r13)	# tmp733,
	basr	%r14,%r1	#, tmp733
	lr	%r1,%r2	# D.2739,
	st	%r1,232(%r11)	# D.2739, iftmp.26
	j	.L234	#
.L233:
	l	%r1,252(%r11)	# tmp734, s
	l	%r1,136(%r1)	# D.2741, <variable>.strategy
	chi	%r1,3	# D.2741,
	jne	.L235	#,
	l	%r2,252(%r11)	#, s
	l	%r3,240(%r11)	#, flush
	l	%r1,.L259-.L250(%r13)	# tmp735,
	basr	%r14,%r1	#, tmp735
	lr	%r1,%r2	# D.2742,
	st	%r1,236(%r11)	# D.2742, iftmp.27
	j	.L236	#
.L235:
	l	%r1,252(%r11)	# tmp736, s
	l	%r1,132(%r1)	# D.2743, <variable>.level
	l	%r2,.L260-.L250(%r13)	# tmp737,
	mhi	%r1,12	# tmp738,
	l	%r1,8(%r1,%r2)	# D.2744, <variable>.func
	l	%r2,252(%r11)	#, s
	l	%r3,240(%r11)	#, flush
	basr	%r14,%r1	#, D.2744
	lr	%r1,%r2	# D.2745,
	st	%r1,236(%r11)	# D.2745, iftmp.27
.L236:
	l	%r3,236(%r11)	#, iftmp.27
	st	%r3,232(%r11)	#, iftmp.26
.L234:
	l	%r1,232(%r11)	#, iftmp.26
	st	%r1,284(%r11)	#, bstate
	l	%r1,284(%r11)	# tmp739, bstate
	chi	%r1,2	# tmp739,
	je	.L237	#,
	l	%r1,284(%r11)	# tmp740, bstate
	chi	%r1,3	# tmp740,
	jne	.L238	#,
.L237:
	l	%r1,252(%r11)	# tmp741, s
	lhi	%r2,666	#,
	st	%r2,4(%r1)	#, <variable>.status
.L238:
	l	%r1,284(%r11)	# tmp742, bstate
	ltr	%r1,%r1	# tmp742
	je	.L239	#,
	l	%r1,284(%r11)	# tmp743, bstate
	chi	%r1,2	# tmp743,
	jne	.L240	#,
.L239:
	l	%r1,244(%r11)	# tmp744, strm
	l	%r1,16(%r1)	# D.2750, <variable>.avail_out
	ltr	%r1,%r1	# D.2750
	jne	.L241	#,
	l	%r1,252(%r11)	# tmp745, s
	lhi	%r3,-1	#,
	st	%r3,40(%r1)	#, <variable>.last_flush
.L241:
	lhi	%r1,0	#,
	st	%r1,104(%r11)	#, D.2401
	j	.L154	#
.L240:
	l	%r1,284(%r11)	# tmp746, bstate
	chi	%r1,1	# tmp746,
	jne	.L232	#,
	l	%r1,240(%r11)	# tmp747, flush
	chi	%r1,1	# tmp747,
	jne	.L242	#,
	l	%r2,252(%r11)	#, s
	l	%r1,.L261-.L250(%r13)	# tmp748,
	basr	%r14,%r1	#, tmp748
	j	.L243	#
.L242:
	l	%r1,240(%r11)	# tmp749, flush
	chi	%r1,5	# tmp749,
	je	.L243	#,
	l	%r2,252(%r11)	#, s
	lhi	%r3,0	#,
	lhi	%r4,0	#,
	lhi	%r5,0	#,
	l	%r1,.L262-.L250(%r13)	# tmp750,
	basr	%r14,%r1	#, tmp750
	l	%r1,240(%r11)	# tmp751, flush
	chi	%r1,3	# tmp751,
	jne	.L243	#,
	l	%r1,252(%r11)	# tmp752, s
	l	%r2,68(%r1)	# D.2751, <variable>.head
	l	%r1,252(%r11)	# tmp753, s
	l	%r1,76(%r1)	# D.2752, <variable>.hash_size
	ahi	%r1,-1	# D.2753,
	sll	%r1,1	# D.2754,
	ar	%r1,%r2	# D.2755, D.2751
	lhi	%r2,0	#,
	sth	%r2,0(%r1)	#,* D.2755
	l	%r1,252(%r11)	# tmp754, s
	l	%r2,68(%r1)	# D.2756, <variable>.head
	l	%r1,252(%r11)	# tmp755, s
	l	%r1,76(%r1)	# D.2757, <variable>.hash_size
	a	%r1,.L263-.L250(%r13)	# D.2758,
	sll	%r1,1	# D.2759,
	lhi	%r3,0	#,
	lr	%r4,%r1	#, D.2759
	l	%r1,.L264-.L250(%r13)	# tmp756,
	basr	%r14,%r1	#, tmp756
	l	%r1,252(%r11)	# tmp757, s
	l	%r1,116(%r1)	# D.2760, <variable>.lookahead
	ltr	%r1,%r1	# D.2760
	jne	.L243	#,
	l	%r1,252(%r11)	# tmp758, s
	lhi	%r3,0	#,
	st	%r3,108(%r1)	#, <variable>.strstart
	l	%r1,252(%r11)	# tmp759, s
	lhi	%r2,0	#,
	st	%r2,92(%r1)	#, <variable>.block_start
	l	%r2,252(%r11)	# tmp760, s
	lhi	%r1,4096	# tmp761,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
.L243:
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp763,
	basr	%r14,%r1	#, tmp763
	l	%r1,244(%r11)	# tmp764, strm
	l	%r1,16(%r1)	# D.2761, <variable>.avail_out
	ltr	%r1,%r1	# D.2761
	jne	.L232	#,
	l	%r1,252(%r11)	# tmp765, s
	lhi	%r2,-1	#,
	st	%r2,40(%r1)	#, <variable>.last_flush
	lhi	%r3,0	#,
	st	%r3,104(%r11)	#, D.2401
	j	.L154	#
.L232:
	l	%r1,240(%r11)	# tmp766, flush
	chi	%r1,4	# tmp766,
	je	.L244	#,
	lhi	%r1,0	#,
	st	%r1,104(%r11)	#, D.2401
	j	.L154	#
.L244:
	l	%r1,252(%r11)	# tmp767, s
	l	%r1,24(%r1)	# D.2762, <variable>.wrap
	ltr	%r1,%r1	# D.2762
	jh	.L245	#,
	lhi	%r2,1	#,
	st	%r2,104(%r11)	#, D.2401
	j	.L154	#
.L245:
	l	%r1,252(%r11)	# tmp768, s
	l	%r1,24(%r1)	# D.2763, <variable>.wrap
	chi	%r1,2	# D.2763,
	jne	.L246	#,
	l	%r1,252(%r11)	# tmp769, s
	l	%r2,8(%r1)	# D.2764, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp770, s
	l	%r3,20(%r1)	# D.2765, <variable>.pending
	ar	%r2,%r3	# D.2767, D.2765
	l	%r1,244(%r11)	# tmp771, strm
	l	%r1,48(%r1)	# D.2768, <variable>.adler
	stc	%r1,0(%r2)	# D.2769,* D.2767
	lr	%r2,%r3	# D.2766, D.2765
	ahi	%r2,1	# D.2766,
	l	%r1,252(%r11)	# tmp772, s
	st	%r2,20(%r1)	# D.2766, <variable>.pending
	l	%r1,252(%r11)	# tmp773, s
	l	%r2,8(%r1)	# D.2770, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp774, s
	l	%r3,20(%r1)	# D.2771, <variable>.pending
	ar	%r2,%r3	# D.2773, D.2771
	l	%r1,244(%r11)	# tmp775, strm
	l	%r1,48(%r1)	# D.2774, <variable>.adler
	srl	%r1,8	# D.2775,
	stc	%r1,0(%r2)	# D.2776,* D.2773
	lr	%r2,%r3	# D.2772, D.2771
	ahi	%r2,1	# D.2772,
	l	%r1,252(%r11)	# tmp776, s
	st	%r2,20(%r1)	# D.2772, <variable>.pending
	l	%r1,252(%r11)	# tmp777, s
	l	%r2,8(%r1)	# D.2777, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp778, s
	l	%r3,20(%r1)	# D.2778, <variable>.pending
	ar	%r2,%r3	# D.2780, D.2778
	l	%r1,244(%r11)	# tmp779, strm
	l	%r1,48(%r1)	# D.2781, <variable>.adler
	srl	%r1,16	# D.2782,
	stc	%r1,0(%r2)	# D.2783,* D.2780
	lr	%r2,%r3	# D.2779, D.2778
	ahi	%r2,1	# D.2779,
	l	%r1,252(%r11)	# tmp780, s
	st	%r2,20(%r1)	# D.2779, <variable>.pending
	l	%r1,252(%r11)	# tmp781, s
	l	%r2,8(%r1)	# D.2784, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp782, s
	l	%r3,20(%r1)	# D.2785, <variable>.pending
	ar	%r2,%r3	# D.2787, D.2785
	l	%r1,244(%r11)	# tmp783, strm
	l	%r1,48(%r1)	# D.2788, <variable>.adler
	srl	%r1,24	# D.2789,
	stc	%r1,0(%r2)	# D.2790,* D.2787
	lr	%r2,%r3	# D.2786, D.2785
	ahi	%r2,1	# D.2786,
	l	%r1,252(%r11)	# tmp784, s
	st	%r2,20(%r1)	# D.2786, <variable>.pending
	l	%r1,252(%r11)	# tmp785, s
	l	%r2,8(%r1)	# D.2791, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp786, s
	l	%r3,20(%r1)	# D.2792, <variable>.pending
	ar	%r2,%r3	# D.2794, D.2792
	l	%r1,244(%r11)	# tmp787, strm
	l	%r1,8(%r1)	# D.2795, <variable>.total_in
	stc	%r1,0(%r2)	# D.2796,* D.2794
	lr	%r2,%r3	# D.2793, D.2792
	ahi	%r2,1	# D.2793,
	l	%r1,252(%r11)	# tmp788, s
	st	%r2,20(%r1)	# D.2793, <variable>.pending
	l	%r1,252(%r11)	# tmp789, s
	l	%r2,8(%r1)	# D.2797, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp790, s
	l	%r3,20(%r1)	# D.2798, <variable>.pending
	ar	%r2,%r3	# D.2800, D.2798
	l	%r1,244(%r11)	# tmp791, strm
	l	%r1,8(%r1)	# D.2801, <variable>.total_in
	srl	%r1,8	# D.2802,
	stc	%r1,0(%r2)	# D.2803,* D.2800
	lr	%r2,%r3	# D.2799, D.2798
	ahi	%r2,1	# D.2799,
	l	%r1,252(%r11)	# tmp792, s
	st	%r2,20(%r1)	# D.2799, <variable>.pending
	l	%r1,252(%r11)	# tmp793, s
	l	%r2,8(%r1)	# D.2804, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp794, s
	l	%r3,20(%r1)	# D.2805, <variable>.pending
	ar	%r2,%r3	# D.2807, D.2805
	l	%r1,244(%r11)	# tmp795, strm
	l	%r1,8(%r1)	# D.2808, <variable>.total_in
	srl	%r1,16	# D.2809,
	stc	%r1,0(%r2)	# D.2810,* D.2807
	lr	%r2,%r3	# D.2806, D.2805
	ahi	%r2,1	# D.2806,
	l	%r1,252(%r11)	# tmp796, s
	st	%r2,20(%r1)	# D.2806, <variable>.pending
	l	%r1,252(%r11)	# tmp797, s
	l	%r2,8(%r1)	# D.2811, <variable>.pending_buf
	l	%r1,252(%r11)	# tmp798, s
	l	%r3,20(%r1)	# D.2812, <variable>.pending
	ar	%r2,%r3	# D.2814, D.2812
	l	%r1,244(%r11)	# tmp799, strm
	l	%r1,8(%r1)	# D.2815, <variable>.total_in
	srl	%r1,24	# D.2816,
	stc	%r1,0(%r2)	# D.2817,* D.2814
	lr	%r2,%r3	# D.2813, D.2812
	ahi	%r2,1	# D.2813,
	l	%r1,252(%r11)	# tmp800, s
	st	%r2,20(%r1)	# D.2813, <variable>.pending
	j	.L247	#
.L246:
	l	%r1,244(%r11)	# tmp801, strm
	l	%r1,48(%r1)	# D.2818, <variable>.adler
	srl	%r1,16	# D.2819,
	l	%r2,252(%r11)	#, s
	lr	%r3,%r1	#, D.2819
	l	%r1,.L253-.L250(%r13)	# tmp802,
	basr	%r14,%r1	#, tmp802
	l	%r1,244(%r11)	# tmp803, strm
	l	%r1,48(%r1)	# D.2820, <variable>.adler
	n	%r1,.L254-.L250(%r13)	# D.2821,
	l	%r2,252(%r11)	#, s
	lr	%r3,%r1	#, D.2821
	l	%r1,.L253-.L250(%r13)	# tmp804,
	basr	%r14,%r1	#, tmp804
.L247:
	l	%r2,244(%r11)	#, strm
	l	%r1,.L256-.L250(%r13)	# tmp805,
	basr	%r14,%r1	#, tmp805
	l	%r1,252(%r11)	# tmp806, s
	l	%r1,24(%r1)	# D.2822, <variable>.wrap
	ltr	%r1,%r1	# D.2822
	jle	.L248	#,
	l	%r1,252(%r11)	# tmp807, s
	l	%r1,24(%r1)	# D.2823, <variable>.wrap
	lcr	%r2,%r1	# D.2824, D.2823
	l	%r1,252(%r11)	# tmp808, s
	st	%r2,24(%r1)	# D.2824, <variable>.wrap
.L248:
	l	%r1,252(%r11)	# tmp809, s
	l	%r1,20(%r1)	# D.2825, <variable>.pending
	lpr	%r1,%r1	#, D.2825
	st	%r1,104(%r11)	#, D.2401
	l	%r3,104(%r11)	#, D.2401
	ahi	%r3,-1	#,
	st	%r3,104(%r11)	#, D.2401
	l	%r1,104(%r11)	#, D.2401
	srl	%r1,31	#,
	st	%r1,104(%r11)	#, D.2401
.L154:
	l	%r1,104(%r11)	# <result>, D.2401
	lr	%r2,%r1	#, <result>
	l	%r4,344(%r11)	#,
	lm	%r11,%r15,332(%r11)	#,,
	br	%r4	#
.LFE15:
	.size	deflate, .-deflate
	.align	4
.globl deflateEnd
	.type	deflateEnd, @function
deflateEnd:
.LFB16:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI42:
	ahi	%r15,-120	#,
.LCFI43:
	lr	%r11,%r15	#,
.LCFI44:
	st	%r2,108(%r11)	# strm, strm
	l	%r1,108(%r11)	# tmp75, strm
	ltr	%r1,%r1	# tmp75
	je	.L267	#,
	l	%r1,108(%r11)	# tmp76, strm
	l	%r1,28(%r1)	# D.3005, <variable>.state
	ltr	%r1,%r1	# D.3005
	jne	.L268	#,
.L267:
	lhi	%r1,-2	#,
	st	%r1,100(%r11)	#, D.3006
	j	.L269	#
.L268:
	l	%r1,108(%r11)	# tmp77, strm
	l	%r1,28(%r1)	# D.3007, <variable>.state
	l	%r2,4(%r1)	#, <variable>.status
	st	%r2,116(%r11)	#, status
	l	%r1,116(%r11)	# tmp78, status
	chi	%r1,42	# tmp78,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp79, status
	chi	%r1,69	# tmp79,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp80, status
	chi	%r1,73	# tmp80,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp81, status
	chi	%r1,91	# tmp81,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp82, status
	chi	%r1,103	# tmp82,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp83, status
	chi	%r1,113	# tmp83,
	je	.L270	#,
	l	%r1,116(%r11)	# tmp84, status
	chi	%r1,666	# tmp84,
	je	.L270	#,
	lhi	%r1,-2	#,
	st	%r1,100(%r11)	#, D.3006
	j	.L269	#
.L270:
	l	%r1,108(%r11)	# tmp85, strm
	l	%r1,28(%r1)	# D.3008, <variable>.state
	l	%r1,8(%r1)	# D.3009, <variable>.pending_buf
	ltr	%r1,%r1	# D.3009
	je	.L271	#,
	l	%r1,108(%r11)	# tmp86, strm
	l	%r4,36(%r1)	# D.3010, <variable>.zfree
	l	%r1,108(%r11)	# tmp87, strm
	l	%r2,40(%r1)	# D.3011, <variable>.opaque
	l	%r1,108(%r11)	# tmp88, strm
	l	%r1,28(%r1)	# D.3012, <variable>.state
	l	%r1,8(%r1)	# D.3013, <variable>.pending_buf
	lr	%r3,%r1	#, D.3013
	basr	%r14,%r4	#, D.3010
.L271:
	l	%r1,108(%r11)	# tmp89, strm
	l	%r1,28(%r1)	# D.3014, <variable>.state
	l	%r1,68(%r1)	# D.3015, <variable>.head
	ltr	%r1,%r1	# D.3015
	je	.L272	#,
	l	%r1,108(%r11)	# tmp90, strm
	l	%r4,36(%r1)	# D.3016, <variable>.zfree
	l	%r1,108(%r11)	# tmp91, strm
	l	%r2,40(%r1)	# D.3017, <variable>.opaque
	l	%r1,108(%r11)	# tmp92, strm
	l	%r1,28(%r1)	# D.3018, <variable>.state
	l	%r1,68(%r1)	# D.3019, <variable>.head
	lr	%r3,%r1	#, D.3019
	basr	%r14,%r4	#, D.3016
.L272:
	l	%r1,108(%r11)	# tmp93, strm
	l	%r1,28(%r1)	# D.3020, <variable>.state
	l	%r1,64(%r1)	# D.3021, <variable>.prev
	ltr	%r1,%r1	# D.3021
	je	.L273	#,
	l	%r1,108(%r11)	# tmp94, strm
	l	%r4,36(%r1)	# D.3022, <variable>.zfree
	l	%r1,108(%r11)	# tmp95, strm
	l	%r2,40(%r1)	# D.3023, <variable>.opaque
	l	%r1,108(%r11)	# tmp96, strm
	l	%r1,28(%r1)	# D.3024, <variable>.state
	l	%r1,64(%r1)	# D.3025, <variable>.prev
	lr	%r3,%r1	#, D.3025
	basr	%r14,%r4	#, D.3022
.L273:
	l	%r1,108(%r11)	# tmp97, strm
	l	%r1,28(%r1)	# D.3026, <variable>.state
	l	%r1,56(%r1)	# D.3027, <variable>.window
	ltr	%r1,%r1	# D.3027
	je	.L274	#,
	l	%r1,108(%r11)	# tmp98, strm
	l	%r4,36(%r1)	# D.3028, <variable>.zfree
	l	%r1,108(%r11)	# tmp99, strm
	l	%r2,40(%r1)	# D.3029, <variable>.opaque
	l	%r1,108(%r11)	# tmp100, strm
	l	%r1,28(%r1)	# D.3030, <variable>.state
	l	%r1,56(%r1)	# D.3031, <variable>.window
	lr	%r3,%r1	#, D.3031
	basr	%r14,%r4	#, D.3028
.L274:
	l	%r1,108(%r11)	# tmp101, strm
	l	%r4,36(%r1)	# D.3032, <variable>.zfree
	l	%r1,108(%r11)	# tmp102, strm
	l	%r2,40(%r1)	# D.3033, <variable>.opaque
	l	%r1,108(%r11)	# tmp103, strm
	l	%r1,28(%r1)	# D.3034, <variable>.state
	lr	%r3,%r1	#, D.3034
	basr	%r14,%r4	#, D.3032
	l	%r1,108(%r11)	# tmp104, strm
	lhi	%r2,0	#,
	st	%r2,28(%r1)	#, <variable>.state
	l	%r1,116(%r11)	# tmp105, status
	chi	%r1,113	# tmp105,
	jne	.L275	#,
	lhi	%r1,-3	#,
	st	%r1,104(%r11)	#, iftmp.28
	j	.L276	#
.L275:
	lhi	%r2,0	#,
	st	%r2,104(%r11)	#, iftmp.28
.L276:
	l	%r1,104(%r11)	#, iftmp.28
	st	%r1,100(%r11)	#, D.3006
.L269:
	l	%r1,100(%r11)	# <result>, D.3006
	lr	%r2,%r1	#, <result>
	l	%r4,176(%r11)	#,
	lm	%r11,%r15,164(%r11)	#,,
	br	%r4	#
.LFE16:
	.size	deflateEnd, .-deflateEnd
	.align	4
.globl deflateCopy
	.type	deflateCopy, @function
deflateCopy:
.LFB17:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI45:
	basr	%r13,0	#
.L287:
	ahi	%r15,-128	#,
.LCFI46:
	lr	%r11,%r15	#,
.LCFI47:
	st	%r2,108(%r11)	# dest, dest
	st	%r3,104(%r11)	# source, source
	l	%r1,104(%r11)	# tmp107, source
	ltr	%r1,%r1	# tmp107
	je	.L280	#,
	l	%r1,108(%r11)	# tmp108, dest
	ltr	%r1,%r1	# tmp108
	je	.L280	#,
	l	%r1,104(%r11)	# tmp109, source
	l	%r1,28(%r1)	# D.3072, <variable>.state
	ltr	%r1,%r1	# D.3072
	jne	.L281	#,
.L280:
	lhi	%r1,-2	#,
	st	%r1,100(%r11)	#, D.3073
	j	.L282	#
.L281:
	l	%r1,104(%r11)	# tmp110, source
	l	%r2,28(%r1)	#, <variable>.state
	st	%r2,120(%r11)	#, ss
	l	%r2,108(%r11)	#, dest
	l	%r3,104(%r11)	#, source
	lhi	%r4,56	#,
	l	%r1,.L288-.L287(%r13)	# tmp111,
	basr	%r14,%r1	#, tmp111
	l	%r1,108(%r11)	# tmp112, dest
	l	%r5,32(%r1)	# D.3074, <variable>.zalloc
	l	%r1,108(%r11)	# tmp113, dest
	l	%r1,40(%r1)	# D.3075, <variable>.opaque
	lr	%r2,%r1	#, D.3075
	lhi	%r3,1	#,
	lhi	%r4,5828	#,
	basr	%r14,%r5	#, D.3074
	lr	%r1,%r2	# D.3076,
	st	%r1,116(%r11)	# D.3076, ds
	l	%r1,116(%r11)	# tmp114, ds
	ltr	%r1,%r1	# tmp114
	jne	.L283	#,
	lhi	%r4,-4	#,
	st	%r4,100(%r11)	#, D.3073
	j	.L282	#
.L283:
	l	%r1,108(%r11)	# tmp115, dest
	l	%r2,116(%r11)	#, ds
	st	%r2,28(%r1)	#, <variable>.state
	l	%r2,116(%r11)	#, ds
	l	%r3,120(%r11)	#, ss
	lhi	%r4,5828	#,
	l	%r1,.L288-.L287(%r13)	# tmp116,
	basr	%r14,%r1	#, tmp116
	l	%r1,116(%r11)	# tmp117, ds
	l	%r4,108(%r11)	#, dest
	st	%r4,0(%r1)	#, <variable>.strm
	l	%r1,108(%r11)	# tmp118, dest
	l	%r5,32(%r1)	# D.3077, <variable>.zalloc
	l	%r1,108(%r11)	# tmp119, dest
	l	%r2,40(%r1)	# D.3078, <variable>.opaque
	l	%r1,116(%r11)	# tmp120, ds
	l	%r1,44(%r1)	# D.3079, <variable>.w_size
	lr	%r3,%r1	#, D.3079
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.3077
	lr	%r1,%r2	# D.3080,
	lr	%r2,%r1	# D.3081, D.3080
	l	%r1,116(%r11)	# tmp121, ds
	st	%r2,56(%r1)	# D.3081, <variable>.window
	l	%r1,108(%r11)	# tmp122, dest
	l	%r5,32(%r1)	# D.3082, <variable>.zalloc
	l	%r1,108(%r11)	# tmp123, dest
	l	%r2,40(%r1)	# D.3083, <variable>.opaque
	l	%r1,116(%r11)	# tmp124, ds
	l	%r1,44(%r1)	# D.3084, <variable>.w_size
	lr	%r3,%r1	#, D.3084
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.3082
	lr	%r1,%r2	# D.3085,
	lr	%r2,%r1	# D.3086, D.3085
	l	%r1,116(%r11)	# tmp125, ds
	st	%r2,64(%r1)	# D.3086, <variable>.prev
	l	%r1,108(%r11)	# tmp126, dest
	l	%r5,32(%r1)	# D.3087, <variable>.zalloc
	l	%r1,108(%r11)	# tmp127, dest
	l	%r2,40(%r1)	# D.3088, <variable>.opaque
	l	%r1,116(%r11)	# tmp128, ds
	l	%r1,76(%r1)	# D.3089, <variable>.hash_size
	lr	%r3,%r1	#, D.3089
	lhi	%r4,2	#,
	basr	%r14,%r5	#, D.3087
	lr	%r1,%r2	# D.3090,
	lr	%r2,%r1	# D.3091, D.3090
	l	%r1,116(%r11)	# tmp129, ds
	st	%r2,68(%r1)	# D.3091, <variable>.head
	l	%r1,108(%r11)	# tmp130, dest
	l	%r5,32(%r1)	# D.3092, <variable>.zalloc
	l	%r1,108(%r11)	# tmp131, dest
	l	%r3,40(%r1)	# D.3093, <variable>.opaque
	l	%r2,116(%r11)	# tmp132, ds
	lhi	%r1,4096	# tmp133,
	l	%r1,1692(%r1,%r2)	# D.3094, <variable>.lit_bufsize
	lr	%r2,%r3	#, D.3093
	lr	%r3,%r1	#, D.3094
	lhi	%r4,4	#,
	basr	%r14,%r5	#, D.3092
	lr	%r1,%r2	# D.3095,
	st	%r1,124(%r11)	# D.3095, overlay
	l	%r2,124(%r11)	# overlay.29, overlay
	l	%r1,116(%r11)	# tmp135, ds
	st	%r2,8(%r1)	# overlay.29, <variable>.pending_buf
	l	%r1,116(%r11)	# tmp136, ds
	l	%r1,56(%r1)	# D.3099, <variable>.window
	ltr	%r1,%r1	# D.3099
	je	.L284	#,
	l	%r1,116(%r11)	# tmp137, ds
	l	%r1,64(%r1)	# D.3100, <variable>.prev
	ltr	%r1,%r1	# D.3100
	je	.L284	#,
	l	%r1,116(%r11)	# tmp138, ds
	l	%r1,68(%r1)	# D.3101, <variable>.head
	ltr	%r1,%r1	# D.3101
	je	.L284	#,
	l	%r1,116(%r11)	# tmp139, ds
	l	%r1,8(%r1)	# D.3102, <variable>.pending_buf
	ltr	%r1,%r1	# D.3102
	jne	.L285	#,
.L284:
	l	%r2,108(%r11)	#, dest
	l	%r1,.L289-.L287(%r13)	# tmp140,
	basr	%r14,%r1	#, tmp140
	lhi	%r1,-4	#,
	st	%r1,100(%r11)	#, D.3073
	j	.L282	#
.L285:
	l	%r1,116(%r11)	# tmp141, ds
	l	%r2,56(%r1)	# D.3103, <variable>.window
	l	%r1,120(%r11)	# tmp142, ss
	l	%r3,56(%r1)	# D.3104, <variable>.window
	l	%r1,116(%r11)	# tmp143, ds
	l	%r1,44(%r1)	# D.3105, <variable>.w_size
	sll	%r1,1	# D.3106,
	lr	%r4,%r1	#, D.3106
	l	%r1,.L288-.L287(%r13)	# tmp144,
	basr	%r14,%r1	#, tmp144
	l	%r1,116(%r11)	# tmp145, ds
	l	%r2,64(%r1)	# D.3107, <variable>.prev
	l	%r1,120(%r11)	# tmp146, ss
	l	%r3,64(%r1)	# D.3108, <variable>.prev
	l	%r1,116(%r11)	# tmp147, ds
	l	%r1,44(%r1)	# D.3109, <variable>.w_size
	sll	%r1,1	# D.3110,
	lr	%r4,%r1	#, D.3110
	l	%r1,.L288-.L287(%r13)	# tmp148,
	basr	%r14,%r1	#, tmp148
	l	%r1,116(%r11)	# tmp149, ds
	l	%r2,68(%r1)	# D.3111, <variable>.head
	l	%r1,120(%r11)	# tmp150, ss
	l	%r3,68(%r1)	# D.3112, <variable>.head
	l	%r1,116(%r11)	# tmp151, ds
	l	%r1,76(%r1)	# D.3113, <variable>.hash_size
	sll	%r1,1	# D.3114,
	lr	%r4,%r1	#, D.3114
	l	%r1,.L288-.L287(%r13)	# tmp152,
	basr	%r14,%r1	#, tmp152
	l	%r1,116(%r11)	# tmp153, ds
	l	%r2,8(%r1)	# D.3115, <variable>.pending_buf
	l	%r1,120(%r11)	# tmp154, ss
	l	%r3,8(%r1)	# D.3116, <variable>.pending_buf
	l	%r1,116(%r11)	# tmp155, ds
	l	%r1,12(%r1)	# D.3117, <variable>.pending_buf_size
	lr	%r4,%r1	#, D.3117
	l	%r1,.L288-.L287(%r13)	# tmp156,
	basr	%r14,%r1	#, tmp156
	l	%r1,116(%r11)	# tmp157, ds
	l	%r3,8(%r1)	# D.3118, <variable>.pending_buf
	l	%r1,120(%r11)	# tmp158, ss
	l	%r1,16(%r1)	# D.3119, <variable>.pending_out
	lr	%r2,%r1	# D.3120, D.3119
	l	%r1,120(%r11)	# tmp159, ss
	l	%r1,8(%r1)	# D.3121, <variable>.pending_buf
	lr	%r4,%r2	#, D.3120
	sr	%r4,%r1	#, D.3122
	lr	%r1,%r4	# D.3123,
	lr	%r2,%r3	# D.3125, D.3118
	ar	%r2,%r1	# D.3125, D.3124
	l	%r1,116(%r11)	# tmp160, ds
	st	%r2,16(%r1)	# D.3125, <variable>.pending_out
	l	%r2,116(%r11)	# tmp161, ds
	lhi	%r1,4096	# tmp162,
	l	%r1,1692(%r1,%r2)	# D.3126, <variable>.lit_bufsize
	srl	%r1,1	# D.3127,
	sll	%r1,1	# D.3128,
	l	%r3,124(%r11)	# D.3129, overlay
	ar	%r3,%r1	# D.3129, D.3128
	l	%r2,116(%r11)	# tmp164, ds
	lhi	%r1,4096	# tmp165,
	st	%r3,1700(%r1,%r2)	# D.3129, <variable>.d_buf
	l	%r1,116(%r11)	# tmp167, ds
	l	%r3,8(%r1)	# D.3130, <variable>.pending_buf
	l	%r2,116(%r11)	# tmp168, ds
	lhi	%r1,4096	# tmp169,
	l	%r1,1692(%r1,%r2)	# D.3131, <variable>.lit_bufsize
	mhi	%r1,3	# D.3132,
	ar	%r3,%r1	# D.3133, D.3132
	l	%r2,116(%r11)	# tmp171, ds
	lhi	%r1,4096	# tmp172,
	st	%r3,1688(%r1,%r2)	# D.3133, <variable>.l_buf
	l	%r2,116(%r11)	# D.3134, ds
	ahi	%r2,148	# D.3134,
	l	%r1,116(%r11)	# tmp174, ds
	st	%r2,2840(%r1)	# D.3134, <variable>.l_desc.dyn_tree
	l	%r2,116(%r11)	# D.3135, ds
	ahi	%r2,2440	# D.3135,
	l	%r1,116(%r11)	# tmp175, ds
	st	%r2,2852(%r1)	# D.3135, <variable>.d_desc.dyn_tree
	l	%r2,116(%r11)	# D.3136, ds
	ahi	%r2,2684	# D.3136,
	l	%r1,116(%r11)	# tmp176, ds
	st	%r2,2864(%r1)	# D.3136, <variable>.bl_desc.dyn_tree
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3073
.L282:
	l	%r1,100(%r11)	# <result>, D.3073
	lr	%r2,%r1	#, <result>
	l	%r4,184(%r11)	#,
	lm	%r11,%r15,172(%r11)	#,,
	br	%r4	#
	.align	4	#
.L289:
	.long	deflateEnd
.L288:
	.long	memcpy
	.align	2	#
.LFE17:
	.size	deflateCopy, .-deflateCopy
	.align	4
	.type	read_buf, @function
read_buf:
.LFB18:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI48:
	basr	%r13,0	#
.L297:
	ahi	%r15,-120	#,
.LCFI49:
	lr	%r11,%r15	#,
.LCFI50:
	st	%r2,108(%r11)	# strm, strm
	st	%r3,104(%r11)	# buf, buf
	st	%r4,100(%r11)	# size, size
	l	%r1,108(%r11)	# tmp60, strm
	l	%r2,4(%r1)	#, <variable>.avail_in
	st	%r2,116(%r11)	#, len
	l	%r1,116(%r11)	# tmp61, len
	cl	%r1,100(%r11)	# tmp61, size
	jle	.L291	#,
	l	%r1,100(%r11)	#, size
	st	%r1,116(%r11)	#, len
.L291:
	l	%r1,116(%r11)	# tmp62, len
	ltr	%r1,%r1	# tmp62
	jne	.L292	#,
	lhi	%r2,0	#,
	st	%r2,96(%r11)	#, D.3151
	j	.L293	#
.L292:
	l	%r1,108(%r11)	# tmp63, strm
	l	%r1,4(%r1)	# D.3152, <variable>.avail_in
	lr	%r2,%r1	# D.3153, D.3152
	s	%r2,116(%r11)	# D.3153, len
	l	%r1,108(%r11)	# tmp64, strm
	st	%r2,4(%r1)	# D.3153, <variable>.avail_in
	l	%r1,108(%r11)	# tmp65, strm
	l	%r1,0(%r1)	# D.3154, <variable>.next_in
	l	%r2,104(%r11)	#, buf
	lr	%r3,%r1	#, D.3154
	l	%r4,116(%r11)	#, len
	l	%r1,.L298-.L297(%r13)	# tmp66,
	basr	%r14,%r1	#, tmp66
	l	%r1,108(%r11)	# tmp67, strm
	l	%r1,28(%r1)	# D.3155, <variable>.state
	l	%r1,24(%r1)	# D.3156, <variable>.wrap
	chi	%r1,1	# D.3156,
	jne	.L294	#,
	l	%r1,108(%r11)	# tmp68, strm
	l	%r1,48(%r1)	# D.3157, <variable>.adler
	lr	%r2,%r1	#, D.3157
	l	%r3,104(%r11)	#, buf
	l	%r4,116(%r11)	#, len
	l	%r1,.L299-.L297(%r13)	# tmp69,
	basr	%r14,%r1	#, tmp69
	l	%r1,108(%r11)	# tmp70, strm
	st	%r2,48(%r1)	# D.3158, <variable>.adler
	j	.L295	#
.L294:
	l	%r1,108(%r11)	# tmp71, strm
	l	%r1,28(%r1)	# D.3159, <variable>.state
	l	%r1,24(%r1)	# D.3160, <variable>.wrap
	chi	%r1,2	# D.3160,
	jne	.L295	#,
	l	%r1,108(%r11)	# tmp72, strm
	l	%r1,48(%r1)	# D.3161, <variable>.adler
	lr	%r2,%r1	#, D.3161
	l	%r3,104(%r11)	#, buf
	l	%r4,116(%r11)	#, len
	l	%r1,.L300-.L297(%r13)	# tmp73,
	basr	%r14,%r1	#, tmp73
	l	%r1,108(%r11)	# tmp74, strm
	st	%r2,48(%r1)	# D.3162, <variable>.adler
.L295:
	l	%r1,108(%r11)	# tmp75, strm
	l	%r1,0(%r1)	# D.3163, <variable>.next_in
	lr	%r2,%r1	# D.3164, D.3163
	a	%r2,116(%r11)	# D.3164, len
	l	%r1,108(%r11)	# tmp76, strm
	st	%r2,0(%r1)	# D.3164, <variable>.next_in
	l	%r1,108(%r11)	# tmp77, strm
	l	%r1,8(%r1)	# D.3165, <variable>.total_in
	lr	%r2,%r1	# D.3166, D.3165
	a	%r2,116(%r11)	# D.3166, len
	l	%r1,108(%r11)	# tmp78, strm
	st	%r2,8(%r1)	# D.3166, <variable>.total_in
	l	%r1,116(%r11)	#, len
	st	%r1,96(%r11)	#, D.3151
.L293:
	l	%r1,96(%r11)	# <result>, D.3151
	lr	%r2,%r1	#, <result>
	l	%r4,176(%r11)	#,
	lm	%r11,%r15,164(%r11)	#,,
	br	%r4	#
	.align	4	#
.L300:
	.long	crc32
.L299:
	.long	adler32
.L298:
	.long	memcpy
	.align	2	#
.LFE18:
	.size	read_buf, .-read_buf
	.align	4
	.type	lm_init, @function
lm_init:
.LFB19:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI51:
	basr	%r13,0	#
.L303:
	ahi	%r15,-104	#,
.LCFI52:
	lr	%r11,%r15	#,
.LCFI53:
	st	%r2,100(%r11)	# s, s
	l	%r1,100(%r11)	# tmp67, s
	l	%r1,44(%r1)	# D.3180, <variable>.w_size
	lr	%r2,%r1	# D.3181, D.3180
	sll	%r2,1	# D.3181,
	l	%r1,100(%r11)	# tmp68, s
	st	%r2,60(%r1)	# D.3181, <variable>.window_size
	l	%r1,100(%r11)	# tmp69, s
	l	%r2,68(%r1)	# D.3182, <variable>.head
	l	%r1,100(%r11)	# tmp70, s
	l	%r1,76(%r1)	# D.3183, <variable>.hash_size
	ahi	%r1,-1	# D.3184,
	sll	%r1,1	# D.3185,
	ar	%r1,%r2	# D.3186, D.3182
	lhi	%r2,0	#,
	sth	%r2,0(%r1)	#,* D.3186
	l	%r1,100(%r11)	# tmp71, s
	l	%r2,68(%r1)	# D.3187, <variable>.head
	l	%r1,100(%r11)	# tmp72, s
	l	%r1,76(%r1)	# D.3188, <variable>.hash_size
	a	%r1,.L304-.L303(%r13)	# D.3189,
	sll	%r1,1	# D.3190,
	lhi	%r3,0	#,
	lr	%r4,%r1	#, D.3190
	l	%r1,.L305-.L303(%r13)	# tmp73,
	basr	%r14,%r1	#, tmp73
	l	%r1,100(%r11)	# tmp74, s
	l	%r1,132(%r1)	# D.3191, <variable>.level
	l	%r2,.L306-.L303(%r13)	# tmp75,
	mhi	%r1,12	# tmp76,
	lh	%r1,2(%r1,%r2)	# D.3192, <variable>.max_lazy
	lr	%r2,%r1	# D.3193,
	n	%r2,.L307-.L303(%r13)	# D.3193,
	l	%r1,100(%r11)	# tmp77, s
	st	%r2,128(%r1)	# D.3193, <variable>.max_lazy_match
	l	%r1,100(%r11)	# tmp78, s
	l	%r1,132(%r1)	# D.3194, <variable>.level
	l	%r2,.L306-.L303(%r13)	# tmp79,
	mhi	%r1,12	# tmp80,
	lh	%r1,0(%r1,%r2)	# D.3195, <variable>.good_length
	lr	%r2,%r1	# D.3196,
	n	%r2,.L307-.L303(%r13)	# D.3196,
	l	%r1,100(%r11)	# tmp81, s
	st	%r2,140(%r1)	# D.3196, <variable>.good_match
	l	%r1,100(%r11)	# tmp82, s
	l	%r1,132(%r1)	# D.3197, <variable>.level
	l	%r2,.L306-.L303(%r13)	# tmp83,
	mhi	%r1,12	# tmp84,
	lh	%r1,4(%r1,%r2)	# D.3198, <variable>.nice_length
	lr	%r2,%r1	# D.3199,
	n	%r2,.L307-.L303(%r13)	# D.3199,
	l	%r1,100(%r11)	# tmp85, s
	st	%r2,144(%r1)	# D.3199, <variable>.nice_match
	l	%r1,100(%r11)	# tmp86, s
	l	%r1,132(%r1)	# D.3200, <variable>.level
	l	%r2,.L306-.L303(%r13)	# tmp87,
	mhi	%r1,12	# tmp88,
	lh	%r1,6(%r1,%r2)	# D.3201, <variable>.max_chain
	lr	%r2,%r1	# D.3202,
	n	%r2,.L307-.L303(%r13)	# D.3202,
	l	%r1,100(%r11)	# tmp89, s
	st	%r2,124(%r1)	# D.3202, <variable>.max_chain_length
	l	%r1,100(%r11)	# tmp90, s
	lhi	%r3,0	#,
	st	%r3,108(%r1)	#, <variable>.strstart
	l	%r1,100(%r11)	# tmp91, s
	lhi	%r2,0	#,
	st	%r2,92(%r1)	#, <variable>.block_start
	l	%r1,100(%r11)	# tmp92, s
	lhi	%r3,0	#,
	st	%r3,116(%r1)	#, <variable>.lookahead
	l	%r2,100(%r11)	# tmp93, s
	lhi	%r1,4096	# tmp94,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,100(%r11)	# tmp96, s
	lhi	%r2,2	#,
	st	%r2,120(%r1)	#, <variable>.prev_length
	l	%r1,100(%r11)	# tmp97, s
	l	%r2,120(%r1)	# D.3203, <variable>.prev_length
	l	%r1,100(%r11)	# tmp98, s
	st	%r2,96(%r1)	# D.3203, <variable>.match_length
	l	%r1,100(%r11)	# tmp99, s
	lhi	%r3,0	#,
	st	%r3,104(%r1)	#, <variable>.match_available
	l	%r1,100(%r11)	# tmp100, s
	lhi	%r2,0	#,
	st	%r2,72(%r1)	#, <variable>.ins_h
	l	%r4,160(%r11)	#,
	lm	%r11,%r15,148(%r11)	#,,
	br	%r4	#
	.align	4	#
.L307:
	.long	65535
.L306:
	.long	configuration_table
.L305:
	.long	memset
.L304:
	.long	2147483647
	.align	2	#
.LFE19:
	.size	lm_init, .-lm_init
	.align	4
	.type	longest_match, @function
longest_match:
.LFB20:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI54:
	basr	%r5,0	#
.L320:
	ahi	%r15,-168	#,
.LCFI55:
	lr	%r11,%r15	#,
.LCFI56:
	st	%r2,140(%r11)	# s, s
	st	%r3,136(%r11)	# cur_match, cur_match
	l	%r1,140(%r11)	# tmp117, s
	l	%r2,124(%r1)	#, <variable>.max_chain_length
	st	%r2,144(%r11)	#, chain_length
	l	%r1,140(%r11)	# tmp118, s
	l	%r2,56(%r1)	# D.3225, <variable>.window
	l	%r1,140(%r11)	# tmp119, s
	l	%r1,108(%r1)	# D.3226, <variable>.strstart
	lr	%r3,%r2	#, D.3225
	ar	%r3,%r1	#, D.3226
	st	%r3,104(%r11)	#, scan
	l	%r1,140(%r11)	# tmp120, s
	l	%r1,120(%r1)	# D.3227, <variable>.prev_length
	st	%r1,148(%r11)	# D.3227, best_len
	l	%r1,140(%r11)	# tmp121, s
	l	%r2,144(%r1)	#, <variable>.nice_match
	st	%r2,152(%r11)	#, nice_match
	l	%r1,140(%r11)	# tmp122, s
	l	%r2,108(%r1)	# D.3229, <variable>.strstart
	l	%r1,140(%r11)	# tmp123, s
	l	%r1,44(%r1)	# D.3230, <variable>.w_size
	ahi	%r1,-262	# D.3231,
	clr	%r2,%r1	# D.3229, D.3231
	jle	.L309	#,
	l	%r1,140(%r11)	# tmp124, s
	l	%r2,108(%r1)	# D.3232, <variable>.strstart
	l	%r1,140(%r11)	# tmp125, s
	l	%r1,44(%r1)	# D.3233, <variable>.w_size
	lr	%r3,%r2	#, D.3232
	sr	%r3,%r1	#, D.3233
	lr	%r1,%r3	# D.3234,
	lr	%r2,%r1	#, D.3234
	ahi	%r2,262	#,
	st	%r2,96(%r11)	#, iftmp.30
	j	.L310	#
.L309:
	lhi	%r3,0	#,
	st	%r3,96(%r11)	#, iftmp.30
.L310:
	l	%r1,96(%r11)	#, iftmp.30
	st	%r1,156(%r11)	#, limit
	l	%r1,140(%r11)	# tmp126, s
	l	%r2,64(%r1)	#, <variable>.prev
	st	%r2,160(%r11)	#, prev
	l	%r1,140(%r11)	# tmp127, s
	l	%r3,52(%r1)	#, <variable>.w_mask
	st	%r3,164(%r11)	#, wmask
	l	%r1,140(%r11)	# tmp128, s
	l	%r2,56(%r1)	# D.3235, <variable>.window
	l	%r1,140(%r11)	# tmp129, s
	l	%r1,108(%r1)	# D.3236, <variable>.strstart
	ahi	%r1,258	# D.3237,
	lr	%r3,%r2	#, D.3235
	ar	%r3,%r1	#, D.3237
	st	%r3,116(%r11)	#, strend
	l	%r1,148(%r11)	# best_len.31, best_len
	ahi	%r1,-1	# D.3239,
	a	%r1,104(%r11)	# D.3240, scan
	ic	%r1,0(%r1)	#,* D.3240
	stc	%r1,127(%r11)	#, scan_end1
	l	%r1,148(%r11)	# best_len.32, best_len
	a	%r1,104(%r11)	# D.3242, scan
	ic	%r1,0(%r1)	#,* D.3242
	stc	%r1,135(%r11)	#, scan_end
	l	%r1,140(%r11)	# tmp130, s
	l	%r2,120(%r1)	# D.3243, <variable>.prev_length
	l	%r1,140(%r11)	# tmp131, s
	l	%r1,140(%r1)	# D.3244, <variable>.good_match
	clr	%r2,%r1	# D.3243, D.3244
	jl	.L311	#,
	l	%r1,144(%r11)	# tmp132, chain_length
	srl	%r1,2	# tmp133,
	st	%r1,144(%r11)	# tmp133, chain_length
.L311:
	l	%r1,152(%r11)	# nice_match.33, nice_match
	l	%r2,140(%r11)	# tmp134, s
	l	%r2,116(%r2)	# D.3246, <variable>.lookahead
	clr	%r1,%r2	# nice_match.33, D.3246
	jle	.L312	#,
	l	%r1,140(%r11)	# tmp135, s
	l	%r1,116(%r1)	# D.3247, <variable>.lookahead
	st	%r1,152(%r11)	# D.3247, nice_match
.L312:
	l	%r1,140(%r11)	# tmp136, s
	l	%r1,56(%r1)	# D.3248, <variable>.window
	lr	%r2,%r1	#, D.3248
	a	%r2,136(%r11)	#, cur_match
	st	%r2,108(%r11)	#, match
	l	%r1,148(%r11)	# best_len.34, best_len
	a	%r1,108(%r11)	# D.3250, match
	ic	%r1,0(%r1)	# D.3251,* D.3250
	lhi	%r2,255	# tmp137,
	nr	%r2,%r1	# tmp137, D.3251
	ic	%r1,135(%r11)	#, scan_end
	n	%r1,.L321-.L320(%r5)	# tmp138,
	cr	%r2,%r1	# tmp137, tmp138
	jne	.L313	#,
	l	%r1,148(%r11)	# best_len.35, best_len
	ahi	%r1,-1	# D.3253,
	a	%r1,108(%r11)	# D.3254, match
	ic	%r1,0(%r1)	# D.3255,* D.3254
	lhi	%r2,255	# tmp139,
	nr	%r2,%r1	# tmp139, D.3255
	ic	%r1,127(%r11)	#, scan_end1
	n	%r1,.L321-.L320(%r5)	# tmp140,
	cr	%r2,%r1	# tmp139, tmp140
	jne	.L313	#,
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3256,
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3257,
	lhi	%r3,255	# tmp141,
	nr	%r3,%r1	# tmp141, D.3256
	lhi	%r1,255	# tmp142,
	nr	%r1,%r2	# tmp142, D.3257
	cr	%r3,%r1	# tmp141, tmp142
	jne	.L313	#,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r2,0(%r3)	# D.3258,
	l	%r1,104(%r11)	# D.3259, scan
	ahi	%r1,1	# D.3259,
	ic	%r1,0(%r1)	# D.3260,* D.3259
	n	%r2,.L321-.L320(%r5)	# tmp143,
	n	%r1,.L321-.L320(%r5)	# tmp144,
	cr	%r2,%r1	# tmp143, tmp144
	jne	.L313	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,2	#,
	st	%r1,104(%r11)	#, scan
	l	%r2,108(%r11)	#, match
	ahi	%r2,1	#,
	st	%r2,108(%r11)	#, match
.L315:
	l	%r3,104(%r11)	#, scan
	ahi	%r3,1	#,
	st	%r3,104(%r11)	#, scan
	l	%r1,104(%r11)	#, scan
	ic	%r2,0(%r1)	# D.3261,
	l	%r3,108(%r11)	#, match
	ahi	%r3,1	#,
	st	%r3,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3262,
	n	%r2,.L321-.L320(%r5)	# tmp145,
	n	%r1,.L321-.L320(%r5)	# tmp146,
	cr	%r2,%r1	# tmp145, tmp146
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3263,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3264,
	n	%r2,.L321-.L320(%r5)	# tmp147,
	n	%r1,.L321-.L320(%r5)	# tmp148,
	cr	%r2,%r1	# tmp147, tmp148
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3265,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3266,
	n	%r2,.L321-.L320(%r5)	# tmp149,
	n	%r1,.L321-.L320(%r5)	# tmp150,
	cr	%r2,%r1	# tmp149, tmp150
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3267,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3268,
	n	%r2,.L321-.L320(%r5)	# tmp151,
	n	%r1,.L321-.L320(%r5)	# tmp152,
	cr	%r2,%r1	# tmp151, tmp152
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3269,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3270,
	n	%r2,.L321-.L320(%r5)	# tmp153,
	n	%r1,.L321-.L320(%r5)	# tmp154,
	cr	%r2,%r1	# tmp153, tmp154
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3271,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3272,
	n	%r2,.L321-.L320(%r5)	# tmp155,
	n	%r1,.L321-.L320(%r5)	# tmp156,
	cr	%r2,%r1	# tmp155, tmp156
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3273,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3274,
	n	%r2,.L321-.L320(%r5)	# tmp157,
	n	%r1,.L321-.L320(%r5)	# tmp158,
	cr	%r2,%r1	# tmp157, tmp158
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,104(%r11)	#, scan
	l	%r3,104(%r11)	#, scan
	ic	%r2,0(%r3)	# D.3275,
	l	%r1,108(%r11)	#, match
	ahi	%r1,1	#,
	st	%r1,108(%r11)	#, match
	l	%r3,108(%r11)	#, match
	ic	%r1,0(%r3)	# D.3276,
	n	%r2,.L321-.L320(%r5)	# tmp159,
	n	%r1,.L321-.L320(%r5)	# tmp160,
	cr	%r2,%r1	# tmp159, tmp160
	jne	.L314	#,
	l	%r1,104(%r11)	#, scan
	cl	%r1,116(%r11)	#, strend
	jl	.L315	#,
.L314:
	l	%r1,104(%r11)	# scan.36, scan
	l	%r2,116(%r11)	# strend.37, strend
	sr	%r1,%r2	# D.3279, strend.37
	lr	%r2,%r1	#, D.3279
	ahi	%r2,258	#,
	st	%r2,112(%r11)	#, len
	l	%r3,116(%r11)	#, strend
	ahi	%r3,-258	#,
	st	%r3,104(%r11)	#, scan
	l	%r1,112(%r11)	#, len
	c	%r1,148(%r11)	#, best_len
	jle	.L313	#,
	l	%r1,140(%r11)	# tmp161, s
	l	%r2,136(%r11)	#, cur_match
	st	%r2,112(%r1)	#, <variable>.match_start
	l	%r3,112(%r11)	#, len
	st	%r3,148(%r11)	#, best_len
	l	%r1,112(%r11)	#, len
	c	%r1,152(%r11)	#, nice_match
	jhe	.L316	#,
	l	%r1,148(%r11)	# best_len.38, best_len
	ahi	%r1,-1	# D.3281,
	a	%r1,104(%r11)	# D.3282, scan
	ic	%r1,0(%r1)	#,* D.3282
	stc	%r1,127(%r11)	#, scan_end1
	l	%r1,148(%r11)	# best_len.39, best_len
	a	%r1,104(%r11)	# D.3284, scan
	ic	%r1,0(%r1)	#,* D.3284
	stc	%r1,135(%r11)	#, scan_end
.L313:
	l	%r1,136(%r11)	# D.3285, cur_match
	n	%r1,164(%r11)	# D.3285, wmask
	sll	%r1,1	# D.3286,
	a	%r1,160(%r11)	# D.3287, prev
	lh	%r1,0(%r1)	# D.3288,* D.3287
	n	%r1,.L322-.L320(%r5)	# tmp162,
	st	%r1,136(%r11)	# tmp162, cur_match
	l	%r1,136(%r11)	# tmp163, cur_match
	cl	%r1,156(%r11)	# tmp163, limit
	jle	.L316	#,
	l	%r2,144(%r11)	#, chain_length
	ahi	%r2,-1	#,
	st	%r2,144(%r11)	#, chain_length
	l	%r1,144(%r11)	# tmp164, chain_length
	ltr	%r1,%r1	# tmp164
	jne	.L312	#,
.L316:
	l	%r1,148(%r11)	# best_len.40, best_len
	l	%r2,140(%r11)	# tmp165, s
	l	%r2,116(%r2)	# D.3290, <variable>.lookahead
	clr	%r1,%r2	# best_len.40, D.3290
	jh	.L317	#,
	l	%r3,148(%r11)	#, best_len
	st	%r3,100(%r11)	#, D.3291
	j	.L318	#
.L317:
	l	%r1,140(%r11)	# tmp166, s
	l	%r1,116(%r1)	#, <variable>.lookahead
	st	%r1,100(%r11)	#, D.3291
.L318:
	l	%r1,100(%r11)	# <result>, D.3291
	lr	%r2,%r1	#, <result>
	l	%r4,224(%r11)	#,
	lm	%r11,%r15,212(%r11)	#,,
	br	%r4	#
	.align	4	#
.L322:
	.long	65535
.L321:
	.long	255
	.align	2	#
.LFE20:
	.size	longest_match, .-longest_match
	.align	4
	.type	fill_window, @function
fill_window:
.LFB21:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI57:
	basr	%r13,0	#
.L341:
	ahi	%r15,-144	#,
.LCFI58:
	lr	%r11,%r15	#,
.LCFI59:
	st	%r2,116(%r11)	# s, s
	l	%r1,116(%r11)	# tmp169, s
	l	%r2,44(%r1)	#, <variable>.w_size
	st	%r2,128(%r11)	#, wsize
.L335:
	l	%r1,116(%r11)	# tmp170, s
	l	%r2,60(%r1)	# D.3338, <variable>.window_size
	l	%r1,116(%r11)	# tmp171, s
	l	%r1,116(%r1)	# D.3339, <variable>.lookahead
	sr	%r2,%r1	# D.3340, D.3339
	l	%r1,116(%r11)	# tmp172, s
	l	%r1,108(%r1)	# D.3341, <variable>.strstart
	lr	%r3,%r2	#, D.3340
	sr	%r3,%r1	#, D.3341
	lr	%r1,%r3	# tmp173,
	st	%r1,124(%r11)	# tmp173, more
	l	%r1,116(%r11)	# tmp174, s
	l	%r2,108(%r1)	# D.3346, <variable>.strstart
	l	%r1,116(%r11)	# tmp175, s
	l	%r1,44(%r1)	# D.3347, <variable>.w_size
	a	%r1,128(%r11)	# D.3348, wsize
	ahi	%r1,-262	# D.3349,
	clr	%r2,%r1	# D.3346, D.3349
	jl	.L324	#,
	l	%r1,116(%r11)	# tmp176, s
	l	%r2,56(%r1)	# D.3350, <variable>.window
	l	%r1,116(%r11)	# tmp177, s
	l	%r1,56(%r1)	# D.3351, <variable>.window
	a	%r1,128(%r11)	# D.3352, wsize
	lr	%r3,%r1	#, D.3352
	l	%r4,128(%r11)	#, wsize
	l	%r1,.L342-.L341(%r13)	# tmp178,
	basr	%r14,%r1	#, tmp178
	l	%r1,116(%r11)	# tmp179, s
	l	%r1,112(%r1)	# D.3353, <variable>.match_start
	lr	%r2,%r1	# D.3354, D.3353
	s	%r2,128(%r11)	# D.3354, wsize
	l	%r1,116(%r11)	# tmp180, s
	st	%r2,112(%r1)	# D.3354, <variable>.match_start
	l	%r1,116(%r11)	# tmp181, s
	l	%r1,108(%r1)	# D.3355, <variable>.strstart
	lr	%r2,%r1	# D.3356, D.3355
	s	%r2,128(%r11)	# D.3356, wsize
	l	%r1,116(%r11)	# tmp182, s
	st	%r2,108(%r1)	# D.3356, <variable>.strstart
	l	%r1,116(%r11)	# tmp183, s
	l	%r2,92(%r1)	# D.3357, <variable>.block_start
	l	%r1,128(%r11)	# wsize.41, wsize
	sr	%r2,%r1	# D.3359, wsize.41
	l	%r1,116(%r11)	# tmp184, s
	st	%r2,92(%r1)	# D.3359, <variable>.block_start
	l	%r1,116(%r11)	# tmp185, s
	l	%r1,76(%r1)	#, <variable>.hash_size
	st	%r1,104(%r11)	#, n
	l	%r1,116(%r11)	# tmp186, s
	l	%r2,68(%r1)	# D.3360, <variable>.head
	l	%r1,104(%r11)	# D.3361, n
	sll	%r1,1	# D.3361,
	lr	%r3,%r2	#, D.3360
	ar	%r3,%r1	#, D.3361
	st	%r3,112(%r11)	#, p
.L327:
	l	%r1,112(%r11)	#, p
	ahi	%r1,-2	#,
	st	%r1,112(%r11)	#, p
	l	%r2,112(%r11)	#, p
	lh	%r1,0(%r2)	# D.3362,
	lr	%r3,%r1	#,
	n	%r3,.L343-.L341(%r13)	#,
	st	%r3,108(%r11)	#, m
	clc	108(4,%r11),128(%r11)	# m,, wsize
	jl	.L325	#,
	lh	%r2,110(%r11)	# D.3364, m
	l	%r1,128(%r11)	# tmp187, wsize
	lr	%r3,%r2	#,
	sr	%r3,%r1	#, D.3365
	lr	%r1,%r3	# tmp188,
	sth	%r1,100(%r11)	# tmp188, iftmp.42
	j	.L326	#
.L325:
	lhi	%r1,0	#,
	sth	%r1,100(%r11)	#, iftmp.42
.L326:
	lh	%r3,100(%r11)	#, iftmp.42
	l	%r2,112(%r11)	#, p
	sth	%r3,0(%r2)	#,
	l	%r1,104(%r11)	#, n
	ahi	%r1,-1	#,
	st	%r1,104(%r11)	#, n
	l	%r2,104(%r11)	#, n
	ltr	%r2,%r2	#
	jne	.L327	#,
	l	%r3,128(%r11)	#, wsize
	st	%r3,104(%r11)	#, n
	l	%r1,116(%r11)	# tmp189, s
	l	%r2,64(%r1)	# D.3366, <variable>.prev
	l	%r1,104(%r11)	# D.3367, n
	sll	%r1,1	# D.3367,
	lr	%r3,%r2	#, D.3366
	ar	%r3,%r1	#, D.3367
	st	%r3,112(%r11)	#, p
.L330:
	l	%r1,112(%r11)	#, p
	ahi	%r1,-2	#,
	st	%r1,112(%r11)	#, p
	l	%r2,112(%r11)	#, p
	lh	%r1,0(%r2)	# D.3368,
	lr	%r3,%r1	#,
	n	%r3,.L343-.L341(%r13)	#,
	st	%r3,108(%r11)	#, m
	clc	108(4,%r11),128(%r11)	# m,, wsize
	jl	.L328	#,
	lh	%r2,110(%r11)	# D.3370, m
	l	%r1,128(%r11)	# tmp190, wsize
	lr	%r3,%r2	#,
	sr	%r3,%r1	#, D.3371
	lr	%r1,%r3	# tmp191,
	sth	%r1,102(%r11)	# tmp191, iftmp.43
	j	.L329	#
.L328:
	lhi	%r1,0	#,
	sth	%r1,102(%r11)	#, iftmp.43
.L329:
	lh	%r3,102(%r11)	#, iftmp.43
	l	%r2,112(%r11)	#, p
	sth	%r3,0(%r2)	#,
	l	%r1,104(%r11)	#, n
	ahi	%r1,-1	#,
	st	%r1,104(%r11)	#, n
	l	%r2,104(%r11)	#, n
	ltr	%r2,%r2	#
	jne	.L330	#,
	l	%r3,124(%r11)	#, more
	a	%r3,128(%r11)	#, wsize
	st	%r3,124(%r11)	#, more
.L324:
	l	%r1,116(%r11)	# tmp192, s
	l	%r1,0(%r1)	# D.3372, <variable>.strm
	l	%r1,4(%r1)	# D.3373, <variable>.avail_in
	ltr	%r1,%r1	# D.3373
	je	.L331	#,
	l	%r1,116(%r11)	# tmp193, s
	l	%r3,0(%r1)	# D.3374, <variable>.strm
	l	%r1,116(%r11)	# tmp194, s
	l	%r4,56(%r1)	# D.3375, <variable>.window
	l	%r1,116(%r11)	# tmp195, s
	l	%r2,108(%r1)	# D.3376, <variable>.strstart
	l	%r1,116(%r11)	# tmp196, s
	l	%r1,116(%r1)	# D.3377, <variable>.lookahead
	ar	%r1,%r2	# D.3378, D.3376
	ar	%r1,%r4	# D.3379, D.3375
	lr	%r2,%r3	#, D.3374
	lr	%r3,%r1	#, D.3379
	l	%r4,124(%r11)	#, more
	l	%r1,.L344-.L341(%r13)	# tmp197,
	basr	%r14,%r1	#, tmp197
	lr	%r1,%r2	# D.3380,
	st	%r1,104(%r11)	# D.3380, n
	l	%r1,116(%r11)	# tmp198, s
	l	%r1,116(%r1)	# D.3381, <variable>.lookahead
	l	%r2,104(%r11)	# D.3382, n
	ar	%r2,%r1	# D.3382, D.3381
	l	%r1,116(%r11)	# tmp199, s
	st	%r2,116(%r1)	# D.3382, <variable>.lookahead
	l	%r1,116(%r11)	# tmp200, s
	l	%r3,116(%r1)	# D.3383, <variable>.lookahead
	l	%r2,116(%r11)	# tmp201, s
	lhi	%r1,4096	# tmp202,
	l	%r1,1716(%r1,%r2)	# D.3384, <variable>.insert
	ar	%r1,%r3	# D.3385, D.3383
	cl	%r1,.L345-.L341(%r13)	# D.3385,
	jle	.L332	#,
	l	%r1,116(%r11)	# tmp204, s
	l	%r3,108(%r1)	# D.3386, <variable>.strstart
	l	%r2,116(%r11)	# tmp205, s
	lhi	%r1,4096	# tmp206,
	l	%r1,1716(%r1,%r2)	# D.3387, <variable>.insert
	lr	%r2,%r3	#, D.3386
	sr	%r2,%r1	#, D.3387
	lr	%r1,%r2	# tmp208,
	st	%r1,132(%r11)	# tmp208, str
	l	%r1,116(%r11)	# tmp209, s
	l	%r1,56(%r1)	# D.3388, <variable>.window
	a	%r1,132(%r11)	# D.3389, str
	ic	%r1,0(%r1)	# D.3390,* D.3389
	lhi	%r2,255	# D.3391,
	nr	%r2,%r1	# D.3391, D.3390
	l	%r1,116(%r11)	# tmp210, s
	st	%r2,72(%r1)	# D.3391, <variable>.ins_h
	l	%r1,116(%r11)	# tmp211, s
	l	%r2,72(%r1)	# D.3392, <variable>.ins_h
	l	%r1,116(%r11)	# tmp212, s
	l	%r1,88(%r1)	# D.3393, <variable>.hash_shift
	lr	%r3,%r2	# D.3395, D.3392
	sll	%r3,0(%r1)	# D.3395, D.3394
	l	%r1,116(%r11)	# tmp213, s
	l	%r2,56(%r1)	# D.3396, <variable>.window
	l	%r1,132(%r11)	# D.3397, str
	ahi	%r1,1	# D.3397,
	ar	%r1,%r2	# D.3398, D.3396
	ic	%r1,0(%r1)	# D.3399,* D.3398
	n	%r1,.L346-.L341(%r13)	# D.3400,
	lr	%r2,%r3	# D.3401, D.3395
	xr	%r2,%r1	# D.3401, D.3400
	l	%r1,116(%r11)	# tmp214, s
	l	%r1,84(%r1)	# D.3402, <variable>.hash_mask
	nr	%r2,%r1	# D.3403, D.3402
	l	%r1,116(%r11)	# tmp215, s
	st	%r2,72(%r1)	# D.3403, <variable>.ins_h
	j	.L333	#
.L334:
	l	%r1,116(%r11)	# tmp216, s
	l	%r2,72(%r1)	# D.3404, <variable>.ins_h
	l	%r1,116(%r11)	# tmp217, s
	l	%r1,88(%r1)	# D.3405, <variable>.hash_shift
	lr	%r3,%r2	# D.3407, D.3404
	sll	%r3,0(%r1)	# D.3407, D.3406
	l	%r1,116(%r11)	# tmp218, s
	l	%r2,56(%r1)	# D.3408, <variable>.window
	l	%r1,132(%r11)	# D.3409, str
	ahi	%r1,2	# D.3409,
	ar	%r1,%r2	# D.3410, D.3408
	ic	%r1,0(%r1)	# D.3411,* D.3410
	n	%r1,.L346-.L341(%r13)	# D.3412,
	lr	%r2,%r3	# D.3413, D.3407
	xr	%r2,%r1	# D.3413, D.3412
	l	%r1,116(%r11)	# tmp219, s
	l	%r1,84(%r1)	# D.3414, <variable>.hash_mask
	nr	%r2,%r1	# D.3415, D.3414
	l	%r1,116(%r11)	# tmp220, s
	st	%r2,72(%r1)	# D.3415, <variable>.ins_h
	l	%r1,116(%r11)	# tmp221, s
	l	%r2,64(%r1)	# D.3416, <variable>.prev
	l	%r1,116(%r11)	# tmp222, s
	l	%r1,52(%r1)	# D.3417, <variable>.w_mask
	n	%r1,132(%r11)	# D.3418, str
	sll	%r1,1	# D.3419,
	lr	%r3,%r2	# D.3420, D.3416
	ar	%r3,%r1	# D.3420, D.3419
	l	%r1,116(%r11)	# tmp223, s
	l	%r2,68(%r1)	# D.3421, <variable>.head
	l	%r1,116(%r11)	# tmp224, s
	l	%r1,72(%r1)	# D.3422, <variable>.ins_h
	sll	%r1,1	# D.3423,
	ar	%r1,%r2	# D.3424, D.3421
	lh	%r1,0(%r1)	# D.3425,* D.3424
	sth	%r1,0(%r3)	# D.3425,* D.3420
	l	%r1,116(%r11)	# tmp225, s
	l	%r2,68(%r1)	# D.3426, <variable>.head
	l	%r1,116(%r11)	# tmp226, s
	l	%r1,72(%r1)	# D.3427, <variable>.ins_h
	sll	%r1,1	# D.3428,
	ar	%r2,%r1	# D.3429, D.3428
	l	%r1,132(%r11)	# tmp227, str
	sth	%r1,0(%r2)	# D.3430,* D.3429
	l	%r3,132(%r11)	#, str
	ahi	%r3,1	#,
	st	%r3,132(%r11)	#, str
	l	%r2,116(%r11)	# tmp228, s
	lhi	%r1,4096	# tmp229,
	l	%r1,1716(%r1,%r2)	# D.3431, <variable>.insert
	lr	%r3,%r1	# D.3432, D.3431
	ahi	%r3,-1	# D.3432,
	l	%r2,116(%r11)	# tmp231, s
	lhi	%r1,4096	# tmp232,
	st	%r3,1716(%r1,%r2)	# D.3432, <variable>.insert
	l	%r1,116(%r11)	# tmp234, s
	l	%r3,116(%r1)	# D.3433, <variable>.lookahead
	l	%r2,116(%r11)	# tmp235, s
	lhi	%r1,4096	# tmp236,
	l	%r1,1716(%r1,%r2)	# D.3434, <variable>.insert
	ar	%r1,%r3	# D.3435, D.3433
	cl	%r1,.L345-.L341(%r13)	# D.3435,
	jle	.L332	#,
.L333:
	l	%r2,116(%r11)	# tmp238, s
	lhi	%r1,4096	# tmp239,
	l	%r1,1716(%r1,%r2)	# D.3436, <variable>.insert
	ltr	%r1,%r1	# D.3436
	jne	.L334	#,
.L332:
	l	%r1,116(%r11)	# tmp241, s
	l	%r1,116(%r1)	# D.3437, <variable>.lookahead
	cl	%r1,.L347-.L341(%r13)	# D.3437,
	jh	.L331	#,
	l	%r1,116(%r11)	# tmp242, s
	l	%r1,0(%r1)	# D.3438, <variable>.strm
	l	%r1,4(%r1)	# D.3439, <variable>.avail_in
	ltr	%r1,%r1	# D.3439
	jne	.L335	#,
.L331:
	l	%r2,116(%r11)	# tmp243, s
	lhi	%r1,4096	# tmp244,
	l	%r2,1728(%r1,%r2)	# D.3440, <variable>.high_water
	l	%r1,116(%r11)	# tmp246, s
	l	%r1,60(%r1)	# D.3441, <variable>.window_size
	clr	%r2,%r1	# D.3440, D.3441
	jhe	.L340	#,
	l	%r1,116(%r11)	# tmp247, s
	l	%r2,108(%r1)	# D.3442, <variable>.strstart
	l	%r1,116(%r11)	# tmp248, s
	l	%r1,116(%r1)	# D.3443, <variable>.lookahead
	lr	%r3,%r2	#, D.3442
	ar	%r3,%r1	#, D.3443
	st	%r3,136(%r11)	#, curr
	l	%r2,116(%r11)	# tmp249, s
	lhi	%r1,4096	# tmp250,
	l	%r1,1728(%r1,%r2)	# D.3444, <variable>.high_water
	cl	%r1,136(%r11)	# D.3444, curr
	jhe	.L337	#,
	l	%r1,116(%r11)	# tmp252, s
	l	%r1,60(%r1)	# D.3445, <variable>.window_size
	s	%r1,136(%r11)	# tmp253, curr
	st	%r1,140(%r11)	# tmp253, init
	l	%r1,140(%r11)	# tmp254, init
	cl	%r1,.L348-.L341(%r13)	# tmp254,
	jle	.L338	#,
	lhi	%r1,258	#,
	st	%r1,140(%r11)	#, init
.L338:
	l	%r1,116(%r11)	# tmp255, s
	l	%r1,56(%r1)	# D.3446, <variable>.window
	a	%r1,136(%r11)	# D.3447, curr
	lr	%r2,%r1	#, D.3447
	lhi	%r3,0	#,
	l	%r4,140(%r11)	#, init
	l	%r1,.L349-.L341(%r13)	# tmp256,
	basr	%r14,%r1	#, tmp256
	l	%r3,136(%r11)	# D.3448, curr
	a	%r3,140(%r11)	# D.3448, init
	l	%r2,116(%r11)	# tmp257, s
	lhi	%r1,4096	# tmp258,
	st	%r3,1728(%r1,%r2)	# D.3448, <variable>.high_water
	j	.L340	#
.L337:
	l	%r2,116(%r11)	# tmp260, s
	lhi	%r1,4096	# tmp261,
	l	%r2,1728(%r1,%r2)	# D.3449, <variable>.high_water
	l	%r1,136(%r11)	# D.3450, curr
	ahi	%r1,258	# D.3450,
	clr	%r2,%r1	# D.3449, D.3450
	jhe	.L340	#,
	l	%r2,116(%r11)	# tmp263, s
	lhi	%r1,4096	# tmp264,
	l	%r2,1728(%r1,%r2)	# D.3451, <variable>.high_water
	l	%r1,136(%r11)	# tmp266, curr
	sr	%r1,%r2	# D.3452, D.3451
	lr	%r2,%r1	#, D.3452
	ahi	%r2,258	#,
	st	%r2,140(%r11)	#, init
	l	%r1,116(%r11)	# tmp267, s
	l	%r3,60(%r1)	# D.3453, <variable>.window_size
	l	%r2,116(%r11)	# tmp268, s
	lhi	%r1,4096	# tmp269,
	l	%r1,1728(%r1,%r2)	# D.3454, <variable>.high_water
	lr	%r2,%r3	#, D.3453
	sr	%r2,%r1	#, D.3454
	lr	%r1,%r2	# D.3455,
	cl	%r1,140(%r11)	# D.3455, init
	jhe	.L339	#,
	l	%r1,116(%r11)	# tmp271, s
	l	%r3,60(%r1)	# D.3456, <variable>.window_size
	l	%r2,116(%r11)	# tmp272, s
	lhi	%r1,4096	# tmp273,
	l	%r1,1728(%r1,%r2)	# D.3457, <variable>.high_water
	lr	%r2,%r3	#, D.3456
	sr	%r2,%r1	#, D.3457
	lr	%r1,%r2	# tmp275,
	st	%r1,140(%r11)	# tmp275, init
.L339:
	l	%r1,116(%r11)	# tmp276, s
	l	%r3,56(%r1)	# D.3458, <variable>.window
	l	%r2,116(%r11)	# tmp277, s
	lhi	%r1,4096	# tmp278,
	l	%r1,1728(%r1,%r2)	# D.3459, <variable>.high_water
	ar	%r1,%r3	# D.3460, D.3458
	lr	%r2,%r1	#, D.3460
	lhi	%r3,0	#,
	l	%r4,140(%r11)	#, init
	l	%r1,.L349-.L341(%r13)	# tmp280,
	basr	%r14,%r1	#, tmp280
	l	%r2,116(%r11)	# tmp281, s
	lhi	%r1,4096	# tmp282,
	l	%r1,1728(%r1,%r2)	# D.3461, <variable>.high_water
	lr	%r3,%r1	# D.3462, D.3461
	a	%r3,140(%r11)	# D.3462, init
	l	%r2,116(%r11)	# tmp284, s
	lhi	%r1,4096	# tmp285,
	st	%r3,1728(%r1,%r2)	# D.3462, <variable>.high_water
.L340:
	l	%r4,200(%r11)	#,
	lm	%r11,%r15,188(%r11)	#,,
	br	%r4	#
	.align	4	#
.L349:
	.long	memset
.L348:
	.long	258
.L347:
	.long	261
.L346:
	.long	255
.L345:
	.long	2
.L344:
	.long	read_buf
.L343:
	.long	65535
.L342:
	.long	memcpy
	.align	2	#
.LFE21:
	.size	fill_window, .-fill_window
	.align	4
	.type	deflate_stored, @function
deflate_stored:
.LFB22:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI60:
	basr	%r13,0	#
.L371:
	ahi	%r15,-136	#,
.LCFI61:
	lr	%r11,%r15	#,
.LCFI62:
	st	%r2,124(%r11)	# s, s
	st	%r3,120(%r11)	# flush, flush
	l	%r1,.L372-.L371(%r13)	#,
	st	%r1,128(%r11)	#, max_block_size
	l	%r1,124(%r11)	# tmp129, s
	l	%r1,12(%r1)	# D.3502, <variable>.pending_buf_size
	ahi	%r1,-5	# D.3503,
	cl	%r1,128(%r11)	# D.3503, max_block_size
	jhe	.L351	#,
	l	%r1,124(%r11)	# tmp130, s
	l	%r1,12(%r1)	# D.3504, <variable>.pending_buf_size
	lr	%r2,%r1	#, D.3504
	ahi	%r2,-5	#,
	st	%r2,128(%r11)	#, max_block_size
.L351:
	l	%r1,124(%r11)	# tmp131, s
	l	%r1,116(%r1)	# D.3505, <variable>.lookahead
	cl	%r1,.L373-.L371(%r13)	# D.3505,
	jh	.L352	#,
	l	%r2,124(%r11)	#, s
	l	%r1,.L374-.L371(%r13)	# tmp132,
	basr	%r14,%r1	#, tmp132
	l	%r1,124(%r11)	# tmp133, s
	l	%r1,116(%r1)	# D.3506, <variable>.lookahead
	ltr	%r1,%r1	# D.3506
	jne	.L353	#,
	l	%r1,120(%r11)	# tmp134, flush
	ltr	%r1,%r1	# tmp134
	jne	.L353	#,
	lhi	%r3,0	#,
	st	%r3,100(%r11)	#, D.3507
	j	.L354	#
.L353:
	l	%r1,124(%r11)	# tmp135, s
	l	%r1,116(%r1)	# D.3508, <variable>.lookahead
	ltr	%r1,%r1	# D.3508
	je	.L355	#,
.L352:
	l	%r1,124(%r11)	# tmp136, s
	l	%r2,108(%r1)	# D.3509, <variable>.strstart
	l	%r1,124(%r11)	# tmp137, s
	l	%r1,116(%r1)	# D.3510, <variable>.lookahead
	ar	%r2,%r1	# D.3511, D.3510
	l	%r1,124(%r11)	# tmp138, s
	st	%r2,108(%r1)	# D.3511, <variable>.strstart
	l	%r1,124(%r11)	# tmp139, s
	lhi	%r2,0	#,
	st	%r2,116(%r1)	#, <variable>.lookahead
	l	%r1,124(%r11)	# tmp140, s
	l	%r1,92(%r1)	# D.3512, <variable>.block_start
	lr	%r3,%r1	#, D.3513
	a	%r3,128(%r11)	#, max_block_size
	st	%r3,132(%r11)	#, max_start
	l	%r1,124(%r11)	# tmp141, s
	l	%r1,108(%r1)	# D.3516, <variable>.strstart
	ltr	%r1,%r1	# D.3516
	je	.L356	#,
	l	%r1,124(%r11)	# tmp142, s
	l	%r1,108(%r1)	# D.3517, <variable>.strstart
	cl	%r1,132(%r11)	# D.3517, max_start
	jl	.L357	#,
.L356:
	l	%r1,124(%r11)	# tmp143, s
	l	%r1,108(%r1)	# D.3518, <variable>.strstart
	lr	%r2,%r1	# D.3519, D.3518
	s	%r2,132(%r11)	# D.3519, max_start
	l	%r1,124(%r11)	# tmp144, s
	st	%r2,116(%r1)	# D.3519, <variable>.lookahead
	l	%r1,124(%r11)	# tmp145, s
	l	%r2,132(%r11)	#, max_start
	st	%r2,108(%r1)	#, <variable>.strstart
	l	%r1,124(%r11)	# tmp146, s
	l	%r1,92(%r1)	# D.3521, <variable>.block_start
	ltr	%r1,%r1	# D.3521
	jl	.L358	#,
	l	%r1,124(%r11)	# tmp147, s
	l	%r2,56(%r1)	# D.3522, <variable>.window
	l	%r1,124(%r11)	# tmp148, s
	l	%r1,92(%r1)	# D.3523, <variable>.block_start
	lr	%r3,%r2	#, D.3522
	ar	%r3,%r1	#, D.3524
	st	%r3,104(%r11)	#, iftmp.44
	j	.L359	#
.L358:
	lhi	%r1,0	#,
	st	%r1,104(%r11)	#, iftmp.44
.L359:
	l	%r1,124(%r11)	# tmp149, s
	l	%r1,108(%r1)	# D.3525, <variable>.strstart
	lr	%r2,%r1	# D.3526, D.3525
	l	%r1,124(%r11)	# tmp150, s
	l	%r1,92(%r1)	# D.3527, <variable>.block_start
	lr	%r3,%r2	#, D.3526
	sr	%r3,%r1	#, D.3527
	lr	%r1,%r3	# D.3528,
	l	%r2,124(%r11)	#, s
	l	%r3,104(%r11)	#, iftmp.44
	lr	%r4,%r1	#, D.3529
	lhi	%r5,0	#,
	l	%r1,.L375-.L371(%r13)	# tmp151,
	basr	%r14,%r1	#, tmp151
	l	%r1,124(%r11)	# tmp152, s
	l	%r1,108(%r1)	# D.3530, <variable>.strstart
	lr	%r2,%r1	# D.3531, D.3530
	l	%r1,124(%r11)	# tmp153, s
	st	%r2,92(%r1)	# D.3531, <variable>.block_start
	l	%r1,124(%r11)	# tmp154, s
	l	%r1,0(%r1)	# D.3532, <variable>.strm
	lr	%r2,%r1	#, D.3532
	l	%r1,.L376-.L371(%r13)	# tmp155,
	basr	%r14,%r1	#, tmp155
	l	%r1,124(%r11)	# tmp156, s
	l	%r1,0(%r1)	# D.3533, <variable>.strm
	l	%r1,16(%r1)	# D.3534, <variable>.avail_out
	ltr	%r1,%r1	# D.3534
	jne	.L357	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3507
	j	.L354	#
.L357:
	l	%r1,124(%r11)	# tmp157, s
	l	%r2,108(%r1)	# D.3535, <variable>.strstart
	l	%r1,124(%r11)	# tmp158, s
	l	%r1,92(%r1)	# D.3536, <variable>.block_start
	sr	%r2,%r1	# D.3538, D.3537
	l	%r1,124(%r11)	# tmp159, s
	l	%r1,44(%r1)	# D.3539, <variable>.w_size
	ahi	%r1,-262	# D.3540,
	clr	%r2,%r1	# D.3538, D.3540
	jl	.L351	#,
	l	%r1,124(%r11)	# tmp160, s
	l	%r1,92(%r1)	# D.3542, <variable>.block_start
	ltr	%r1,%r1	# D.3542
	jl	.L361	#,
	l	%r1,124(%r11)	# tmp161, s
	l	%r2,56(%r1)	# D.3543, <variable>.window
	l	%r1,124(%r11)	# tmp162, s
	l	%r1,92(%r1)	# D.3544, <variable>.block_start
	lr	%r3,%r2	#, D.3543
	ar	%r3,%r1	#, D.3545
	st	%r3,108(%r11)	#, iftmp.45
	j	.L362	#
.L361:
	lhi	%r1,0	#,
	st	%r1,108(%r11)	#, iftmp.45
.L362:
	l	%r1,124(%r11)	# tmp163, s
	l	%r1,108(%r1)	# D.3546, <variable>.strstart
	lr	%r2,%r1	# D.3547, D.3546
	l	%r1,124(%r11)	# tmp164, s
	l	%r1,92(%r1)	# D.3548, <variable>.block_start
	lr	%r3,%r2	#, D.3547
	sr	%r3,%r1	#, D.3548
	lr	%r1,%r3	# D.3549,
	l	%r2,124(%r11)	#, s
	l	%r3,108(%r11)	#, iftmp.45
	lr	%r4,%r1	#, D.3550
	lhi	%r5,0	#,
	l	%r1,.L375-.L371(%r13)	# tmp165,
	basr	%r14,%r1	#, tmp165
	l	%r1,124(%r11)	# tmp166, s
	l	%r1,108(%r1)	# D.3551, <variable>.strstart
	lr	%r2,%r1	# D.3552, D.3551
	l	%r1,124(%r11)	# tmp167, s
	st	%r2,92(%r1)	# D.3552, <variable>.block_start
	l	%r1,124(%r11)	# tmp168, s
	l	%r1,0(%r1)	# D.3553, <variable>.strm
	lr	%r2,%r1	#, D.3553
	l	%r1,.L376-.L371(%r13)	# tmp169,
	basr	%r14,%r1	#, tmp169
	l	%r1,124(%r11)	# tmp170, s
	l	%r1,0(%r1)	# D.3554, <variable>.strm
	l	%r1,16(%r1)	# D.3555, <variable>.avail_out
	ltr	%r1,%r1	# D.3555
	jne	.L351	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3507
	j	.L354	#
.L355:
	l	%r2,124(%r11)	# tmp171, s
	lhi	%r1,4096	# tmp172,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,120(%r11)	# tmp174, flush
	chi	%r1,4	# tmp174,
	jne	.L363	#,
	l	%r1,124(%r11)	# tmp175, s
	l	%r1,92(%r1)	# D.3557, <variable>.block_start
	ltr	%r1,%r1	# D.3557
	jl	.L364	#,
	l	%r1,124(%r11)	# tmp176, s
	l	%r2,56(%r1)	# D.3558, <variable>.window
	l	%r1,124(%r11)	# tmp177, s
	l	%r1,92(%r1)	# D.3559, <variable>.block_start
	lr	%r3,%r2	#, D.3558
	ar	%r3,%r1	#, D.3560
	st	%r3,112(%r11)	#, iftmp.46
	j	.L365	#
.L364:
	lhi	%r1,0	#,
	st	%r1,112(%r11)	#, iftmp.46
.L365:
	l	%r1,124(%r11)	# tmp178, s
	l	%r1,108(%r1)	# D.3561, <variable>.strstart
	lr	%r2,%r1	# D.3562, D.3561
	l	%r1,124(%r11)	# tmp179, s
	l	%r1,92(%r1)	# D.3563, <variable>.block_start
	lr	%r3,%r2	#, D.3562
	sr	%r3,%r1	#, D.3563
	lr	%r1,%r3	# D.3564,
	l	%r2,124(%r11)	#, s
	l	%r3,112(%r11)	#, iftmp.46
	lr	%r4,%r1	#, D.3565
	lhi	%r5,1	#,
	l	%r1,.L375-.L371(%r13)	# tmp180,
	basr	%r14,%r1	#, tmp180
	l	%r1,124(%r11)	# tmp181, s
	l	%r1,108(%r1)	# D.3566, <variable>.strstart
	lr	%r2,%r1	# D.3567, D.3566
	l	%r1,124(%r11)	# tmp182, s
	st	%r2,92(%r1)	# D.3567, <variable>.block_start
	l	%r1,124(%r11)	# tmp183, s
	l	%r1,0(%r1)	# D.3568, <variable>.strm
	lr	%r2,%r1	#, D.3568
	l	%r1,.L376-.L371(%r13)	# tmp184,
	basr	%r14,%r1	#, tmp184
	l	%r1,124(%r11)	# tmp185, s
	l	%r1,0(%r1)	# D.3569, <variable>.strm
	l	%r1,16(%r1)	# D.3570, <variable>.avail_out
	ltr	%r1,%r1	# D.3570
	jne	.L366	#,
	lhi	%r1,2	#,
	st	%r1,100(%r11)	#, D.3507
	j	.L354	#
.L366:
	lhi	%r2,3	#,
	st	%r2,100(%r11)	#, D.3507
	j	.L354	#
.L363:
	l	%r1,124(%r11)	# tmp186, s
	l	%r1,108(%r1)	# D.3571, <variable>.strstart
	lr	%r2,%r1	# D.3572, D.3571
	l	%r1,124(%r11)	# tmp187, s
	l	%r1,92(%r1)	# D.3573, <variable>.block_start
	cr	%r2,%r1	# D.3572, D.3573
	jle	.L367	#,
	l	%r1,124(%r11)	# tmp188, s
	l	%r1,92(%r1)	# D.3575, <variable>.block_start
	ltr	%r1,%r1	# D.3575
	jl	.L368	#,
	l	%r1,124(%r11)	# tmp189, s
	l	%r2,56(%r1)	# D.3576, <variable>.window
	l	%r1,124(%r11)	# tmp190, s
	l	%r1,92(%r1)	# D.3577, <variable>.block_start
	lr	%r3,%r2	#, D.3576
	ar	%r3,%r1	#, D.3578
	st	%r3,116(%r11)	#, iftmp.47
	j	.L369	#
.L368:
	lhi	%r1,0	#,
	st	%r1,116(%r11)	#, iftmp.47
.L369:
	l	%r1,124(%r11)	# tmp191, s
	l	%r1,108(%r1)	# D.3579, <variable>.strstart
	lr	%r2,%r1	# D.3580, D.3579
	l	%r1,124(%r11)	# tmp192, s
	l	%r1,92(%r1)	# D.3581, <variable>.block_start
	lr	%r3,%r2	#, D.3580
	sr	%r3,%r1	#, D.3581
	lr	%r1,%r3	# D.3582,
	l	%r2,124(%r11)	#, s
	l	%r3,116(%r11)	#, iftmp.47
	lr	%r4,%r1	#, D.3583
	lhi	%r5,0	#,
	l	%r1,.L375-.L371(%r13)	# tmp193,
	basr	%r14,%r1	#, tmp193
	l	%r1,124(%r11)	# tmp194, s
	l	%r1,108(%r1)	# D.3584, <variable>.strstart
	lr	%r2,%r1	# D.3585, D.3584
	l	%r1,124(%r11)	# tmp195, s
	st	%r2,92(%r1)	# D.3585, <variable>.block_start
	l	%r1,124(%r11)	# tmp196, s
	l	%r1,0(%r1)	# D.3586, <variable>.strm
	lr	%r2,%r1	#, D.3586
	l	%r1,.L376-.L371(%r13)	# tmp197,
	basr	%r14,%r1	#, tmp197
	l	%r1,124(%r11)	# tmp198, s
	l	%r1,0(%r1)	# D.3587, <variable>.strm
	l	%r1,16(%r1)	# D.3588, <variable>.avail_out
	ltr	%r1,%r1	# D.3588
	jne	.L367	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3507
	j	.L354	#
.L367:
	lhi	%r2,1	#,
	st	%r2,100(%r11)	#, D.3507
.L354:
	l	%r1,100(%r11)	# <result>, D.3507
	lr	%r2,%r1	#, <result>
	l	%r4,192(%r11)	#,
	lm	%r11,%r15,180(%r11)	#,,
	br	%r4	#
	.align	4	#
.L376:
	.long	flush_pending
.L375:
	.long	_tr_flush_block
.L374:
	.long	fill_window
.L373:
	.long	1
.L372:
	.long	65535
	.align	2	#
.LFE22:
	.size	deflate_stored, .-deflate_stored
	.align	4
	.type	deflate_fast, @function
deflate_fast:
.LFB23:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI63:
	basr	%r13,0	#
.L404:
	ahi	%r15,-144	#,
.LCFI64:
	lr	%r11,%r15	#,
.LCFI65:
	st	%r2,124(%r11)	# s, s
	st	%r3,120(%r11)	# flush, flush
.L394:
	l	%r1,124(%r11)	# tmp255, s
	l	%r1,116(%r1)	# D.3639, <variable>.lookahead
	cl	%r1,.L405-.L404(%r13)	# D.3639,
	jh	.L378	#,
	l	%r2,124(%r11)	#, s
	l	%r1,.L406-.L404(%r13)	# tmp256,
	basr	%r14,%r1	#, tmp256
	l	%r1,124(%r11)	# tmp257, s
	l	%r1,116(%r1)	# D.3640, <variable>.lookahead
	cl	%r1,.L405-.L404(%r13)	# D.3640,
	jh	.L379	#,
	l	%r1,120(%r11)	# tmp258, flush
	ltr	%r1,%r1	# tmp258
	jne	.L379	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.3641
	j	.L380	#
.L379:
	l	%r1,124(%r11)	# tmp259, s
	l	%r1,116(%r1)	# D.3642, <variable>.lookahead
	ltr	%r1,%r1	# D.3642
	je	.L381	#,
.L378:
	lhi	%r2,0	#,
	st	%r2,128(%r11)	#, hash_head
	l	%r1,124(%r11)	# tmp260, s
	l	%r1,116(%r1)	# D.3643, <variable>.lookahead
	cl	%r1,.L407-.L404(%r13)	# D.3643,
	jle	.L382	#,
	l	%r1,124(%r11)	# tmp261, s
	l	%r2,72(%r1)	# D.3644, <variable>.ins_h
	l	%r1,124(%r11)	# tmp262, s
	l	%r1,88(%r1)	# D.3645, <variable>.hash_shift
	lr	%r3,%r2	# D.3647, D.3644
	sll	%r3,0(%r1)	# D.3647, D.3646
	l	%r1,124(%r11)	# tmp263, s
	l	%r2,56(%r1)	# D.3648, <variable>.window
	l	%r1,124(%r11)	# tmp264, s
	l	%r1,108(%r1)	# D.3649, <variable>.strstart
	ahi	%r1,2	# D.3650,
	ar	%r1,%r2	# D.3651, D.3648
	ic	%r1,0(%r1)	# D.3652,* D.3651
	n	%r1,.L408-.L404(%r13)	# D.3653,
	lr	%r2,%r3	# D.3654, D.3647
	xr	%r2,%r1	# D.3654, D.3653
	l	%r1,124(%r11)	# tmp265, s
	l	%r1,84(%r1)	# D.3655, <variable>.hash_mask
	nr	%r2,%r1	# D.3656, D.3655
	l	%r1,124(%r11)	# tmp266, s
	st	%r2,72(%r1)	# D.3656, <variable>.ins_h
	l	%r1,124(%r11)	# tmp267, s
	l	%r3,64(%r1)	# D.3657, <variable>.prev
	l	%r1,124(%r11)	# tmp268, s
	l	%r2,108(%r1)	# D.3658, <variable>.strstart
	l	%r1,124(%r11)	# tmp269, s
	l	%r1,52(%r1)	# D.3659, <variable>.w_mask
	nr	%r1,%r2	# D.3660, D.3658
	sll	%r1,1	# D.3661,
	ar	%r3,%r1	# D.3662, D.3661
	l	%r1,124(%r11)	# tmp270, s
	l	%r2,68(%r1)	# D.3663, <variable>.head
	l	%r1,124(%r11)	# tmp271, s
	l	%r1,72(%r1)	# D.3664, <variable>.ins_h
	sll	%r1,1	# D.3665,
	ar	%r1,%r2	# D.3666, D.3663
	lh	%r1,0(%r1)	# D.3667,* D.3666
	sth	%r1,0(%r3)	# D.3667,* D.3662
	lh	%r1,0(%r3)	# D.3668,* D.3662
	n	%r1,.L409-.L404(%r13)	# tmp272,
	st	%r1,128(%r11)	# tmp272, hash_head
	l	%r1,124(%r11)	# tmp273, s
	l	%r2,68(%r1)	# D.3669, <variable>.head
	l	%r1,124(%r11)	# tmp274, s
	l	%r1,72(%r1)	# D.3670, <variable>.ins_h
	sll	%r1,1	# D.3671,
	ar	%r2,%r1	# D.3672, D.3671
	l	%r1,124(%r11)	# tmp275, s
	l	%r1,108(%r1)	# D.3673, <variable>.strstart
	sth	%r1,0(%r2)	# D.3674,* D.3672
.L382:
	l	%r1,128(%r11)	# tmp276, hash_head
	ltr	%r1,%r1	# tmp276
	je	.L383	#,
	l	%r1,124(%r11)	# tmp277, s
	l	%r1,108(%r1)	# D.3675, <variable>.strstart
	lr	%r2,%r1	# D.3676, D.3675
	s	%r2,128(%r11)	# D.3676, hash_head
	l	%r1,124(%r11)	# tmp278, s
	l	%r1,44(%r1)	# D.3677, <variable>.w_size
	ahi	%r1,-262	# D.3678,
	clr	%r2,%r1	# D.3676, D.3678
	jh	.L383	#,
	l	%r2,124(%r11)	#, s
	l	%r3,128(%r11)	#, hash_head
	l	%r1,.L410-.L404(%r13)	# tmp279,
	basr	%r14,%r1	#, tmp279
	l	%r1,124(%r11)	# tmp280, s
	st	%r2,96(%r1)	# D.3679, <variable>.match_length
.L383:
	l	%r1,124(%r11)	# tmp281, s
	l	%r1,96(%r1)	# D.3680, <variable>.match_length
	cl	%r1,.L407-.L404(%r13)	# D.3680,
	jle	.L384	#,
	l	%r1,124(%r11)	# tmp282, s
	l	%r1,96(%r1)	# D.3681, <variable>.match_length
	ahi	%r1,-3	# tmp283,
	stc	%r1,139(%r11)	# tmp283, len
	l	%r1,124(%r11)	# tmp284, s
	l	%r1,108(%r1)	# D.3683, <variable>.strstart
	lr	%r2,%r1	# D.3684, D.3683
	l	%r1,124(%r11)	# tmp285, s
	l	%r1,112(%r1)	# D.3685, <variable>.match_start
	lr	%r3,%r2	#,
	sr	%r3,%r1	#, D.3686
	lr	%r1,%r3	# tmp286,
	sth	%r1,140(%r11)	# tmp286, dist
	l	%r2,124(%r11)	# tmp287, s
	lhi	%r1,4096	# tmp288,
	l	%r3,1700(%r1,%r2)	# D.3687, <variable>.d_buf
	l	%r2,124(%r11)	# tmp290, s
	lhi	%r1,4096	# tmp291,
	l	%r1,1696(%r1,%r2)	# D.3688, <variable>.last_lit
	sll	%r1,1	# D.3689,
	ar	%r1,%r3	# D.3690, D.3687
	lh	%r2,140(%r11)	#, dist
	sth	%r2,0(%r1)	#,* D.3690
	l	%r2,124(%r11)	# tmp293, s
	lhi	%r1,4096	# tmp294,
	l	%r3,1688(%r1,%r2)	# D.3691, <variable>.l_buf
	l	%r2,124(%r11)	# tmp296, s
	lhi	%r1,4096	# tmp297,
	l	%r2,1696(%r1,%r2)	# D.3692, <variable>.last_lit
	lr	%r1,%r3	# D.3694, D.3691
	ar	%r1,%r2	# D.3694, D.3692
	ic	%r3,139(%r11)	#, len
	stc	%r3,0(%r1)	#,* D.3694
	lr	%r3,%r2	# D.3693, D.3692
	ahi	%r3,1	# D.3693,
	l	%r2,124(%r11)	# tmp299, s
	lhi	%r1,4096	# tmp300,
	st	%r3,1696(%r1,%r2)	# D.3693, <variable>.last_lit
	lh	%r1,140(%r11)	# tmp302, dist
	ahi	%r1,-1	# tmp303,
	sth	%r1,140(%r11)	# tmp303, dist
	ic	%r1,139(%r11)	# tmp304, len
	lhi	%r2,255	# D.3695,
	nr	%r2,%r1	# D.3695, tmp304
	l	%r1,.L411-.L404(%r13)	# tmp305,
	ic	%r1,0(%r2,%r1)	# D.3696, _length_code
	n	%r1,.L408-.L404(%r13)	# D.3697,
	lr	%r4,%r1	# D.3698, D.3697
	ahi	%r4,257	# D.3698,
	l	%r2,124(%r11)	# tmp306, s
	lr	%r1,%r4	# tmp307, D.3698
	ahi	%r1,36	# tmp307,
	sll	%r1,2	# tmp308,
	lh	%r1,4(%r1,%r2)	# D.3699, <variable>.fc.freq
	ahi	%r1,1	# tmp309,
	lr	%r3,%r1	# D.3700, tmp309
	l	%r2,124(%r11)	# tmp310, s
	lr	%r1,%r4	# tmp311, D.3698
	ahi	%r1,36	# tmp311,
	sll	%r1,2	# tmp312,
	sth	%r3,4(%r1,%r2)	# D.3700, <variable>.fc.freq
	lh	%r1,140(%r11)	# tmp314, dist
	n	%r1,.L409-.L404(%r13)	# tmp313,
	cl	%r1,.L408-.L404(%r13)	# tmp313,
	jh	.L385	#,
	lh	%r1,140(%r11)	# tmp315, dist
	lr	%r2,%r1	# D.3702,
	n	%r2,.L409-.L404(%r13)	# D.3702,
	l	%r1,.L412-.L404(%r13)	# tmp316,
	ic	%r1,0(%r2,%r1)	# D.3703, _dist_code
	lhi	%r2,255	#,
	nr	%r2,%r1	#, D.3703
	st	%r2,100(%r11)	#, iftmp.48
	j	.L386	#
.L385:
	lh	%r1,140(%r11)	# tmp318, dist
	n	%r1,.L409-.L404(%r13)	# tmp317,
	srl	%r1,7	# tmp319,
	n	%r1,.L409-.L404(%r13)	# D.3705,
	lr	%r2,%r1	# D.3706, D.3705
	ahi	%r2,256	# D.3706,
	l	%r1,.L412-.L404(%r13)	# tmp320,
	ic	%r1,0(%r2,%r1)	# D.3707, _dist_code
	lhi	%r3,255	#,
	nr	%r3,%r1	#, D.3707
	st	%r3,100(%r11)	#, iftmp.48
.L386:
	l	%r4,100(%r11)	# iftmp.49, iftmp.48
	l	%r2,124(%r11)	# tmp321, s
	lr	%r1,%r4	# tmp322, iftmp.49
	ahi	%r1,610	# tmp322,
	sll	%r1,2	# tmp323,
	lh	%r1,0(%r1,%r2)	# D.3709, <variable>.fc.freq
	ahi	%r1,1	# tmp324,
	lr	%r3,%r1	# D.3710, tmp324
	l	%r2,124(%r11)	# tmp325, s
	lr	%r1,%r4	# tmp326, iftmp.49
	ahi	%r1,610	# tmp326,
	sll	%r1,2	# tmp327,
	sth	%r3,0(%r1,%r2)	# D.3710, <variable>.fc.freq
	l	%r2,124(%r11)	# tmp328, s
	lhi	%r1,4096	# tmp329,
	l	%r3,1696(%r1,%r2)	# D.3711, <variable>.last_lit
	l	%r2,124(%r11)	# tmp331, s
	lhi	%r1,4096	# tmp332,
	l	%r1,1692(%r1,%r2)	# D.3712, <variable>.lit_bufsize
	ahi	%r1,-1	# D.3713,
	xr	%r1,%r3	# tmp335, D.3711
	st	%r1,132(%r11)	# tmp335, bflush
	l	%r1,132(%r11)	# tmp338, bflush
	lpr	%r1,%r1	# tmp339, tmp338
	lr	%r2,%r1	#, tmp339
	ahi	%r2,-1	#,
	st	%r2,132(%r11)	#, bflush
	l	%r1,132(%r11)	# tmp340, bflush
	srl	%r1,31	# tmp341,
	st	%r1,132(%r11)	# tmp341, bflush
	l	%r1,124(%r11)	# tmp342, s
	l	%r2,116(%r1)	# D.3714, <variable>.lookahead
	l	%r1,124(%r11)	# tmp343, s
	l	%r1,96(%r1)	# D.3715, <variable>.match_length
	sr	%r2,%r1	# D.3716, D.3715
	l	%r1,124(%r11)	# tmp344, s
	st	%r2,116(%r1)	# D.3716, <variable>.lookahead
	l	%r1,124(%r11)	# tmp345, s
	l	%r2,96(%r1)	# D.3719, <variable>.match_length
	l	%r1,124(%r11)	# tmp346, s
	l	%r1,128(%r1)	# D.3720, <variable>.max_lazy_match
	clr	%r2,%r1	# D.3719, D.3720
	jh	.L387	#,
	l	%r1,124(%r11)	# tmp347, s
	l	%r1,116(%r1)	# D.3721, <variable>.lookahead
	cl	%r1,.L407-.L404(%r13)	# D.3721,
	jle	.L387	#,
	l	%r1,124(%r11)	# tmp348, s
	l	%r1,96(%r1)	# D.3722, <variable>.match_length
	lr	%r2,%r1	# D.3723, D.3722
	ahi	%r2,-1	# D.3723,
	l	%r1,124(%r11)	# tmp349, s
	st	%r2,96(%r1)	# D.3723, <variable>.match_length
.L388:
	l	%r1,124(%r11)	# tmp350, s
	l	%r1,108(%r1)	# D.3724, <variable>.strstart
	lr	%r2,%r1	# D.3725, D.3724
	ahi	%r2,1	# D.3725,
	l	%r1,124(%r11)	# tmp351, s
	st	%r2,108(%r1)	# D.3725, <variable>.strstart
	l	%r1,124(%r11)	# tmp352, s
	l	%r2,72(%r1)	# D.3726, <variable>.ins_h
	l	%r1,124(%r11)	# tmp353, s
	l	%r1,88(%r1)	# D.3727, <variable>.hash_shift
	lr	%r3,%r2	# D.3729, D.3726
	sll	%r3,0(%r1)	# D.3729, D.3728
	l	%r1,124(%r11)	# tmp354, s
	l	%r2,56(%r1)	# D.3730, <variable>.window
	l	%r1,124(%r11)	# tmp355, s
	l	%r1,108(%r1)	# D.3731, <variable>.strstart
	ahi	%r1,2	# D.3732,
	ar	%r1,%r2	# D.3733, D.3730
	ic	%r1,0(%r1)	# D.3734,* D.3733
	n	%r1,.L408-.L404(%r13)	# D.3735,
	lr	%r2,%r3	# D.3736, D.3729
	xr	%r2,%r1	# D.3736, D.3735
	l	%r1,124(%r11)	# tmp356, s
	l	%r1,84(%r1)	# D.3737, <variable>.hash_mask
	nr	%r2,%r1	# D.3738, D.3737
	l	%r1,124(%r11)	# tmp357, s
	st	%r2,72(%r1)	# D.3738, <variable>.ins_h
	l	%r1,124(%r11)	# tmp358, s
	l	%r3,64(%r1)	# D.3739, <variable>.prev
	l	%r1,124(%r11)	# tmp359, s
	l	%r2,108(%r1)	# D.3740, <variable>.strstart
	l	%r1,124(%r11)	# tmp360, s
	l	%r1,52(%r1)	# D.3741, <variable>.w_mask
	nr	%r1,%r2	# D.3742, D.3740
	sll	%r1,1	# D.3743,
	ar	%r3,%r1	# D.3744, D.3743
	l	%r1,124(%r11)	# tmp361, s
	l	%r2,68(%r1)	# D.3745, <variable>.head
	l	%r1,124(%r11)	# tmp362, s
	l	%r1,72(%r1)	# D.3746, <variable>.ins_h
	sll	%r1,1	# D.3747,
	ar	%r1,%r2	# D.3748, D.3745
	lh	%r1,0(%r1)	# D.3749,* D.3748
	sth	%r1,0(%r3)	# D.3749,* D.3744
	lh	%r1,0(%r3)	# D.3750,* D.3744
	n	%r1,.L409-.L404(%r13)	# tmp363,
	st	%r1,128(%r11)	# tmp363, hash_head
	l	%r1,124(%r11)	# tmp364, s
	l	%r2,68(%r1)	# D.3751, <variable>.head
	l	%r1,124(%r11)	# tmp365, s
	l	%r1,72(%r1)	# D.3752, <variable>.ins_h
	sll	%r1,1	# D.3753,
	ar	%r2,%r1	# D.3754, D.3753
	l	%r1,124(%r11)	# tmp366, s
	l	%r1,108(%r1)	# D.3755, <variable>.strstart
	sth	%r1,0(%r2)	# D.3756,* D.3754
	l	%r1,124(%r11)	# tmp367, s
	l	%r1,96(%r1)	# D.3757, <variable>.match_length
	lr	%r2,%r1	# D.3758, D.3757
	ahi	%r2,-1	# D.3758,
	l	%r1,124(%r11)	# tmp368, s
	st	%r2,96(%r1)	# D.3758, <variable>.match_length
	l	%r1,124(%r11)	# tmp369, s
	l	%r1,96(%r1)	# D.3759, <variable>.match_length
	ltr	%r1,%r1	# D.3759
	jne	.L388	#,
	l	%r1,124(%r11)	# tmp370, s
	l	%r1,108(%r1)	# D.3760, <variable>.strstart
	lr	%r2,%r1	# D.3761, D.3760
	ahi	%r2,1	# D.3761,
	l	%r1,124(%r11)	# tmp371, s
	st	%r2,108(%r1)	# D.3761, <variable>.strstart
	j	.L390	#
.L387:
	l	%r1,124(%r11)	# tmp372, s
	l	%r2,108(%r1)	# D.3762, <variable>.strstart
	l	%r1,124(%r11)	# tmp373, s
	l	%r1,96(%r1)	# D.3763, <variable>.match_length
	ar	%r2,%r1	# D.3764, D.3763
	l	%r1,124(%r11)	# tmp374, s
	st	%r2,108(%r1)	# D.3764, <variable>.strstart
	l	%r1,124(%r11)	# tmp375, s
	lhi	%r3,0	#,
	st	%r3,96(%r1)	#, <variable>.match_length
	l	%r1,124(%r11)	# tmp376, s
	l	%r2,56(%r1)	# D.3765, <variable>.window
	l	%r1,124(%r11)	# tmp377, s
	l	%r1,108(%r1)	# D.3766, <variable>.strstart
	ar	%r1,%r2	# D.3767, D.3765
	ic	%r1,0(%r1)	# D.3768,* D.3767
	lhi	%r2,255	# D.3769,
	nr	%r2,%r1	# D.3769, D.3768
	l	%r1,124(%r11)	# tmp378, s
	st	%r2,72(%r1)	# D.3769, <variable>.ins_h
	l	%r1,124(%r11)	# tmp379, s
	l	%r2,72(%r1)	# D.3770, <variable>.ins_h
	l	%r1,124(%r11)	# tmp380, s
	l	%r1,88(%r1)	# D.3771, <variable>.hash_shift
	lr	%r3,%r2	# D.3773, D.3770
	sll	%r3,0(%r1)	# D.3773, D.3772
	l	%r1,124(%r11)	# tmp381, s
	l	%r2,56(%r1)	# D.3774, <variable>.window
	l	%r1,124(%r11)	# tmp382, s
	l	%r1,108(%r1)	# D.3775, <variable>.strstart
	ahi	%r1,1	# D.3776,
	ar	%r1,%r2	# D.3777, D.3774
	ic	%r1,0(%r1)	# D.3778,* D.3777
	n	%r1,.L408-.L404(%r13)	# D.3779,
	lr	%r2,%r3	# D.3780, D.3773
	xr	%r2,%r1	# D.3780, D.3779
	l	%r1,124(%r11)	# tmp383, s
	l	%r1,84(%r1)	# D.3781, <variable>.hash_mask
	nr	%r2,%r1	# D.3782, D.3781
	l	%r1,124(%r11)	# tmp384, s
	st	%r2,72(%r1)	# D.3782, <variable>.ins_h
	j	.L390	#
.L384:
	l	%r1,124(%r11)	# tmp385, s
	l	%r2,56(%r1)	# D.3783, <variable>.window
	l	%r1,124(%r11)	# tmp386, s
	l	%r1,108(%r1)	# D.3784, <variable>.strstart
	ar	%r1,%r2	# D.3785, D.3783
	ic	%r2,0(%r1)	#,* D.3785
	stc	%r2,143(%r11)	#, cc
	l	%r2,124(%r11)	# tmp387, s
	lhi	%r1,4096	# tmp388,
	l	%r3,1700(%r1,%r2)	# D.3786, <variable>.d_buf
	l	%r2,124(%r11)	# tmp390, s
	lhi	%r1,4096	# tmp391,
	l	%r1,1696(%r1,%r2)	# D.3787, <variable>.last_lit
	sll	%r1,1	# D.3788,
	ar	%r1,%r3	# D.3789, D.3786
	lhi	%r3,0	#,
	sth	%r3,0(%r1)	#,* D.3789
	l	%r2,124(%r11)	# tmp393, s
	lhi	%r1,4096	# tmp394,
	l	%r3,1688(%r1,%r2)	# D.3790, <variable>.l_buf
	l	%r2,124(%r11)	# tmp396, s
	lhi	%r1,4096	# tmp397,
	l	%r2,1696(%r1,%r2)	# D.3791, <variable>.last_lit
	lr	%r1,%r3	# D.3793, D.3790
	ar	%r1,%r2	# D.3793, D.3791
	ic	%r3,143(%r11)	#, cc
	stc	%r3,0(%r1)	#,* D.3793
	lr	%r3,%r2	# D.3792, D.3791
	ahi	%r3,1	# D.3792,
	l	%r2,124(%r11)	# tmp399, s
	lhi	%r1,4096	# tmp400,
	st	%r3,1696(%r1,%r2)	# D.3792, <variable>.last_lit
	ic	%r1,143(%r11)	# tmp402, cc
	lhi	%r4,255	# D.3794,
	nr	%r4,%r1	# D.3794, tmp402
	l	%r2,124(%r11)	# tmp403, s
	lr	%r1,%r4	# tmp404, D.3794
	ahi	%r1,36	# tmp404,
	sll	%r1,2	# tmp405,
	lh	%r1,4(%r1,%r2)	# D.3795, <variable>.fc.freq
	ahi	%r1,1	# tmp406,
	lr	%r3,%r1	# D.3796, tmp406
	l	%r2,124(%r11)	# tmp407, s
	lr	%r1,%r4	# tmp408, D.3794
	ahi	%r1,36	# tmp408,
	sll	%r1,2	# tmp409,
	sth	%r3,4(%r1,%r2)	# D.3796, <variable>.fc.freq
	l	%r2,124(%r11)	# tmp410, s
	lhi	%r1,4096	# tmp411,
	l	%r3,1696(%r1,%r2)	# D.3797, <variable>.last_lit
	l	%r2,124(%r11)	# tmp413, s
	lhi	%r1,4096	# tmp414,
	l	%r1,1692(%r1,%r2)	# D.3798, <variable>.lit_bufsize
	ahi	%r1,-1	# D.3799,
	xr	%r1,%r3	# tmp417, D.3797
	st	%r1,132(%r11)	# tmp417, bflush
	l	%r1,132(%r11)	# tmp420, bflush
	lpr	%r1,%r1	# tmp421, tmp420
	lr	%r2,%r1	#, tmp421
	ahi	%r2,-1	#,
	st	%r2,132(%r11)	#, bflush
	l	%r1,132(%r11)	# tmp422, bflush
	srl	%r1,31	# tmp423,
	st	%r1,132(%r11)	# tmp423, bflush
	l	%r1,124(%r11)	# tmp424, s
	l	%r1,116(%r1)	# D.3800, <variable>.lookahead
	lr	%r2,%r1	# D.3801, D.3800
	ahi	%r2,-1	# D.3801,
	l	%r1,124(%r11)	# tmp425, s
	st	%r2,116(%r1)	# D.3801, <variable>.lookahead
	l	%r1,124(%r11)	# tmp426, s
	l	%r1,108(%r1)	# D.3802, <variable>.strstart
	lr	%r2,%r1	# D.3803, D.3802
	ahi	%r2,1	# D.3803,
	l	%r1,124(%r11)	# tmp427, s
	st	%r2,108(%r1)	# D.3803, <variable>.strstart
.L390:
	l	%r1,132(%r11)	# tmp428, bflush
	ltr	%r1,%r1	# tmp428
	je	.L394	#,
	l	%r1,124(%r11)	# tmp429, s
	l	%r1,92(%r1)	# D.3805, <variable>.block_start
	ltr	%r1,%r1	# D.3805
	jl	.L392	#,
	l	%r1,124(%r11)	# tmp430, s
	l	%r2,56(%r1)	# D.3806, <variable>.window
	l	%r1,124(%r11)	# tmp431, s
	l	%r1,92(%r1)	# D.3807, <variable>.block_start
	lr	%r3,%r2	#, D.3806
	ar	%r3,%r1	#, D.3808
	st	%r3,104(%r11)	#, iftmp.50
	j	.L393	#
.L392:
	lhi	%r1,0	#,
	st	%r1,104(%r11)	#, iftmp.50
.L393:
	l	%r1,124(%r11)	# tmp432, s
	l	%r1,108(%r1)	# D.3809, <variable>.strstart
	lr	%r2,%r1	# D.3810, D.3809
	l	%r1,124(%r11)	# tmp433, s
	l	%r1,92(%r1)	# D.3811, <variable>.block_start
	lr	%r3,%r2	#, D.3810
	sr	%r3,%r1	#, D.3811
	lr	%r1,%r3	# D.3812,
	l	%r2,124(%r11)	#, s
	l	%r3,104(%r11)	#, iftmp.50
	lr	%r4,%r1	#, D.3813
	lhi	%r5,0	#,
	l	%r1,.L413-.L404(%r13)	# tmp434,
	basr	%r14,%r1	#, tmp434
	l	%r1,124(%r11)	# tmp435, s
	l	%r1,108(%r1)	# D.3814, <variable>.strstart
	lr	%r2,%r1	# D.3815, D.3814
	l	%r1,124(%r11)	# tmp436, s
	st	%r2,92(%r1)	# D.3815, <variable>.block_start
	l	%r1,124(%r11)	# tmp437, s
	l	%r1,0(%r1)	# D.3816, <variable>.strm
	lr	%r2,%r1	#, D.3816
	l	%r1,.L414-.L404(%r13)	# tmp438,
	basr	%r14,%r1	#, tmp438
	l	%r1,124(%r11)	# tmp439, s
	l	%r1,0(%r1)	# D.3817, <variable>.strm
	l	%r1,16(%r1)	# D.3818, <variable>.avail_out
	ltr	%r1,%r1	# D.3818
	jne	.L394	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.3641
	j	.L380	#
.L381:
	l	%r1,124(%r11)	# tmp440, s
	l	%r1,108(%r1)	# D.3819, <variable>.strstart
	st	%r1,108(%r11)	# D.3819, D.3820
	l	%r2,108(%r11)	#, D.3820
	cl	%r2,.L407-.L404(%r13)	#,
	jle	.L395	#,
	lhi	%r3,2	#,
	st	%r3,108(%r11)	#, D.3820
.L395:
	l	%r2,124(%r11)	# tmp441, s
	lhi	%r1,4096	# tmp442,
	l	%r3,108(%r11)	#, D.3820
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,120(%r11)	# tmp444, flush
	chi	%r1,4	# tmp444,
	jne	.L396	#,
	l	%r1,124(%r11)	# tmp445, s
	l	%r1,92(%r1)	# D.3822, <variable>.block_start
	ltr	%r1,%r1	# D.3822
	jl	.L397	#,
	l	%r1,124(%r11)	# tmp446, s
	l	%r2,56(%r1)	# D.3823, <variable>.window
	l	%r1,124(%r11)	# tmp447, s
	l	%r1,92(%r1)	# D.3824, <variable>.block_start
	lr	%r3,%r2	#, D.3823
	ar	%r3,%r1	#, D.3825
	st	%r3,112(%r11)	#, iftmp.51
	j	.L398	#
.L397:
	lhi	%r1,0	#,
	st	%r1,112(%r11)	#, iftmp.51
.L398:
	l	%r1,124(%r11)	# tmp448, s
	l	%r1,108(%r1)	# D.3826, <variable>.strstart
	lr	%r2,%r1	# D.3827, D.3826
	l	%r1,124(%r11)	# tmp449, s
	l	%r1,92(%r1)	# D.3828, <variable>.block_start
	lr	%r3,%r2	#, D.3827
	sr	%r3,%r1	#, D.3828
	lr	%r1,%r3	# D.3829,
	l	%r2,124(%r11)	#, s
	l	%r3,112(%r11)	#, iftmp.51
	lr	%r4,%r1	#, D.3830
	lhi	%r5,1	#,
	l	%r1,.L413-.L404(%r13)	# tmp450,
	basr	%r14,%r1	#, tmp450
	l	%r1,124(%r11)	# tmp451, s
	l	%r1,108(%r1)	# D.3831, <variable>.strstart
	lr	%r2,%r1	# D.3832, D.3831
	l	%r1,124(%r11)	# tmp452, s
	st	%r2,92(%r1)	# D.3832, <variable>.block_start
	l	%r1,124(%r11)	# tmp453, s
	l	%r1,0(%r1)	# D.3833, <variable>.strm
	lr	%r2,%r1	#, D.3833
	l	%r1,.L414-.L404(%r13)	# tmp454,
	basr	%r14,%r1	#, tmp454
	l	%r1,124(%r11)	# tmp455, s
	l	%r1,0(%r1)	# D.3834, <variable>.strm
	l	%r1,16(%r1)	# D.3835, <variable>.avail_out
	ltr	%r1,%r1	# D.3835
	jne	.L399	#,
	lhi	%r1,2	#,
	st	%r1,96(%r11)	#, D.3641
	j	.L380	#
.L399:
	lhi	%r2,3	#,
	st	%r2,96(%r11)	#, D.3641
	j	.L380	#
.L396:
	l	%r2,124(%r11)	# tmp456, s
	lhi	%r1,4096	# tmp457,
	l	%r1,1696(%r1,%r2)	# D.3836, <variable>.last_lit
	ltr	%r1,%r1	# D.3836
	je	.L400	#,
	l	%r1,124(%r11)	# tmp459, s
	l	%r1,92(%r1)	# D.3838, <variable>.block_start
	ltr	%r1,%r1	# D.3838
	jl	.L401	#,
	l	%r1,124(%r11)	# tmp460, s
	l	%r2,56(%r1)	# D.3839, <variable>.window
	l	%r1,124(%r11)	# tmp461, s
	l	%r1,92(%r1)	# D.3840, <variable>.block_start
	lr	%r3,%r2	#, D.3839
	ar	%r3,%r1	#, D.3841
	st	%r3,116(%r11)	#, iftmp.52
	j	.L402	#
.L401:
	lhi	%r1,0	#,
	st	%r1,116(%r11)	#, iftmp.52
.L402:
	l	%r1,124(%r11)	# tmp462, s
	l	%r1,108(%r1)	# D.3842, <variable>.strstart
	lr	%r2,%r1	# D.3843, D.3842
	l	%r1,124(%r11)	# tmp463, s
	l	%r1,92(%r1)	# D.3844, <variable>.block_start
	lr	%r3,%r2	#, D.3843
	sr	%r3,%r1	#, D.3844
	lr	%r1,%r3	# D.3845,
	l	%r2,124(%r11)	#, s
	l	%r3,116(%r11)	#, iftmp.52
	lr	%r4,%r1	#, D.3846
	lhi	%r5,0	#,
	l	%r1,.L413-.L404(%r13)	# tmp464,
	basr	%r14,%r1	#, tmp464
	l	%r1,124(%r11)	# tmp465, s
	l	%r1,108(%r1)	# D.3847, <variable>.strstart
	lr	%r2,%r1	# D.3848, D.3847
	l	%r1,124(%r11)	# tmp466, s
	st	%r2,92(%r1)	# D.3848, <variable>.block_start
	l	%r1,124(%r11)	# tmp467, s
	l	%r1,0(%r1)	# D.3849, <variable>.strm
	lr	%r2,%r1	#, D.3849
	l	%r1,.L414-.L404(%r13)	# tmp468,
	basr	%r14,%r1	#, tmp468
	l	%r1,124(%r11)	# tmp469, s
	l	%r1,0(%r1)	# D.3850, <variable>.strm
	l	%r1,16(%r1)	# D.3851, <variable>.avail_out
	ltr	%r1,%r1	# D.3851
	jne	.L400	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.3641
	j	.L380	#
.L400:
	lhi	%r2,1	#,
	st	%r2,96(%r11)	#, D.3641
.L380:
	l	%r1,96(%r11)	# <result>, D.3641
	lr	%r2,%r1	#, <result>
	l	%r4,200(%r11)	#,
	lm	%r11,%r15,188(%r11)	#,,
	br	%r4	#
	.align	4	#
.L414:
	.long	flush_pending
.L413:
	.long	_tr_flush_block
.L412:
	.long	_dist_code
.L411:
	.long	_length_code
.L410:
	.long	longest_match
.L409:
	.long	65535
.L408:
	.long	255
.L407:
	.long	2
.L406:
	.long	fill_window
.L405:
	.long	261
	.align	2	#
.LFE23:
	.size	deflate_fast, .-deflate_fast
	.align	4
	.type	deflate_slow, @function
deflate_slow:
.LFB24:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI66:
	basr	%r13,0	#
.L448:
	ahi	%r15,-160	#,
.LCFI67:
	lr	%r11,%r15	#,
.LCFI68:
	st	%r2,132(%r11)	# s, s
	st	%r3,128(%r11)	# flush, flush
.L437:
	l	%r1,132(%r11)	# tmp289, s
	l	%r1,116(%r1)	# D.3911, <variable>.lookahead
	cl	%r1,.L449-.L448(%r13)	# D.3911,
	jh	.L416	#,
	l	%r2,132(%r11)	#, s
	l	%r1,.L450-.L448(%r13)	# tmp290,
	basr	%r14,%r1	#, tmp290
	l	%r1,132(%r11)	# tmp291, s
	l	%r1,116(%r1)	# D.3912, <variable>.lookahead
	cl	%r1,.L449-.L448(%r13)	# D.3912,
	jh	.L417	#,
	l	%r1,128(%r11)	# tmp292, flush
	ltr	%r1,%r1	# tmp292
	jne	.L417	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3913
	j	.L418	#
.L417:
	l	%r1,132(%r11)	# tmp293, s
	l	%r1,116(%r1)	# D.3914, <variable>.lookahead
	ltr	%r1,%r1	# D.3914
	je	.L419	#,
.L416:
	lhi	%r2,0	#,
	st	%r2,140(%r11)	#, hash_head
	l	%r1,132(%r11)	# tmp294, s
	l	%r1,116(%r1)	# D.3915, <variable>.lookahead
	cl	%r1,.L451-.L448(%r13)	# D.3915,
	jle	.L420	#,
	l	%r1,132(%r11)	# tmp295, s
	l	%r2,72(%r1)	# D.3916, <variable>.ins_h
	l	%r1,132(%r11)	# tmp296, s
	l	%r1,88(%r1)	# D.3917, <variable>.hash_shift
	lr	%r3,%r2	# D.3919, D.3916
	sll	%r3,0(%r1)	# D.3919, D.3918
	l	%r1,132(%r11)	# tmp297, s
	l	%r2,56(%r1)	# D.3920, <variable>.window
	l	%r1,132(%r11)	# tmp298, s
	l	%r1,108(%r1)	# D.3921, <variable>.strstart
	ahi	%r1,2	# D.3922,
	ar	%r1,%r2	# D.3923, D.3920
	ic	%r1,0(%r1)	# D.3924,* D.3923
	n	%r1,.L452-.L448(%r13)	# D.3925,
	lr	%r2,%r3	# D.3926, D.3919
	xr	%r2,%r1	# D.3926, D.3925
	l	%r1,132(%r11)	# tmp299, s
	l	%r1,84(%r1)	# D.3927, <variable>.hash_mask
	nr	%r2,%r1	# D.3928, D.3927
	l	%r1,132(%r11)	# tmp300, s
	st	%r2,72(%r1)	# D.3928, <variable>.ins_h
	l	%r1,132(%r11)	# tmp301, s
	l	%r3,64(%r1)	# D.3929, <variable>.prev
	l	%r1,132(%r11)	# tmp302, s
	l	%r2,108(%r1)	# D.3930, <variable>.strstart
	l	%r1,132(%r11)	# tmp303, s
	l	%r1,52(%r1)	# D.3931, <variable>.w_mask
	nr	%r1,%r2	# D.3932, D.3930
	sll	%r1,1	# D.3933,
	ar	%r3,%r1	# D.3934, D.3933
	l	%r1,132(%r11)	# tmp304, s
	l	%r2,68(%r1)	# D.3935, <variable>.head
	l	%r1,132(%r11)	# tmp305, s
	l	%r1,72(%r1)	# D.3936, <variable>.ins_h
	sll	%r1,1	# D.3937,
	ar	%r1,%r2	# D.3938, D.3935
	lh	%r1,0(%r1)	# D.3939,* D.3938
	sth	%r1,0(%r3)	# D.3939,* D.3934
	lh	%r1,0(%r3)	# D.3940,* D.3934
	n	%r1,.L453-.L448(%r13)	# tmp306,
	st	%r1,140(%r11)	# tmp306, hash_head
	l	%r1,132(%r11)	# tmp307, s
	l	%r2,68(%r1)	# D.3941, <variable>.head
	l	%r1,132(%r11)	# tmp308, s
	l	%r1,72(%r1)	# D.3942, <variable>.ins_h
	sll	%r1,1	# D.3943,
	ar	%r2,%r1	# D.3944, D.3943
	l	%r1,132(%r11)	# tmp309, s
	l	%r1,108(%r1)	# D.3945, <variable>.strstart
	sth	%r1,0(%r2)	# D.3946,* D.3944
.L420:
	l	%r1,132(%r11)	# tmp310, s
	l	%r2,96(%r1)	# D.3947, <variable>.match_length
	l	%r1,132(%r11)	# tmp311, s
	st	%r2,120(%r1)	# D.3947, <variable>.prev_length
	l	%r1,132(%r11)	# tmp312, s
	l	%r2,112(%r1)	# D.3948, <variable>.match_start
	l	%r1,132(%r11)	# tmp313, s
	st	%r2,100(%r1)	# D.3948, <variable>.prev_match
	l	%r1,132(%r11)	# tmp314, s
	lhi	%r3,2	#,
	st	%r3,96(%r1)	#, <variable>.match_length
	l	%r1,140(%r11)	# tmp315, hash_head
	ltr	%r1,%r1	# tmp315
	je	.L421	#,
	l	%r1,132(%r11)	# tmp316, s
	l	%r2,120(%r1)	# D.3949, <variable>.prev_length
	l	%r1,132(%r11)	# tmp317, s
	l	%r1,128(%r1)	# D.3950, <variable>.max_lazy_match
	clr	%r2,%r1	# D.3949, D.3950
	jhe	.L421	#,
	l	%r1,132(%r11)	# tmp318, s
	l	%r1,108(%r1)	# D.3951, <variable>.strstart
	lr	%r2,%r1	# D.3952, D.3951
	s	%r2,140(%r11)	# D.3952, hash_head
	l	%r1,132(%r11)	# tmp319, s
	l	%r1,44(%r1)	# D.3953, <variable>.w_size
	ahi	%r1,-262	# D.3954,
	clr	%r2,%r1	# D.3952, D.3954
	jh	.L421	#,
	l	%r2,132(%r11)	#, s
	l	%r3,140(%r11)	#, hash_head
	l	%r1,.L454-.L448(%r13)	# tmp320,
	basr	%r14,%r1	#, tmp320
	l	%r1,132(%r11)	# tmp321, s
	st	%r2,96(%r1)	# D.3955, <variable>.match_length
	l	%r1,132(%r11)	# tmp322, s
	l	%r1,96(%r1)	# D.3958, <variable>.match_length
	cl	%r1,.L455-.L448(%r13)	# D.3958,
	jh	.L421	#,
	l	%r1,132(%r11)	# tmp323, s
	l	%r1,136(%r1)	# D.3959, <variable>.strategy
	chi	%r1,1	# D.3959,
	je	.L422	#,
	l	%r1,132(%r11)	# tmp324, s
	l	%r1,96(%r1)	# D.3960, <variable>.match_length
	chi	%r1,3	# D.3960,
	jne	.L421	#,
	l	%r1,132(%r11)	# tmp325, s
	l	%r2,108(%r1)	# D.3961, <variable>.strstart
	l	%r1,132(%r11)	# tmp326, s
	l	%r1,112(%r1)	# D.3962, <variable>.match_start
	lr	%r3,%r2	#, D.3961
	sr	%r3,%r1	#, D.3962
	lr	%r1,%r3	# D.3963,
	cl	%r1,.L456-.L448(%r13)	# D.3963,
	jle	.L421	#,
.L422:
	l	%r1,132(%r11)	# tmp327, s
	lhi	%r2,2	#,
	st	%r2,96(%r1)	#, <variable>.match_length
.L421:
	l	%r1,132(%r11)	# tmp328, s
	l	%r1,120(%r1)	# D.3966, <variable>.prev_length
	cl	%r1,.L451-.L448(%r13)	# D.3966,
	jle	.L423	#,
	l	%r1,132(%r11)	# tmp329, s
	l	%r2,96(%r1)	# D.3967, <variable>.match_length
	l	%r1,132(%r11)	# tmp330, s
	l	%r1,120(%r1)	# D.3968, <variable>.prev_length
	clr	%r2,%r1	# D.3967, D.3968
	jh	.L423	#,
	l	%r1,132(%r11)	# tmp331, s
	l	%r2,108(%r1)	# D.3969, <variable>.strstart
	l	%r1,132(%r11)	# tmp332, s
	l	%r1,116(%r1)	# D.3970, <variable>.lookahead
	ar	%r1,%r2	# D.3971, D.3969
	lr	%r3,%r1	#, D.3971
	ahi	%r3,-3	#,
	st	%r3,148(%r11)	#, max_insert
	l	%r1,132(%r11)	# tmp333, s
	l	%r1,120(%r1)	# D.3972, <variable>.prev_length
	ahi	%r1,-3	# tmp334,
	stc	%r1,155(%r11)	# tmp334, len
	l	%r1,132(%r11)	# tmp335, s
	l	%r1,108(%r1)	# D.3974, <variable>.strstart
	lr	%r2,%r1	# D.3975, D.3974
	l	%r1,132(%r11)	# tmp336, s
	l	%r1,100(%r1)	# D.3976, <variable>.prev_match
	lr	%r3,%r2	#,
	sr	%r3,%r1	#, D.3977
	lr	%r1,%r3	# tmp337,
	ahi	%r1,-1	# tmp338,
	sth	%r1,156(%r11)	# tmp338, dist
	l	%r2,132(%r11)	# tmp339, s
	lhi	%r1,4096	# tmp340,
	l	%r3,1700(%r1,%r2)	# D.3979, <variable>.d_buf
	l	%r2,132(%r11)	# tmp342, s
	lhi	%r1,4096	# tmp343,
	l	%r1,1696(%r1,%r2)	# D.3980, <variable>.last_lit
	sll	%r1,1	# D.3981,
	ar	%r1,%r3	# D.3982, D.3979
	lh	%r2,156(%r11)	#, dist
	sth	%r2,0(%r1)	#,* D.3982
	l	%r2,132(%r11)	# tmp345, s
	lhi	%r1,4096	# tmp346,
	l	%r3,1688(%r1,%r2)	# D.3983, <variable>.l_buf
	l	%r2,132(%r11)	# tmp348, s
	lhi	%r1,4096	# tmp349,
	l	%r2,1696(%r1,%r2)	# D.3984, <variable>.last_lit
	lr	%r1,%r3	# D.3986, D.3983
	ar	%r1,%r2	# D.3986, D.3984
	ic	%r3,155(%r11)	#, len
	stc	%r3,0(%r1)	#,* D.3986
	lr	%r3,%r2	# D.3985, D.3984
	ahi	%r3,1	# D.3985,
	l	%r2,132(%r11)	# tmp351, s
	lhi	%r1,4096	# tmp352,
	st	%r3,1696(%r1,%r2)	# D.3985, <variable>.last_lit
	lh	%r1,156(%r11)	# tmp354, dist
	ahi	%r1,-1	# tmp355,
	sth	%r1,156(%r11)	# tmp355, dist
	ic	%r1,155(%r11)	# tmp356, len
	lhi	%r2,255	# D.3987,
	nr	%r2,%r1	# D.3987, tmp356
	l	%r1,.L457-.L448(%r13)	# tmp357,
	ic	%r1,0(%r2,%r1)	# D.3988, _length_code
	n	%r1,.L452-.L448(%r13)	# D.3989,
	lr	%r4,%r1	# D.3990, D.3989
	ahi	%r4,257	# D.3990,
	l	%r2,132(%r11)	# tmp358, s
	lr	%r1,%r4	# tmp359, D.3990
	ahi	%r1,36	# tmp359,
	sll	%r1,2	# tmp360,
	lh	%r1,4(%r1,%r2)	# D.3991, <variable>.fc.freq
	ahi	%r1,1	# tmp361,
	lr	%r3,%r1	# D.3992, tmp361
	l	%r2,132(%r11)	# tmp362, s
	lr	%r1,%r4	# tmp363, D.3990
	ahi	%r1,36	# tmp363,
	sll	%r1,2	# tmp364,
	sth	%r3,4(%r1,%r2)	# D.3992, <variable>.fc.freq
	lh	%r1,156(%r11)	# tmp366, dist
	n	%r1,.L453-.L448(%r13)	# tmp365,
	cl	%r1,.L452-.L448(%r13)	# tmp365,
	jh	.L424	#,
	lh	%r1,156(%r11)	# tmp367, dist
	lr	%r2,%r1	# D.3994,
	n	%r2,.L453-.L448(%r13)	# D.3994,
	l	%r1,.L458-.L448(%r13)	# tmp368,
	ic	%r1,0(%r2,%r1)	# D.3995, _dist_code
	lhi	%r2,255	#,
	nr	%r2,%r1	#, D.3995
	st	%r2,104(%r11)	#, iftmp.53
	j	.L425	#
.L424:
	lh	%r1,156(%r11)	# tmp370, dist
	n	%r1,.L453-.L448(%r13)	# tmp369,
	srl	%r1,7	# tmp371,
	n	%r1,.L453-.L448(%r13)	# D.3997,
	lr	%r2,%r1	# D.3998, D.3997
	ahi	%r2,256	# D.3998,
	l	%r1,.L458-.L448(%r13)	# tmp372,
	ic	%r1,0(%r2,%r1)	# D.3999, _dist_code
	lhi	%r3,255	#,
	nr	%r3,%r1	#, D.3999
	st	%r3,104(%r11)	#, iftmp.53
.L425:
	l	%r4,104(%r11)	# iftmp.54, iftmp.53
	l	%r2,132(%r11)	# tmp373, s
	lr	%r1,%r4	# tmp374, iftmp.54
	ahi	%r1,610	# tmp374,
	sll	%r1,2	# tmp375,
	lh	%r1,0(%r1,%r2)	# D.4001, <variable>.fc.freq
	ahi	%r1,1	# tmp376,
	lr	%r3,%r1	# D.4002, tmp376
	l	%r2,132(%r11)	# tmp377, s
	lr	%r1,%r4	# tmp378, iftmp.54
	ahi	%r1,610	# tmp378,
	sll	%r1,2	# tmp379,
	sth	%r3,0(%r1,%r2)	# D.4002, <variable>.fc.freq
	l	%r2,132(%r11)	# tmp380, s
	lhi	%r1,4096	# tmp381,
	l	%r3,1696(%r1,%r2)	# D.4003, <variable>.last_lit
	l	%r2,132(%r11)	# tmp383, s
	lhi	%r1,4096	# tmp384,
	l	%r1,1692(%r1,%r2)	# D.4004, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4005,
	xr	%r1,%r3	# tmp387, D.4003
	st	%r1,144(%r11)	# tmp387, bflush
	l	%r1,144(%r11)	# tmp390, bflush
	lpr	%r1,%r1	# tmp391, tmp390
	lr	%r2,%r1	#, tmp391
	ahi	%r2,-1	#,
	st	%r2,144(%r11)	#, bflush
	l	%r1,144(%r11)	# tmp392, bflush
	srl	%r1,31	# tmp393,
	st	%r1,144(%r11)	# tmp393, bflush
	l	%r1,132(%r11)	# tmp394, s
	l	%r2,116(%r1)	# D.4006, <variable>.lookahead
	l	%r1,132(%r11)	# tmp395, s
	l	%r1,120(%r1)	# D.4007, <variable>.prev_length
	lr	%r3,%r2	#, D.4006
	sr	%r3,%r1	#, D.4007
	lr	%r1,%r3	# D.4008,
	lr	%r2,%r1	# D.4009, D.4008
	ahi	%r2,1	# D.4009,
	l	%r1,132(%r11)	# tmp396, s
	st	%r2,116(%r1)	# D.4009, <variable>.lookahead
	l	%r1,132(%r11)	# tmp397, s
	l	%r1,120(%r1)	# D.4010, <variable>.prev_length
	lr	%r2,%r1	# D.4011, D.4010
	ahi	%r2,-2	# D.4011,
	l	%r1,132(%r11)	# tmp398, s
	st	%r2,120(%r1)	# D.4011, <variable>.prev_length
.L427:
	l	%r1,132(%r11)	# tmp399, s
	l	%r1,108(%r1)	# D.4012, <variable>.strstart
	lr	%r2,%r1	# D.4013, D.4012
	ahi	%r2,1	# D.4013,
	l	%r1,132(%r11)	# tmp400, s
	st	%r2,108(%r1)	# D.4013, <variable>.strstart
	l	%r1,132(%r11)	# tmp401, s
	l	%r1,108(%r1)	# D.4014, <variable>.strstart
	cl	%r1,148(%r11)	# D.4014, max_insert
	jh	.L426	#,
	l	%r1,132(%r11)	# tmp402, s
	l	%r2,72(%r1)	# D.4015, <variable>.ins_h
	l	%r1,132(%r11)	# tmp403, s
	l	%r1,88(%r1)	# D.4016, <variable>.hash_shift
	lr	%r3,%r2	# D.4018, D.4015
	sll	%r3,0(%r1)	# D.4018, D.4017
	l	%r1,132(%r11)	# tmp404, s
	l	%r2,56(%r1)	# D.4019, <variable>.window
	l	%r1,132(%r11)	# tmp405, s
	l	%r1,108(%r1)	# D.4020, <variable>.strstart
	ahi	%r1,2	# D.4021,
	ar	%r1,%r2	# D.4022, D.4019
	ic	%r1,0(%r1)	# D.4023,* D.4022
	n	%r1,.L452-.L448(%r13)	# D.4024,
	lr	%r2,%r3	# D.4025, D.4018
	xr	%r2,%r1	# D.4025, D.4024
	l	%r1,132(%r11)	# tmp406, s
	l	%r1,84(%r1)	# D.4026, <variable>.hash_mask
	nr	%r2,%r1	# D.4027, D.4026
	l	%r1,132(%r11)	# tmp407, s
	st	%r2,72(%r1)	# D.4027, <variable>.ins_h
	l	%r1,132(%r11)	# tmp408, s
	l	%r3,64(%r1)	# D.4028, <variable>.prev
	l	%r1,132(%r11)	# tmp409, s
	l	%r2,108(%r1)	# D.4029, <variable>.strstart
	l	%r1,132(%r11)	# tmp410, s
	l	%r1,52(%r1)	# D.4030, <variable>.w_mask
	nr	%r1,%r2	# D.4031, D.4029
	sll	%r1,1	# D.4032,
	ar	%r3,%r1	# D.4033, D.4032
	l	%r1,132(%r11)	# tmp411, s
	l	%r2,68(%r1)	# D.4034, <variable>.head
	l	%r1,132(%r11)	# tmp412, s
	l	%r1,72(%r1)	# D.4035, <variable>.ins_h
	sll	%r1,1	# D.4036,
	ar	%r1,%r2	# D.4037, D.4034
	lh	%r1,0(%r1)	# D.4038,* D.4037
	sth	%r1,0(%r3)	# D.4038,* D.4033
	lh	%r1,0(%r3)	# D.4039,* D.4033
	n	%r1,.L453-.L448(%r13)	# tmp413,
	st	%r1,140(%r11)	# tmp413, hash_head
	l	%r1,132(%r11)	# tmp414, s
	l	%r2,68(%r1)	# D.4040, <variable>.head
	l	%r1,132(%r11)	# tmp415, s
	l	%r1,72(%r1)	# D.4041, <variable>.ins_h
	sll	%r1,1	# D.4042,
	ar	%r2,%r1	# D.4043, D.4042
	l	%r1,132(%r11)	# tmp416, s
	l	%r1,108(%r1)	# D.4044, <variable>.strstart
	sth	%r1,0(%r2)	# D.4045,* D.4043
.L426:
	l	%r1,132(%r11)	# tmp417, s
	l	%r1,120(%r1)	# D.4046, <variable>.prev_length
	lr	%r2,%r1	# D.4047, D.4046
	ahi	%r2,-1	# D.4047,
	l	%r1,132(%r11)	# tmp418, s
	st	%r2,120(%r1)	# D.4047, <variable>.prev_length
	l	%r1,132(%r11)	# tmp419, s
	l	%r1,120(%r1)	# D.4048, <variable>.prev_length
	ltr	%r1,%r1	# D.4048
	jne	.L427	#,
	l	%r1,132(%r11)	# tmp420, s
	lhi	%r2,0	#,
	st	%r2,104(%r1)	#, <variable>.match_available
	l	%r1,132(%r11)	# tmp421, s
	lhi	%r3,2	#,
	st	%r3,96(%r1)	#, <variable>.match_length
	l	%r1,132(%r11)	# tmp422, s
	l	%r1,108(%r1)	# D.4049, <variable>.strstart
	lr	%r2,%r1	# D.4050, D.4049
	ahi	%r2,1	# D.4050,
	l	%r1,132(%r11)	# tmp423, s
	st	%r2,108(%r1)	# D.4050, <variable>.strstart
	l	%r1,144(%r11)	# tmp424, bflush
	ltr	%r1,%r1	# tmp424
	je	.L437	#,
	l	%r1,132(%r11)	# tmp425, s
	l	%r1,92(%r1)	# D.4052, <variable>.block_start
	ltr	%r1,%r1	# D.4052
	jl	.L429	#,
	l	%r1,132(%r11)	# tmp426, s
	l	%r2,56(%r1)	# D.4053, <variable>.window
	l	%r1,132(%r11)	# tmp427, s
	l	%r1,92(%r1)	# D.4054, <variable>.block_start
	lr	%r3,%r2	#, D.4053
	ar	%r3,%r1	#, D.4055
	st	%r3,108(%r11)	#, iftmp.55
	j	.L430	#
.L429:
	lhi	%r1,0	#,
	st	%r1,108(%r11)	#, iftmp.55
.L430:
	l	%r1,132(%r11)	# tmp428, s
	l	%r1,108(%r1)	# D.4056, <variable>.strstart
	lr	%r2,%r1	# D.4057, D.4056
	l	%r1,132(%r11)	# tmp429, s
	l	%r1,92(%r1)	# D.4058, <variable>.block_start
	lr	%r3,%r2	#, D.4057
	sr	%r3,%r1	#, D.4058
	lr	%r1,%r3	# D.4059,
	l	%r2,132(%r11)	#, s
	l	%r3,108(%r11)	#, iftmp.55
	lr	%r4,%r1	#, D.4060
	lhi	%r5,0	#,
	l	%r1,.L459-.L448(%r13)	# tmp430,
	basr	%r14,%r1	#, tmp430
	l	%r1,132(%r11)	# tmp431, s
	l	%r1,108(%r1)	# D.4061, <variable>.strstart
	lr	%r2,%r1	# D.4062, D.4061
	l	%r1,132(%r11)	# tmp432, s
	st	%r2,92(%r1)	# D.4062, <variable>.block_start
	l	%r1,132(%r11)	# tmp433, s
	l	%r1,0(%r1)	# D.4063, <variable>.strm
	lr	%r2,%r1	#, D.4063
	l	%r1,.L460-.L448(%r13)	# tmp434,
	basr	%r14,%r1	#, tmp434
	l	%r1,132(%r11)	# tmp435, s
	l	%r1,0(%r1)	# D.4064, <variable>.strm
	l	%r1,16(%r1)	# D.4065, <variable>.avail_out
	ltr	%r1,%r1	# D.4065
	jne	.L437	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3913
	j	.L418	#
.L423:
	l	%r1,132(%r11)	# tmp436, s
	l	%r1,104(%r1)	# D.4066, <variable>.match_available
	ltr	%r1,%r1	# D.4066
	je	.L432	#,
	l	%r1,132(%r11)	# tmp437, s
	l	%r2,56(%r1)	# D.4067, <variable>.window
	l	%r1,132(%r11)	# tmp438, s
	l	%r1,108(%r1)	# D.4068, <variable>.strstart
	ahi	%r1,-1	# D.4069,
	ar	%r1,%r2	# D.4070, D.4067
	ic	%r2,0(%r1)	#,* D.4070
	stc	%r2,158(%r11)	#, cc
	l	%r2,132(%r11)	# tmp439, s
	lhi	%r1,4096	# tmp440,
	l	%r3,1700(%r1,%r2)	# D.4071, <variable>.d_buf
	l	%r2,132(%r11)	# tmp442, s
	lhi	%r1,4096	# tmp443,
	l	%r1,1696(%r1,%r2)	# D.4072, <variable>.last_lit
	sll	%r1,1	# D.4073,
	ar	%r1,%r3	# D.4074, D.4071
	lhi	%r3,0	#,
	sth	%r3,0(%r1)	#,* D.4074
	l	%r2,132(%r11)	# tmp445, s
	lhi	%r1,4096	# tmp446,
	l	%r3,1688(%r1,%r2)	# D.4075, <variable>.l_buf
	l	%r2,132(%r11)	# tmp448, s
	lhi	%r1,4096	# tmp449,
	l	%r2,1696(%r1,%r2)	# D.4076, <variable>.last_lit
	lr	%r1,%r3	# D.4078, D.4075
	ar	%r1,%r2	# D.4078, D.4076
	ic	%r3,158(%r11)	#, cc
	stc	%r3,0(%r1)	#,* D.4078
	lr	%r3,%r2	# D.4077, D.4076
	ahi	%r3,1	# D.4077,
	l	%r2,132(%r11)	# tmp451, s
	lhi	%r1,4096	# tmp452,
	st	%r3,1696(%r1,%r2)	# D.4077, <variable>.last_lit
	ic	%r1,158(%r11)	# tmp454, cc
	lhi	%r4,255	# D.4079,
	nr	%r4,%r1	# D.4079, tmp454
	l	%r2,132(%r11)	# tmp455, s
	lr	%r1,%r4	# tmp456, D.4079
	ahi	%r1,36	# tmp456,
	sll	%r1,2	# tmp457,
	lh	%r1,4(%r1,%r2)	# D.4080, <variable>.fc.freq
	ahi	%r1,1	# tmp458,
	lr	%r3,%r1	# D.4081, tmp458
	l	%r2,132(%r11)	# tmp459, s
	lr	%r1,%r4	# tmp460, D.4079
	ahi	%r1,36	# tmp460,
	sll	%r1,2	# tmp461,
	sth	%r3,4(%r1,%r2)	# D.4081, <variable>.fc.freq
	l	%r2,132(%r11)	# tmp462, s
	lhi	%r1,4096	# tmp463,
	l	%r3,1696(%r1,%r2)	# D.4082, <variable>.last_lit
	l	%r2,132(%r11)	# tmp465, s
	lhi	%r1,4096	# tmp466,
	l	%r1,1692(%r1,%r2)	# D.4083, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4084,
	xr	%r1,%r3	# tmp469, D.4082
	st	%r1,144(%r11)	# tmp469, bflush
	l	%r1,144(%r11)	# tmp472, bflush
	lpr	%r1,%r1	# tmp473, tmp472
	lr	%r2,%r1	#, tmp473
	ahi	%r2,-1	#,
	st	%r2,144(%r11)	#, bflush
	l	%r1,144(%r11)	# tmp474, bflush
	srl	%r1,31	# tmp475,
	st	%r1,144(%r11)	# tmp475, bflush
	l	%r1,144(%r11)	# tmp476, bflush
	ltr	%r1,%r1	# tmp476
	je	.L433	#,
	l	%r1,132(%r11)	# tmp477, s
	l	%r1,92(%r1)	# D.4086, <variable>.block_start
	ltr	%r1,%r1	# D.4086
	jl	.L434	#,
	l	%r1,132(%r11)	# tmp478, s
	l	%r2,56(%r1)	# D.4087, <variable>.window
	l	%r1,132(%r11)	# tmp479, s
	l	%r1,92(%r1)	# D.4088, <variable>.block_start
	lr	%r3,%r2	#, D.4087
	ar	%r3,%r1	#, D.4089
	st	%r3,112(%r11)	#, iftmp.56
	j	.L435	#
.L434:
	lhi	%r1,0	#,
	st	%r1,112(%r11)	#, iftmp.56
.L435:
	l	%r1,132(%r11)	# tmp480, s
	l	%r1,108(%r1)	# D.4090, <variable>.strstart
	lr	%r2,%r1	# D.4091, D.4090
	l	%r1,132(%r11)	# tmp481, s
	l	%r1,92(%r1)	# D.4092, <variable>.block_start
	lr	%r3,%r2	#, D.4091
	sr	%r3,%r1	#, D.4092
	lr	%r1,%r3	# D.4093,
	l	%r2,132(%r11)	#, s
	l	%r3,112(%r11)	#, iftmp.56
	lr	%r4,%r1	#, D.4094
	lhi	%r5,0	#,
	l	%r1,.L459-.L448(%r13)	# tmp482,
	basr	%r14,%r1	#, tmp482
	l	%r1,132(%r11)	# tmp483, s
	l	%r1,108(%r1)	# D.4095, <variable>.strstart
	lr	%r2,%r1	# D.4096, D.4095
	l	%r1,132(%r11)	# tmp484, s
	st	%r2,92(%r1)	# D.4096, <variable>.block_start
	l	%r1,132(%r11)	# tmp485, s
	l	%r1,0(%r1)	# D.4097, <variable>.strm
	lr	%r2,%r1	#, D.4097
	l	%r1,.L460-.L448(%r13)	# tmp486,
	basr	%r14,%r1	#, tmp486
.L433:
	l	%r1,132(%r11)	# tmp487, s
	l	%r1,108(%r1)	# D.4098, <variable>.strstart
	lr	%r2,%r1	# D.4099, D.4098
	ahi	%r2,1	# D.4099,
	l	%r1,132(%r11)	# tmp488, s
	st	%r2,108(%r1)	# D.4099, <variable>.strstart
	l	%r1,132(%r11)	# tmp489, s
	l	%r1,116(%r1)	# D.4100, <variable>.lookahead
	lr	%r2,%r1	# D.4101, D.4100
	ahi	%r2,-1	# D.4101,
	l	%r1,132(%r11)	# tmp490, s
	st	%r2,116(%r1)	# D.4101, <variable>.lookahead
	l	%r1,132(%r11)	# tmp491, s
	l	%r1,0(%r1)	# D.4102, <variable>.strm
	l	%r1,16(%r1)	# D.4103, <variable>.avail_out
	ltr	%r1,%r1	# D.4103
	jne	.L437	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3913
	j	.L418	#
.L432:
	l	%r1,132(%r11)	# tmp492, s
	lhi	%r2,1	#,
	st	%r2,104(%r1)	#, <variable>.match_available
	l	%r1,132(%r11)	# tmp493, s
	l	%r1,108(%r1)	# D.4104, <variable>.strstart
	lr	%r2,%r1	# D.4105, D.4104
	ahi	%r2,1	# D.4105,
	l	%r1,132(%r11)	# tmp494, s
	st	%r2,108(%r1)	# D.4105, <variable>.strstart
	l	%r1,132(%r11)	# tmp495, s
	l	%r1,116(%r1)	# D.4106, <variable>.lookahead
	lr	%r2,%r1	# D.4107, D.4106
	ahi	%r2,-1	# D.4107,
	l	%r1,132(%r11)	# tmp496, s
	st	%r2,116(%r1)	# D.4107, <variable>.lookahead
	j	.L437	#
.L419:
	l	%r1,132(%r11)	# tmp497, s
	l	%r1,104(%r1)	# D.4108, <variable>.match_available
	ltr	%r1,%r1	# D.4108
	je	.L438	#,
	l	%r1,132(%r11)	# tmp498, s
	l	%r2,56(%r1)	# D.4109, <variable>.window
	l	%r1,132(%r11)	# tmp499, s
	l	%r1,108(%r1)	# D.4110, <variable>.strstart
	ahi	%r1,-1	# D.4111,
	ar	%r1,%r2	# D.4112, D.4109
	ic	%r3,0(%r1)	#,* D.4112
	stc	%r3,159(%r11)	#, cc
	l	%r2,132(%r11)	# tmp500, s
	lhi	%r1,4096	# tmp501,
	l	%r3,1700(%r1,%r2)	# D.4113, <variable>.d_buf
	l	%r2,132(%r11)	# tmp503, s
	lhi	%r1,4096	# tmp504,
	l	%r1,1696(%r1,%r2)	# D.4114, <variable>.last_lit
	sll	%r1,1	# D.4115,
	ar	%r1,%r3	# D.4116, D.4113
	lhi	%r2,0	#,
	sth	%r2,0(%r1)	#,* D.4116
	l	%r2,132(%r11)	# tmp506, s
	lhi	%r1,4096	# tmp507,
	l	%r3,1688(%r1,%r2)	# D.4117, <variable>.l_buf
	l	%r2,132(%r11)	# tmp509, s
	lhi	%r1,4096	# tmp510,
	l	%r2,1696(%r1,%r2)	# D.4118, <variable>.last_lit
	lr	%r1,%r3	# D.4120, D.4117
	ar	%r1,%r2	# D.4120, D.4118
	ic	%r3,159(%r11)	#, cc
	stc	%r3,0(%r1)	#,* D.4120
	lr	%r3,%r2	# D.4119, D.4118
	ahi	%r3,1	# D.4119,
	l	%r2,132(%r11)	# tmp512, s
	lhi	%r1,4096	# tmp513,
	st	%r3,1696(%r1,%r2)	# D.4119, <variable>.last_lit
	ic	%r1,159(%r11)	# tmp515, cc
	lhi	%r4,255	# D.4121,
	nr	%r4,%r1	# D.4121, tmp515
	l	%r2,132(%r11)	# tmp516, s
	lr	%r1,%r4	# tmp517, D.4121
	ahi	%r1,36	# tmp517,
	sll	%r1,2	# tmp518,
	lh	%r1,4(%r1,%r2)	# D.4122, <variable>.fc.freq
	ahi	%r1,1	# tmp519,
	lr	%r3,%r1	# D.4123, tmp519
	l	%r2,132(%r11)	# tmp520, s
	lr	%r1,%r4	# tmp521, D.4121
	ahi	%r1,36	# tmp521,
	sll	%r1,2	# tmp522,
	sth	%r3,4(%r1,%r2)	# D.4123, <variable>.fc.freq
	l	%r2,132(%r11)	# tmp523, s
	lhi	%r1,4096	# tmp524,
	l	%r3,1696(%r1,%r2)	# D.4124, <variable>.last_lit
	l	%r2,132(%r11)	# tmp526, s
	lhi	%r1,4096	# tmp527,
	l	%r1,1692(%r1,%r2)	# D.4125, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4126,
	xr	%r1,%r3	# tmp530, D.4124
	st	%r1,144(%r11)	# tmp530, bflush
	l	%r1,144(%r11)	# tmp533, bflush
	lpr	%r1,%r1	# tmp534, tmp533
	lr	%r2,%r1	#, tmp534
	ahi	%r2,-1	#,
	st	%r2,144(%r11)	#, bflush
	l	%r1,144(%r11)	# tmp535, bflush
	srl	%r1,31	# tmp536,
	st	%r1,144(%r11)	# tmp536, bflush
	l	%r1,132(%r11)	# tmp537, s
	lhi	%r3,0	#,
	st	%r3,104(%r1)	#, <variable>.match_available
.L438:
	l	%r1,132(%r11)	# tmp538, s
	l	%r1,108(%r1)	# D.4127, <variable>.strstart
	st	%r1,116(%r11)	# D.4127, D.4128
	l	%r1,116(%r11)	#, D.4128
	cl	%r1,.L451-.L448(%r13)	#,
	jle	.L439	#,
	lhi	%r2,2	#,
	st	%r2,116(%r11)	#, D.4128
.L439:
	l	%r2,132(%r11)	# tmp539, s
	lhi	%r1,4096	# tmp540,
	l	%r3,116(%r11)	#, D.4128
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,128(%r11)	# tmp542, flush
	chi	%r1,4	# tmp542,
	jne	.L440	#,
	l	%r1,132(%r11)	# tmp543, s
	l	%r1,92(%r1)	# D.4130, <variable>.block_start
	ltr	%r1,%r1	# D.4130
	jl	.L441	#,
	l	%r1,132(%r11)	# tmp544, s
	l	%r2,56(%r1)	# D.4131, <variable>.window
	l	%r1,132(%r11)	# tmp545, s
	l	%r1,92(%r1)	# D.4132, <variable>.block_start
	lr	%r3,%r2	#, D.4131
	ar	%r3,%r1	#, D.4133
	st	%r3,120(%r11)	#, iftmp.57
	j	.L442	#
.L441:
	lhi	%r1,0	#,
	st	%r1,120(%r11)	#, iftmp.57
.L442:
	l	%r1,132(%r11)	# tmp546, s
	l	%r1,108(%r1)	# D.4134, <variable>.strstart
	lr	%r2,%r1	# D.4135, D.4134
	l	%r1,132(%r11)	# tmp547, s
	l	%r1,92(%r1)	# D.4136, <variable>.block_start
	lr	%r3,%r2	#, D.4135
	sr	%r3,%r1	#, D.4136
	lr	%r1,%r3	# D.4137,
	l	%r2,132(%r11)	#, s
	l	%r3,120(%r11)	#, iftmp.57
	lr	%r4,%r1	#, D.4138
	lhi	%r5,1	#,
	l	%r1,.L459-.L448(%r13)	# tmp548,
	basr	%r14,%r1	#, tmp548
	l	%r1,132(%r11)	# tmp549, s
	l	%r1,108(%r1)	# D.4139, <variable>.strstart
	lr	%r2,%r1	# D.4140, D.4139
	l	%r1,132(%r11)	# tmp550, s
	st	%r2,92(%r1)	# D.4140, <variable>.block_start
	l	%r1,132(%r11)	# tmp551, s
	l	%r1,0(%r1)	# D.4141, <variable>.strm
	lr	%r2,%r1	#, D.4141
	l	%r1,.L460-.L448(%r13)	# tmp552,
	basr	%r14,%r1	#, tmp552
	l	%r1,132(%r11)	# tmp553, s
	l	%r1,0(%r1)	# D.4142, <variable>.strm
	l	%r1,16(%r1)	# D.4143, <variable>.avail_out
	ltr	%r1,%r1	# D.4143
	jne	.L443	#,
	lhi	%r1,2	#,
	st	%r1,100(%r11)	#, D.3913
	j	.L418	#
.L443:
	lhi	%r2,3	#,
	st	%r2,100(%r11)	#, D.3913
	j	.L418	#
.L440:
	l	%r2,132(%r11)	# tmp554, s
	lhi	%r1,4096	# tmp555,
	l	%r1,1696(%r1,%r2)	# D.4144, <variable>.last_lit
	ltr	%r1,%r1	# D.4144
	je	.L444	#,
	l	%r1,132(%r11)	# tmp557, s
	l	%r1,92(%r1)	# D.4146, <variable>.block_start
	ltr	%r1,%r1	# D.4146
	jl	.L445	#,
	l	%r1,132(%r11)	# tmp558, s
	l	%r2,56(%r1)	# D.4147, <variable>.window
	l	%r1,132(%r11)	# tmp559, s
	l	%r1,92(%r1)	# D.4148, <variable>.block_start
	lr	%r3,%r2	#, D.4147
	ar	%r3,%r1	#, D.4149
	st	%r3,124(%r11)	#, iftmp.58
	j	.L446	#
.L445:
	lhi	%r1,0	#,
	st	%r1,124(%r11)	#, iftmp.58
.L446:
	l	%r1,132(%r11)	# tmp560, s
	l	%r1,108(%r1)	# D.4150, <variable>.strstart
	lr	%r2,%r1	# D.4151, D.4150
	l	%r1,132(%r11)	# tmp561, s
	l	%r1,92(%r1)	# D.4152, <variable>.block_start
	lr	%r3,%r2	#, D.4151
	sr	%r3,%r1	#, D.4152
	lr	%r1,%r3	# D.4153,
	l	%r2,132(%r11)	#, s
	l	%r3,124(%r11)	#, iftmp.58
	lr	%r4,%r1	#, D.4154
	lhi	%r5,0	#,
	l	%r1,.L459-.L448(%r13)	# tmp562,
	basr	%r14,%r1	#, tmp562
	l	%r1,132(%r11)	# tmp563, s
	l	%r1,108(%r1)	# D.4155, <variable>.strstart
	lr	%r2,%r1	# D.4156, D.4155
	l	%r1,132(%r11)	# tmp564, s
	st	%r2,92(%r1)	# D.4156, <variable>.block_start
	l	%r1,132(%r11)	# tmp565, s
	l	%r1,0(%r1)	# D.4157, <variable>.strm
	lr	%r2,%r1	#, D.4157
	l	%r1,.L460-.L448(%r13)	# tmp566,
	basr	%r14,%r1	#, tmp566
	l	%r1,132(%r11)	# tmp567, s
	l	%r1,0(%r1)	# D.4158, <variable>.strm
	l	%r1,16(%r1)	# D.4159, <variable>.avail_out
	ltr	%r1,%r1	# D.4159
	jne	.L444	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.3913
	j	.L418	#
.L444:
	lhi	%r2,1	#,
	st	%r2,100(%r11)	#, D.3913
.L418:
	l	%r1,100(%r11)	# <result>, D.3913
	lr	%r2,%r1	#, <result>
	l	%r4,216(%r11)	#,
	lm	%r11,%r15,204(%r11)	#,,
	br	%r4	#
	.align	4	#
.L460:
	.long	flush_pending
.L459:
	.long	_tr_flush_block
.L458:
	.long	_dist_code
.L457:
	.long	_length_code
.L456:
	.long	4096
.L455:
	.long	5
.L454:
	.long	longest_match
.L453:
	.long	65535
.L452:
	.long	255
.L451:
	.long	2
.L450:
	.long	fill_window
.L449:
	.long	261
	.align	2	#
.LFE24:
	.size	deflate_slow, .-deflate_slow
	.align	4
	.type	deflate_rle, @function
deflate_rle:
.LFB25:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI69:
	basr	%r13,0	#
.L485:
	ahi	%r15,-152	#,
.LCFI70:
	lr	%r11,%r15	#,
.LCFI71:
	st	%r2,124(%r11)	# s, s
	st	%r3,120(%r11)	# flush, flush
.L476:
	l	%r1,124(%r11)	# tmp190, s
	l	%r1,116(%r1)	# D.4235, <variable>.lookahead
	cl	%r1,.L486-.L485(%r13)	# D.4235,
	jh	.L462	#,
	l	%r2,124(%r11)	#, s
	l	%r1,.L487-.L485(%r13)	# tmp191,
	basr	%r14,%r1	#, tmp191
	l	%r1,124(%r11)	# tmp192, s
	l	%r1,116(%r1)	# D.4236, <variable>.lookahead
	cl	%r1,.L486-.L485(%r13)	# D.4236,
	jh	.L463	#,
	l	%r1,120(%r11)	# tmp193, flush
	ltr	%r1,%r1	# tmp193
	jne	.L463	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.4237
	j	.L464	#
.L463:
	l	%r1,124(%r11)	# tmp194, s
	l	%r1,116(%r1)	# D.4238, <variable>.lookahead
	ltr	%r1,%r1	# D.4238
	je	.L465	#,
.L462:
	l	%r1,124(%r11)	# tmp195, s
	lhi	%r2,0	#,
	st	%r2,96(%r1)	#, <variable>.match_length
	l	%r1,124(%r11)	# tmp196, s
	l	%r1,116(%r1)	# D.4239, <variable>.lookahead
	cl	%r1,.L488-.L485(%r13)	# D.4239,
	jle	.L466	#,
	l	%r1,124(%r11)	# tmp197, s
	l	%r1,108(%r1)	# D.4240, <variable>.strstart
	ltr	%r1,%r1	# D.4240
	je	.L466	#,
	l	%r1,124(%r11)	# tmp198, s
	l	%r2,56(%r1)	# D.4241, <variable>.window
	l	%r1,124(%r11)	# tmp199, s
	l	%r1,108(%r1)	# D.4242, <variable>.strstart
	ahi	%r1,-1	# D.4243,
	lr	%r3,%r2	#, D.4241
	ar	%r3,%r1	#, D.4243
	st	%r3,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp200, scan
	ic	%r1,0(%r1)	# D.4244,
	n	%r1,.L489-.L485(%r13)	# tmp201,
	st	%r1,132(%r11)	# tmp201, prev
	l	%r1,136(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp202, scan
	ic	%r1,0(%r1)	# D.4245,
	n	%r1,.L489-.L485(%r13)	# D.4246,
	c	%r1,132(%r11)	# D.4246, prev
	jne	.L466	#,
	l	%r2,136(%r11)	#, scan
	ahi	%r2,1	#,
	st	%r2,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp203, scan
	ic	%r1,0(%r1)	# D.4247,
	n	%r1,.L489-.L485(%r13)	# D.4248,
	c	%r1,132(%r11)	# D.4248, prev
	jne	.L466	#,
	l	%r3,136(%r11)	#, scan
	ahi	%r3,1	#,
	st	%r3,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp204, scan
	ic	%r1,0(%r1)	# D.4249,
	n	%r1,.L489-.L485(%r13)	# D.4250,
	c	%r1,132(%r11)	# D.4250, prev
	jne	.L466	#,
	l	%r1,124(%r11)	# tmp205, s
	l	%r2,56(%r1)	# D.4251, <variable>.window
	l	%r1,124(%r11)	# tmp206, s
	l	%r1,108(%r1)	# D.4252, <variable>.strstart
	ahi	%r1,258	# D.4253,
	lr	%r3,%r2	#, D.4251
	ar	%r3,%r1	#, D.4253
	st	%r3,140(%r11)	#, strend
.L468:
	l	%r1,136(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp207, scan
	ic	%r1,0(%r1)	# D.4254,
	n	%r1,.L489-.L485(%r13)	# D.4255,
	c	%r1,132(%r11)	# D.4255, prev
	jne	.L467	#,
	l	%r2,136(%r11)	#, scan
	ahi	%r2,1	#,
	st	%r2,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp208, scan
	ic	%r1,0(%r1)	# D.4256,
	n	%r1,.L489-.L485(%r13)	# D.4257,
	c	%r1,132(%r11)	# D.4257, prev
	jne	.L467	#,
	l	%r3,136(%r11)	#, scan
	ahi	%r3,1	#,
	st	%r3,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp209, scan
	ic	%r1,0(%r1)	# D.4258,
	n	%r1,.L489-.L485(%r13)	# D.4259,
	c	%r1,132(%r11)	# D.4259, prev
	jne	.L467	#,
	l	%r1,136(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp210, scan
	ic	%r1,0(%r1)	# D.4260,
	n	%r1,.L489-.L485(%r13)	# D.4261,
	c	%r1,132(%r11)	# D.4261, prev
	jne	.L467	#,
	l	%r2,136(%r11)	#, scan
	ahi	%r2,1	#,
	st	%r2,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp211, scan
	ic	%r1,0(%r1)	# D.4262,
	n	%r1,.L489-.L485(%r13)	# D.4263,
	c	%r1,132(%r11)	# D.4263, prev
	jne	.L467	#,
	l	%r3,136(%r11)	#, scan
	ahi	%r3,1	#,
	st	%r3,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp212, scan
	ic	%r1,0(%r1)	# D.4264,
	n	%r1,.L489-.L485(%r13)	# D.4265,
	c	%r1,132(%r11)	# D.4265, prev
	jne	.L467	#,
	l	%r1,136(%r11)	#, scan
	ahi	%r1,1	#,
	st	%r1,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp213, scan
	ic	%r1,0(%r1)	# D.4266,
	n	%r1,.L489-.L485(%r13)	# D.4267,
	c	%r1,132(%r11)	# D.4267, prev
	jne	.L467	#,
	l	%r2,136(%r11)	#, scan
	ahi	%r2,1	#,
	st	%r2,136(%r11)	#, scan
	l	%r1,136(%r11)	# tmp214, scan
	ic	%r1,0(%r1)	# D.4268,
	n	%r1,.L489-.L485(%r13)	# D.4269,
	c	%r1,132(%r11)	# D.4269, prev
	jne	.L467	#,
	l	%r1,136(%r11)	# tmp215, scan
	cl	%r1,140(%r11)	# tmp215, strend
	jl	.L468	#,
.L467:
	l	%r2,136(%r11)	# scan.59, scan
	l	%r1,140(%r11)	# strend.60, strend
	lr	%r3,%r2	#, scan.59
	sr	%r3,%r1	#, strend.60
	lr	%r1,%r3	# D.4272,
	ahi	%r1,258	# D.4273,
	lr	%r2,%r1	# D.4274, D.4273
	l	%r1,124(%r11)	# tmp216, s
	st	%r2,96(%r1)	# D.4274, <variable>.match_length
	l	%r1,124(%r11)	# tmp217, s
	l	%r2,96(%r1)	# D.4275, <variable>.match_length
	l	%r1,124(%r11)	# tmp218, s
	l	%r1,116(%r1)	# D.4276, <variable>.lookahead
	clr	%r2,%r1	# D.4275, D.4276
	jle	.L466	#,
	l	%r1,124(%r11)	# tmp219, s
	l	%r2,116(%r1)	# D.4277, <variable>.lookahead
	l	%r1,124(%r11)	# tmp220, s
	st	%r2,96(%r1)	# D.4277, <variable>.match_length
.L466:
	l	%r1,124(%r11)	# tmp221, s
	l	%r1,96(%r1)	# D.4278, <variable>.match_length
	cl	%r1,.L488-.L485(%r13)	# D.4278,
	jle	.L469	#,
	l	%r1,124(%r11)	# tmp222, s
	l	%r1,96(%r1)	# D.4279, <variable>.match_length
	ahi	%r1,-3	# tmp223,
	stc	%r1,147(%r11)	# tmp223, len
	lhi	%r1,1	#,
	sth	%r1,148(%r11)	#, dist
	l	%r2,124(%r11)	# tmp224, s
	lhi	%r1,4096	# tmp225,
	l	%r3,1700(%r1,%r2)	# D.4281, <variable>.d_buf
	l	%r2,124(%r11)	# tmp227, s
	lhi	%r1,4096	# tmp228,
	l	%r1,1696(%r1,%r2)	# D.4282, <variable>.last_lit
	sll	%r1,1	# D.4283,
	ar	%r1,%r3	# D.4284, D.4281
	lh	%r2,148(%r11)	#, dist
	sth	%r2,0(%r1)	#,* D.4284
	l	%r2,124(%r11)	# tmp230, s
	lhi	%r1,4096	# tmp231,
	l	%r3,1688(%r1,%r2)	# D.4285, <variable>.l_buf
	l	%r2,124(%r11)	# tmp233, s
	lhi	%r1,4096	# tmp234,
	l	%r2,1696(%r1,%r2)	# D.4286, <variable>.last_lit
	lr	%r1,%r3	# D.4288, D.4285
	ar	%r1,%r2	# D.4288, D.4286
	ic	%r3,147(%r11)	#, len
	stc	%r3,0(%r1)	#,* D.4288
	lr	%r3,%r2	# D.4287, D.4286
	ahi	%r3,1	# D.4287,
	l	%r2,124(%r11)	# tmp236, s
	lhi	%r1,4096	# tmp237,
	st	%r3,1696(%r1,%r2)	# D.4287, <variable>.last_lit
	lh	%r1,148(%r11)	# tmp239, dist
	ahi	%r1,-1	# tmp240,
	sth	%r1,148(%r11)	# tmp240, dist
	ic	%r1,147(%r11)	# tmp241, len
	lhi	%r2,255	# D.4289,
	nr	%r2,%r1	# D.4289, tmp241
	l	%r1,.L490-.L485(%r13)	# tmp242,
	ic	%r1,0(%r2,%r1)	# D.4290, _length_code
	n	%r1,.L489-.L485(%r13)	# D.4291,
	lr	%r4,%r1	# D.4292, D.4291
	ahi	%r4,257	# D.4292,
	l	%r2,124(%r11)	# tmp243, s
	lr	%r1,%r4	# tmp244, D.4292
	ahi	%r1,36	# tmp244,
	sll	%r1,2	# tmp245,
	lh	%r1,4(%r1,%r2)	# D.4293, <variable>.fc.freq
	ahi	%r1,1	# tmp246,
	lr	%r3,%r1	# D.4294, tmp246
	l	%r2,124(%r11)	# tmp247, s
	lr	%r1,%r4	# tmp248, D.4292
	ahi	%r1,36	# tmp248,
	sll	%r1,2	# tmp249,
	sth	%r3,4(%r1,%r2)	# D.4294, <variable>.fc.freq
	lh	%r1,148(%r11)	# tmp251, dist
	n	%r1,.L491-.L485(%r13)	# tmp250,
	cl	%r1,.L489-.L485(%r13)	# tmp250,
	jh	.L470	#,
	lh	%r1,148(%r11)	# tmp252, dist
	lr	%r2,%r1	# D.4296,
	n	%r2,.L491-.L485(%r13)	# D.4296,
	l	%r1,.L492-.L485(%r13)	# tmp253,
	ic	%r1,0(%r2,%r1)	# D.4297, _dist_code
	lhi	%r2,255	#,
	nr	%r2,%r1	#, D.4297
	st	%r2,104(%r11)	#, iftmp.61
	j	.L471	#
.L470:
	lh	%r1,148(%r11)	# tmp255, dist
	n	%r1,.L491-.L485(%r13)	# tmp254,
	srl	%r1,7	# tmp256,
	n	%r1,.L491-.L485(%r13)	# D.4299,
	lr	%r2,%r1	# D.4300, D.4299
	ahi	%r2,256	# D.4300,
	l	%r1,.L492-.L485(%r13)	# tmp257,
	ic	%r1,0(%r2,%r1)	# D.4301, _dist_code
	lhi	%r3,255	#,
	nr	%r3,%r1	#, D.4301
	st	%r3,104(%r11)	#, iftmp.61
.L471:
	l	%r4,104(%r11)	# iftmp.62, iftmp.61
	l	%r2,124(%r11)	# tmp258, s
	lr	%r1,%r4	# tmp259, iftmp.62
	ahi	%r1,610	# tmp259,
	sll	%r1,2	# tmp260,
	lh	%r1,0(%r1,%r2)	# D.4303, <variable>.fc.freq
	ahi	%r1,1	# tmp261,
	lr	%r3,%r1	# D.4304, tmp261
	l	%r2,124(%r11)	# tmp262, s
	lr	%r1,%r4	# tmp263, iftmp.62
	ahi	%r1,610	# tmp263,
	sll	%r1,2	# tmp264,
	sth	%r3,0(%r1,%r2)	# D.4304, <variable>.fc.freq
	l	%r2,124(%r11)	# tmp265, s
	lhi	%r1,4096	# tmp266,
	l	%r3,1696(%r1,%r2)	# D.4305, <variable>.last_lit
	l	%r2,124(%r11)	# tmp268, s
	lhi	%r1,4096	# tmp269,
	l	%r1,1692(%r1,%r2)	# D.4306, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4307,
	xr	%r1,%r3	# tmp272, D.4305
	st	%r1,128(%r11)	# tmp272, bflush
	l	%r1,128(%r11)	# tmp275, bflush
	lpr	%r1,%r1	# tmp276, tmp275
	lr	%r2,%r1	#, tmp276
	ahi	%r2,-1	#,
	st	%r2,128(%r11)	#, bflush
	l	%r1,128(%r11)	# tmp277, bflush
	srl	%r1,31	# tmp278,
	st	%r1,128(%r11)	# tmp278, bflush
	l	%r1,124(%r11)	# tmp279, s
	l	%r2,116(%r1)	# D.4308, <variable>.lookahead
	l	%r1,124(%r11)	# tmp280, s
	l	%r1,96(%r1)	# D.4309, <variable>.match_length
	sr	%r2,%r1	# D.4310, D.4309
	l	%r1,124(%r11)	# tmp281, s
	st	%r2,116(%r1)	# D.4310, <variable>.lookahead
	l	%r1,124(%r11)	# tmp282, s
	l	%r2,108(%r1)	# D.4311, <variable>.strstart
	l	%r1,124(%r11)	# tmp283, s
	l	%r1,96(%r1)	# D.4312, <variable>.match_length
	ar	%r2,%r1	# D.4313, D.4312
	l	%r1,124(%r11)	# tmp284, s
	st	%r2,108(%r1)	# D.4313, <variable>.strstart
	l	%r1,124(%r11)	# tmp285, s
	lhi	%r3,0	#,
	st	%r3,96(%r1)	#, <variable>.match_length
	j	.L472	#
.L469:
	l	%r1,124(%r11)	# tmp286, s
	l	%r2,56(%r1)	# D.4314, <variable>.window
	l	%r1,124(%r11)	# tmp287, s
	l	%r1,108(%r1)	# D.4315, <variable>.strstart
	ar	%r1,%r2	# D.4316, D.4314
	ic	%r2,0(%r1)	#,* D.4316
	stc	%r2,151(%r11)	#, cc
	l	%r2,124(%r11)	# tmp288, s
	lhi	%r1,4096	# tmp289,
	l	%r3,1700(%r1,%r2)	# D.4317, <variable>.d_buf
	l	%r2,124(%r11)	# tmp291, s
	lhi	%r1,4096	# tmp292,
	l	%r1,1696(%r1,%r2)	# D.4318, <variable>.last_lit
	sll	%r1,1	# D.4319,
	ar	%r1,%r3	# D.4320, D.4317
	lhi	%r3,0	#,
	sth	%r3,0(%r1)	#,* D.4320
	l	%r2,124(%r11)	# tmp294, s
	lhi	%r1,4096	# tmp295,
	l	%r3,1688(%r1,%r2)	# D.4321, <variable>.l_buf
	l	%r2,124(%r11)	# tmp297, s
	lhi	%r1,4096	# tmp298,
	l	%r2,1696(%r1,%r2)	# D.4322, <variable>.last_lit
	lr	%r1,%r3	# D.4324, D.4321
	ar	%r1,%r2	# D.4324, D.4322
	ic	%r3,151(%r11)	#, cc
	stc	%r3,0(%r1)	#,* D.4324
	lr	%r3,%r2	# D.4323, D.4322
	ahi	%r3,1	# D.4323,
	l	%r2,124(%r11)	# tmp300, s
	lhi	%r1,4096	# tmp301,
	st	%r3,1696(%r1,%r2)	# D.4323, <variable>.last_lit
	ic	%r1,151(%r11)	# tmp303, cc
	lhi	%r4,255	# D.4325,
	nr	%r4,%r1	# D.4325, tmp303
	l	%r2,124(%r11)	# tmp304, s
	lr	%r1,%r4	# tmp305, D.4325
	ahi	%r1,36	# tmp305,
	sll	%r1,2	# tmp306,
	lh	%r1,4(%r1,%r2)	# D.4326, <variable>.fc.freq
	ahi	%r1,1	# tmp307,
	lr	%r3,%r1	# D.4327, tmp307
	l	%r2,124(%r11)	# tmp308, s
	lr	%r1,%r4	# tmp309, D.4325
	ahi	%r1,36	# tmp309,
	sll	%r1,2	# tmp310,
	sth	%r3,4(%r1,%r2)	# D.4327, <variable>.fc.freq
	l	%r2,124(%r11)	# tmp311, s
	lhi	%r1,4096	# tmp312,
	l	%r3,1696(%r1,%r2)	# D.4328, <variable>.last_lit
	l	%r2,124(%r11)	# tmp314, s
	lhi	%r1,4096	# tmp315,
	l	%r1,1692(%r1,%r2)	# D.4329, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4330,
	xr	%r1,%r3	# tmp318, D.4328
	st	%r1,128(%r11)	# tmp318, bflush
	l	%r1,128(%r11)	# tmp321, bflush
	lpr	%r1,%r1	# tmp322, tmp321
	lr	%r2,%r1	#, tmp322
	ahi	%r2,-1	#,
	st	%r2,128(%r11)	#, bflush
	l	%r1,128(%r11)	# tmp323, bflush
	srl	%r1,31	# tmp324,
	st	%r1,128(%r11)	# tmp324, bflush
	l	%r1,124(%r11)	# tmp325, s
	l	%r1,116(%r1)	# D.4331, <variable>.lookahead
	lr	%r2,%r1	# D.4332, D.4331
	ahi	%r2,-1	# D.4332,
	l	%r1,124(%r11)	# tmp326, s
	st	%r2,116(%r1)	# D.4332, <variable>.lookahead
	l	%r1,124(%r11)	# tmp327, s
	l	%r1,108(%r1)	# D.4333, <variable>.strstart
	lr	%r2,%r1	# D.4334, D.4333
	ahi	%r2,1	# D.4334,
	l	%r1,124(%r11)	# tmp328, s
	st	%r2,108(%r1)	# D.4334, <variable>.strstart
.L472:
	l	%r1,128(%r11)	# tmp329, bflush
	ltr	%r1,%r1	# tmp329
	je	.L476	#,
	l	%r1,124(%r11)	# tmp330, s
	l	%r1,92(%r1)	# D.4336, <variable>.block_start
	ltr	%r1,%r1	# D.4336
	jl	.L474	#,
	l	%r1,124(%r11)	# tmp331, s
	l	%r2,56(%r1)	# D.4337, <variable>.window
	l	%r1,124(%r11)	# tmp332, s
	l	%r1,92(%r1)	# D.4338, <variable>.block_start
	lr	%r3,%r2	#, D.4337
	ar	%r3,%r1	#, D.4339
	st	%r3,108(%r11)	#, iftmp.63
	j	.L475	#
.L474:
	lhi	%r1,0	#,
	st	%r1,108(%r11)	#, iftmp.63
.L475:
	l	%r1,124(%r11)	# tmp333, s
	l	%r1,108(%r1)	# D.4340, <variable>.strstart
	lr	%r2,%r1	# D.4341, D.4340
	l	%r1,124(%r11)	# tmp334, s
	l	%r1,92(%r1)	# D.4342, <variable>.block_start
	lr	%r3,%r2	#, D.4341
	sr	%r3,%r1	#, D.4342
	lr	%r1,%r3	# D.4343,
	l	%r2,124(%r11)	#, s
	l	%r3,108(%r11)	#, iftmp.63
	lr	%r4,%r1	#, D.4344
	lhi	%r5,0	#,
	l	%r1,.L493-.L485(%r13)	# tmp335,
	basr	%r14,%r1	#, tmp335
	l	%r1,124(%r11)	# tmp336, s
	l	%r1,108(%r1)	# D.4345, <variable>.strstart
	lr	%r2,%r1	# D.4346, D.4345
	l	%r1,124(%r11)	# tmp337, s
	st	%r2,92(%r1)	# D.4346, <variable>.block_start
	l	%r1,124(%r11)	# tmp338, s
	l	%r1,0(%r1)	# D.4347, <variable>.strm
	lr	%r2,%r1	#, D.4347
	l	%r1,.L494-.L485(%r13)	# tmp339,
	basr	%r14,%r1	#, tmp339
	l	%r1,124(%r11)	# tmp340, s
	l	%r1,0(%r1)	# D.4348, <variable>.strm
	l	%r1,16(%r1)	# D.4349, <variable>.avail_out
	ltr	%r1,%r1	# D.4349
	jne	.L476	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.4237
	j	.L464	#
.L465:
	l	%r2,124(%r11)	# tmp341, s
	lhi	%r1,4096	# tmp342,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,120(%r11)	# tmp344, flush
	chi	%r1,4	# tmp344,
	jne	.L477	#,
	l	%r1,124(%r11)	# tmp345, s
	l	%r1,92(%r1)	# D.4351, <variable>.block_start
	ltr	%r1,%r1	# D.4351
	jl	.L478	#,
	l	%r1,124(%r11)	# tmp346, s
	l	%r2,56(%r1)	# D.4352, <variable>.window
	l	%r1,124(%r11)	# tmp347, s
	l	%r1,92(%r1)	# D.4353, <variable>.block_start
	lr	%r3,%r2	#, D.4352
	ar	%r3,%r1	#, D.4354
	st	%r3,112(%r11)	#, iftmp.64
	j	.L479	#
.L478:
	lhi	%r1,0	#,
	st	%r1,112(%r11)	#, iftmp.64
.L479:
	l	%r1,124(%r11)	# tmp348, s
	l	%r1,108(%r1)	# D.4355, <variable>.strstart
	lr	%r2,%r1	# D.4356, D.4355
	l	%r1,124(%r11)	# tmp349, s
	l	%r1,92(%r1)	# D.4357, <variable>.block_start
	lr	%r3,%r2	#, D.4356
	sr	%r3,%r1	#, D.4357
	lr	%r1,%r3	# D.4358,
	l	%r2,124(%r11)	#, s
	l	%r3,112(%r11)	#, iftmp.64
	lr	%r4,%r1	#, D.4359
	lhi	%r5,1	#,
	l	%r1,.L493-.L485(%r13)	# tmp350,
	basr	%r14,%r1	#, tmp350
	l	%r1,124(%r11)	# tmp351, s
	l	%r1,108(%r1)	# D.4360, <variable>.strstart
	lr	%r2,%r1	# D.4361, D.4360
	l	%r1,124(%r11)	# tmp352, s
	st	%r2,92(%r1)	# D.4361, <variable>.block_start
	l	%r1,124(%r11)	# tmp353, s
	l	%r1,0(%r1)	# D.4362, <variable>.strm
	lr	%r2,%r1	#, D.4362
	l	%r1,.L494-.L485(%r13)	# tmp354,
	basr	%r14,%r1	#, tmp354
	l	%r1,124(%r11)	# tmp355, s
	l	%r1,0(%r1)	# D.4363, <variable>.strm
	l	%r1,16(%r1)	# D.4364, <variable>.avail_out
	ltr	%r1,%r1	# D.4364
	jne	.L480	#,
	lhi	%r1,2	#,
	st	%r1,100(%r11)	#, D.4237
	j	.L464	#
.L480:
	lhi	%r2,3	#,
	st	%r2,100(%r11)	#, D.4237
	j	.L464	#
.L477:
	l	%r2,124(%r11)	# tmp356, s
	lhi	%r1,4096	# tmp357,
	l	%r1,1696(%r1,%r2)	# D.4365, <variable>.last_lit
	ltr	%r1,%r1	# D.4365
	je	.L481	#,
	l	%r1,124(%r11)	# tmp359, s
	l	%r1,92(%r1)	# D.4367, <variable>.block_start
	ltr	%r1,%r1	# D.4367
	jl	.L482	#,
	l	%r1,124(%r11)	# tmp360, s
	l	%r2,56(%r1)	# D.4368, <variable>.window
	l	%r1,124(%r11)	# tmp361, s
	l	%r1,92(%r1)	# D.4369, <variable>.block_start
	lr	%r3,%r2	#, D.4368
	ar	%r3,%r1	#, D.4370
	st	%r3,116(%r11)	#, iftmp.65
	j	.L483	#
.L482:
	lhi	%r1,0	#,
	st	%r1,116(%r11)	#, iftmp.65
.L483:
	l	%r1,124(%r11)	# tmp362, s
	l	%r1,108(%r1)	# D.4371, <variable>.strstart
	lr	%r2,%r1	# D.4372, D.4371
	l	%r1,124(%r11)	# tmp363, s
	l	%r1,92(%r1)	# D.4373, <variable>.block_start
	lr	%r3,%r2	#, D.4372
	sr	%r3,%r1	#, D.4373
	lr	%r1,%r3	# D.4374,
	l	%r2,124(%r11)	#, s
	l	%r3,116(%r11)	#, iftmp.65
	lr	%r4,%r1	#, D.4375
	lhi	%r5,0	#,
	l	%r1,.L493-.L485(%r13)	# tmp364,
	basr	%r14,%r1	#, tmp364
	l	%r1,124(%r11)	# tmp365, s
	l	%r1,108(%r1)	# D.4376, <variable>.strstart
	lr	%r2,%r1	# D.4377, D.4376
	l	%r1,124(%r11)	# tmp366, s
	st	%r2,92(%r1)	# D.4377, <variable>.block_start
	l	%r1,124(%r11)	# tmp367, s
	l	%r1,0(%r1)	# D.4378, <variable>.strm
	lr	%r2,%r1	#, D.4378
	l	%r1,.L494-.L485(%r13)	# tmp368,
	basr	%r14,%r1	#, tmp368
	l	%r1,124(%r11)	# tmp369, s
	l	%r1,0(%r1)	# D.4379, <variable>.strm
	l	%r1,16(%r1)	# D.4380, <variable>.avail_out
	ltr	%r1,%r1	# D.4380
	jne	.L481	#,
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, D.4237
	j	.L464	#
.L481:
	lhi	%r2,1	#,
	st	%r2,100(%r11)	#, D.4237
.L464:
	l	%r1,100(%r11)	# <result>, D.4237
	lr	%r2,%r1	#, <result>
	l	%r4,208(%r11)	#,
	lm	%r11,%r15,196(%r11)	#,,
	br	%r4	#
	.align	4	#
.L494:
	.long	flush_pending
.L493:
	.long	_tr_flush_block
.L492:
	.long	_dist_code
.L491:
	.long	65535
.L490:
	.long	_length_code
.L489:
	.long	255
.L488:
	.long	2
.L487:
	.long	fill_window
.L486:
	.long	258
	.align	2	#
.LFE25:
	.size	deflate_rle, .-deflate_rle
	.align	4
	.type	deflate_huff, @function
deflate_huff:
.LFB26:
	stm	%r11,%r15,44(%r15)	#,,
.LCFI72:
	basr	%r13,0	#
.L513:
	ahi	%r15,-128	#,
.LCFI73:
	lr	%r11,%r15	#,
.LCFI74:
	st	%r2,116(%r11)	# s, s
	st	%r3,112(%r11)	# flush, flush
.L504:
	l	%r1,116(%r11)	# tmp114, s
	l	%r1,116(%r1)	# D.4444, <variable>.lookahead
	ltr	%r1,%r1	# D.4444
	jne	.L496	#,
	l	%r2,116(%r11)	#, s
	l	%r1,.L514-.L513(%r13)	# tmp115,
	basr	%r14,%r1	#, tmp115
	l	%r1,116(%r11)	# tmp116, s
	l	%r1,116(%r1)	# D.4445, <variable>.lookahead
	ltr	%r1,%r1	# D.4445
	jne	.L496	#,
	l	%r1,112(%r11)	# tmp117, flush
	ltr	%r1,%r1	# tmp117
	jne	.L497	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.4446
	j	.L498	#
.L497:
	l	%r2,116(%r11)	# tmp118, s
	lhi	%r1,4096	# tmp119,
	lhi	%r3,0	#,
	st	%r3,1716(%r1,%r2)	#, <variable>.insert
	l	%r1,112(%r11)	# tmp121, flush
	chi	%r1,4	# tmp121,
	je	.L499	#,
	j	.L512	#
.L496:
	l	%r1,116(%r11)	# tmp122, s
	lhi	%r2,0	#,
	st	%r2,96(%r1)	#, <variable>.match_length
	l	%r1,116(%r11)	# tmp123, s
	l	%r2,56(%r1)	# D.4447, <variable>.window
	l	%r1,116(%r11)	# tmp124, s
	l	%r1,108(%r1)	# D.4448, <variable>.strstart
	ar	%r1,%r2	# D.4449, D.4447
	ic	%r3,0(%r1)	#,* D.4449
	stc	%r3,127(%r11)	#, cc
	l	%r2,116(%r11)	# tmp125, s
	lhi	%r1,4096	# tmp126,
	l	%r3,1700(%r1,%r2)	# D.4450, <variable>.d_buf
	l	%r2,116(%r11)	# tmp128, s
	lhi	%r1,4096	# tmp129,
	l	%r1,1696(%r1,%r2)	# D.4451, <variable>.last_lit
	sll	%r1,1	# D.4452,
	ar	%r1,%r3	# D.4453, D.4450
	lhi	%r2,0	#,
	sth	%r2,0(%r1)	#,* D.4453
	l	%r2,116(%r11)	# tmp131, s
	lhi	%r1,4096	# tmp132,
	l	%r3,1688(%r1,%r2)	# D.4454, <variable>.l_buf
	l	%r2,116(%r11)	# tmp134, s
	lhi	%r1,4096	# tmp135,
	l	%r2,1696(%r1,%r2)	# D.4455, <variable>.last_lit
	lr	%r1,%r3	# D.4457, D.4454
	ar	%r1,%r2	# D.4457, D.4455
	ic	%r3,127(%r11)	#, cc
	stc	%r3,0(%r1)	#,* D.4457
	lr	%r3,%r2	# D.4456, D.4455
	ahi	%r3,1	# D.4456,
	l	%r2,116(%r11)	# tmp137, s
	lhi	%r1,4096	# tmp138,
	st	%r3,1696(%r1,%r2)	# D.4456, <variable>.last_lit
	ic	%r1,127(%r11)	# tmp140, cc
	lhi	%r4,255	# D.4458,
	nr	%r4,%r1	# D.4458, tmp140
	l	%r2,116(%r11)	# tmp141, s
	lr	%r1,%r4	# tmp142, D.4458
	ahi	%r1,36	# tmp142,
	sll	%r1,2	# tmp143,
	lh	%r1,4(%r1,%r2)	# D.4459, <variable>.fc.freq
	ahi	%r1,1	# tmp144,
	lr	%r3,%r1	# D.4460, tmp144
	l	%r2,116(%r11)	# tmp145, s
	lr	%r1,%r4	# tmp146, D.4458
	ahi	%r1,36	# tmp146,
	sll	%r1,2	# tmp147,
	sth	%r3,4(%r1,%r2)	# D.4460, <variable>.fc.freq
	l	%r2,116(%r11)	# tmp148, s
	lhi	%r1,4096	# tmp149,
	l	%r3,1696(%r1,%r2)	# D.4461, <variable>.last_lit
	l	%r2,116(%r11)	# tmp151, s
	lhi	%r1,4096	# tmp152,
	l	%r1,1692(%r1,%r2)	# D.4462, <variable>.lit_bufsize
	ahi	%r1,-1	# D.4463,
	xr	%r1,%r3	# tmp155, D.4461
	st	%r1,120(%r11)	# tmp155, bflush
	l	%r1,120(%r11)	# tmp158, bflush
	lpr	%r1,%r1	# tmp159, tmp158
	lr	%r2,%r1	#, tmp159
	ahi	%r2,-1	#,
	st	%r2,120(%r11)	#, bflush
	l	%r1,120(%r11)	# tmp160, bflush
	srl	%r1,31	# tmp161,
	st	%r1,120(%r11)	# tmp161, bflush
	l	%r1,116(%r11)	# tmp162, s
	l	%r1,116(%r1)	# D.4464, <variable>.lookahead
	lr	%r2,%r1	# D.4465, D.4464
	ahi	%r2,-1	# D.4465,
	l	%r1,116(%r11)	# tmp163, s
	st	%r2,116(%r1)	# D.4465, <variable>.lookahead
	l	%r1,116(%r11)	# tmp164, s
	l	%r1,108(%r1)	# D.4466, <variable>.strstart
	lr	%r2,%r1	# D.4467, D.4466
	ahi	%r2,1	# D.4467,
	l	%r1,116(%r11)	# tmp165, s
	st	%r2,108(%r1)	# D.4467, <variable>.strstart
	l	%r1,120(%r11)	# tmp166, bflush
	ltr	%r1,%r1	# tmp166
	je	.L504	#,
	l	%r1,116(%r11)	# tmp167, s
	l	%r1,92(%r1)	# D.4469, <variable>.block_start
	ltr	%r1,%r1	# D.4469
	jl	.L502	#,
	l	%r1,116(%r11)	# tmp168, s
	l	%r2,56(%r1)	# D.4470, <variable>.window
	l	%r1,116(%r11)	# tmp169, s
	l	%r1,92(%r1)	# D.4471, <variable>.block_start
	lr	%r3,%r2	#, D.4470
	ar	%r3,%r1	#, D.4472
	st	%r3,100(%r11)	#, iftmp.66
	j	.L503	#
.L502:
	lhi	%r1,0	#,
	st	%r1,100(%r11)	#, iftmp.66
.L503:
	l	%r1,116(%r11)	# tmp170, s
	l	%r1,108(%r1)	# D.4473, <variable>.strstart
	lr	%r2,%r1	# D.4474, D.4473
	l	%r1,116(%r11)	# tmp171, s
	l	%r1,92(%r1)	# D.4475, <variable>.block_start
	lr	%r3,%r2	#, D.4474
	sr	%r3,%r1	#, D.4475
	lr	%r1,%r3	# D.4476,
	l	%r2,116(%r11)	#, s
	l	%r3,100(%r11)	#, iftmp.66
	lr	%r4,%r1	#, D.4477
	lhi	%r5,0	#,
	l	%r1,.L515-.L513(%r13)	# tmp172,
	basr	%r14,%r1	#, tmp172
	l	%r1,116(%r11)	# tmp173, s
	l	%r1,108(%r1)	# D.4478, <variable>.strstart
	lr	%r2,%r1	# D.4479, D.4478
	l	%r1,116(%r11)	# tmp174, s
	st	%r2,92(%r1)	# D.4479, <variable>.block_start
	l	%r1,116(%r11)	# tmp175, s
	l	%r1,0(%r1)	# D.4480, <variable>.strm
	lr	%r2,%r1	#, D.4480
	l	%r1,.L516-.L513(%r13)	# tmp176,
	basr	%r14,%r1	#, tmp176
	l	%r1,116(%r11)	# tmp177, s
	l	%r1,0(%r1)	# D.4481, <variable>.strm
	l	%r1,16(%r1)	# D.4482, <variable>.avail_out
	ltr	%r1,%r1	# D.4482
	jne	.L504	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.4446
	j	.L498	#
.L499:
	l	%r1,116(%r11)	# tmp178, s
	l	%r1,92(%r1)	# D.4484, <variable>.block_start
	ltr	%r1,%r1	# D.4484
	jl	.L505	#,
	l	%r1,116(%r11)	# tmp179, s
	l	%r2,56(%r1)	# D.4485, <variable>.window
	l	%r1,116(%r11)	# tmp180, s
	l	%r1,92(%r1)	# D.4486, <variable>.block_start
	lr	%r3,%r2	#, D.4485
	ar	%r3,%r1	#, D.4487
	st	%r3,104(%r11)	#, iftmp.67
	j	.L506	#
.L505:
	lhi	%r1,0	#,
	st	%r1,104(%r11)	#, iftmp.67
.L506:
	l	%r1,116(%r11)	# tmp181, s
	l	%r1,108(%r1)	# D.4488, <variable>.strstart
	lr	%r2,%r1	# D.4489, D.4488
	l	%r1,116(%r11)	# tmp182, s
	l	%r1,92(%r1)	# D.4490, <variable>.block_start
	lr	%r3,%r2	#, D.4489
	sr	%r3,%r1	#, D.4490
	lr	%r1,%r3	# D.4491,
	l	%r2,116(%r11)	#, s
	l	%r3,104(%r11)	#, iftmp.67
	lr	%r4,%r1	#, D.4492
	lhi	%r5,1	#,
	l	%r1,.L515-.L513(%r13)	# tmp183,
	basr	%r14,%r1	#, tmp183
	l	%r1,116(%r11)	# tmp184, s
	l	%r1,108(%r1)	# D.4493, <variable>.strstart
	lr	%r2,%r1	# D.4494, D.4493
	l	%r1,116(%r11)	# tmp185, s
	st	%r2,92(%r1)	# D.4494, <variable>.block_start
	l	%r1,116(%r11)	# tmp186, s
	l	%r1,0(%r1)	# D.4495, <variable>.strm
	lr	%r2,%r1	#, D.4495
	l	%r1,.L516-.L513(%r13)	# tmp187,
	basr	%r14,%r1	#, tmp187
	l	%r1,116(%r11)	# tmp188, s
	l	%r1,0(%r1)	# D.4496, <variable>.strm
	l	%r1,16(%r1)	# D.4497, <variable>.avail_out
	ltr	%r1,%r1	# D.4497
	jne	.L507	#,
	lhi	%r1,2	#,
	st	%r1,96(%r11)	#, D.4446
	j	.L498	#
.L507:
	lhi	%r2,3	#,
	st	%r2,96(%r11)	#, D.4446
	j	.L498	#
.L512:
	l	%r2,116(%r11)	# tmp189, s
	lhi	%r1,4096	# tmp190,
	l	%r1,1696(%r1,%r2)	# D.4498, <variable>.last_lit
	ltr	%r1,%r1	# D.4498
	je	.L508	#,
	l	%r1,116(%r11)	# tmp192, s
	l	%r1,92(%r1)	# D.4500, <variable>.block_start
	ltr	%r1,%r1	# D.4500
	jl	.L509	#,
	l	%r1,116(%r11)	# tmp193, s
	l	%r2,56(%r1)	# D.4501, <variable>.window
	l	%r1,116(%r11)	# tmp194, s
	l	%r1,92(%r1)	# D.4502, <variable>.block_start
	lr	%r3,%r2	#, D.4501
	ar	%r3,%r1	#, D.4503
	st	%r3,108(%r11)	#, iftmp.68
	j	.L510	#
.L509:
	lhi	%r1,0	#,
	st	%r1,108(%r11)	#, iftmp.68
.L510:
	l	%r1,116(%r11)	# tmp195, s
	l	%r1,108(%r1)	# D.4504, <variable>.strstart
	lr	%r2,%r1	# D.4505, D.4504
	l	%r1,116(%r11)	# tmp196, s
	l	%r1,92(%r1)	# D.4506, <variable>.block_start
	lr	%r3,%r2	#, D.4505
	sr	%r3,%r1	#, D.4506
	lr	%r1,%r3	# D.4507,
	l	%r2,116(%r11)	#, s
	l	%r3,108(%r11)	#, iftmp.68
	lr	%r4,%r1	#, D.4508
	lhi	%r5,0	#,
	l	%r1,.L515-.L513(%r13)	# tmp197,
	basr	%r14,%r1	#, tmp197
	l	%r1,116(%r11)	# tmp198, s
	l	%r1,108(%r1)	# D.4509, <variable>.strstart
	lr	%r2,%r1	# D.4510, D.4509
	l	%r1,116(%r11)	# tmp199, s
	st	%r2,92(%r1)	# D.4510, <variable>.block_start
	l	%r1,116(%r11)	# tmp200, s
	l	%r1,0(%r1)	# D.4511, <variable>.strm
	lr	%r2,%r1	#, D.4511
	l	%r1,.L516-.L513(%r13)	# tmp201,
	basr	%r14,%r1	#, tmp201
	l	%r1,116(%r11)	# tmp202, s
	l	%r1,0(%r1)	# D.4512, <variable>.strm
	l	%r1,16(%r1)	# D.4513, <variable>.avail_out
	ltr	%r1,%r1	# D.4513
	jne	.L508	#,
	lhi	%r1,0	#,
	st	%r1,96(%r11)	#, D.4446
	j	.L498	#
.L508:
	lhi	%r2,1	#,
	st	%r2,96(%r11)	#, D.4446
.L498:
	l	%r1,96(%r11)	# <result>, D.4446
	lr	%r2,%r1	#, <result>
	l	%r4,184(%r11)	#,
	lm	%r11,%r15,172(%r11)	#,,
	br	%r4	#
	.align	4	#
.L516:
	.long	flush_pending
.L515:
	.long	_tr_flush_block
.L514:
	.long	fill_window
	.align	2	#
.LFE26:
	.size	deflate_huff, .-deflate_huff
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
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x8a
	.uleb128 0xe
	.byte	0x89
	.uleb128 0xf
	.byte	0x88
	.uleb128 0x10
	.byte	0x87
	.uleb128 0x11
	.byte	0x86
	.uleb128 0x12
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE1:
.LSFDE3:
	.4byte	.LEFDE3-.LASFDE3
.LASFDE3:
	.4byte	.LASFDE3-.Lframe1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0xe8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE3:
.LSFDE5:
	.4byte	.LEFDE5-.LASFDE5
.LASFDE5:
	.4byte	.LASFDE5-.Lframe1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0xe8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE5:
.LSFDE7:
	.4byte	.LEFDE7-.LASFDE7
.LASFDE7:
	.4byte	.LASFDE7-.Lframe1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0xd8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE7:
.LSFDE9:
	.4byte	.LEFDE9-.LASFDE9
.LASFDE9:
	.4byte	.LASFDE9-.Lframe1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI12-.LFB6
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE9:
.LSFDE11:
	.4byte	.LEFDE11-.LASFDE11
.LASFDE11:
	.4byte	.LASFDE11-.Lframe1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI15-.LFB7
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE11:
.LSFDE13:
	.4byte	.LEFDE13-.LASFDE13
.LASFDE13:
	.4byte	.LASFDE13-.Lframe1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI18-.LFB8
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE13:
.LSFDE15:
	.4byte	.LEFDE15-.LASFDE15
.LASFDE15:
	.4byte	.LASFDE15-.Lframe1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI21-.LFB9
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0xd8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE15:
.LSFDE17:
	.4byte	.LEFDE17-.LASFDE17
.LASFDE17:
	.4byte	.LASFDE17-.Lframe1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI24-.LFB10
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE17:
.LSFDE19:
	.4byte	.LEFDE19-.LASFDE19
.LASFDE19:
	.4byte	.LASFDE19-.Lframe1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI27-.LFB11
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE19:
.LSFDE21:
	.4byte	.LEFDE21-.LASFDE21
.LASFDE21:
	.4byte	.LASFDE21-.Lframe1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI30-.LFB12
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0xf8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE21:
.LSFDE23:
	.4byte	.LEFDE23-.LASFDE23
.LASFDE23:
	.4byte	.LASFDE23-.Lframe1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI33-.LFB13
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0xc8
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE23:
.LSFDE25:
	.4byte	.LEFDE25-.LASFDE25
.LASFDE25:
	.4byte	.LASFDE25-.Lframe1
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI36-.LFB14
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE25:
.LSFDE27:
	.4byte	.LEFDE27-.LASFDE27
.LASFDE27:
	.4byte	.LASFDE27-.Lframe1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI39-.LFB15
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x180
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE27:
.LSFDE29:
	.4byte	.LEFDE29-.LASFDE29
.LASFDE29:
	.4byte	.LASFDE29-.Lframe1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI42-.LFB16
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0xd8
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE29:
.LSFDE31:
	.4byte	.LEFDE31-.LASFDE31
.LASFDE31:
	.4byte	.LASFDE31-.Lframe1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI45-.LFB17
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE31:
.LSFDE33:
	.4byte	.LEFDE33-.LASFDE33
.LASFDE33:
	.4byte	.LASFDE33-.Lframe1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI48-.LFB18
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0xd8
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE33:
.LSFDE35:
	.4byte	.LEFDE35-.LASFDE35
.LASFDE35:
	.4byte	.LASFDE35-.Lframe1
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI51-.LFB19
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0xc8
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE35:
.LSFDE37:
	.4byte	.LEFDE37-.LASFDE37
.LASFDE37:
	.4byte	.LASFDE37-.Lframe1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI54-.LFB20
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x108
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE37:
.LSFDE39:
	.4byte	.LEFDE39-.LASFDE39
.LASFDE39:
	.4byte	.LASFDE39-.Lframe1
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI57-.LFB21
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0xf0
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE39:
.LSFDE41:
	.4byte	.LEFDE41-.LASFDE41
.LASFDE41:
	.4byte	.LASFDE41-.Lframe1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI60-.LFB22
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0xe8
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE41:
.LSFDE43:
	.4byte	.LEFDE43-.LASFDE43
.LASFDE43:
	.4byte	.LASFDE43-.Lframe1
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI63-.LFB23
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0xf0
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE43:
.LSFDE45:
	.4byte	.LEFDE45-.LASFDE45
.LASFDE45:
	.4byte	.LASFDE45-.Lframe1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI66-.LFB24
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x100
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE45:
.LSFDE47:
	.4byte	.LEFDE47-.LASFDE47
.LASFDE47:
	.4byte	.LASFDE47-.Lframe1
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI69-.LFB25
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0xf8
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE47:
.LSFDE49:
	.4byte	.LEFDE49-.LASFDE49
.LASFDE49:
	.4byte	.LASFDE49-.Lframe1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI72-.LFB26
	.byte	0x8f
	.uleb128 0x9
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8d
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0xb
	.align	4
.LEFDE49:
	.ident	"GCC: (SUSE Linux) 4.3.4 [gcc-4_3-branch revision 152973]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"ospWg"
	.section	.note.GNU-stack,"",@progbits
