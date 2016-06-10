   .file "pcre_byte_order.c"

   .section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
   .section .debug_info,"",@progbits
.Ldebug_info0:
   .section .debug_line,"",@progbits
.Ldebug_line0:
.text
.Ltext0:
# Compiler executable checksum: 508d862eaf4205b444fc28fd448263b4

   .align   4
   .type swap_uint32, @function
swap_uint32:
   .file 1 "pcre_byte_order.c"
   .loc 1 68 0
   stm   %r11,%r15,44(%r15)   #,,
.LCFI0:
   basr  %r5,0 #
.L3:
   ahi   %r15,-104   #,
.LCFI1:
   lr %r11,%r15   #,
.LCFI2:
   st %r2,100(%r11)  # value, value
   .loc 1 69 0
   l  %r1,100(%r11)  # tmp53, value
   lr %r2,%r1  # D.2836, tmp53
   sll   %r2,24   # D.2836,
   l  %r1,100(%r11)  # D.2837, value
   n  %r1,.L4-.L3(%r5)  # D.2837,
   sll   %r1,8 # D.2838,
   or %r2,%r1  # D.2839, D.2838
   l  %r1,100(%r11)  # D.2840, value
   n  %r1,.L5-.L3(%r5)  # D.2840,
   srl   %r1,8 # D.2841,
   or %r2,%r1  # D.2842, D.2841
   l  %r1,100(%r11)  # tmp54, value
   srl   %r1,24   # D.2843,
   or %r1,%r2  # D.2835, D.2842
   .loc 1 73 0
   lr %r2,%r1  #, <result>
   l  %r4,160(%r11)  #,
   lm %r11,%r15,148(%r11)  #,,
   br %r4   #
   .align   4  #
.L5:
   .long 16711680
.L4:
   .long 65280
   .align   2  #
.LFE2:
   .size swap_uint32, .-swap_uint32
   .align   4
   .type swap_uint16, @function
swap_uint16:
.LFB3:
   .loc 1 77 0
   stm   %r11,%r15,44(%r15)   #,,
.LCFI3:
   basr  %r5,0 #
.L8:
   ahi   %r15,-104   #,
.LCFI4:
   lr %r11,%r15   #,
.LCFI5:
   lr %r1,%r2  # tmp51, value
   sth   %r1,102(%r11)  # tmp51, value
   .loc 1 78 0
   lh %r1,102(%r11)  # tmp53, value
   n  %r1,.L9-.L8(%r5)  # tmp52,
   srl   %r1,8 # tmp54,
   lr %r2,%r1  # D.2850, D.2849
   lh %r1,102(%r11)  # tmp55, value
   n  %r1,.L9-.L8(%r5)  # D.2851,
   sll   %r1,8 # D.2852,
   or %r1,%r2  # D.2854, D.2850
   n  %r1,.L9-.L8(%r5)  # tmp57,
   .loc 1 79 0
   lr %r2,%r1  #, <result>
   l  %r4,160(%r11)  #,
   lm %r11,%r15,148(%r11)  #,,
   br %r4   #
   .align   4  #
.L9:
   .long 65535
   .align   2  #
.LFE3:
   .size swap_uint16, .-swap_uint16
   .align   4
.globl pcre_pattern_to_host_byte_order
   .type pcre_pattern_to_host_byte_order, @function
pcre_pattern_to_host_byte_order:
.LFB4:
   .loc 1 108 0
   stm   %r11,%r15,44(%r15)   #,,
.LCFI6:
   basr  %r13,0   #
.L19:
   ahi   %r15,-120   #,
.LCFI7:
   lr %r11,%r15   #,
.LCFI8:
   st %r2,108(%r11)  # argument_re, argument_re
   st %r3,104(%r11)  # extra_data, extra_data
   st %r4,100(%r11)  # tables, tables
   .loc 1 109 0
   l  %r1,108(%r11)  #, argument_re
   st %r1,112(%r11)  #, re
   .loc 1 120 0
   l  %r1,112(%r11)  # tmp91, re
   ltr   %r1,%r1  # tmp91
   jne   .L11  #,
   lhi   %r2,-2   #,
   st %r2,96(%r11)   #, D.2863
   j  .L12  #
.L11:
   .loc 1 121 0
   l  %r1,112(%r11)  # tmp92, re
   l  %r1,0(%r1)  # D.2864, <variable>.magic_number
   c  %r1,.L20-.L19(%r13)  # D.2864,
   jne   .L13  #,
   .loc 1 123 0
   l  %r1,112(%r11)  # tmp93, re
   l  %r1,12(%r1) # D.2865, <variable>.flags
   n  %r1,.L21-.L19(%r13)  # D.2866,
   ltr   %r1,%r1  # D.2866
   jne   .L14  #,
   lhi   %r1,-28  #,
   st %r1,96(%r11)   #, D.2863
   j  .L12  #
.L14:
   .loc 1 124 0
   l  %r1,112(%r11)  # tmp94, re
   l  %r2,100(%r11)  #, tables
   st %r2,48(%r1) #, <variable>.tables
   .loc 1 125 0
   lhi   %r1,0 #,
   st %r1,96(%r11)   #, D.2863
   j  .L12  #
.L13:
   .loc 1 128 0
   l  %r1,112(%r11)  # tmp95, re
   l  %r1,0(%r1)  # D.2867, <variable>.magic_number
   c  %r1,.L22-.L19(%r13)  # D.2867,
   je .L15  #,
   lhi   %r2,-4   #,
   st %r2,96(%r11)   #, D.2863
   j  .L12  #
.L15:
   .loc 1 129 0
   l  %r1,112(%r11)  # tmp96, re
   l  %r1,12(%r1) # D.2868, <variable>.flags
   lr %r2,%r1  #, D.2868
   l  %r1,.L23-.L19(%r13)  # tmp97,
   basr  %r14,%r1 #, tmp97
   lr %r1,%r2  # D.2869,
   n  %r1,.L21-.L19(%r13)  # D.2870,
   ltr   %r1,%r1  # D.2870
   jne   .L16  #,
   lhi   %r1,-28  #,
   st %r1,96(%r11)   #, D.2863
   j  .L12  #
.L16:
   .loc 1 131 0
   l  %r1,112(%r11)  # tmp98, re
   l  %r2,.L20-.L19(%r13)  #,
   st %r2,0(%r1)  #, <variable>.magic_number
   .loc 1 132 0
   l  %r1,112(%r11)  # tmp99, re
   l  %r1,4(%r1)  # D.2871, <variable>.size
   lr %r2,%r1  #, D.2871
   l  %r1,.L23-.L19(%r13)  # tmp100,
   basr  %r14,%r1 #, tmp100
   l  %r1,112(%r11)  # tmp101, re
   st %r2,4(%r1)  # D.2872, <variable>.size
   .loc 1 133 0
   l  %r1,112(%r11)  # tmp102, re
   l  %r1,8(%r1)  # D.2873, <variable>.options
   lr %r2,%r1  #, D.2873
   l  %r1,.L23-.L19(%r13)  # tmp103,
   basr  %r14,%r1 #, tmp103
   l  %r1,112(%r11)  # tmp104, re
   st %r2,8(%r1)  # D.2874, <variable>.options
   .loc 1 134 0
   l  %r1,112(%r11)  # tmp105, re
   l  %r1,12(%r1) # D.2875, <variable>.flags
   lr %r2,%r1  #, D.2875
   l  %r1,.L23-.L19(%r13)  # tmp106,
   basr  %r14,%r1 #, tmp106
   l  %r1,112(%r11)  # tmp107, re
   st %r2,12(%r1) # D.2876, <variable>.flags
   .loc 1 135 0
   l  %r1,112(%r11)  # tmp108, re
   l  %r1,16(%r1) # D.2877, <variable>.limit_match
   lr %r2,%r1  #, D.2877
   l  %r1,.L23-.L19(%r13)  # tmp109,
   basr  %r14,%r1 #, tmp109
   l  %r1,112(%r11)  # tmp110, re
   st %r2,16(%r1) # D.2878, <variable>.limit_match
   .loc 1 136 0
   l  %r1,112(%r11)  # tmp111, re
   l  %r1,20(%r1) # D.2879, <variable>.limit_recursion
   lr %r2,%r1  #, D.2879
   l  %r1,.L23-.L19(%r13)  # tmp112,
   basr  %r14,%r1 #, tmp112
   l  %r1,112(%r11)  # tmp113, re
   st %r2,20(%r1) # D.2880, <variable>.limit_recursion
   .loc 1 139 0
   l  %r1,112(%r11)  # tmp114, re
   lh %r1,24(%r1) # D.2881, <variable>.first_char
   n  %r1,.L24-.L19(%r13)  # tmp115,
   lr %r2,%r1  #, tmp115
   l  %r1,.L25-.L19(%r13)  # tmp116,
   basr  %r14,%r1 #, tmp116
   lr %r1,%r2  # tmp117,
   lr %r2,%r1  # D.2882, tmp117
   l  %r1,112(%r11)  # tmp118, re
   sth   %r2,24(%r1) # D.2882, <variable>.first_char
   .loc 1 140 0
   l  %r1,112(%r11)  # tmp119, re
   lh %r1,26(%r1) # D.2883, <variable>.req_char
   n  %r1,.L24-.L19(%r13)  # tmp120,
   lr %r2,%r1  #, tmp120
   l  %r1,.L25-.L19(%r13)  # tmp121,
   basr  %r14,%r1 #, tmp121
   lr %r1,%r2  # tmp122,
   lr %r2,%r1  # D.2884, tmp122
   l  %r1,112(%r11)  # tmp123, re
   sth   %r2,26(%r1) # D.2884, <variable>.req_char
   .loc 1 146 0
   l  %r1,112(%r11)  # tmp124, re
   lh %r1,28(%r1) # D.2885, <variable>.max_lookbehind
   n  %r1,.L24-.L19(%r13)  # tmp125,
   lr %r2,%r1  #, tmp125
   l  %r1,.L25-.L19(%r13)  # tmp126,
   basr  %r14,%r1 #, tmp126
   lr %r1,%r2  # tmp127,
   lr %r2,%r1  # D.2886, tmp127
   l  %r1,112(%r11)  # tmp128, re
   sth   %r2,28(%r1) # D.2886, <variable>.max_lookbehind
   .loc 1 147 0
   l  %r1,112(%r11)  # tmp129, re
   lh %r1,30(%r1) # D.2887, <variable>.top_bracket
   n  %r1,.L24-.L19(%r13)  # tmp130,
   lr %r2,%r1  #, tmp130
   l  %r1,.L25-.L19(%r13)  # tmp131,
   basr  %r14,%r1 #, tmp131
   lr %r1,%r2  # tmp132,
   lr %r2,%r1  # D.2888, tmp132
   l  %r1,112(%r11)  # tmp133, re
   sth   %r2,30(%r1) # D.2888, <variable>.top_bracket
   .loc 1 148 0
   l  %r1,112(%r11)  # tmp134, re
   lh %r1,32(%r1) # D.2889, <variable>.top_backref
   n  %r1,.L24-.L19(%r13)  # tmp135,
   lr %r2,%r1  #, tmp135
   l  %r1,.L25-.L19(%r13)  # tmp136,
   basr  %r14,%r1 #, tmp136
   lr %r1,%r2  # tmp137,
   lr %r2,%r1  # D.2890, tmp137
   l  %r1,112(%r11)  # tmp138, re
   sth   %r2,32(%r1) # D.2890, <variable>.top_backref
   .loc 1 149 0
   l  %r1,112(%r11)  # tmp139, re
   lh %r1,34(%r1) # D.2891, <variable>.name_table_offset
   n  %r1,.L24-.L19(%r13)  # tmp140,
   lr %r2,%r1  #, tmp140
   l  %r1,.L25-.L19(%r13)  # tmp141,
   basr  %r14,%r1 #, tmp141
   lr %r1,%r2  # tmp142,
   lr %r2,%r1  # D.2892, tmp142
   l  %r1,112(%r11)  # tmp143, re
   sth   %r2,34(%r1) # D.2892, <variable>.name_table_offset
   .loc 1 150 0
   l  %r1,112(%r11)  # tmp144, re
   lh %r1,36(%r1) # D.2893, <variable>.name_entry_size
   n  %r1,.L24-.L19(%r13)  # tmp145,
   lr %r2,%r1  #, tmp145
   l  %r1,.L25-.L19(%r13)  # tmp146,
   basr  %r14,%r1 #, tmp146
   lr %r1,%r2  # tmp147,
   lr %r2,%r1  # D.2894, tmp147
   l  %r1,112(%r11)  # tmp148, re
   sth   %r2,36(%r1) # D.2894, <variable>.name_entry_size
   .loc 1 151 0
   l  %r1,112(%r11)  # tmp149, re
   lh %r1,38(%r1) # D.2895, <variable>.name_count
   n  %r1,.L24-.L19(%r13)  # tmp150,
   lr %r2,%r1  #, tmp150
   l  %r1,.L25-.L19(%r13)  # tmp151,
   basr  %r14,%r1 #, tmp151
   lr %r1,%r2  # tmp152,
   lr %r2,%r1  # D.2896, tmp152
   l  %r1,112(%r11)  # tmp153, re
   sth   %r2,38(%r1) # D.2896, <variable>.name_count
   .loc 1 152 0
   l  %r1,112(%r11)  # tmp154, re
   lh %r1,40(%r1) # D.2897, <variable>.ref_count
   n  %r1,.L24-.L19(%r13)  # tmp155,
   lr %r2,%r1  #, tmp155
   l  %r1,.L25-.L19(%r13)  # tmp156,
   basr  %r14,%r1 #, tmp156
   lr %r1,%r2  # tmp157,
   lr %r2,%r1  # D.2898, tmp157
   l  %r1,112(%r11)  # tmp158, re
   sth   %r2,40(%r1) # D.2898, <variable>.ref_count
   .loc 1 153 0
   l  %r1,112(%r11)  # tmp159, re
   l  %r2,100(%r11)  #, tables
   st %r2,48(%r1) #, <variable>.tables
   .loc 1 155 0
   l  %r1,104(%r11)  # tmp160, extra_data
   ltr   %r1,%r1  # tmp160
   je .L17  #,
   l  %r1,104(%r11)  # tmp161, extra_data
   l  %r1,0(%r1)  # D.2899, <variable>.flags
   n  %r1,.L21-.L19(%r13)  # D.2901,
   n  %r1,.L26-.L19(%r13)  # tmp162,
   ltr   %r1,%r1  # tmp162
   je .L17  #,
   .loc 1 157 0
   l  %r1,104(%r11)  # tmp163, extra_data
   l  %r1,4(%r1)  # D.2903, <variable>.study_data
   st %r1,116(%r11)  # D.2903, study
   .loc 1 158 0
   l  %r1,116(%r11)  # tmp164, study
   l  %r1,0(%r1)  # D.2904, <variable>.size
   lr %r2,%r1  #, D.2904
   l  %r1,.L23-.L19(%r13)  # tmp165,
   basr  %r14,%r1 #, tmp165
   l  %r1,116(%r11)  # tmp166, study
   st %r2,0(%r1)  # D.2905, <variable>.size
   .loc 1 159 0
   l  %r1,116(%r11)  # tmp167, study
   l  %r1,4(%r1)  # D.2906, <variable>.flags
   lr %r2,%r1  #, D.2906
   l  %r1,.L23-.L19(%r13)  # tmp168,
   basr  %r14,%r1 #, tmp168
   l  %r1,116(%r11)  # tmp169, study
   st %r2,4(%r1)  # D.2907, <variable>.flags
   .loc 1 160 0
   l  %r1,116(%r11)  # tmp170, study
   l  %r1,40(%r1) # D.2908, <variable>.minlength
   lr %r2,%r1  #, D.2908
   l  %r1,.L23-.L19(%r13)  # tmp171,
   basr  %r14,%r1 #, tmp171
   l  %r1,116(%r11)  # tmp172, study
   st %r2,40(%r1) # D.2909, <variable>.minlength
.L17:
   .loc 1 315 0
   lhi   %r1,0 #,
   st %r1,96(%r11)   #, D.2863
.L12:
   l  %r1,96(%r11)   # <result>, D.2863
   .loc 1 317 0
   lr %r2,%r1  #, <result>
   l  %r4,176(%r11)  #,
   lm %r11,%r15,164(%r11)  #,,
   br %r4   #
   .align   4  #
.L26:
   .long 255
.L25:
   .long swap_uint16
.L24:
   .long 65535
.L23:
   .long swap_uint32
.L22:
   .long 1163019088
.L21:
   .long 1
.L20:
   .long 1346589253
   .align   2  #
.LFE4:
   .size pcre_pattern_to_host_byte_order, .-pcre_pattern_to_host_byte_order
   .section .debug_frame,"",@progbits
.Lframe0:
   .4byte   .LECIE0-.LSCIE0
.LSCIE0:
   .4byte   0xffffffff
   .byte 0x1
   .string  ""
   .uleb128 0x1
   .sleb128 -4
   .byte 0xe
   .byte 0xc
   .uleb128 0xf
   .uleb128 0x60
   .align   4
.LECIE0:
.LSFDE0:
   .4byte   .LEFDE0-.LASFDE0
.LASFDE0:
   .4byte   .Lframe0
   .4byte   .LFB2
   .4byte   .LFE2-.LFB2
   .byte 0x4
   .4byte   .LCFI0-.LFB2
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI1-.LCFI0
   .byte 0xe
   .uleb128 0xc8
   .byte 0x4
   .4byte   .LCFI2-.LCFI1
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE0:
.LSFDE2:
   .4byte   .LEFDE2-.LASFDE2
.LASFDE2:
   .4byte   .Lframe0
   .4byte   .LFB3
   .4byte   .LFE3-.LFB3
   .byte 0x4
   .4byte   .LCFI3-.LFB3
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI4-.LCFI3
   .byte 0xe
   .uleb128 0xc8
   .byte 0x4
   .4byte   .LCFI5-.LCFI4
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE2:
.LSFDE4:
   .4byte   .LEFDE4-.LASFDE4
.LASFDE4:
   .4byte   .Lframe0
   .4byte   .LFB4
   .4byte   .LFE4-.LFB4
   .byte 0x4
   .4byte   .LCFI6-.LFB4
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI7-.LCFI6
   .byte 0xe
   .uleb128 0xd8
   .byte 0x4
   .4byte   .LCFI8-.LCFI7
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE4:
   .section .eh_frame,"a",@progbits
.Lframe1:
   .4byte   .LECIE1-.LSCIE1
.LSCIE1:
   .4byte   0x0
   .byte 0x1
   .string  ""
   .uleb128 0x1
   .sleb128 -4
   .byte 0xe
   .byte 0xc
   .uleb128 0xf
   .uleb128 0x60
   .align   4
.LECIE1:
.LSFDE1:
   .4byte   .LEFDE1-.LASFDE1
.LASFDE1:
   .4byte   .LASFDE1-.Lframe1
   .4byte   .LFB2
   .4byte   .LFE2-.LFB2
   .byte 0x4
   .4byte   .LCFI0-.LFB2
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI1-.LCFI0
   .byte 0xe
   .uleb128 0xc8
   .byte 0x4
   .4byte   .LCFI2-.LCFI1
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE1:
.LSFDE3:
   .4byte   .LEFDE3-.LASFDE3
.LASFDE3:
   .4byte   .LASFDE3-.Lframe1
   .4byte   .LFB3
   .4byte   .LFE3-.LFB3
   .byte 0x4
   .4byte   .LCFI3-.LFB3
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI4-.LCFI3
   .byte 0xe
   .uleb128 0xc8
   .byte 0x4
   .4byte   .LCFI5-.LCFI4
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE3:
.LSFDE5:
   .4byte   .LEFDE5-.LASFDE5
.LASFDE5:
   .4byte   .LASFDE5-.Lframe1
   .4byte   .LFB4
   .4byte   .LFE4-.LFB4
   .byte 0x4
   .4byte   .LCFI6-.LFB4
   .byte 0x8f
   .uleb128 0x9
   .byte 0x8e
   .uleb128 0xa
   .byte 0x8d
   .uleb128 0xb
   .byte 0x8c
   .uleb128 0xc
   .byte 0x8b
   .uleb128 0xd
   .byte 0x4
   .4byte   .LCFI7-.LCFI6
   .byte 0xe
   .uleb128 0xd8
   .byte 0x4
   .4byte   .LCFI8-.LCFI7
   .byte 0xd
   .uleb128 0xb
   .align   4
.LEFDE5:
.text
.Letext0:
   .section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
   .4byte   .LFB2-.Ltext0
   .4byte   .LCFI1-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 96
   .4byte   .LCFI1-.Ltext0
   .4byte   .LCFI2-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 200
   .4byte   .LCFI2-.Ltext0
   .4byte   .LFE2-.Ltext0
   .2byte   0x3
   .byte 0x7b
   .sleb128 200
   .4byte   0x0
   .4byte   0x0
.LLST1:
   .4byte   .LFB3-.Ltext0
   .4byte   .LCFI4-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 96
   .4byte   .LCFI4-.Ltext0
   .4byte   .LCFI5-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 200
   .4byte   .LCFI5-.Ltext0
   .4byte   .LFE3-.Ltext0
   .2byte   0x3
   .byte 0x7b
   .sleb128 200
   .4byte   0x0
   .4byte   0x0
.LLST2:
   .4byte   .LFB4-.Ltext0
   .4byte   .LCFI7-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 96
   .4byte   .LCFI7-.Ltext0
   .4byte   .LCFI8-.Ltext0
   .2byte   0x3
   .byte 0x7f
   .sleb128 216
   .4byte   .LCFI8-.Ltext0
   .4byte   .LFE4-.Ltext0
   .2byte   0x3
   .byte 0x7b
   .sleb128 216
   .4byte   0x0
   .4byte   0x0
   .file 2 "pcre_internal.h"
   .file 3 "pcre.h"
   .section .debug_info
   .4byte   0x3df
   .2byte   0x2
   .4byte   .Ldebug_abbrev0
   .byte 0x4
   .uleb128 0x1
   .4byte   .LASF52
   .byte 0x1
   .4byte   .LASF53
   .4byte   .LASF54
   .4byte   .Ltext0
   .4byte   .Letext0
   .4byte   .Ldebug_line0
   .uleb128 0x2
   .byte 0x1
   .byte 0x8
   .4byte   .LASF0
   .uleb128 0x2
   .byte 0x2
   .byte 0x7
   .4byte   .LASF1
   .uleb128 0x2
   .byte 0x4
   .byte 0x7
   .4byte   .LASF2
   .uleb128 0x2
   .byte 0x4
   .byte 0x7
   .4byte   .LASF3
   .uleb128 0x2
   .byte 0x1
   .byte 0x6
   .4byte   .LASF4
   .uleb128 0x2
   .byte 0x2
   .byte 0x5
   .4byte   .LASF5
   .uleb128 0x3
   .byte 0x4
   .byte 0x5
   .string  "int"
   .uleb128 0x4
   .byte 0x4
   .byte 0x7
   .uleb128 0x2
   .byte 0x4
   .byte 0x5
   .4byte   .LASF6
   .uleb128 0x5
   .byte 0x4
   .uleb128 0x2
   .byte 0x1
   .byte 0x8
   .4byte   .LASF7
   .uleb128 0x6
   .byte 0x4
   .4byte   0x25
   .uleb128 0x7
   .4byte   .LASF8
   .byte 0x2
   .byte 0xc2
   .4byte   0x25
   .uleb128 0x7
   .4byte   .LASF9
   .byte 0x2
   .byte 0xc5
   .4byte   0x2c
   .uleb128 0x7
   .4byte   .LASF10
   .byte 0x2
   .byte 0xd3
   .4byte   0x33
   .uleb128 0x2
   .byte 0x8
   .byte 0x5
   .4byte   .LASF11
   .uleb128 0x2
   .byte 0x8
   .byte 0x7
   .4byte   .LASF12
   .uleb128 0x8
   .4byte   .LASF13
   .byte 0x3
   .2byte   0x145
   .4byte   0xaa
   .uleb128 0x9
   .4byte   .LASF42
   .byte 0x1
   .uleb128 0xa
   .4byte   .LASF22
   .byte 0x20
   .byte 0x3
   .2byte   0x178
   .4byte   0x136
   .uleb128 0xb
   .4byte   .LASF14
   .byte 0x3
   .2byte   0x179
   .4byte   0x3a
   .byte 0x2
   .byte 0x23
   .uleb128 0x0
   .uleb128 0xb
   .4byte   .LASF15
   .byte 0x3
   .2byte   0x17a
   .4byte   0x60
   .byte 0x2
   .byte 0x23
   .uleb128 0x4
   .uleb128 0xb
   .4byte   .LASF16
   .byte 0x3
   .2byte   0x17b
   .4byte   0x3a
   .byte 0x2
   .byte 0x23
   .uleb128 0x8
   .uleb128 0xb
   .4byte   .LASF17
   .byte 0x3
   .2byte   0x17c
   .4byte   0x60
   .byte 0x2
   .byte 0x23
   .uleb128 0xc
   .uleb128 0xb
   .4byte   .LASF18
   .byte 0x3
   .2byte   0x17d
   .4byte   0x136
   .byte 0x2
   .byte 0x23
   .uleb128 0x10
   .uleb128 0xb
   .4byte   .LASF19
   .byte 0x3
   .2byte   0x17e
   .4byte   0x3a
   .byte 0x2
   .byte 0x23
   .uleb128 0x14
   .uleb128 0xb
   .4byte   .LASF20
   .byte 0x3
   .2byte   0x17f
   .4byte   0x141
   .byte 0x2
   .byte 0x23
   .uleb128 0x18
   .uleb128 0xb
   .4byte   .LASF21
   .byte 0x3
   .2byte   0x180
   .4byte   0x60
   .byte 0x2
   .byte 0x23
   .uleb128 0x1c
   .byte 0x0
   .uleb128 0x6
   .byte 0x4
   .4byte   0x13c
   .uleb128 0xc
   .4byte   0x25
   .uleb128 0x6
   .byte 0x4
   .4byte   0x69
   .uleb128 0x8
   .4byte   .LASF22
   .byte 0x3
   .2byte   0x181
   .4byte   0xb0
   .uleb128 0xa
   .4byte   .LASF23
   .byte 0x38
   .byte 0x2
   .2byte   0x90d
   .4byte   0x28d
   .uleb128 0xb
   .4byte   .LASF24
   .byte 0x2
   .2byte   0x90e
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x0
   .uleb128 0xb
   .4byte   .LASF25
   .byte 0x2
   .2byte   0x90f
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x4
   .uleb128 0xb
   .4byte   .LASF26
   .byte 0x2
   .2byte   0x910
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x8
   .uleb128 0xb
   .4byte   .LASF14
   .byte 0x2
   .2byte   0x911
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0xc
   .uleb128 0xb
   .4byte   .LASF27
   .byte 0x2
   .2byte   0x912
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x10
   .uleb128 0xb
   .4byte   .LASF28
   .byte 0x2
   .2byte   0x913
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x14
   .uleb128 0xb
   .4byte   .LASF29
   .byte 0x2
   .2byte   0x914
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x18
   .uleb128 0xb
   .4byte   .LASF30
   .byte 0x2
   .2byte   0x915
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x1a
   .uleb128 0xb
   .4byte   .LASF31
   .byte 0x2
   .2byte   0x916
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x1c
   .uleb128 0xb
   .4byte   .LASF32
   .byte 0x2
   .2byte   0x917
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x1e
   .uleb128 0xb
   .4byte   .LASF33
   .byte 0x2
   .2byte   0x918
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x20
   .uleb128 0xb
   .4byte   .LASF34
   .byte 0x2
   .2byte   0x919
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x22
   .uleb128 0xb
   .4byte   .LASF35
   .byte 0x2
   .2byte   0x91a
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x24
   .uleb128 0xb
   .4byte   .LASF36
   .byte 0x2
   .2byte   0x91b
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x26
   .uleb128 0xb
   .4byte   .LASF37
   .byte 0x2
   .2byte   0x91c
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x28
   .uleb128 0xb
   .4byte   .LASF38
   .byte 0x2
   .2byte   0x91d
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x2a
   .uleb128 0xb
   .4byte   .LASF39
   .byte 0x2
   .2byte   0x91e
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x2c
   .uleb128 0xb
   .4byte   .LASF40
   .byte 0x2
   .2byte   0x91f
   .4byte   0x7a
   .byte 0x2
   .byte 0x23
   .uleb128 0x2e
   .uleb128 0xb
   .4byte   .LASF18
   .byte 0x2
   .2byte   0x920
   .4byte   0x28d
   .byte 0x2
   .byte 0x23
   .uleb128 0x30
   .uleb128 0xb
   .4byte   .LASF41
   .byte 0x2
   .2byte   0x921
   .4byte   0x60
   .byte 0x2
   .byte 0x23
   .uleb128 0x34
   .byte 0x0
   .uleb128 0x6
   .byte 0x4
   .4byte   0x293
   .uleb128 0xc
   .4byte   0x6f
   .uleb128 0x8
   .4byte   .LASF42
   .byte 0x2
   .2byte   0x924
   .4byte   0x153
   .uleb128 0xa
   .4byte   .LASF43
   .byte 0x2c
   .byte 0x2
   .2byte   0x953
   .4byte   0x2ee
   .uleb128 0xb
   .4byte   .LASF25
   .byte 0x2
   .2byte   0x954
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x0
   .uleb128 0xb
   .4byte   .LASF14
   .byte 0x2
   .2byte   0x955
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x4
   .uleb128 0xb
   .4byte   .LASF44
   .byte 0x2
   .2byte   0x956
   .4byte   0x2ee
   .byte 0x2
   .byte 0x23
   .uleb128 0x8
   .uleb128 0xb
   .4byte   .LASF45
   .byte 0x2
   .2byte   0x957
   .4byte   0x85
   .byte 0x2
   .byte 0x23
   .uleb128 0x28
   .byte 0x0
   .uleb128 0xd
   .4byte   0x6f
   .4byte   0x2fe
   .uleb128 0xe
   .4byte   0x56
   .byte 0x1f
   .byte 0x0
   .uleb128 0x8
   .4byte   .LASF43
   .byte 0x2
   .2byte   0x958
   .4byte   0x2a4
   .uleb128 0xf
   .4byte   .LASF46
   .byte 0x1
   .byte 0x44
   .byte 0x1
   .4byte   0x85
   .4byte   .LFB2
   .4byte   .LFE2
   .4byte   .LLST0
   .4byte   0x336
   .uleb128 0x10
   .4byte   .LASF48
   .byte 0x1
   .byte 0x43
   .4byte   0x85
   .byte 0x3
   .byte 0x91
   .sleb128 -100
   .byte 0x0
   .uleb128 0xf
   .4byte   .LASF47
   .byte 0x1
   .byte 0x4d
   .byte 0x1
   .4byte   0x7a
   .4byte   .LFB3
   .4byte   .LFE3
   .4byte   .LLST1
   .4byte   0x362
   .uleb128 0x10
   .4byte   .LASF48
   .byte 0x1
   .byte 0x4c
   .4byte   0x7a
   .byte 0x3
   .byte 0x91
   .sleb128 -98
   .byte 0x0
   .uleb128 0x11
   .byte 0x1
   .4byte   .LASF55
   .byte 0x1
   .byte 0x6c
   .byte 0x1
   .4byte   0x4f
   .4byte   .LFB4
   .4byte   .LFE4
   .4byte   .LLST2
   .4byte   0x3ca
   .uleb128 0x10
   .4byte   .LASF49
   .byte 0x1
   .byte 0x63
   .4byte   0x3ca
   .byte 0x3
   .byte 0x91
   .sleb128 -108
   .uleb128 0x10
   .4byte   .LASF50
   .byte 0x1
   .byte 0x64
   .4byte   0x3d0
   .byte 0x3
   .byte 0x91
   .sleb128 -112
   .uleb128 0x10
   .4byte   .LASF18
   .byte 0x1
   .byte 0x64
   .4byte   0x136
   .byte 0x3
   .byte 0x91
   .sleb128 -116
   .uleb128 0x12
   .string  "re"
   .byte 0x1
   .byte 0x6d
   .4byte   0x3d6
   .byte 0x3
   .byte 0x91
   .sleb128 -104
   .uleb128 0x13
   .4byte   .LASF51
   .byte 0x1
   .byte 0x6e
   .4byte   0x3dc
   .byte 0x3
   .byte 0x91
   .sleb128 -100
   .byte 0x0
   .uleb128 0x6
   .byte 0x4
   .4byte   0x9e
   .uleb128 0x6
   .byte 0x4
   .4byte   0x147
   .uleb128 0x6
   .byte 0x4
   .4byte   0x298
   .uleb128 0x6
   .byte 0x4
   .4byte   0x2fe
   .byte 0x0
   .section .debug_abbrev
   .uleb128 0x1
   .uleb128 0x11
   .byte 0x1
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
   .uleb128 0x1
   .uleb128 0x10
   .uleb128 0x6
   .byte 0x0
   .byte 0x0
   .uleb128 0x2
   .uleb128 0x24
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xb
   .uleb128 0x3e
   .uleb128 0xb
   .uleb128 0x3
   .uleb128 0xe
   .byte 0x0
   .byte 0x0
   .uleb128 0x3
   .uleb128 0x24
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xb
   .uleb128 0x3e
   .uleb128 0xb
   .uleb128 0x3
   .uleb128 0x8
   .byte 0x0
   .byte 0x0
   .uleb128 0x4
   .uleb128 0x24
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xb
   .uleb128 0x3e
   .uleb128 0xb
   .byte 0x0
   .byte 0x0
   .uleb128 0x5
   .uleb128 0xf
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xb
   .byte 0x0
   .byte 0x0
   .uleb128 0x6
   .uleb128 0xf
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xb
   .uleb128 0x49
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0x7
   .uleb128 0x16
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x49
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0x8
   .uleb128 0x16
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0x5
   .uleb128 0x49
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0x9
   .uleb128 0x13
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3c
   .uleb128 0xc
   .byte 0x0
   .byte 0x0
   .uleb128 0xa
   .uleb128 0x13
   .byte 0x1
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0xb
   .uleb128 0xb
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0x5
   .uleb128 0x1
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0xb
   .uleb128 0xd
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0x5
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x38
   .uleb128 0xa
   .byte 0x0
   .byte 0x0
   .uleb128 0xc
   .uleb128 0x26
   .byte 0x0
   .uleb128 0x49
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0xd
   .uleb128 0x1
   .byte 0x1
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x1
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0xe
   .uleb128 0x21
   .byte 0x0
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x2f
   .uleb128 0xb
   .byte 0x0
   .byte 0x0
   .uleb128 0xf
   .uleb128 0x2e
   .byte 0x1
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x27
   .uleb128 0xc
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x11
   .uleb128 0x1
   .uleb128 0x12
   .uleb128 0x1
   .uleb128 0x40
   .uleb128 0x6
   .uleb128 0x1
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0x10
   .uleb128 0x5
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x2
   .uleb128 0xa
   .byte 0x0
   .byte 0x0
   .uleb128 0x11
   .uleb128 0x2e
   .byte 0x1
   .uleb128 0x3f
   .uleb128 0xc
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x27
   .uleb128 0xc
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x11
   .uleb128 0x1
   .uleb128 0x12
   .uleb128 0x1
   .uleb128 0x40
   .uleb128 0x6
   .uleb128 0x1
   .uleb128 0x13
   .byte 0x0
   .byte 0x0
   .uleb128 0x12
   .uleb128 0x34
   .byte 0x0
   .uleb128 0x3
   .uleb128 0x8
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x2
   .uleb128 0xa
   .byte 0x0
   .byte 0x0
   .uleb128 0x13
   .uleb128 0x34
   .byte 0x0
   .uleb128 0x3
   .uleb128 0xe
   .uleb128 0x3a
   .uleb128 0xb
   .uleb128 0x3b
   .uleb128 0xb
   .uleb128 0x49
   .uleb128 0x13
   .uleb128 0x2
   .uleb128 0xa
   .byte 0x0
   .byte 0x0
   .byte 0x0
   .section .debug_pubnames,"",@progbits
   .4byte   0x32
   .2byte   0x2
   .4byte   .Ldebug_info0
   .4byte   0x3e3
   .4byte   0x362
   .string  "pcre_pattern_to_host_byte_order"
   .4byte   0x0
   .section .debug_aranges,"",@progbits
   .4byte   0x1c
   .2byte   0x2
   .4byte   .Ldebug_info0
   .byte 0x4
   .byte 0x0
   .2byte   0x0
   .2byte   0x0
   .4byte   .Ltext0
   .4byte   .Letext0-.Ltext0
   .4byte   0x0
   .4byte   0x0
   .section .debug_str,"MS",@progbits,1
.LASF23:
   .string  "real_pcre8_or_16"
.LASF19:
   .string  "match_limit_recursion"
.LASF37:
   .string  "ref_count"
.LASF20:
   .string  "mark"
.LASF53:
   .string  "pcre_byte_order.c"
.LASF48:
   .string  "value"
.LASF32:
   .string  "top_bracket"
.LASF24:
   .string  "magic_number"
.LASF49:
   .string  "argument_re"
.LASF22:
   .string  "pcre_extra"
.LASF34:
   .string  "name_table_offset"
.LASF44:
   .string  "start_bits"
.LASF55:
   .string  "pcre_pattern_to_host_byte_order"
.LASF25:
   .string  "size"
.LASF27:
   .string  "limit_match"
.LASF36:
   .string  "name_count"
.LASF26:
   .string  "options"
.LASF1:
   .string  "short unsigned int"
.LASF33:
   .string  "top_backref"
.LASF35:
   .string  "name_entry_size"
.LASF15:
   .string  "study_data"
.LASF47:
   .string  "swap_uint16"
.LASF3:
   .string  "long unsigned int"
.LASF29:
   .string  "first_char"
.LASF38:
   .string  "dummy1"
.LASF39:
   .string  "dummy2"
.LASF13:
   .string  "pcre"
.LASF52:
   .string  "GNU C 4.3.4 [gcc-4_3-branch revision 152973]"
.LASF16:
   .string  "match_limit"
.LASF46:
   .string  "swap_uint32"
.LASF28:
   .string  "limit_recursion"
.LASF0:
   .string  "unsigned char"
.LASF2:
   .string  "unsigned int"
.LASF14:
   .string  "flags"
.LASF43:
   .string  "pcre_study_data"
.LASF12:
   .string  "long long unsigned int"
.LASF45:
   .string  "minlength"
.LASF4:
   .string  "signed char"
.LASF50:
   .string  "extra_data"
.LASF21:
   .string  "executable_jit"
.LASF51:
   .string  "study"
.LASF11:
   .string  "long long int"
.LASF7:
   .string  "char"
.LASF8:
   .string  "pcre_uint8"
.LASF42:
   .string  "real_pcre"
.LASF5:
   .string  "short int"
.LASF40:
   .string  "dummy3"
.LASF41:
   .string  "nullpad"
.LASF31:
   .string  "max_lookbehind"
.LASF6:
   .string  "long int"
.LASF9:
   .string  "pcre_uint16"
.LASF30:
   .string  "req_char"
.LASF10:
   .string  "pcre_uint32"
.LASF18:
   .string  "tables"
.LASF17:
   .string  "callout_data"
.LASF54:
   .string  "/home/rksdev/pcre-8.35"
   .ident   "GCC: (SUSE Linux) 4.3.4 [gcc-4_3-branch revision 152973]"
   .section .comment.SUSE.OPTs,"MS",@progbits,1
   .string  "ospWG"
   .section .note.GNU-stack,"",@progbits
