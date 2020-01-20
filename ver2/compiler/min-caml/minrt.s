#data_section
l.27732 :	# -200.000000
	.long	0xc3480000
l.27729 :	# 200.000000
	.long	0x43480000
l.27577 :	# 128.000000
	.long	0x43000000
l.27521 :	# 3.141593
	.long	0x40490fdb
l.27221 :	# 0.900000
	.long	0x3f666666
l.26517 :	# 150.000000
	.long	0x43160000
l.26246 :	# -150.000000
	.long	0xc3160000
l.26216 :	# 0.100000
	.long	0x3dcccccd
l.26160 :	# -2.000000
	.long	0xc0000000
l.26145 :	# 0.003906
	.long	0x3b800000
l.26111 :	# 20.000000
	.long	0x41a00000
l.26109 :	# 0.050000
	.long	0x3d4ccccd
l.26100 :	# 0.250000
	.long	0x3e800000
l.26091 :	# 10.000000
	.long	0x41200000
l.26084 :	# 0.300000
	.long	0x3e99999a
l.26082 :	# 255.000000
	.long	0x437f0000
l.26076 :	# 0.150000
	.long	0x3e19999a
l.26006 :	# 3.141593
	.long	0x40490fdb
l.26004 :	# 30.000000
	.long	0x41f00000
l.25955 :	# 0.333333
	.long	0x3eaaaaaa
l.25953 :	# 0.200000
	.long	0x3e4ccccd
l.25951 :	# 0.142857
	.long	0x3e124925
l.25949 :	# 0.111111
	.long	0x3de38e38
l.25947 :	# 0.089764
	.long	0x3db7d66e
l.25945 :	# 0.060035
	.long	0x3d75e7c5
l.25943 :	# -1.570796
	.long	0xbfc90fdb
l.25939 :	# 2.437500
	.long	0x401c0000
l.25937 :	# 0.437500
	.long	0x3ee00000
l.25933 :	# 15.000000
	.long	0x41700000
l.25931 :	# 0.000100
	.long	0x38d1b717
l.25814 :	# 100000000.000000
	.long	0x4cbebc20
l.25808 :	# 1000000000.000000
	.long	0x4e6e6b28
l.25365 :	# -0.100000
	.long	0xbdcccccd
l.25273 :	# 0.010000
	.long	0x3c23d70a
l.25271 :	# -0.200000
	.long	0xbe4ccccd
l.24980 :	# 2.000000
	.long	0x40000000
l.24907 :	# 0.017453
	.long	0x3c8efa35
l.24815 :	# -1.000000
	.long	0xbf800000
l.24802 :	# 0.166667
	.long	0x3e2aaaac
l.24800 :	# 0.008333
	.long	0x3c088666
l.24798 :	# 0.000196
	.long	0x394d64b6
l.24795 :	# 0.500000
	.long	0x3f000000
l.24793 :	# 0.041664
	.long	0x3d2aa789
l.24791 :	# 0.001370
	.long	0x3ab38106
l.24788 :	# 0.785398
	.long	0x3f490fdb
l.24786 :	# 1.570796
	.long	0x3fc90fdb
l.24784 :	# 1.000000
	.long	0x3f800000
l.24782 :	# 0.000000
	.long	0x0
l.24780 :	# 6.283185
	.long	0x40c90fdb
#text_section
program_start :
	addi	%r0 %r1 l.27521
	ilw.s	%r1 %f0 0
	mov	%r27 %r1
	addi	%r27 %r27 16
	addi	%r0 %r2 sin.2619
	sw	%r1 %r2 0
	sw.s	%r1 %f0 8
	mov	%r27 %r2
	addi	%r27 %r27 16
	addi	%r0 %r3 cos.2621
	sw	%r2 %r3 0
	sw.s	%r2 %f0 8
	addi	%r0 %r3 1
	addi	%r0 %r4 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 60
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	addi	%r0 %r7 0
	mov	%r27 %r8
	addi	%r27 %r27 48
	sw	%r8 %r1 40
	sw	%r8 %r1 36
	sw	%r8 %r1 32
	sw	%r8 %r1 28
	sw	%r8 %r7 24
	sw	%r8 %r1 20
	sw	%r8 %r1 16
	sw	%r8 %r6 12
	sw	%r8 %r5 8
	sw	%r8 %r4 4
	sw	%r8 %r3 0
	mov	%r8 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 1
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r1 28
	sw	%r26 %r2 32
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 36
	sw	%r26 %r2 40
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 l.25808
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 1
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 120
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 120
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 124
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 128
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 60
	lw	%r26 %r3 128
	sw	%r26 %r1 132
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r3 132
	sw	%r2 %r3 0
	addi	%r0 %r4 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r2 136
	sw	%r26 %r1 140
	mov	%r4 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 144
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 144
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	mov	%r27 %r4
	addi	%r27 %r27 16
	sw.s	%r4 %f0 8
	sw	%r4 %r1 4
	sw	%r4 %r3 0
	mov	%r4 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 148
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mov	%r27 %r2
	addi	%r27 %r27 24
	addi	%r0 %r3 read_object.2800
	sw	%r2 %r3 0
	lw	%r26 %r3 4
	sw	%r2 %r3 16
	lw	%r26 %r4 12
	sw	%r2 %r4 12
	lw	%r26 %r5 8
	sw	%r2 %r5 8
	lw	%r26 %r6 0
	sw	%r2 %r6 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r8 read_and_network.2808
	sw	%r7 %r8 0
	lw	%r26 %r8 36
	sw	%r7 %r8 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r10 iter_setup_dirvec_constants.2905
	sw	%r9 %r10 0
	sw	%r9 %r4 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 setup_startp_constants.2910
	sw	%r10 %r11 0
	sw	%r10 %r4 4
	mov	%r27 %r11
	addi	%r27 %r27 8
	addi	%r0 %r12 check_all_inside.2935
	sw	%r11 %r12 0
	sw	%r11 %r4 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r13 shadow_check_and_group.2941
	sw	%r12 %r13 0
	lw	%r26 %r13 132
	sw	%r12 %r13 28
	lw	%r26 %r14 48
	sw	%r12 %r14 24
	sw	%r12 %r4 20
	lw	%r26 %r15 24
	sw	%r12 %r15 16
	lw	%r26 %r16 60
	sw	%r12 %r16 12
	lw	%r26 %r17 140
	sw	%r12 %r17 8
	sw	%r12 %r11 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 shadow_check_one_or_group.2944
	sw	%r18 %r19 0
	sw	%r18 %r12 8
	sw	%r18 %r8 4
	mov	%r27 %r19
	addi	%r27 %r27 40
	addi	%r0 %r20 shadow_check_one_or_matrix.2947
	sw	%r19 %r20 0
	sw	%r19 %r13 32
	sw	%r19 %r14 28
	sw	%r19 %r18 24
	sw	%r19 %r12 20
	sw	%r19 %r4 16
	sw	%r19 %r16 12
	sw	%r19 %r17 8
	sw	%r19 %r8 4
	mov	%r27 %r12
	addi	%r27 %r27 40
	addi	%r0 %r17 solve_each_element.2950
	sw	%r12 %r17 0
	lw	%r26 %r17 56
	sw	%r12 %r17 32
	lw	%r26 %r18 96
	sw	%r12 %r18 28
	sw	%r12 %r14 24
	sw	%r12 %r4 20
	lw	%r26 %r20 52
	sw	%r12 %r20 16
	sw	%r12 %r16 12
	lw	%r26 %r21 64
	sw	%r12 %r21 8
	sw	%r12 %r11 4
	mov	%r27 %r22
	addi	%r27 %r27 16
	addi	%r0 %r23 solve_one_or_network.2954
	sw	%r22 %r23 0
	sw	%r22 %r12 8
	sw	%r22 %r8 4
	mov	%r27 %r23
	addi	%r27 %r27 32
	addi	%r0 %r24 trace_or_matrix.2958
	sw	%r23 %r24 0
	sw	%r23 %r17 28
	sw	%r23 %r18 24
	sw	%r23 %r14 20
	sw	%r23 %r22 16
	sw	%r23 %r12 12
	sw	%r23 %r4 8
	sw	%r23 %r8 4
	mov	%r27 %r12
	addi	%r27 %r27 40
	addi	%r0 %r22 solve_each_element_fast.2964
	sw	%r12 %r22 0
	sw	%r12 %r17 32
	lw	%r26 %r22 100
	sw	%r12 %r22 28
	sw	%r12 %r14 24
	sw	%r12 %r4 20
	sw	%r12 %r20 16
	sw	%r12 %r16 12
	sw	%r12 %r21 8
	sw	%r12 %r11 4
	mov	%r27 %r11
	addi	%r27 %r27 16
	addi	%r0 %r24 solve_one_or_network_fast.2968
	sw	%r11 %r24 0
	sw	%r11 %r12 8
	sw	%r11 %r8 4
	mov	%r27 %r24
	addi	%r27 %r27 32
	addi	%r0 %r13 trace_or_matrix_fast.2972
	sw	%r24 %r13 0
	sw	%r24 %r17 24
	sw	%r24 %r14 20
	sw	%r24 %r11 16
	sw	%r24 %r12 12
	sw	%r24 %r4 8
	sw	%r24 %r8 4
	mov	%r27 %r11
	addi	%r27 %r27 48
	addi	%r0 %r12 trace_reflections.2994
	sw	%r11 %r12 0
	sw	%r11 %r24 40
	sw	%r11 %r17 36
	lw	%r26 %r12 72
	sw	%r11 %r12 32
	sw	%r11 %r19 28
	lw	%r26 %r13 80
	sw	%r11 %r13 24
	lw	%r26 %r14 148
	sw	%r11 %r14 20
	lw	%r26 %r14 44
	sw	%r11 %r14 16
	sw	%r26 %r7 152
	lw	%r26 %r7 68
	sw	%r11 %r7 12
	sw	%r11 %r20 8
	sw	%r11 %r21 4
	mov	%r27 %r8
	addi	%r27 %r27 88
	sw	%r26 %r2 156
	addi	%r0 %r2 trace_ray.2999
	sw	%r8 %r2 0
	sw	%r8 %r11 84
	sw	%r8 %r23 80
	sw	%r8 %r17 76
	sw	%r8 %r12 72
	sw	%r8 %r22 68
	sw	%r8 %r18 64
	sw	%r8 %r3 60
	sw	%r8 %r19 56
	sw	%r8 %r10 52
	sw	%r8 %r13 48
	sw	%r8 %r14 44
	sw	%r8 %r4 40
	sw	%r8 %r7 36
	sw	%r8 %r1 32
	sw	%r8 %r5 28
	sw	%r8 %r15 24
	sw	%r8 %r20 20
	sw	%r8 %r16 16
	sw	%r8 %r21 12
	sw	%r8 %r6 8
	lw	%r26 %r2 28
	sw	%r8 %r2 4
	mov	%r27 %r11
	addi	%r27 %r27 64
	addi	%r0 %r23 iter_trace_diffuse_rays.3008
	sw	%r11 %r23 0
	sw	%r11 %r24 56
	sw	%r11 %r17 52
	sw	%r11 %r12 48
	sw	%r11 %r3 44
	sw	%r11 %r19 40
	sw	%r11 %r14 36
	sw	%r11 %r4 32
	sw	%r11 %r7 28
	sw	%r11 %r15 24
	sw	%r11 %r20 20
	sw	%r11 %r16 16
	sw	%r11 %r21 12
	lw	%r26 %r7 76
	sw	%r11 %r7 8
	sw	%r11 %r6 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r16 do_without_neighbors.3030
	sw	%r12 %r16 0
	sw	%r12 %r22 28
	sw	%r12 %r10 24
	sw	%r12 %r13 20
	sw	%r12 %r5 16
	sw	%r12 %r11 12
	lw	%r26 %r16 124
	sw	%r12 %r16 8
	sw	%r12 %r7 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r19 try_exploit_neighbors.3046
	sw	%r17 %r19 0
	sw	%r17 %r13 12
	sw	%r17 %r12 8
	sw	%r17 %r7 4
	mov	%r27 %r19
	addi	%r27 %r27 32
	addi	%r0 %r20 pretrace_diffuse_rays.3059
	sw	%r19 %r20 0
	sw	%r19 %r22 24
	sw	%r19 %r10 20
	sw	%r19 %r5 16
	sw	%r19 %r11 12
	sw	%r19 %r16 8
	sw	%r19 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 40
	addi	%r0 %r10 pretrace_pixels.3062
	sw	%r7 %r10 0
	lw	%r26 %r10 20
	sw	%r7 %r10 36
	sw	%r7 %r8 32
	sw	%r7 %r18 28
	lw	%r26 %r8 104
	sw	%r7 %r8 24
	lw	%r26 %r11 92
	sw	%r7 %r11 20
	sw	%r7 %r13 16
	lw	%r26 %r18 116
	sw	%r7 %r18 12
	sw	%r7 %r19 8
	lw	%r26 %r18 88
	sw	%r7 %r18 4
	mov	%r27 %r19
	addi	%r27 %r27 24
	addi	%r0 %r20 scan_pixel.3073
	sw	%r19 %r20 0
	sw	%r19 %r17 16
	sw	%r19 %r13 12
	lw	%r26 %r13 84
	sw	%r19 %r13 8
	sw	%r19 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r17 scan_line.3079
	sw	%r12 %r17 0
	lw	%r26 %r17 112
	sw	%r12 %r17 28
	lw	%r26 %r20 108
	sw	%r12 %r20 24
	sw	%r12 %r19 20
	sw	%r12 %r11 16
	sw	%r12 %r7 12
	sw	%r12 %r13 8
	sw	%r12 %r18 4
	mov	%r27 %r19
	addi	%r27 %r27 16
	addi	%r0 %r21 calc_dirvec.3099
	sw	%r19 %r21 0
	sw	%r19 %r3 12
	sw	%r19 %r16 8
	sw	%r19 %r6 4
	mov	%r27 %r21
	addi	%r27 %r27 8
	addi	%r0 %r22 calc_dirvecs.3107
	sw	%r21 %r22 0
	sw	%r21 %r19 4
	mov	%r27 %r22
	addi	%r27 %r27 16
	addi	%r0 %r23 calc_dirvec_rows.3112
	sw	%r22 %r23 0
	sw	%r22 %r21 8
	sw	%r22 %r19 4
	mov	%r27 %r19
	addi	%r27 %r27 8
	addi	%r0 %r23 create_dirvec_elements.3118
	sw	%r19 %r23 0
	sw	%r19 %r5 4
	mov	%r27 %r23
	addi	%r27 %r27 16
	addi	%r0 %r24 create_dirvecs.3121
	sw	%r23 %r24 0
	sw	%r23 %r5 12
	sw	%r23 %r16 8
	sw	%r23 %r19 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	sw	%r26 %r12 160
	addi	%r0 %r12 init_dirvec_constants.3123
	sw	%r24 %r12 0
	sw	%r24 %r5 8
	sw	%r24 %r9 4
	mov	%r27 %r12
	addi	%r27 %r27 24
	sw	%r26 %r7 164
	addi	%r0 %r7 init_vecset_constants.3126
	sw	%r12 %r7 0
	sw	%r12 %r5 16
	sw	%r12 %r9 12
	sw	%r12 %r24 8
	sw	%r12 %r16 4
	addi	%r0 %r7 128
	sw	%r26 %r1 168
	addi	%r0 %r1 128
	sw	%r13 %r7 0
	sw	%r13 %r1 4
	addi	%r0 %r1 64
	sw	%r18 %r1 0
	addi	%r0 %r1 64
	sw	%r18 %r1 4
	addi	%r0 %r1 l.27577
	ilw.s	%r1 %f0 0
	mtc1	%r7 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r11 %f0 0
	lw	%r13 %r1 0
	addi	%r0 %r7 3
	addi	%r0 %r18 l.24782
	ilw.s	%r18 %f0 0
	sw	%r26 %r12 172
	sw	%r26 %r24 176
	sw	%r26 %r9 180
	sw	%r26 %r22 184
	sw	%r26 %r21 188
	sw	%r26 %r23 192
	sw	%r26 %r19 196
	sw	%r26 %r1 200
	mov	%r7 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 204
	mov	%r2 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 208
	mov	%r2 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 212
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 216
	mov	%r2 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 220
	mov	%r2 %r1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 224
	mov	%r2 %r1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 224
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 224
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 224
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 224
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 228
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 232
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 228
	sw	%r1 %r2 24
	lw	%r26 %r2 224
	sw	%r1 %r2 20
	lw	%r26 %r2 220
	sw	%r1 %r2 16
	lw	%r26 %r2 216
	sw	%r1 %r2 12
	lw	%r26 %r2 212
	sw	%r1 %r2 8
	lw	%r26 %r2 208
	sw	%r1 %r2 4
	lw	%r26 %r2 204
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 200
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	init_line_elements.3089 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 236
	sw	%r26 %r3 240
	mov	%r4 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 244
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 248
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 252
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 256
	mov	%r2 %r1
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 260
	mov	%r2 %r1
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 264
	mov	%r2 %r1
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 264
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 264
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 264
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 264
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 268
	mov	%r2 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 272
	mov	%r2 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 268
	sw	%r1 %r2 24
	lw	%r26 %r2 264
	sw	%r1 %r2 20
	lw	%r26 %r2 260
	sw	%r1 %r2 16
	lw	%r26 %r2 256
	sw	%r1 %r2 12
	lw	%r26 %r2 252
	sw	%r1 %r2 8
	lw	%r26 %r2 248
	sw	%r1 %r2 4
	lw	%r26 %r2 244
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 240
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	init_line_elements.3089 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 276
	sw	%r26 %r3 280
	mov	%r4 %r1
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 284
	mov	%r2 %r1
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 288
	mov	%r2 %r1
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 292
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 296
	mov	%r2 %r1
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 300
	mov	%r2 %r1
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 304
	mov	%r2 %r1
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 304
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 304
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 304
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 304
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 308
	mov	%r2 %r1
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 312
	mov	%r2 %r1
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw	%r26 %r2 312
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw	%r26 %r2 312
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw	%r26 %r2 312
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw	%r26 %r2 312
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 308
	sw	%r1 %r2 24
	lw	%r26 %r2 304
	sw	%r1 %r2 20
	lw	%r26 %r2 300
	sw	%r1 %r2 16
	lw	%r26 %r2 296
	sw	%r1 %r2 12
	lw	%r26 %r2 292
	sw	%r1 %r2 8
	lw	%r26 %r2 288
	sw	%r1 %r2 4
	lw	%r26 %r2 284
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 280
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	min_caml_create_array 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	init_line_elements.3089 
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	fin	%f0
	lw	%r26 %r2 16
	sw.s	%r2 %f0 0
	fin	%f0
	sw.s	%r2 %f0 4
	fin	%f0
	sw.s	%r2 %f0 8
	fin	%f0
	addi	%r0 %r3 l.24907
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 0
	sw	%r26 %r1 316
	sw.s	%r26 %f0 320
	sw	%r26 %r28 332
	lw	%r24 %r23 0
	addi	%r26 %r26 336	
	jalr	%r23
	addi	%r26 %r26 -336
	lw	%r26 %r28 332
	lw.s	%r26 %f1 320
	lw	%r26 %r24 4
	sw.s	%r26 %f0 328
	mov.s	%f1 %f0
	sw	%r26 %r28 340
	lw	%r24 %r23 0
	addi	%r26 %r26 344	
	jalr	%r23
	addi	%r26 %r26 -344
	lw	%r26 %r28 340
	fin	%f1
	addi	%r0 %r1 l.24907
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	lw	%r26 %r24 0
	sw.s	%r26 %f0 336
	sw.s	%r26 %f1 344
	mov.s	%f1 %f0
	sw	%r26 %r28 356
	lw	%r24 %r23 0
	addi	%r26 %r26 360	
	jalr	%r23
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	lw.s	%r26 %f1 344
	lw	%r26 %r24 4
	sw.s	%r26 %f0 352
	mov.s	%f1 %f0
	sw	%r26 %r28 364
	lw	%r24 %r23 0
	addi	%r26 %r26 368	
	jalr	%r23
	addi	%r26 %r26 -368
	lw	%r26 %r28 364
	lw.s	%r26 %f1 328
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.27729
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 112
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.27732
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 336
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 352
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.27729
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 104
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	neg.s	%f0 %f4
	sw.s	%r2 %f4 8
	neg.s	%f3 %f4
	mul.s	%f0 %f4 %f0
	lw	%r26 %r2 108
	sw.s	%r2 %f0 0
	neg.s	%f1 %f0
	sw.s	%r2 %f0 4
	neg.s	%f3 %f0
	mul.s	%f2 %f0 %f0
	sw.s	%r2 %f0 8
	lw	%r26 %r3 16
	lw.s	%r3 %f0 0
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r4 20
	sw.s	%r4 %f0 0
	lw.s	%r3 %f0 4
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 4
	lw.s	%r3 %f0 8
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
	in	%r3
	fin	%f0
	addi	%r0 %r3 l.24907
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 4
	sw.s	%r26 %f0 360
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	neg.s	%f0 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.24907
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 360
	lw	%r26 %r24 0
	sw.s	%r26 %f0 368
	mov.s	%f1 %f0
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	lw.s	%r26 %f1 368
	lw	%r26 %r24 4
	sw.s	%r26 %f0 376
	mov.s	%f1 %f0
	sw	%r26 %r28 388
	lw	%r24 %r23 0
	addi	%r26 %r26 392	
	jalr	%r23
	addi	%r26 %r26 -392
	lw	%r26 %r28 388
	lw.s	%r26 %f1 376
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 368
	lw	%r26 %r24 0
	sw	%r26 %r28 388
	lw	%r24 %r23 0
	addi	%r26 %r26 392	
	jalr	%r23
	addi	%r26 %r26 -392
	lw	%r26 %r28 388
	lw.s	%r26 %f1 376
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r2 28
	sw.s	%r2 %f0 0
	addi	%r0 %r2 0
	lw	%r26 %r24 156
	mov	%r2 %r1
	sw	%r26 %r28 388
	lw	%r24 %r23 0
	addi	%r26 %r26 392	
	jalr	%r23
	addi	%r26 %r26 -392
	lw	%r26 %r28 388
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r4 -1
	sw	%r26 %r1 384
	bne	%r3 %r4 beq_else.31082 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 388
	addi	%r26 %r26 392
	jal	min_caml_create_array 
	addi	%r26 %r26 -392
	lw	%r26 %r28 388
	j	beq_cont.31083 
beq_else.31082 :
	addi	%r0 %r4 1
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r3 388
	sw	%r26 %r2 392
	bne	%r5 %r6 beq_else.31084 
	addi	%r0 %r4 2
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 396
	addi	%r26 %r26 400
	jal	min_caml_create_array 
	addi	%r26 %r26 -400
	lw	%r26 %r28 396
	j	beq_cont.31085 
beq_else.31084 :
	addi	%r0 %r6 2
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 396
	sw	%r26 %r4 400
	bne	%r7 %r8 beq_else.31086 
	addi	%r0 %r6 3
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 404
	addi	%r26 %r26 408
	jal	min_caml_create_array 
	addi	%r26 %r26 -408
	lw	%r26 %r28 404
	j	beq_cont.31087 
beq_else.31086 :
	addi	%r0 %r8 3
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 404
	sw	%r26 %r6 408
	bne	%r9 %r10 beq_else.31088 
	addi	%r0 %r8 4
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 412
	addi	%r26 %r26 416
	jal	min_caml_create_array 
	addi	%r26 %r26 -416
	lw	%r26 %r28 412
	j	beq_cont.31089 
beq_else.31088 :
	addi	%r0 %r10 4
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 412
	sw	%r26 %r8 416
	bne	%r11 %r12 beq_else.31090 
	addi	%r0 %r10 5
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 420
	addi	%r26 %r26 424
	jal	min_caml_create_array 
	addi	%r26 %r26 -424
	lw	%r26 %r28 420
	j	beq_cont.31091 
beq_else.31090 :
	addi	%r0 %r12 5
	in	%r13
	addi	%r0 %r14 -1
	sw	%r26 %r11 420
	sw	%r26 %r10 424
	bne	%r13 %r14 beq_else.31092 
	addi	%r0 %r12 6
	addi	%r0 %r13 -1
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 428
	addi	%r26 %r26 432
	jal	min_caml_create_array 
	addi	%r26 %r26 -432
	lw	%r26 %r28 428
	j	beq_cont.31093 
beq_else.31092 :
	addi	%r0 %r14 6
	sw	%r26 %r13 428
	sw	%r26 %r12 432
	mov	%r14 %r1
	sw	%r26 %r28 436
	addi	%r26 %r26 440
	jal	read_net_item.2804 
	addi	%r26 %r26 -440
	lw	%r26 %r28 436
	lw	%r26 %r2 432
	slli	%r2 %r2 2
	lw	%r26 %r3 428
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31093 :
	lw	%r26 %r2 424
	slli	%r2 %r2 2
	lw	%r26 %r3 420
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31091 :
	lw	%r26 %r2 416
	slli	%r2 %r2 2
	lw	%r26 %r3 412
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31089 :
	lw	%r26 %r2 408
	slli	%r2 %r2 2
	lw	%r26 %r3 404
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31087 :
	lw	%r26 %r2 400
	slli	%r2 %r2 2
	lw	%r26 %r3 396
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31085 :
	lw	%r26 %r2 392
	slli	%r2 %r2 2
	lw	%r26 %r3 388
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31083 :
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31094 
	j	beq_cont.31095 
beq_else.31094 :
	lw	%r26 %r2 384
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r1 436
	bne	%r4 %r5 beq_else.31096 
	addi	%r0 %r2 1
	addi	%r0 %r4 -1
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 444
	addi	%r26 %r26 448
	jal	min_caml_create_array 
	addi	%r26 %r26 -448
	lw	%r26 %r28 444
	j	beq_cont.31097 
beq_else.31096 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 440
	sw	%r26 %r2 444
	bne	%r6 %r7 beq_else.31098 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 452
	addi	%r26 %r26 456
	jal	min_caml_create_array 
	addi	%r26 %r26 -456
	lw	%r26 %r28 452
	j	beq_cont.31099 
beq_else.31098 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 448
	sw	%r26 %r5 452
	bne	%r8 %r9 beq_else.31100 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 460
	addi	%r26 %r26 464
	jal	min_caml_create_array 
	addi	%r26 %r26 -464
	lw	%r26 %r28 460
	j	beq_cont.31101 
beq_else.31100 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 456
	sw	%r26 %r7 460
	bne	%r10 %r11 beq_else.31102 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 468
	addi	%r26 %r26 472
	jal	min_caml_create_array 
	addi	%r26 %r26 -472
	lw	%r26 %r28 468
	j	beq_cont.31103 
beq_else.31102 :
	addi	%r0 %r11 4
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 464
	sw	%r26 %r9 468
	bne	%r12 %r13 beq_else.31104 
	addi	%r0 %r11 5
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 476
	addi	%r26 %r26 480
	jal	min_caml_create_array 
	addi	%r26 %r26 -480
	lw	%r26 %r28 476
	j	beq_cont.31105 
beq_else.31104 :
	addi	%r0 %r13 5
	sw	%r26 %r12 472
	sw	%r26 %r11 476
	mov	%r13 %r1
	sw	%r26 %r28 484
	addi	%r26 %r26 488
	jal	read_net_item.2804 
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	lw	%r26 %r2 476
	slli	%r2 %r2 2
	lw	%r26 %r3 472
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31105 :
	lw	%r26 %r2 468
	slli	%r2 %r2 2
	lw	%r26 %r3 464
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31103 :
	lw	%r26 %r2 460
	slli	%r2 %r2 2
	lw	%r26 %r3 456
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31101 :
	lw	%r26 %r2 452
	slli	%r2 %r2 2
	lw	%r26 %r3 448
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31099 :
	lw	%r26 %r2 444
	slli	%r2 %r2 2
	lw	%r26 %r3 440
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31097 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31106 
	j	beq_cont.31107 
beq_else.31106 :
	lw	%r26 %r2 436
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r1 480
	bne	%r4 %r5 beq_else.31108 
	addi	%r0 %r2 1
	addi	%r0 %r4 -1
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 484
	addi	%r26 %r26 488
	jal	min_caml_create_array 
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	j	beq_cont.31109 
beq_else.31108 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 484
	sw	%r26 %r2 488
	bne	%r6 %r7 beq_else.31110 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 492
	addi	%r26 %r26 496
	jal	min_caml_create_array 
	addi	%r26 %r26 -496
	lw	%r26 %r28 492
	j	beq_cont.31111 
beq_else.31110 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 492
	sw	%r26 %r5 496
	bne	%r8 %r9 beq_else.31112 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 500
	addi	%r26 %r26 504
	jal	min_caml_create_array 
	addi	%r26 %r26 -504
	lw	%r26 %r28 500
	j	beq_cont.31113 
beq_else.31112 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 500
	sw	%r26 %r7 504
	bne	%r10 %r11 beq_else.31114 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 508
	addi	%r26 %r26 512
	jal	min_caml_create_array 
	addi	%r26 %r26 -512
	lw	%r26 %r28 508
	j	beq_cont.31115 
beq_else.31114 :
	addi	%r0 %r11 4
	sw	%r26 %r10 508
	sw	%r26 %r9 512
	mov	%r11 %r1
	sw	%r26 %r28 516
	addi	%r26 %r26 520
	jal	read_net_item.2804 
	addi	%r26 %r26 -520
	lw	%r26 %r28 516
	lw	%r26 %r2 512
	slli	%r2 %r2 2
	lw	%r26 %r3 508
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31115 :
	lw	%r26 %r2 504
	slli	%r2 %r2 2
	lw	%r26 %r3 500
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31113 :
	lw	%r26 %r2 496
	slli	%r2 %r2 2
	lw	%r26 %r3 492
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31111 :
	lw	%r26 %r2 488
	slli	%r2 %r2 2
	lw	%r26 %r3 484
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31109 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31116 
	j	beq_cont.31117 
beq_else.31116 :
	lw	%r26 %r2 480
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	lw	%r26 %r24 152
	sw	%r26 %r28 516
	lw	%r24 %r23 0
	addi	%r26 %r26 520	
	jalr	%r23
	addi	%r26 %r26 -520
	lw	%r26 %r28 516
beq_cont.31117 :
beq_cont.31107 :
beq_cont.31095 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r4 -1
	sw	%r26 %r1 516
	bne	%r3 %r4 beq_else.31118 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 524
	addi	%r26 %r26 528
	jal	min_caml_create_array 
	addi	%r26 %r26 -528
	lw	%r26 %r28 524
	mov	%r1 %r2
	j	beq_cont.31119 
beq_else.31118 :
	addi	%r0 %r4 1
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r3 520
	sw	%r26 %r2 524
	bne	%r5 %r6 beq_else.31120 
	addi	%r0 %r4 2
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 532
	addi	%r26 %r26 536
	jal	min_caml_create_array 
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	j	beq_cont.31121 
beq_else.31120 :
	addi	%r0 %r6 2
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 528
	sw	%r26 %r4 532
	bne	%r7 %r8 beq_else.31122 
	addi	%r0 %r6 3
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 540
	addi	%r26 %r26 544
	jal	min_caml_create_array 
	addi	%r26 %r26 -544
	lw	%r26 %r28 540
	j	beq_cont.31123 
beq_else.31122 :
	addi	%r0 %r8 3
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 536
	sw	%r26 %r6 540
	bne	%r9 %r10 beq_else.31124 
	addi	%r0 %r8 4
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 548
	addi	%r26 %r26 552
	jal	min_caml_create_array 
	addi	%r26 %r26 -552
	lw	%r26 %r28 548
	j	beq_cont.31125 
beq_else.31124 :
	addi	%r0 %r10 4
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 544
	sw	%r26 %r8 548
	bne	%r11 %r12 beq_else.31126 
	addi	%r0 %r10 5
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 556
	addi	%r26 %r26 560
	jal	min_caml_create_array 
	addi	%r26 %r26 -560
	lw	%r26 %r28 556
	j	beq_cont.31127 
beq_else.31126 :
	addi	%r0 %r12 5
	in	%r13
	addi	%r0 %r14 -1
	sw	%r26 %r11 552
	sw	%r26 %r10 556
	bne	%r13 %r14 beq_else.31128 
	addi	%r0 %r12 6
	addi	%r0 %r13 -1
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 564
	addi	%r26 %r26 568
	jal	min_caml_create_array 
	addi	%r26 %r26 -568
	lw	%r26 %r28 564
	j	beq_cont.31129 
beq_else.31128 :
	addi	%r0 %r14 6
	sw	%r26 %r13 560
	sw	%r26 %r12 564
	mov	%r14 %r1
	sw	%r26 %r28 572
	addi	%r26 %r26 576
	jal	read_net_item.2804 
	addi	%r26 %r26 -576
	lw	%r26 %r28 572
	lw	%r26 %r2 564
	slli	%r2 %r2 2
	lw	%r26 %r3 560
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31129 :
	lw	%r26 %r2 556
	slli	%r2 %r2 2
	lw	%r26 %r3 552
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31127 :
	lw	%r26 %r2 548
	slli	%r2 %r2 2
	lw	%r26 %r3 544
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31125 :
	lw	%r26 %r2 540
	slli	%r2 %r2 2
	lw	%r26 %r3 536
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31123 :
	lw	%r26 %r2 532
	slli	%r2 %r2 2
	lw	%r26 %r3 528
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31121 :
	lw	%r26 %r2 524
	slli	%r2 %r2 2
	lw	%r26 %r3 520
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31119 :
	lw	%r2 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31130 
	addi	%r0 %r1 1
	sw	%r26 %r28 572
	addi	%r26 %r26 576
	jal	min_caml_create_array 
	addi	%r26 %r26 -576
	lw	%r26 %r28 572
	j	beq_cont.31131 
beq_else.31130 :
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r2 568
	sw	%r26 %r1 572
	bne	%r4 %r5 beq_else.31132 
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 580
	addi	%r26 %r26 584
	jal	min_caml_create_array 
	addi	%r26 %r26 -584
	lw	%r26 %r28 580
	mov	%r1 %r2
	j	beq_cont.31133 
beq_else.31132 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 576
	sw	%r26 %r3 580
	bne	%r6 %r7 beq_else.31134 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 588
	addi	%r26 %r26 592
	jal	min_caml_create_array 
	addi	%r26 %r26 -592
	lw	%r26 %r28 588
	j	beq_cont.31135 
beq_else.31134 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 584
	sw	%r26 %r5 588
	bne	%r8 %r9 beq_else.31136 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 596
	addi	%r26 %r26 600
	jal	min_caml_create_array 
	addi	%r26 %r26 -600
	lw	%r26 %r28 596
	j	beq_cont.31137 
beq_else.31136 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 592
	sw	%r26 %r7 596
	bne	%r10 %r11 beq_else.31138 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 604
	addi	%r26 %r26 608
	jal	min_caml_create_array 
	addi	%r26 %r26 -608
	lw	%r26 %r28 604
	j	beq_cont.31139 
beq_else.31138 :
	addi	%r0 %r11 4
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 600
	sw	%r26 %r9 604
	bne	%r12 %r13 beq_else.31140 
	addi	%r0 %r11 5
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 612
	addi	%r26 %r26 616
	jal	min_caml_create_array 
	addi	%r26 %r26 -616
	lw	%r26 %r28 612
	j	beq_cont.31141 
beq_else.31140 :
	addi	%r0 %r13 5
	sw	%r26 %r12 608
	sw	%r26 %r11 612
	mov	%r13 %r1
	sw	%r26 %r28 620
	addi	%r26 %r26 624
	jal	read_net_item.2804 
	addi	%r26 %r26 -624
	lw	%r26 %r28 620
	lw	%r26 %r2 612
	slli	%r2 %r2 2
	lw	%r26 %r3 608
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31141 :
	lw	%r26 %r2 604
	slli	%r2 %r2 2
	lw	%r26 %r3 600
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31139 :
	lw	%r26 %r2 596
	slli	%r2 %r2 2
	lw	%r26 %r3 592
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31137 :
	lw	%r26 %r2 588
	slli	%r2 %r2 2
	lw	%r26 %r3 584
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31135 :
	lw	%r26 %r2 580
	slli	%r2 %r2 2
	lw	%r26 %r3 576
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31133 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31142 
	addi	%r0 %r1 2
	sw	%r26 %r28 620
	addi	%r26 %r26 624
	jal	min_caml_create_array 
	addi	%r26 %r26 -624
	lw	%r26 %r28 620
	j	beq_cont.31143 
beq_else.31142 :
	addi	%r0 %r1 2
	addi	%r0 %r3 0
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r2 616
	sw	%r26 %r1 620
	bne	%r4 %r5 beq_else.31144 
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 628
	addi	%r26 %r26 632
	jal	min_caml_create_array 
	addi	%r26 %r26 -632
	lw	%r26 %r28 628
	mov	%r1 %r2
	j	beq_cont.31145 
beq_else.31144 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 624
	sw	%r26 %r3 628
	bne	%r6 %r7 beq_else.31146 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 636
	addi	%r26 %r26 640
	jal	min_caml_create_array 
	addi	%r26 %r26 -640
	lw	%r26 %r28 636
	j	beq_cont.31147 
beq_else.31146 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 632
	sw	%r26 %r5 636
	bne	%r8 %r9 beq_else.31148 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 644
	addi	%r26 %r26 648
	jal	min_caml_create_array 
	addi	%r26 %r26 -648
	lw	%r26 %r28 644
	j	beq_cont.31149 
beq_else.31148 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 640
	sw	%r26 %r7 644
	bne	%r10 %r11 beq_else.31150 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 652
	addi	%r26 %r26 656
	jal	min_caml_create_array 
	addi	%r26 %r26 -656
	lw	%r26 %r28 652
	j	beq_cont.31151 
beq_else.31150 :
	addi	%r0 %r11 4
	sw	%r26 %r10 648
	sw	%r26 %r9 652
	mov	%r11 %r1
	sw	%r26 %r28 660
	addi	%r26 %r26 664
	jal	read_net_item.2804 
	addi	%r26 %r26 -664
	lw	%r26 %r28 660
	lw	%r26 %r2 652
	slli	%r2 %r2 2
	lw	%r26 %r3 648
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31151 :
	lw	%r26 %r2 644
	slli	%r2 %r2 2
	lw	%r26 %r3 640
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31149 :
	lw	%r26 %r2 636
	slli	%r2 %r2 2
	lw	%r26 %r3 632
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31147 :
	lw	%r26 %r2 628
	slli	%r2 %r2 2
	lw	%r26 %r3 624
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31145 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31152 
	addi	%r0 %r1 3
	sw	%r26 %r28 660
	addi	%r26 %r26 664
	jal	min_caml_create_array 
	addi	%r26 %r26 -664
	lw	%r26 %r28 660
	j	beq_cont.31153 
beq_else.31152 :
	addi	%r0 %r1 3
	sw	%r26 %r2 656
	sw	%r26 %r28 660
	addi	%r26 %r26 664
	jal	read_or_network.2806 
	addi	%r26 %r26 -664
	lw	%r26 %r28 660
	lw	%r26 %r2 620
	slli	%r2 %r2 2
	lw	%r26 %r3 656
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31153 :
	lw	%r26 %r2 572
	slli	%r2 %r2 2
	lw	%r26 %r3 616
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31143 :
	lw	%r26 %r2 516
	slli	%r2 %r2 2
	lw	%r26 %r3 568
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31131 :
	lw	%r26 %r2 44
	sw	%r2 %r1 0
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 84
	lw	%r1 %r2 0
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.31154 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.31155 
bl_else.31154 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.31156 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.31157 
bl_else.31156 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.31157 :
bl_cont.31155 :
	addi	%r0 %r2 32
	out	%r2
	lw	%r1 %r2 4
	addi	%r0 %r3 100
	div	%r2 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r2 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r2 %r5 %r2
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.31158 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.31159 
bl_else.31158 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.31160 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.31161 
bl_else.31160 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.31161 :
bl_cont.31159 :
	addi	%r0 %r2 32
	out	%r2
	addi	%r0 %r2 50
	out	%r2
	addi	%r0 %r2 53
	out	%r2
	addi	%r0 %r2 53
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	addi	%r0 %r2 120
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 660
	mov	%r3 %r1
	sw	%r26 %r28 668
	addi	%r26 %r26 672
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -672
	lw	%r26 %r28 668
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 664
	mov	%r3 %r1
	sw	%r26 %r28 668
	addi	%r26 %r26 672
	jal	min_caml_create_array 
	addi	%r26 %r26 -672
	lw	%r26 %r28 668
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 664
	sw	%r2 %r1 0
	lw	%r26 %r1 660
	sw	%r26 %r28 668
	addi	%r26 %r26 672
	jal	min_caml_create_array 
	addi	%r26 %r26 -672
	lw	%r26 %r28 668
	lw	%r26 %r2 124
	sw	%r2 %r1 16
	lw	%r2 %r1 16
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 668
	mov	%r3 %r1
	sw	%r26 %r28 676
	addi	%r26 %r26 680
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -680
	lw	%r26 %r28 676
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 672
	mov	%r3 %r1
	sw	%r26 %r28 676
	addi	%r26 %r26 680
	jal	min_caml_create_array 
	addi	%r26 %r26 -680
	lw	%r26 %r28 676
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 672
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 668
	sw	%r2 %r1 472
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 676
	addi	%r26 %r26 680
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -680
	lw	%r26 %r28 676
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 676
	mov	%r3 %r1
	sw	%r26 %r28 684
	addi	%r26 %r26 688
	jal	min_caml_create_array 
	addi	%r26 %r26 -688
	lw	%r26 %r28 684
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 676
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 668
	sw	%r2 %r1 468
	addi	%r0 %r1 116
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 680
	mov	%r3 %r1
	sw	%r26 %r28 684
	addi	%r26 %r26 688
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -688
	lw	%r26 %r28 684
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 684
	mov	%r3 %r1
	sw	%r26 %r28 692
	addi	%r26 %r26 696
	jal	min_caml_create_array 
	addi	%r26 %r26 -696
	lw	%r26 %r28 692
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 684
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 668
	sw	%r2 %r1 464
	addi	%r0 %r1 1
	lw	%r26 %r3 680
	sub	%r3 %r1 %r1
	addi	%r0 %r3 0
	bg	%r3 %r1 ble_else.31162 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 688
	mov	%r3 %r1
	sw	%r26 %r28 692
	addi	%r26 %r26 696
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -696
	lw	%r26 %r28 692
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 692
	sw	%r26 %r28 700
	addi	%r26 %r26 704
	jal	min_caml_create_array 
	addi	%r26 %r26 -704
	lw	%r26 %r28 700
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 692
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 688
	slli	%r2 %r3 2
	lw	%r26 %r4 668
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31164 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 696
	mov	%r2 %r1
	sw	%r26 %r28 700
	addi	%r26 %r26 704
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -704
	lw	%r26 %r28 700
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 700
	sw	%r26 %r28 708
	addi	%r26 %r26 712
	jal	min_caml_create_array 
	addi	%r26 %r26 -712
	lw	%r26 %r28 708
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 700
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 696
	slli	%r2 %r3 2
	lw	%r26 %r4 668
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31166 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 704
	mov	%r2 %r1
	sw	%r26 %r28 708
	addi	%r26 %r26 712
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -712
	lw	%r26 %r28 708
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 708
	sw	%r26 %r28 716
	addi	%r26 %r26 720
	jal	min_caml_create_array 
	addi	%r26 %r26 -720
	lw	%r26 %r28 716
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 708
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 704
	slli	%r2 %r3 2
	lw	%r26 %r4 668
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 196
	mov	%r4 %r1
	sw	%r26 %r28 716
	lw	%r24 %r23 0
	addi	%r26 %r26 720	
	jalr	%r23
	addi	%r26 %r26 -720
	lw	%r26 %r28 716
	j	ble_cont.31167 
ble_else.31166 :
ble_cont.31167 :
	j	ble_cont.31165 
ble_else.31164 :
ble_cont.31165 :
	j	ble_cont.31163 
ble_else.31162 :
ble_cont.31163 :
	addi	%r0 %r1 120
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 712
	mov	%r2 %r1
	sw	%r26 %r28 716
	addi	%r26 %r26 720
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -720
	lw	%r26 %r28 716
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 716
	mov	%r3 %r1
	sw	%r26 %r28 724
	addi	%r26 %r26 728
	jal	min_caml_create_array 
	addi	%r26 %r26 -728
	lw	%r26 %r28 724
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 716
	sw	%r2 %r1 0
	lw	%r26 %r1 712
	sw	%r26 %r28 724
	addi	%r26 %r26 728
	jal	min_caml_create_array 
	addi	%r26 %r26 -728
	lw	%r26 %r28 724
	lw	%r26 %r2 124
	sw	%r2 %r1 12
	lw	%r2 %r1 12
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 720
	mov	%r3 %r1
	sw	%r26 %r28 724
	addi	%r26 %r26 728
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -728
	lw	%r26 %r28 724
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 724
	mov	%r3 %r1
	sw	%r26 %r28 732
	addi	%r26 %r26 736
	jal	min_caml_create_array 
	addi	%r26 %r26 -736
	lw	%r26 %r28 732
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 724
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 720
	sw	%r2 %r1 472
	addi	%r0 %r1 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 732
	addi	%r26 %r26 736
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -736
	lw	%r26 %r28 732
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 728
	mov	%r3 %r1
	sw	%r26 %r28 732
	addi	%r26 %r26 736
	jal	min_caml_create_array 
	addi	%r26 %r26 -736
	lw	%r26 %r28 732
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 728
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 720
	sw	%r2 %r1 468
	addi	%r0 %r1 116
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 732
	mov	%r3 %r1
	sw	%r26 %r28 740
	addi	%r26 %r26 744
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -744
	lw	%r26 %r28 740
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 736
	mov	%r3 %r1
	sw	%r26 %r28 740
	addi	%r26 %r26 744
	jal	min_caml_create_array 
	addi	%r26 %r26 -744
	lw	%r26 %r28 740
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 736
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 720
	sw	%r2 %r1 464
	addi	%r0 %r1 1
	lw	%r26 %r3 732
	sub	%r3 %r1 %r1
	addi	%r0 %r3 0
	bg	%r3 %r1 ble_else.31168 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 740
	mov	%r3 %r1
	sw	%r26 %r28 748
	addi	%r26 %r26 752
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -752
	lw	%r26 %r28 748
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 744
	sw	%r26 %r28 748
	addi	%r26 %r26 752
	jal	min_caml_create_array 
	addi	%r26 %r26 -752
	lw	%r26 %r28 748
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 744
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 740
	slli	%r2 %r3 2
	lw	%r26 %r4 720
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31170 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 748
	mov	%r2 %r1
	sw	%r26 %r28 756
	addi	%r26 %r26 760
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -760
	lw	%r26 %r28 756
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 752
	sw	%r26 %r28 756
	addi	%r26 %r26 760
	jal	min_caml_create_array 
	addi	%r26 %r26 -760
	lw	%r26 %r28 756
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 752
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 748
	slli	%r2 %r3 2
	lw	%r26 %r4 720
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 196
	mov	%r4 %r1
	sw	%r26 %r28 756
	lw	%r24 %r23 0
	addi	%r26 %r26 760	
	jalr	%r23
	addi	%r26 %r26 -760
	lw	%r26 %r28 756
	j	ble_cont.31171 
ble_else.31170 :
ble_cont.31171 :
	j	ble_cont.31169 
ble_else.31168 :
ble_cont.31169 :
	addi	%r0 %r1 120
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 756
	mov	%r2 %r1
	sw	%r26 %r28 764
	addi	%r26 %r26 768
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -768
	lw	%r26 %r28 764
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 760
	mov	%r3 %r1
	sw	%r26 %r28 764
	addi	%r26 %r26 768
	jal	min_caml_create_array 
	addi	%r26 %r26 -768
	lw	%r26 %r28 764
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 760
	sw	%r2 %r1 0
	lw	%r26 %r1 756
	sw	%r26 %r28 764
	addi	%r26 %r26 768
	jal	min_caml_create_array 
	addi	%r26 %r26 -768
	lw	%r26 %r28 764
	lw	%r26 %r2 124
	sw	%r2 %r1 8
	lw	%r2 %r1 8
	addi	%r0 %r3 118
	addi	%r0 %r4 3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r3 764
	sw	%r26 %r1 768
	mov	%r4 %r1
	sw	%r26 %r28 772
	addi	%r26 %r26 776
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -776
	lw	%r26 %r28 772
	mov	%r1 %r2
	lw	%r26 %r1 8
	lw	%r1 %r3 0
	sw	%r26 %r2 772
	mov	%r3 %r1
	sw	%r26 %r28 780
	addi	%r26 %r26 784
	jal	min_caml_create_array 
	addi	%r26 %r26 -784
	lw	%r26 %r28 780
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 772
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 768
	sw	%r2 %r1 472
	addi	%r0 %r1 1
	lw	%r26 %r3 764
	sub	%r3 %r1 %r1
	addi	%r0 %r3 0
	bg	%r3 %r1 ble_else.31172 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 776
	mov	%r3 %r1
	sw	%r26 %r28 780
	addi	%r26 %r26 784
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -784
	lw	%r26 %r28 780
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 780
	sw	%r26 %r28 788
	addi	%r26 %r26 792
	jal	min_caml_create_array 
	addi	%r26 %r26 -792
	lw	%r26 %r28 788
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 780
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 776
	slli	%r2 %r3 2
	lw	%r26 %r4 768
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31174 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 784
	mov	%r2 %r1
	sw	%r26 %r28 788
	addi	%r26 %r26 792
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -792
	lw	%r26 %r28 788
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 788
	sw	%r26 %r28 796
	addi	%r26 %r26 800
	jal	min_caml_create_array 
	addi	%r26 %r26 -800
	lw	%r26 %r28 796
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 788
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 784
	slli	%r2 %r3 2
	lw	%r26 %r4 768
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31176 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 792
	mov	%r2 %r1
	sw	%r26 %r28 796
	addi	%r26 %r26 800
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -800
	lw	%r26 %r28 796
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 796
	sw	%r26 %r28 804
	addi	%r26 %r26 808
	jal	min_caml_create_array 
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 796
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 792
	slli	%r2 %r3 2
	lw	%r26 %r4 768
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 196
	mov	%r4 %r1
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	j	ble_cont.31177 
ble_else.31176 :
ble_cont.31177 :
	j	ble_cont.31175 
ble_else.31174 :
ble_cont.31175 :
	j	ble_cont.31173 
ble_else.31172 :
ble_cont.31173 :
	addi	%r0 %r1 1
	lw	%r26 %r24 192
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	mtc1	%r1 %f0
	addi	%r0 %r1 l.25953
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.27221
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 4
	lw	%r26 %r24 188
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	addi	%r0 %r1 8
	addi	%r0 %r2 2
	addi	%r0 %r3 4
	lw	%r26 %r24 184
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	lw	%r26 %r1 124
	lw	%r1 %r2 16
	lw	%r2 %r3 476
	lw	%r26 %r4 8
	lw	%r4 %r5 0
	addi	%r0 %r6 1
	sub	%r5 %r6 %r5
	lw	%r26 %r24 180
	sw	%r26 %r2 800
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	lw	%r26 %r1 800
	lw	%r1 %r2 472
	lw	%r26 %r3 8
	lw	%r3 %r4 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r4
	lw	%r26 %r24 180
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 804
	lw	%r24 %r23 0
	addi	%r26 %r26 808	
	jalr	%r23
	addi	%r26 %r26 -808
	lw	%r26 %r28 804
	addi	%r0 %r1 117
	lw	%r26 %r2 800
	lw	%r2 %r3 468
	lw	%r26 %r4 8
	lw	%r4 %r5 0
	addi	%r0 %r6 1
	sub	%r5 %r6 %r5
	lw	%r26 %r24 180
	sw	%r26 %r1 804
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 812
	lw	%r24 %r23 0
	addi	%r26 %r26 816	
	jalr	%r23
	addi	%r26 %r26 -816
	lw	%r26 %r28 812
	addi	%r0 %r1 1
	lw	%r26 %r2 804
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31178 
	slli	%r1 %r2 2
	lw	%r26 %r3 800
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 808
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 812
	lw	%r24 %r23 0
	addi	%r26 %r26 816	
	jalr	%r23
	addi	%r26 %r26 -816
	lw	%r26 %r28 812
	addi	%r0 %r1 1
	lw	%r26 %r2 808
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31180 
	slli	%r1 %r2 2
	lw	%r26 %r3 800
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 812
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 820
	lw	%r24 %r23 0
	addi	%r26 %r26 824	
	jalr	%r23
	addi	%r26 %r26 -824
	lw	%r26 %r28 820
	addi	%r0 %r1 1
	lw	%r26 %r2 812
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31182 
	slli	%r1 %r2 2
	lw	%r26 %r3 800
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 816
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 820
	lw	%r24 %r23 0
	addi	%r26 %r26 824	
	jalr	%r23
	addi	%r26 %r26 -824
	lw	%r26 %r28 820
	addi	%r0 %r1 1
	lw	%r26 %r2 816
	sub	%r2 %r1 %r2
	lw	%r26 %r1 800
	lw	%r26 %r24 176
	sw	%r26 %r28 820
	lw	%r24 %r23 0
	addi	%r26 %r26 824	
	jalr	%r23
	addi	%r26 %r26 -824
	lw	%r26 %r28 820
	j	ble_cont.31183 
ble_else.31182 :
ble_cont.31183 :
	j	ble_cont.31181 
ble_else.31180 :
ble_cont.31181 :
	j	ble_cont.31179 
ble_else.31178 :
ble_cont.31179 :
	lw	%r26 %r1 124
	lw	%r1 %r2 12
	lw	%r2 %r3 476
	lw	%r26 %r4 8
	lw	%r4 %r5 0
	addi	%r0 %r6 1
	sub	%r5 %r6 %r5
	lw	%r26 %r24 180
	sw	%r26 %r2 820
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 828
	lw	%r24 %r23 0
	addi	%r26 %r26 832	
	jalr	%r23
	addi	%r26 %r26 -832
	lw	%r26 %r28 828
	lw	%r26 %r1 820
	lw	%r1 %r2 472
	lw	%r26 %r3 8
	lw	%r3 %r4 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r4
	lw	%r26 %r24 180
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 828
	lw	%r24 %r23 0
	addi	%r26 %r26 832	
	jalr	%r23
	addi	%r26 %r26 -832
	lw	%r26 %r28 828
	addi	%r0 %r1 117
	lw	%r26 %r2 820
	lw	%r2 %r3 468
	lw	%r26 %r4 8
	lw	%r4 %r5 0
	addi	%r0 %r6 1
	sub	%r5 %r6 %r5
	lw	%r26 %r24 180
	sw	%r26 %r1 824
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 828
	lw	%r24 %r23 0
	addi	%r26 %r26 832	
	jalr	%r23
	addi	%r26 %r26 -832
	lw	%r26 %r28 828
	addi	%r0 %r1 1
	lw	%r26 %r2 824
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31184 
	slli	%r1 %r2 2
	lw	%r26 %r3 820
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 828
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 836
	lw	%r24 %r23 0
	addi	%r26 %r26 840	
	jalr	%r23
	addi	%r26 %r26 -840
	lw	%r26 %r28 836
	addi	%r0 %r1 1
	lw	%r26 %r2 828
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31186 
	slli	%r1 %r2 2
	lw	%r26 %r3 820
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 832
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 836
	lw	%r24 %r23 0
	addi	%r26 %r26 840	
	jalr	%r23
	addi	%r26 %r26 -840
	lw	%r26 %r28 836
	addi	%r0 %r1 1
	lw	%r26 %r2 832
	sub	%r2 %r1 %r2
	lw	%r26 %r1 820
	lw	%r26 %r24 176
	sw	%r26 %r28 836
	lw	%r24 %r23 0
	addi	%r26 %r26 840	
	jalr	%r23
	addi	%r26 %r26 -840
	lw	%r26 %r28 836
	j	ble_cont.31187 
ble_else.31186 :
ble_cont.31187 :
	j	ble_cont.31185 
ble_else.31184 :
ble_cont.31185 :
	lw	%r26 %r1 124
	lw	%r1 %r1 8
	addi	%r0 %r2 119
	lw	%r1 %r3 476
	lw	%r26 %r4 8
	lw	%r4 %r5 0
	addi	%r0 %r6 1
	sub	%r5 %r6 %r5
	lw	%r26 %r24 180
	sw	%r26 %r1 836
	sw	%r26 %r2 840
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 844
	lw	%r24 %r23 0
	addi	%r26 %r26 848	
	jalr	%r23
	addi	%r26 %r26 -848
	lw	%r26 %r28 844
	addi	%r0 %r1 1
	lw	%r26 %r2 840
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31188 
	slli	%r1 %r2 2
	lw	%r26 %r3 836
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 844
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 852
	lw	%r24 %r23 0
	addi	%r26 %r26 856	
	jalr	%r23
	addi	%r26 %r26 -856
	lw	%r26 %r28 852
	addi	%r0 %r1 1
	lw	%r26 %r2 844
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31190 
	slli	%r1 %r2 2
	lw	%r26 %r3 836
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 848
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 852
	lw	%r24 %r23 0
	addi	%r26 %r26 856	
	jalr	%r23
	addi	%r26 %r26 -856
	lw	%r26 %r28 852
	addi	%r0 %r1 1
	lw	%r26 %r2 848
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.31192 
	slli	%r1 %r2 2
	lw	%r26 %r3 836
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 180
	sw	%r26 %r1 852
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 860
	lw	%r24 %r23 0
	addi	%r26 %r26 864	
	jalr	%r23
	addi	%r26 %r26 -864
	lw	%r26 %r28 860
	addi	%r0 %r1 1
	lw	%r26 %r2 852
	sub	%r2 %r1 %r2
	lw	%r26 %r1 836
	lw	%r26 %r24 176
	sw	%r26 %r28 860
	lw	%r24 %r23 0
	addi	%r26 %r26 864	
	jalr	%r23
	addi	%r26 %r26 -864
	lw	%r26 %r28 860
	j	ble_cont.31193 
ble_else.31192 :
ble_cont.31193 :
	j	ble_cont.31191 
ble_else.31190 :
ble_cont.31191 :
	j	ble_cont.31189 
ble_else.31188 :
ble_cont.31189 :
	addi	%r0 %r1 1
	lw	%r26 %r24 172
	sw	%r26 %r28 860
	lw	%r24 %r23 0
	addi	%r26 %r26 864	
	jalr	%r23
	addi	%r26 %r26 -864
	lw	%r26 %r28 860
	lw	%r26 %r1 24
	lw.s	%r1 %f0 0
	lw	%r26 %r2 132
	sw.s	%r2 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r2 %f0 8
	lw	%r26 %r2 8
	lw	%r2 %r3 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	lw	%r26 %r4 136
	lw	%r26 %r24 180
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 860
	lw	%r24 %r23 0
	addi	%r26 %r26 864	
	jalr	%r23
	addi	%r26 %r26 -864
	lw	%r26 %r28 860
	lw	%r26 %r1 8
	lw	%r1 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.31194 
	slli	%r2 %r3 2
	lw	%r26 %r4 12
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 8
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.31196 
	lw	%r3 %r4 28
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 l.24784
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.31198 
	addi	%r0 %r4 1
	j	fbl_cont.31199 
fbl_else.31198 :
	addi	%r0 %r4 0
fbl_cont.31199 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31200 
	j	beq_cont.31201 
beq_else.31200 :
	lw	%r3 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.31202 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 168
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 l.24784
	ilw.s	%r6 %f0 0
	lw	%r3 %r3 28
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r6 24
	add	%r6 %r3 %r25
	lw.s	%r25 %f1 0
	neg.s	%f1 %f1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f3 0
	neg.s	%f3 %f3
	addi	%r0 %r3 1
	add	%r2 %r3 %r3
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r7 3
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f5 0
	sw.s	%r26 %f1 856
	sw	%r26 %r2 864
	sw	%r26 %r4 868
	sw	%r26 %r3 872
	sw.s	%r26 %f0 880
	sw.s	%r26 %f3 888
	sw.s	%r26 %f2 896
	sw.s	%r26 %f4 904
	mov	%r7 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 916
	addi	%r26 %r26 920
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -920
	lw	%r26 %r28 916
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 912
	sw	%r26 %r28 916
	addi	%r26 %r26 920
	jal	min_caml_create_array 
	addi	%r26 %r26 -920
	lw	%r26 %r28 916
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 912
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 904
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 896
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 888
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r24 180
	sw	%r26 %r2 916
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 924
	lw	%r24 %r23 0
	addi	%r26 %r26 928	
	jalr	%r23
	addi	%r26 %r26 -928
	lw	%r26 %r28 924
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 880
	sw.s	%r1 %f0 8
	lw	%r26 %r2 916
	sw	%r1 %r2 4
	lw	%r26 %r2 872
	sw	%r1 %r2 0
	lw	%r26 %r2 868
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 2
	lw	%r26 %r5 864
	add	%r5 %r3 %r3
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	lw	%r26 %r7 24
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r6 3
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f2 0
	sw	%r26 %r1 920
	sw	%r26 %r3 924
	sw.s	%r26 %f1 928
	mov	%r6 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 940
	addi	%r26 %r26 944
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -944
	lw	%r26 %r28 940
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 936
	sw	%r26 %r28 940
	addi	%r26 %r26 944
	jal	min_caml_create_array 
	addi	%r26 %r26 -944
	lw	%r26 %r28 940
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 936
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 856
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f1 928
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 888
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r24 180
	sw	%r26 %r2 940
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 948
	lw	%r24 %r23 0
	addi	%r26 %r26 952	
	jalr	%r23
	addi	%r26 %r26 -952
	lw	%r26 %r28 948
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 880
	sw.s	%r1 %f0 8
	lw	%r26 %r2 940
	sw	%r1 %r2 4
	lw	%r26 %r2 924
	sw	%r1 %r2 0
	lw	%r26 %r2 920
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	lw	%r26 %r2 868
	add	%r2 %r1 %r1
	addi	%r0 %r4 3
	lw	%r26 %r5 864
	add	%r5 %r4 %r4
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	lw	%r26 %r6 24
	add	%r6 %r5 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r5 3
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f2 0
	sw	%r26 %r1 944
	sw	%r26 %r4 948
	sw.s	%r26 %f1 952
	mov	%r5 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 964
	addi	%r26 %r26 968
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -968
	lw	%r26 %r28 964
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 960
	sw	%r26 %r28 964
	addi	%r26 %r26 968
	jal	min_caml_create_array 
	addi	%r26 %r26 -968
	lw	%r26 %r28 964
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 960
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 856
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 896
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 952
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r24 180
	sw	%r26 %r2 964
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 972
	lw	%r24 %r23 0
	addi	%r26 %r26 976	
	jalr	%r23
	addi	%r26 %r26 -976
	lw	%r26 %r28 972
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 880
	sw.s	%r1 %f0 8
	lw	%r26 %r2 964
	sw	%r1 %r2 4
	lw	%r26 %r2 948
	sw	%r1 %r2 0
	lw	%r26 %r2 944
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	addi	%r0 %r2 3
	lw	%r26 %r3 868
	add	%r3 %r2 %r2
	slli	%r1 %r1 2
	lw	%r26 %r3 168
	add	%r3 %r1 %r25
	sw	%r25 %r2 0
	j	beq_cont.31203 
beq_else.31202 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.31205 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r0 %r4 1
	add	%r2 %r4 %r2
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 168
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 l.24784
	ilw.s	%r6 %f0 0
	lw	%r3 %r6 28
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r3 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	lw	%r26 %r8 24
	add	%r8 %r7 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r6 l.24980
	ilw.s	%r6 %f2 0
	lw	%r3 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	mul.s	%f1 %f2 %f2
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.24980
	ilw.s	%r6 %f3 0
	lw	%r3 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f3 %f3
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 l.24980
	ilw.s	%r6 %f4 0
	lw	%r3 %r3 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f4 %f1
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f1 %f1
	addi	%r0 %r3 3
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f4 0
	sw	%r26 %r4 968
	sw	%r26 %r2 972
	sw.s	%r26 %f0 976
	sw.s	%r26 %f1 984
	sw.s	%r26 %f3 992
	sw.s	%r26 %f2 1000
	mov	%r3 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 1012
	addi	%r26 %r26 1016
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -1016
	lw	%r26 %r28 1012
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 1008
	sw	%r26 %r28 1012
	addi	%r26 %r26 1016
	jal	min_caml_create_array 
	addi	%r26 %r26 -1016
	lw	%r26 %r28 1012
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 1008
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 1000
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 992
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 984
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r24 180
	sw	%r26 %r2 1012
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 1020
	lw	%r24 %r23 0
	addi	%r26 %r26 1024	
	jalr	%r23
	addi	%r26 %r26 -1024
	lw	%r26 %r28 1020
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 976
	sw.s	%r1 %f0 8
	lw	%r26 %r2 1012
	sw	%r1 %r2 4
	lw	%r26 %r2 972
	sw	%r1 %r2 0
	lw	%r26 %r2 968
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	addi	%r0 %r3 1
	add	%r2 %r3 %r2
	slli	%r1 %r1 2
	lw	%r26 %r3 168
	add	%r3 %r1 %r25
	sw	%r25 %r2 0
	j	beq_cont.31206 
beq_else.31205 :
beq_cont.31206 :
beq_cont.31203 :
beq_cont.31201 :
	j	beq_cont.31197 
beq_else.31196 :
beq_cont.31197 :
	j	ble_cont.31195 
ble_else.31194 :
ble_cont.31195 :
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r2 92
	lw.s	%r2 %f0 0
	lw	%r26 %r2 88
	lw	%r2 %r2 4
	sub	%r1 %r2 %r1
	mtc1	%r1 %f1
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 108
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 112
	lw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	mul.s	%f3 %f0 %f0
	lw.s	%r2 %f3 8
	add.s	%f3 %f0 %f0
	lw	%r26 %r1 84
	lw	%r1 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	lw	%r26 %r1 276
	lw	%r26 %r24 164
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 1020
	lw	%r24 %r23 0
	addi	%r26 %r26 1024	
	jalr	%r23
	addi	%r26 %r26 -1024
	lw	%r26 %r28 1020
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 236
	lw	%r26 %r3 276
	lw	%r26 %r4 316
	lw	%r26 %r24 160
	sw	%r26 %r28 1020
	lw	%r24 %r23 0
	addi	%r26 %r26 1024	
	jalr	%r23
	addi	%r26 %r26 -1024
	lw	%r26 %r28 1020
	addi	%r0 %r1 0
	ret
sin.2619 :
	lw.s	%r24 %f1 8
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.31207 
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fble_else.31207 :
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.31208 
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fbl_else.31208 :
	fbg	%f1 %f0 fble_else.31209 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.24815
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.31210 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31211 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31211 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31210 :
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31212 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31212 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31209 :
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.31213 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31214 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31214 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31213 :
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31215 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31215 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
cos.2621 :
	lw.s	%r24 %f1 8
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.31216 
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fble_else.31216 :
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.31217 
	addi	%r0 %r1 l.24780
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fbl_else.31217 :
	fbg	%f1 %f0 fble_else.31218 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.24815
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.31219 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.31220 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.31220 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.31219 :
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31221 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31221 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31218 :
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.31222 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.24815
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.31223 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.31223 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.31222 :
	addi	%r0 %r1 l.24788
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31224 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24791
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.24793
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24795
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.31224 :
	addi	%r0 %r1 l.24786
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.24798
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.24800
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24802
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
read_object.2800 :
	lw	%r24 %r2 16
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 60
	bge	%r1 %r6 bl_else.31225 
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r24 0
	sw	%r26 %r4 4
	sw	%r26 %r1 8
	beq	%r6 %r7 bne_else.31226 
	in	%r7
	in	%r8
	in	%r9
	addi	%r0 %r10 3
	addi	%r0 %r11 l.24782
	ilw.s	%r11 %f0 0
	sw	%r26 %r2 12
	sw	%r26 %r5 16
	sw	%r26 %r3 20
	sw	%r26 %r6 24
	sw	%r26 %r8 28
	sw	%r26 %r7 32
	sw	%r26 %r9 36
	mov	%r10 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	fin	%f0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.31228 
	addi	%r0 %r2 1
	j	fbl_cont.31229 
fbl_else.31228 :
	addi	%r0 %r2 0
fbl_cont.31229 :
	addi	%r0 %r3 2
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 44
	sw	%r26 %r2 48
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 0
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 0
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	fin	%f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 0
	lw	%r26 %r3 36
	beq	%r3 %r2 bne_else.31230 
	addi	%r0 %r2 0
	fin	%f0
	addi	%r0 %r4 l.24907
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	addi	%r0 %r4 l.24907
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	fin	%f0
	addi	%r0 %r4 l.24907
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	bne_cont.31231 
bne_else.31230 :
bne_cont.31231 :
	addi	%r0 %r2 2
	lw	%r26 %r4 32
	bne	%r4 %r2 beq_else.31232 
	addi	%r0 %r2 1
	j	beq_cont.31233 
beq_else.31232 :
	lw	%r26 %r2 48
beq_cont.31233 :
	addi	%r0 %r5 4
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f0 0
	sw	%r26 %r2 60
	sw	%r26 %r1 64
	mov	%r5 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r27 %r2
	addi	%r27 %r27 48
	sw	%r2 %r1 40
	lw	%r26 %r1 64
	sw	%r2 %r1 36
	lw	%r26 %r3 56
	sw	%r2 %r3 32
	lw	%r26 %r3 52
	sw	%r2 %r3 28
	lw	%r26 %r3 60
	sw	%r2 %r3 24
	lw	%r26 %r3 44
	sw	%r2 %r3 20
	lw	%r26 %r3 40
	sw	%r2 %r3 16
	lw	%r26 %r4 36
	sw	%r2 %r4 12
	lw	%r26 %r5 28
	sw	%r2 %r5 8
	lw	%r26 %r5 32
	sw	%r2 %r5 4
	lw	%r26 %r6 24
	sw	%r2 %r6 0
	lw	%r26 %r6 8
	slli	%r6 %r7 2
	lw	%r26 %r8 20
	add	%r8 %r7 %r25
	sw	%r25 %r2 0
	addi	%r0 %r2 3
	bne	%r5 %r2 beq_else.31234 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31236 
	addi	%r0 %r5 1
	j	fbeq_cont.31237 
fbeq_else.31236 :
	addi	%r0 %r5 0
fbeq_cont.31237 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31238 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31240 
	addi	%r0 %r5 1
	j	fbeq_cont.31241 
fbeq_else.31240 :
	addi	%r0 %r5 0
fbeq_cont.31241 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31242 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.31244 
	addi	%r0 %r5 1
	j	fbl_cont.31245 
fbl_else.31244 :
	addi	%r0 %r5 0
fbl_cont.31245 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31246 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f1 0
	j	beq_cont.31247 
beq_else.31246 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
beq_cont.31247 :
	j	beq_cont.31243 
beq_else.31242 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
beq_cont.31243 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.31239 
beq_else.31238 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
beq_cont.31239 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 1
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31248 
	addi	%r0 %r5 1
	j	fbeq_cont.31249 
fbeq_else.31248 :
	addi	%r0 %r5 0
fbeq_cont.31249 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31250 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31252 
	addi	%r0 %r5 1
	j	fbeq_cont.31253 
fbeq_else.31252 :
	addi	%r0 %r5 0
fbeq_cont.31253 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31254 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.31256 
	addi	%r0 %r5 1
	j	fbl_cont.31257 
fbl_else.31256 :
	addi	%r0 %r5 0
fbl_cont.31257 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31258 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f1 0
	j	beq_cont.31259 
beq_else.31258 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
beq_cont.31259 :
	j	beq_cont.31255 
beq_else.31254 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
beq_cont.31255 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.31251 
beq_else.31250 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
beq_cont.31251 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 2
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31260 
	addi	%r0 %r5 1
	j	fbeq_cont.31261 
fbeq_else.31260 :
	addi	%r0 %r5 0
fbeq_cont.31261 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31262 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31264 
	addi	%r0 %r5 1
	j	fbeq_cont.31265 
fbeq_else.31264 :
	addi	%r0 %r5 0
fbeq_cont.31265 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31266 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.31268 
	addi	%r0 %r5 1
	j	fbl_cont.31269 
fbl_else.31268 :
	addi	%r0 %r5 0
fbl_cont.31269 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31270 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f1 0
	j	beq_cont.31271 
beq_else.31270 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
beq_cont.31271 :
	j	beq_cont.31267 
beq_else.31266 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
beq_cont.31267 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.31263 
beq_else.31262 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
beq_cont.31263 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31235 
beq_else.31234 :
	addi	%r0 %r2 2
	bne	%r5 %r2 beq_else.31272 
	addi	%r0 %r2 0
	lw	%r26 %r5 48
	bne	%r5 %r2 beq_else.31274 
	addi	%r0 %r2 1
	j	beq_cont.31275 
beq_else.31274 :
	addi	%r0 %r2 0
beq_cont.31275 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.31276 
	addi	%r0 %r5 1
	j	fbeq_cont.31277 
fbeq_else.31276 :
	addi	%r0 %r5 0
fbeq_cont.31277 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31278 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.31280 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.31281 
beq_else.31280 :
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.31281 :
	j	beq_cont.31279 
beq_else.31278 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f0 0
beq_cont.31279 :
	addi	%r0 %r2 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31273 
beq_else.31272 :
beq_cont.31273 :
beq_cont.31235 :
	addi	%r0 %r2 0
	beq	%r4 %r2 bne_else.31282 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r26 %r24 16
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw	%r26 %r24 12
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw	%r26 %r24 16
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw	%r26 %r24 12
	sw.s	%r26 %f0 88
	mov.s	%f1 %f0
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw	%r26 %r24 16
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw	%r26 %r24 12
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	lw	%r24 %r23 0
	addi	%r26 %r26 120	
	jalr	%r23
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	lw.s	%r26 %f2 88
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 96
	lw.s	%r26 %f5 80
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 72
	mul.s	%f0 %f7 %f8
	sub.s	%f8 %f6 %f6
	mul.s	%f4 %f7 %f8
	mul.s	%f1 %f8 %f8
	mul.s	%f0 %f5 %f9
	add.s	%f9 %f8 %f8
	mul.s	%f0 %f2 %f9
	mul.s	%f4 %f5 %f10
	mul.s	%f0 %f10 %f10
	mul.s	%f1 %f7 %f11
	add.s	%f11 %f10 %f10
	mul.s	%f4 %f7 %f11
	mul.s	%f0 %f11 %f0
	mul.s	%f1 %f5 %f1
	sub.s	%f1 %f0 %f0
	neg.s	%f4 %f1
	mul.s	%f2 %f5 %f4
	mul.s	%f2 %f7 %f2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 40
	add	%r2 %r1 %r25
	lw.s	%r25 %f5 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f7 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f11 0
	addi	%r0 %r1 0
	mul.s	%f3 %f3 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f9 %f9 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f1 %f1 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f12 0
	addi	%r0 %r1 1
	mul.s	%f6 %f6 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f10 %f10 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f4 %f4 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f12 0
	addi	%r0 %r1 2
	mul.s	%f8 %f8 %f12
	mul.s	%f12 %f5 %f12
	mul.s	%f0 %f0 %f13
	mul.s	%f13 %f7 %f13
	add.s	%f13 %f12 %f12
	mul.s	%f2 %f2 %f13
	mul.s	%f13 %f11 %f13
	add.s	%f13 %f12 %f12
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f12 0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.24980
	ilw.s	%r2 %f12 0
	mul.s	%f6 %f5 %f13
	mul.s	%f8 %f13 %f13
	mul.s	%f10 %f7 %f14
	mul.s	%f0 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f4 %f11 %f14
	mul.s	%f2 %f14 %f14
	add.s	%f14 %f13 %f13
	mul.s	%f13 %f12 %f12
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	sw.s	%r25 %f12 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.24980
	ilw.s	%r3 %f12 0
	mul.s	%f3 %f5 %f13
	mul.s	%f8 %f13 %f8
	mul.s	%f9 %f7 %f13
	mul.s	%f0 %f13 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f1 %f11 %f8
	mul.s	%f2 %f8 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f0 %f12 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.24980
	ilw.s	%r3 %f0 0
	mul.s	%f3 %f5 %f2
	mul.s	%f6 %f2 %f2
	mul.s	%f9 %f7 %f3
	mul.s	%f10 %f3 %f3
	add.s	%f3 %f2 %f2
	mul.s	%f1 %f11 %f1
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	bne_cont.31283 
bne_else.31282 :
bne_cont.31283 :
	addi	%r0 %r1 1
	j	bne_cont.31227 
bne_else.31226 :
	addi	%r0 %r1 0
bne_cont.31227 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31285 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 4
	lw	%r26 %r3 8
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
	retl
beq_else.31285 :
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.31225 :
	retl
read_net_item.2804 :
	in	%r2
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31288 
	addi	%r0 %r2 1
	add	%r1 %r2 %r1
	addi	%r0 %r2 -1
	j	min_caml_create_array
beq_else.31288 :
	addi	%r0 %r3 1
	add	%r1 %r3 %r3
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	bne	%r4 %r5 beq_else.31289 
	addi	%r0 %r4 1
	add	%r3 %r4 %r3
	addi	%r0 %r4 -1
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	j	beq_cont.31290 
beq_else.31289 :
	addi	%r0 %r5 1
	add	%r3 %r5 %r5
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	bne	%r6 %r7 beq_else.31291 
	addi	%r0 %r6 1
	add	%r5 %r6 %r5
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	beq_cont.31292 
beq_else.31291 :
	addi	%r0 %r7 1
	add	%r5 %r7 %r7
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 16
	sw	%r26 %r5 20
	bne	%r8 %r9 beq_else.31293 
	addi	%r0 %r8 1
	add	%r7 %r8 %r7
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.31294 
beq_else.31293 :
	addi	%r0 %r9 1
	add	%r7 %r9 %r9
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 24
	sw	%r26 %r7 28
	bne	%r10 %r11 beq_else.31295 
	addi	%r0 %r10 1
	add	%r9 %r10 %r9
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	beq_cont.31296 
beq_else.31295 :
	addi	%r0 %r11 1
	add	%r9 %r11 %r11
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 32
	sw	%r26 %r9 36
	bne	%r12 %r13 beq_else.31297 
	addi	%r0 %r12 1
	add	%r11 %r12 %r11
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	j	beq_cont.31298 
beq_else.31297 :
	addi	%r0 %r13 1
	add	%r11 %r13 %r13
	in	%r14
	addi	%r0 %r15 -1
	sw	%r26 %r12 40
	sw	%r26 %r11 44
	bne	%r14 %r15 beq_else.31299 
	addi	%r0 %r14 1
	add	%r13 %r14 %r13
	addi	%r0 %r14 -1
	mov	%r14 %r2
	mov	%r13 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	j	beq_cont.31300 
beq_else.31299 :
	addi	%r0 %r15 1
	add	%r13 %r15 %r15
	in	%r16
	addi	%r0 %r17 -1
	sw	%r26 %r14 48
	sw	%r26 %r13 52
	bne	%r16 %r17 beq_else.31301 
	addi	%r0 %r16 1
	add	%r15 %r16 %r15
	addi	%r0 %r16 -1
	mov	%r16 %r2
	mov	%r15 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	j	beq_cont.31302 
beq_else.31301 :
	addi	%r0 %r17 1
	add	%r15 %r17 %r17
	sw	%r26 %r16 56
	sw	%r26 %r15 60
	mov	%r17 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	read_net_item.2804 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 60
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31302 :
	lw	%r26 %r2 52
	slli	%r2 %r2 2
	lw	%r26 %r3 48
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31300 :
	lw	%r26 %r2 44
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31298 :
	lw	%r26 %r2 36
	slli	%r2 %r2 2
	lw	%r26 %r3 32
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31296 :
	lw	%r26 %r2 28
	slli	%r2 %r2 2
	lw	%r26 %r3 24
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31294 :
	lw	%r26 %r2 20
	slli	%r2 %r2 2
	lw	%r26 %r3 16
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31292 :
	lw	%r26 %r2 12
	slli	%r2 %r2 2
	lw	%r26 %r3 8
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31290 :
	lw	%r26 %r2 4
	slli	%r2 %r2 2
	lw	%r26 %r3 0
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2806 :
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r4 -1
	sw	%r26 %r1 0
	bne	%r3 %r4 beq_else.31303 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	j	beq_cont.31304 
beq_else.31303 :
	addi	%r0 %r4 1
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	bne	%r5 %r6 beq_else.31305 
	addi	%r0 %r4 2
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	j	beq_cont.31306 
beq_else.31305 :
	addi	%r0 %r6 2
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	bne	%r7 %r8 beq_else.31307 
	addi	%r0 %r6 3
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	beq_cont.31308 
beq_else.31307 :
	addi	%r0 %r8 3
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 20
	sw	%r26 %r6 24
	bne	%r9 %r10 beq_else.31309 
	addi	%r0 %r8 4
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.31310 
beq_else.31309 :
	addi	%r0 %r10 4
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 28
	sw	%r26 %r8 32
	bne	%r11 %r12 beq_else.31311 
	addi	%r0 %r10 5
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	beq_cont.31312 
beq_else.31311 :
	addi	%r0 %r12 5
	in	%r13
	addi	%r0 %r14 -1
	sw	%r26 %r11 36
	sw	%r26 %r10 40
	bne	%r13 %r14 beq_else.31313 
	addi	%r0 %r12 6
	addi	%r0 %r13 -1
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	j	beq_cont.31314 
beq_else.31313 :
	addi	%r0 %r14 6
	in	%r15
	addi	%r0 %r16 -1
	sw	%r26 %r13 44
	sw	%r26 %r12 48
	bne	%r15 %r16 beq_else.31315 
	addi	%r0 %r14 7
	addi	%r0 %r15 -1
	mov	%r15 %r2
	mov	%r14 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	j	beq_cont.31316 
beq_else.31315 :
	addi	%r0 %r16 7
	sw	%r26 %r15 52
	sw	%r26 %r14 56
	mov	%r16 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	read_net_item.2804 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	slli	%r2 %r2 2
	lw	%r26 %r3 52
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31316 :
	lw	%r26 %r2 48
	slli	%r2 %r2 2
	lw	%r26 %r3 44
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31314 :
	lw	%r26 %r2 40
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31312 :
	lw	%r26 %r2 32
	slli	%r2 %r2 2
	lw	%r26 %r3 28
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31310 :
	lw	%r26 %r2 24
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31308 :
	lw	%r26 %r2 16
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31306 :
	lw	%r26 %r2 8
	slli	%r2 %r2 2
	lw	%r26 %r3 4
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31304 :
	lw	%r2 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31317 
	addi	%r0 %r1 1
	lw	%r26 %r3 0
	add	%r3 %r1 %r1
	j	min_caml_create_array
beq_else.31317 :
	addi	%r0 %r1 1
	lw	%r26 %r3 0
	add	%r3 %r1 %r1
	addi	%r0 %r4 0
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r2 60
	sw	%r26 %r1 64
	bne	%r5 %r6 beq_else.31318 
	addi	%r0 %r4 1
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	j	beq_cont.31319 
beq_else.31318 :
	addi	%r0 %r6 1
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 68
	sw	%r26 %r4 72
	bne	%r7 %r8 beq_else.31320 
	addi	%r0 %r6 2
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	beq_cont.31321 
beq_else.31320 :
	addi	%r0 %r8 2
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 76
	sw	%r26 %r6 80
	bne	%r9 %r10 beq_else.31322 
	addi	%r0 %r8 3
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	j	beq_cont.31323 
beq_else.31322 :
	addi	%r0 %r10 3
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 84
	sw	%r26 %r8 88
	bne	%r11 %r12 beq_else.31324 
	addi	%r0 %r10 4
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	beq_cont.31325 
beq_else.31324 :
	addi	%r0 %r12 4
	in	%r13
	addi	%r0 %r14 -1
	sw	%r26 %r11 92
	sw	%r26 %r10 96
	bne	%r13 %r14 beq_else.31326 
	addi	%r0 %r12 5
	addi	%r0 %r13 -1
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	j	beq_cont.31327 
beq_else.31326 :
	addi	%r0 %r14 5
	in	%r15
	addi	%r0 %r16 -1
	sw	%r26 %r13 100
	sw	%r26 %r12 104
	bne	%r15 %r16 beq_else.31328 
	addi	%r0 %r14 6
	addi	%r0 %r15 -1
	mov	%r15 %r2
	mov	%r14 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	beq_cont.31329 
beq_else.31328 :
	addi	%r0 %r16 6
	sw	%r26 %r15 108
	sw	%r26 %r14 112
	mov	%r16 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	read_net_item.2804 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r2 112
	slli	%r2 %r2 2
	lw	%r26 %r3 108
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31329 :
	lw	%r26 %r2 104
	slli	%r2 %r2 2
	lw	%r26 %r3 100
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31327 :
	lw	%r26 %r2 96
	slli	%r2 %r2 2
	lw	%r26 %r3 92
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31325 :
	lw	%r26 %r2 88
	slli	%r2 %r2 2
	lw	%r26 %r3 84
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31323 :
	lw	%r26 %r2 80
	slli	%r2 %r2 2
	lw	%r26 %r3 76
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31321 :
	lw	%r26 %r2 72
	slli	%r2 %r2 2
	lw	%r26 %r3 68
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31319 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31330 
	addi	%r0 %r1 1
	lw	%r26 %r3 64
	add	%r3 %r1 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	j	beq_cont.31331 
beq_else.31330 :
	addi	%r0 %r1 1
	lw	%r26 %r3 64
	add	%r3 %r1 %r1
	addi	%r0 %r4 0
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r2 116
	sw	%r26 %r1 120
	bne	%r5 %r6 beq_else.31332 
	addi	%r0 %r4 1
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r2
	j	beq_cont.31333 
beq_else.31332 :
	addi	%r0 %r6 1
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 124
	sw	%r26 %r4 128
	bne	%r7 %r8 beq_else.31334 
	addi	%r0 %r6 2
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	j	beq_cont.31335 
beq_else.31334 :
	addi	%r0 %r8 2
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 132
	sw	%r26 %r6 136
	bne	%r9 %r10 beq_else.31336 
	addi	%r0 %r8 3
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	j	beq_cont.31337 
beq_else.31336 :
	addi	%r0 %r10 3
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 140
	sw	%r26 %r8 144
	bne	%r11 %r12 beq_else.31338 
	addi	%r0 %r10 4
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	j	beq_cont.31339 
beq_else.31338 :
	addi	%r0 %r12 4
	in	%r13
	addi	%r0 %r14 -1
	sw	%r26 %r11 148
	sw	%r26 %r10 152
	bne	%r13 %r14 beq_else.31340 
	addi	%r0 %r12 5
	addi	%r0 %r13 -1
	mov	%r13 %r2
	mov	%r12 %r1
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	j	beq_cont.31341 
beq_else.31340 :
	addi	%r0 %r14 5
	sw	%r26 %r13 156
	sw	%r26 %r12 160
	mov	%r14 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	read_net_item.2804 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 160
	slli	%r2 %r2 2
	lw	%r26 %r3 156
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31341 :
	lw	%r26 %r2 152
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31339 :
	lw	%r26 %r2 144
	slli	%r2 %r2 2
	lw	%r26 %r3 140
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31337 :
	lw	%r26 %r2 136
	slli	%r2 %r2 2
	lw	%r26 %r3 132
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31335 :
	lw	%r26 %r2 128
	slli	%r2 %r2 2
	lw	%r26 %r3 124
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31333 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31342 
	addi	%r0 %r1 1
	lw	%r26 %r3 120
	add	%r3 %r1 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	j	beq_cont.31343 
beq_else.31342 :
	addi	%r0 %r1 1
	lw	%r26 %r3 120
	add	%r3 %r1 %r1
	addi	%r0 %r4 0
	in	%r5
	addi	%r0 %r6 -1
	sw	%r26 %r2 164
	sw	%r26 %r1 168
	bne	%r5 %r6 beq_else.31344 
	addi	%r0 %r4 1
	addi	%r0 %r5 -1
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	min_caml_create_array 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	mov	%r1 %r2
	j	beq_cont.31345 
beq_else.31344 :
	addi	%r0 %r6 1
	in	%r7
	addi	%r0 %r8 -1
	sw	%r26 %r5 172
	sw	%r26 %r4 176
	bne	%r7 %r8 beq_else.31346 
	addi	%r0 %r6 2
	addi	%r0 %r7 -1
	mov	%r7 %r2
	mov	%r6 %r1
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	j	beq_cont.31347 
beq_else.31346 :
	addi	%r0 %r8 2
	in	%r9
	addi	%r0 %r10 -1
	sw	%r26 %r7 180
	sw	%r26 %r6 184
	bne	%r9 %r10 beq_else.31348 
	addi	%r0 %r8 3
	addi	%r0 %r9 -1
	mov	%r9 %r2
	mov	%r8 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	j	beq_cont.31349 
beq_else.31348 :
	addi	%r0 %r10 3
	in	%r11
	addi	%r0 %r12 -1
	sw	%r26 %r9 188
	sw	%r26 %r8 192
	bne	%r11 %r12 beq_else.31350 
	addi	%r0 %r10 4
	addi	%r0 %r11 -1
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	j	beq_cont.31351 
beq_else.31350 :
	addi	%r0 %r12 4
	sw	%r26 %r11 196
	sw	%r26 %r10 200
	mov	%r12 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	read_net_item.2804 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	slli	%r2 %r2 2
	lw	%r26 %r3 196
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31351 :
	lw	%r26 %r2 192
	slli	%r2 %r2 2
	lw	%r26 %r3 188
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31349 :
	lw	%r26 %r2 184
	slli	%r2 %r2 2
	lw	%r26 %r3 180
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31347 :
	lw	%r26 %r2 176
	slli	%r2 %r2 2
	lw	%r26 %r3 172
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	mov	%r1 %r2
beq_cont.31345 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31352 
	addi	%r0 %r1 1
	lw	%r26 %r3 168
	add	%r3 %r1 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	j	beq_cont.31353 
beq_else.31352 :
	addi	%r0 %r1 1
	lw	%r26 %r3 168
	add	%r3 %r1 %r1
	sw	%r26 %r2 204
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	read_or_network.2806 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 168
	slli	%r2 %r2 2
	lw	%r26 %r3 204
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31353 :
	lw	%r26 %r2 120
	slli	%r2 %r2 2
	lw	%r26 %r3 164
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31343 :
	lw	%r26 %r2 64
	slli	%r2 %r2 2
	lw	%r26 %r3 116
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31331 :
	lw	%r26 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2808 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	in	%r4
	addi	%r0 %r5 -1
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	bne	%r4 %r5 beq_else.31354 
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	j	beq_cont.31355 
beq_else.31354 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	bne	%r6 %r7 beq_else.31356 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	beq_cont.31357 
beq_else.31356 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 20
	sw	%r26 %r5 24
	bne	%r8 %r9 beq_else.31358 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.31359 
beq_else.31358 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 28
	sw	%r26 %r7 32
	bne	%r10 %r11 beq_else.31360 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	beq_cont.31361 
beq_else.31360 :
	addi	%r0 %r11 4
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 36
	sw	%r26 %r9 40
	bne	%r12 %r13 beq_else.31362 
	addi	%r0 %r11 5
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	j	beq_cont.31363 
beq_else.31362 :
	addi	%r0 %r13 5
	in	%r14
	addi	%r0 %r15 -1
	sw	%r26 %r12 44
	sw	%r26 %r11 48
	bne	%r14 %r15 beq_else.31364 
	addi	%r0 %r13 6
	addi	%r0 %r14 -1
	mov	%r14 %r2
	mov	%r13 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	j	beq_cont.31365 
beq_else.31364 :
	addi	%r0 %r15 6
	in	%r16
	addi	%r0 %r17 -1
	sw	%r26 %r14 52
	sw	%r26 %r13 56
	bne	%r16 %r17 beq_else.31366 
	addi	%r0 %r15 7
	addi	%r0 %r16 -1
	mov	%r16 %r2
	mov	%r15 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	j	beq_cont.31367 
beq_else.31366 :
	addi	%r0 %r17 7
	sw	%r26 %r16 60
	sw	%r26 %r15 64
	mov	%r17 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	read_net_item.2804 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31367 :
	lw	%r26 %r2 56
	slli	%r2 %r2 2
	lw	%r26 %r3 52
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31365 :
	lw	%r26 %r2 48
	slli	%r2 %r2 2
	lw	%r26 %r3 44
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31363 :
	lw	%r26 %r2 40
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31361 :
	lw	%r26 %r2 32
	slli	%r2 %r2 2
	lw	%r26 %r3 28
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31359 :
	lw	%r26 %r2 24
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31357 :
	lw	%r26 %r2 16
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31355 :
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31368 
	retl
beq_else.31368 :
	lw	%r26 %r2 8
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r5 -1
	sw	%r26 %r1 68
	bne	%r3 %r5 beq_else.31370 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	beq_cont.31371 
beq_else.31370 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r3 72
	sw	%r26 %r2 76
	bne	%r6 %r7 beq_else.31372 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	j	beq_cont.31373 
beq_else.31372 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 80
	sw	%r26 %r5 84
	bne	%r8 %r9 beq_else.31374 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	beq_cont.31375 
beq_else.31374 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 88
	sw	%r26 %r7 92
	bne	%r10 %r11 beq_else.31376 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	j	beq_cont.31377 
beq_else.31376 :
	addi	%r0 %r11 4
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 96
	sw	%r26 %r9 100
	bne	%r12 %r13 beq_else.31378 
	addi	%r0 %r11 5
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	beq_cont.31379 
beq_else.31378 :
	addi	%r0 %r13 5
	in	%r14
	addi	%r0 %r15 -1
	sw	%r26 %r12 104
	sw	%r26 %r11 108
	bne	%r14 %r15 beq_else.31380 
	addi	%r0 %r13 6
	addi	%r0 %r14 -1
	mov	%r14 %r2
	mov	%r13 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	j	beq_cont.31381 
beq_else.31380 :
	addi	%r0 %r15 6
	sw	%r26 %r14 112
	sw	%r26 %r13 116
	mov	%r15 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	read_net_item.2804 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw	%r26 %r2 116
	slli	%r2 %r2 2
	lw	%r26 %r3 112
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31381 :
	lw	%r26 %r2 108
	slli	%r2 %r2 2
	lw	%r26 %r3 104
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31379 :
	lw	%r26 %r2 100
	slli	%r2 %r2 2
	lw	%r26 %r3 96
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31377 :
	lw	%r26 %r2 92
	slli	%r2 %r2 2
	lw	%r26 %r3 88
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31375 :
	lw	%r26 %r2 84
	slli	%r2 %r2 2
	lw	%r26 %r3 80
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31373 :
	lw	%r26 %r2 76
	slli	%r2 %r2 2
	lw	%r26 %r3 72
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31371 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31382 
	retl
beq_else.31382 :
	lw	%r26 %r2 68
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r5 -1
	sw	%r26 %r1 120
	bne	%r3 %r5 beq_else.31384 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	j	beq_cont.31385 
beq_else.31384 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r3 124
	sw	%r26 %r2 128
	bne	%r6 %r7 beq_else.31386 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	j	beq_cont.31387 
beq_else.31386 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 132
	sw	%r26 %r5 136
	bne	%r8 %r9 beq_else.31388 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	j	beq_cont.31389 
beq_else.31388 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 140
	sw	%r26 %r7 144
	bne	%r10 %r11 beq_else.31390 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	j	beq_cont.31391 
beq_else.31390 :
	addi	%r0 %r11 4
	in	%r12
	addi	%r0 %r13 -1
	sw	%r26 %r10 148
	sw	%r26 %r9 152
	bne	%r12 %r13 beq_else.31392 
	addi	%r0 %r11 5
	addi	%r0 %r12 -1
	mov	%r12 %r2
	mov	%r11 %r1
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	j	beq_cont.31393 
beq_else.31392 :
	addi	%r0 %r13 5
	sw	%r26 %r12 156
	sw	%r26 %r11 160
	mov	%r13 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	read_net_item.2804 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 160
	slli	%r2 %r2 2
	lw	%r26 %r3 156
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31393 :
	lw	%r26 %r2 152
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31391 :
	lw	%r26 %r2 144
	slli	%r2 %r2 2
	lw	%r26 %r3 140
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31389 :
	lw	%r26 %r2 136
	slli	%r2 %r2 2
	lw	%r26 %r3 132
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31387 :
	lw	%r26 %r2 128
	slli	%r2 %r2 2
	lw	%r26 %r3 124
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31385 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31394 
	retl
beq_else.31394 :
	lw	%r26 %r2 120
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r2 0
	in	%r3
	addi	%r0 %r5 -1
	sw	%r26 %r1 164
	bne	%r3 %r5 beq_else.31396 
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	min_caml_create_array 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	j	beq_cont.31397 
beq_else.31396 :
	addi	%r0 %r5 1
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r3 168
	sw	%r26 %r2 172
	bne	%r6 %r7 beq_else.31398 
	addi	%r0 %r5 2
	addi	%r0 %r6 -1
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	j	beq_cont.31399 
beq_else.31398 :
	addi	%r0 %r7 2
	in	%r8
	addi	%r0 %r9 -1
	sw	%r26 %r6 176
	sw	%r26 %r5 180
	bne	%r8 %r9 beq_else.31400 
	addi	%r0 %r7 3
	addi	%r0 %r8 -1
	mov	%r8 %r2
	mov	%r7 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	j	beq_cont.31401 
beq_else.31400 :
	addi	%r0 %r9 3
	in	%r10
	addi	%r0 %r11 -1
	sw	%r26 %r8 184
	sw	%r26 %r7 188
	bne	%r10 %r11 beq_else.31402 
	addi	%r0 %r9 4
	addi	%r0 %r10 -1
	mov	%r10 %r2
	mov	%r9 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	j	beq_cont.31403 
beq_else.31402 :
	addi	%r0 %r11 4
	sw	%r26 %r10 192
	sw	%r26 %r9 196
	mov	%r11 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	read_net_item.2804 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 196
	slli	%r2 %r2 2
	lw	%r26 %r3 192
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31403 :
	lw	%r26 %r2 188
	slli	%r2 %r2 2
	lw	%r26 %r3 184
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31401 :
	lw	%r26 %r2 180
	slli	%r2 %r2 2
	lw	%r26 %r3 176
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31399 :
	lw	%r26 %r2 172
	slli	%r2 %r2 2
	lw	%r26 %r3 168
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
beq_cont.31397 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.31404 
	retl
beq_else.31404 :
	lw	%r26 %r2 164
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
iter_setup_dirvec_constants.2905 :
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.31406 
	slli	%r2 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r1 %r4 4
	lw	%r1 %r5 0
	lw	%r3 %r6 4
	addi	%r0 %r7 1
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	bne	%r6 %r7 beq_else.31407 
	addi	%r0 %r6 6
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.31409 
	addi	%r0 %r2 1
	j	fbeq_cont.31410 
fbeq_else.31409 :
	addi	%r0 %r2 0
fbeq_cont.31410 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.31411 
	addi	%r0 %r2 0
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.31413 
	addi	%r0 %r6 1
	j	fbl_cont.31414 
fbl_else.31413 :
	addi	%r0 %r6 0
fbl_cont.31414 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31415 
	mov	%r6 %r5
	j	beq_cont.31416 
beq_else.31415 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.31417 
	addi	%r0 %r5 1
	j	beq_cont.31418 
beq_else.31417 :
	addi	%r0 %r5 0
beq_cont.31418 :
beq_cont.31416 :
	lw	%r4 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.31419 
	neg.s	%f0 %f0
	j	beq_cont.31420 
beq_else.31419 :
beq_cont.31420 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31412 
beq_else.31411 :
	addi	%r0 %r2 1
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.31412 :
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.31421 
	addi	%r0 %r2 1
	j	fbeq_cont.31422 
fbeq_else.31421 :
	addi	%r0 %r2 0
fbeq_cont.31422 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.31423 
	addi	%r0 %r2 2
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.31425 
	addi	%r0 %r6 1
	j	fbl_cont.31426 
fbl_else.31425 :
	addi	%r0 %r6 0
fbl_cont.31426 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31427 
	mov	%r6 %r5
	j	beq_cont.31428 
beq_else.31427 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.31429 
	addi	%r0 %r5 1
	j	beq_cont.31430 
beq_else.31429 :
	addi	%r0 %r5 0
beq_cont.31430 :
beq_cont.31428 :
	lw	%r4 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.31431 
	neg.s	%f0 %f0
	j	beq_cont.31432 
beq_else.31431 :
beq_cont.31432 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 3
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31424 
beq_else.31423 :
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.31424 :
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.31433 
	addi	%r0 %r2 1
	j	fbeq_cont.31434 
fbeq_else.31433 :
	addi	%r0 %r2 0
fbeq_cont.31434 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.31435 
	addi	%r0 %r2 4
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.31437 
	addi	%r0 %r6 1
	j	fbl_cont.31438 
fbl_else.31437 :
	addi	%r0 %r6 0
fbl_cont.31438 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.31439 
	mov	%r6 %r5
	j	beq_cont.31440 
beq_else.31439 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.31441 
	addi	%r0 %r5 1
	j	beq_cont.31442 
beq_else.31441 :
	addi	%r0 %r5 0
beq_cont.31442 :
beq_cont.31440 :
	lw	%r4 %r4 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.31443 
	neg.s	%f0 %f0
	j	beq_cont.31444 
beq_else.31443 :
beq_cont.31444 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 5
	addi	%r0 %r4 l.24784
	ilw.s	%r4 %f0 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31436 
beq_else.31435 :
	addi	%r0 %r2 5
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.31436 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.31408 
beq_else.31407 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.31445 
	addi	%r0 %r6 4
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r26 %r2 16
	lw	%r2 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f1 0
	lw	%r2 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f1 0
	lw	%r2 %r3 16
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.31447 
	addi	%r0 %r3 1
	j	fbl_cont.31448 
fbl_else.31447 :
	addi	%r0 %r3 0
fbl_cont.31448 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31449 
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31450 
beq_else.31449 :
	addi	%r0 %r3 0
	addi	%r0 %r4 l.24815
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f1
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 1
	lw	%r2 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 2
	lw	%r2 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f0 %f1 %f1
	neg.s	%f1 %f1
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 3
	lw	%r2 %r2 16
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	div.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	slli	%r3 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.31450 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.31446 
beq_else.31445 :
	addi	%r0 %r6 5
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f0 0
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r3 16
	sw	%r26 %r5 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f0 %f3
	lw	%r26 %r2 16
	lw	%r2 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r2 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r2 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r2 %r4 12
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31451 
	mov.s	%f3 %f0
	j	beq_cont.31452 
beq_else.31451 :
	mul.s	%f2 %f1 %f4
	lw	%r2 %r4 36
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r2 %r4 36
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r2 %r4 36
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.31452 :
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f1 0
	lw	%r2 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	neg.s	%f1 %f1
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f2 0
	lw	%r2 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f3 0
	lw	%r2 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	neg.s	%f3 %f3
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r1 %r4 %r25
	sw.s	%r25 %f0 0
	lw	%r2 %r4 12
	addi	%r0 %r5 0
	beq	%r4 %r5 bne_else.31453 
	addi	%r0 %r4 1
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	lw	%r2 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f5 0
	lw	%r2 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f5 0
	div.s	%f5 %f4 %f4
	sub.s	%f4 %f1 %f1
	slli	%r4 %r4 2
	add	%r1 %r4 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r4 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	lw	%r2 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f1 %f1
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	lw	%r2 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f4 0
	div.s	%f4 %f1 %f1
	sub.s	%f1 %f2 %f1
	slli	%r4 %r4 2
	add	%r1 %r4 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r4 3
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	lw	%r2 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f2 0
	lw	%r2 %r2 36
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r2 l.24980
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	sub.s	%f1 %f3 %f1
	slli	%r4 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f1 0
	j	bne_cont.31454 
bne_else.31453 :
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 3
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f3 0
bne_cont.31454 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.31455 
	addi	%r0 %r2 1
	j	fbeq_cont.31456 
fbeq_else.31455 :
	addi	%r0 %r2 0
fbeq_cont.31456 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.31457 
	addi	%r0 %r2 4
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	div.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31458 
beq_else.31457 :
beq_cont.31458 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
beq_cont.31446 :
beq_cont.31408 :
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
ble_else.31406 :
	retl
setup_startp_constants.2910 :
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.31460 
	slli	%r2 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 40
	lw	%r3 %r5 4
	addi	%r0 %r6 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r1 %r7 %r25
	lw.s	%r25 %f0 0
	lw	%r3 %r7 20
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r6 1
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r1 %r7 %r25
	lw.s	%r25 %f0 0
	lw	%r3 %r7 20
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r6 2
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r1 %r7 %r25
	lw.s	%r25 %f0 0
	lw	%r3 %r7 20
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.31461 
	addi	%r0 %r5 3
	lw	%r3 %r3 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r5 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31462 
beq_else.31461 :
	addi	%r0 %r6 2
	bge	%r6 %r5 bl_else.31463 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f0 %f3
	lw	%r3 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r3 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r3 %r6 16
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r6 12
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.31465 
	mov.s	%f3 %f0
	j	beq_cont.31466 
beq_else.31465 :
	mul.s	%f2 %f1 %f4
	lw	%r3 %r6 36
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r3 %r6 36
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r3 %r3 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.31466 :
	addi	%r0 %r3 3
	addi	%r0 %r6 3
	bne	%r5 %r6 beq_else.31467 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.31468 
beq_else.31467 :
beq_cont.31468 :
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	bl_cont.31464 
bl_else.31463 :
bl_cont.31464 :
beq_cont.31462 :
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	lw	%r24 %r23 0
	jr	%r23
ble_else.31460 :
	retl
check_all_inside.2935 :
	lw	%r24 %r3 4
	slli	%r1 %r4 2
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.31470 
	addi	%r0 %r1 1
	retl
beq_else.31470 :
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r3 %r4 20
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f1 %f4
	lw	%r3 %r4 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f2 %f5
	lw	%r3 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.31471 
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.31473 
	neg.s	%f3 %f3
	j	fbl_cont.31474 
fbl_else.31473 :
fbl_cont.31474 :
	lw	%r3 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	fbge	%f3 %f6 fbl_else.31475 
	addi	%r0 %r4 1
	j	fbl_cont.31476 
fbl_else.31475 :
	addi	%r0 %r4 0
fbl_cont.31476 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31477 
	addi	%r0 %r4 0
	j	beq_cont.31478 
beq_else.31477 :
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f3 0
	fbge	%f4 %f3 fbl_else.31479 
	neg.s	%f4 %f3
	j	fbl_cont.31480 
fbl_else.31479 :
	mov.s	%f4 %f3
fbl_cont.31480 :
	lw	%r3 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.31481 
	addi	%r0 %r4 1
	j	fbl_cont.31482 
fbl_else.31481 :
	addi	%r0 %r4 0
fbl_cont.31482 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31483 
	addi	%r0 %r4 0
	j	beq_cont.31484 
beq_else.31483 :
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f3 0
	fbge	%f5 %f3 fbl_else.31485 
	neg.s	%f5 %f3
	j	fbl_cont.31486 
fbl_else.31485 :
	mov.s	%f5 %f3
fbl_cont.31486 :
	lw	%r3 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.31487 
	addi	%r0 %r4 1
	j	fbl_cont.31488 
fbl_else.31487 :
	addi	%r0 %r4 0
fbl_cont.31488 :
beq_cont.31484 :
beq_cont.31478 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31489 
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31491 
	addi	%r0 %r3 1
	j	beq_cont.31492 
beq_else.31491 :
	addi	%r0 %r3 0
beq_cont.31492 :
	j	beq_cont.31490 
beq_else.31489 :
	lw	%r3 %r3 24
beq_cont.31490 :
	j	beq_cont.31472 
beq_else.31471 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.31493 
	lw	%r3 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	mul.s	%f3 %f6 %f3
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	mul.s	%f4 %f6 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r3 %r3 24
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.31495 
	addi	%r0 %r4 1
	j	fbl_cont.31496 
fbl_else.31495 :
	addi	%r0 %r4 0
fbl_cont.31496 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.31497 
	mov	%r4 %r3
	j	beq_cont.31498 
beq_else.31497 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.31499 
	addi	%r0 %r3 1
	j	beq_cont.31500 
beq_else.31499 :
	addi	%r0 %r3 0
beq_cont.31500 :
beq_cont.31498 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31501 
	addi	%r0 %r3 1
	j	beq_cont.31502 
beq_else.31501 :
	addi	%r0 %r3 0
beq_cont.31502 :
	j	beq_cont.31494 
beq_else.31493 :
	mul.s	%f3 %f3 %f6
	lw	%r3 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r3 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r3 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r3 %r4 12
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31503 
	mov.s	%f6 %f3
	j	beq_cont.31504 
beq_else.31503 :
	mul.s	%f5 %f4 %f7
	lw	%r3 %r4 36
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r3 %r4 36
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r3 %r4 36
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.31504 :
	lw	%r3 %r4 4
	addi	%r0 %r5 3
	bne	%r4 %r5 beq_else.31505 
	addi	%r0 %r4 l.24784
	ilw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	j	beq_cont.31506 
beq_else.31505 :
beq_cont.31506 :
	lw	%r3 %r3 24
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.31507 
	addi	%r0 %r4 1
	j	fbl_cont.31508 
fbl_else.31507 :
	addi	%r0 %r4 0
fbl_cont.31508 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.31509 
	mov	%r4 %r3
	j	beq_cont.31510 
beq_else.31509 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.31511 
	addi	%r0 %r3 1
	j	beq_cont.31512 
beq_else.31511 :
	addi	%r0 %r3 0
beq_cont.31512 :
beq_cont.31510 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31513 
	addi	%r0 %r3 1
	j	beq_cont.31514 
beq_else.31513 :
	addi	%r0 %r3 0
beq_cont.31514 :
beq_cont.31494 :
beq_cont.31472 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31515 
	addi	%r0 %r3 1
	add	%r1 %r3 %r1
	lw	%r24 %r23 0
	jr	%r23
beq_else.31515 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.2941 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	slli	%r1 %r10 2
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.31516 
	addi	%r0 %r1 0
	retl
beq_else.31516 :
	slli	%r1 %r10 2
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	slli	%r10 %r11 2
	add	%r5 %r11 %r25
	lw	%r25 %r11 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f0 0
	lw	%r11 %r12 20
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f1 0
	lw	%r11 %r12 20
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f2 0
	lw	%r11 %r12 20
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r10 %r12 2
	add	%r8 %r12 %r25
	lw	%r25 %r8 0
	lw	%r11 %r12 4
	addi	%r0 %r13 1
	bne	%r12 %r13 beq_else.31517 
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.31519 
	neg.s	%f4 %f4
	j	fbl_cont.31520 
fbl_else.31519 :
fbl_cont.31520 :
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31521 
	addi	%r0 %r12 1
	j	fbl_cont.31522 
fbl_else.31521 :
	addi	%r0 %r12 0
fbl_cont.31522 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31523 
	addi	%r0 %r12 0
	j	beq_cont.31524 
beq_else.31523 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.31525 
	neg.s	%f4 %f4
	j	fbl_cont.31526 
fbl_else.31525 :
fbl_cont.31526 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31527 
	addi	%r0 %r12 1
	j	fbl_cont.31528 
fbl_else.31527 :
	addi	%r0 %r12 0
fbl_cont.31528 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31529 
	addi	%r0 %r12 0
	j	beq_cont.31530 
beq_else.31529 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.31531 
	addi	%r0 %r12 1
	j	fbeq_cont.31532 
fbeq_else.31531 :
	addi	%r0 %r12 0
fbeq_cont.31532 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31533 
	addi	%r0 %r12 1
	j	beq_cont.31534 
beq_else.31533 :
	addi	%r0 %r12 0
beq_cont.31534 :
beq_cont.31530 :
beq_cont.31524 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31535 
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.31537 
	neg.s	%f4 %f4
	j	fbl_cont.31538 
fbl_else.31537 :
fbl_cont.31538 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31539 
	addi	%r0 %r12 1
	j	fbl_cont.31540 
fbl_else.31539 :
	addi	%r0 %r12 0
fbl_cont.31540 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31541 
	addi	%r0 %r12 0
	j	beq_cont.31542 
beq_else.31541 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.31543 
	neg.s	%f4 %f4
	j	fbl_cont.31544 
fbl_else.31543 :
fbl_cont.31544 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31545 
	addi	%r0 %r12 1
	j	fbl_cont.31546 
fbl_else.31545 :
	addi	%r0 %r12 0
fbl_cont.31546 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31547 
	addi	%r0 %r12 0
	j	beq_cont.31548 
beq_else.31547 :
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.31549 
	addi	%r0 %r12 1
	j	fbeq_cont.31550 
fbeq_else.31549 :
	addi	%r0 %r12 0
fbeq_cont.31550 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31551 
	addi	%r0 %r12 1
	j	beq_cont.31552 
beq_else.31551 :
	addi	%r0 %r12 0
beq_cont.31552 :
beq_cont.31548 :
beq_cont.31542 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31553 
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r12 5
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.31555 
	neg.s	%f0 %f0
	j	fbl_cont.31556 
fbl_else.31555 :
fbl_cont.31556 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.31557 
	addi	%r0 %r12 1
	j	fbl_cont.31558 
fbl_else.31557 :
	addi	%r0 %r12 0
fbl_cont.31558 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.31559 
	addi	%r0 %r3 0
	j	beq_cont.31560 
beq_else.31559 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.31561 
	neg.s	%f0 %f0
	j	fbl_cont.31562 
fbl_else.31561 :
fbl_cont.31562 :
	lw	%r11 %r3 16
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.31563 
	addi	%r0 %r3 1
	j	fbl_cont.31564 
fbl_else.31563 :
	addi	%r0 %r3 0
fbl_cont.31564 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.31565 
	addi	%r0 %r3 0
	j	beq_cont.31566 
beq_else.31565 :
	addi	%r0 %r3 5
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.31567 
	addi	%r0 %r3 1
	j	fbeq_cont.31568 
fbeq_else.31567 :
	addi	%r0 %r3 0
fbeq_cont.31568 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.31569 
	addi	%r0 %r3 1
	j	beq_cont.31570 
beq_else.31569 :
	addi	%r0 %r3 0
beq_cont.31570 :
beq_cont.31566 :
beq_cont.31560 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.31571 
	addi	%r0 %r3 0
	j	beq_cont.31572 
beq_else.31571 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r3 3
beq_cont.31572 :
	j	beq_cont.31554 
beq_else.31553 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 2
beq_cont.31554 :
	j	beq_cont.31536 
beq_else.31535 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 1
beq_cont.31536 :
	j	beq_cont.31518 
beq_else.31517 :
	addi	%r0 %r3 2
	bne	%r12 %r3 beq_else.31573 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.31575 
	addi	%r0 %r3 1
	j	fbl_cont.31576 
fbl_else.31575 :
	addi	%r0 %r3 0
fbl_cont.31576 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.31577 
	addi	%r0 %r3 0
	j	beq_cont.31578 
beq_else.31577 :
	addi	%r0 %r3 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
beq_cont.31578 :
	j	beq_cont.31574 
beq_else.31573 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.31579 
	addi	%r0 %r3 1
	j	fbeq_cont.31580 
fbeq_else.31579 :
	addi	%r0 %r3 0
fbeq_cont.31580 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.31581 
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r3 3
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r11 %r3 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r11 %r3 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r11 %r3 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r11 %r3 12
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.31583 
	mov.s	%f5 %f0
	j	beq_cont.31584 
beq_else.31583 :
	mul.s	%f2 %f1 %f6
	lw	%r11 %r3 36
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r11 %r3 36
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r11 %r3 36
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.31584 :
	lw	%r11 %r3 4
	addi	%r0 %r12 3
	bne	%r3 %r12 beq_else.31585 
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.31586 
beq_else.31585 :
beq_cont.31586 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.31587 
	addi	%r0 %r3 1
	j	fbl_cont.31588 
fbl_else.31587 :
	addi	%r0 %r3 0
fbl_cont.31588 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.31589 
	addi	%r0 %r3 0
	j	beq_cont.31590 
beq_else.31589 :
	lw	%r11 %r3 24
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.31591 
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r0 %r11 4
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31592 
beq_else.31591 :
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r11 4
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
beq_cont.31592 :
	addi	%r0 %r3 1
beq_cont.31590 :
	j	beq_cont.31582 
beq_else.31581 :
	addi	%r0 %r3 0
beq_cont.31582 :
beq_cont.31574 :
beq_cont.31518 :
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r4 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	beq	%r3 %r4 bne_else.31593 
	addi	%r0 %r3 l.25271
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.31595 
	addi	%r0 %r3 1
	j	fbl_cont.31596 
fbl_else.31595 :
	addi	%r0 %r3 0
fbl_cont.31596 :
	j	bne_cont.31594 
bne_else.31593 :
	addi	%r0 %r3 0
bne_cont.31594 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31597 
	slli	%r10 %r3 2
	add	%r5 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31598 
	addi	%r0 %r1 0
	retl
beq_else.31598 :
	addi	%r0 %r3 1
	add	%r1 %r3 %r1
	lw	%r24 %r23 0
	jr	%r23
beq_else.31597 :
	addi	%r0 %r3 l.25273
	ilw.s	%r3 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f0 %f0
	addi	%r0 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	mov	%r9 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31599 
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
beq_else.31599 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2944 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	slli	%r1 %r5 2
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.31600 
	addi	%r0 %r1 0
	retl
beq_else.31600 :
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r3 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31601 
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31602 
	addi	%r0 %r1 0
	retl
beq_else.31602 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 20
	mov	%r5 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31603 
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31604 
	addi	%r0 %r1 0
	retl
beq_else.31604 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 24
	mov	%r5 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31605 
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31606 
	addi	%r0 %r1 0
	retl
beq_else.31606 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 28
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31607 
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31608 
	addi	%r0 %r1 0
	retl
beq_else.31608 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 32
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31609 
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31610 
	addi	%r0 %r1 0
	retl
beq_else.31610 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 36
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31611 
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31612 
	addi	%r0 %r1 0
	retl
beq_else.31612 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r24 4
	sw	%r26 %r1 40
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31613 
	addi	%r0 %r1 1
	lw	%r26 %r2 40
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	bne	%r2 %r4 beq_else.31614 
	addi	%r0 %r1 0
	retl
beq_else.31614 :
	slli	%r2 %r2 2
	lw	%r26 %r4 8
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	sw	%r26 %r1 44
	mov	%r4 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31615 
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	add	%r2 %r1 %r1
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
beq_else.31615 :
	addi	%r0 %r1 1
	retl
beq_else.31613 :
	addi	%r0 %r1 1
	retl
beq_else.31611 :
	addi	%r0 %r1 1
	retl
beq_else.31609 :
	addi	%r0 %r1 1
	retl
beq_else.31607 :
	addi	%r0 %r1 1
	retl
beq_else.31605 :
	addi	%r0 %r1 1
	retl
beq_else.31603 :
	addi	%r0 %r1 1
	retl
beq_else.31601 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2947 :
	lw	%r24 %r3 32
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	slli	%r1 %r11 2
	add	%r2 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r12 0
	addi	%r0 %r13 -1
	bne	%r12 %r13 beq_else.31616 
	addi	%r0 %r1 0
	retl
beq_else.31616 :
	addi	%r0 %r13 99
	sw	%r26 %r5 0
	sw	%r26 %r6 4
	sw	%r26 %r10 8
	sw	%r26 %r11 12
	sw	%r26 %r2 16
	sw	%r26 %r24 20
	sw	%r26 %r1 24
	bne	%r12 %r13 beq_else.31617 
	addi	%r0 %r1 1
	j	beq_cont.31618 
beq_else.31617 :
	slli	%r12 %r13 2
	add	%r7 %r13 %r25
	lw	%r25 %r7 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r8 %r13 %r25
	lw.s	%r25 %f0 0
	lw	%r7 %r13 20
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r8 %r13 %r25
	lw.s	%r25 %f1 0
	lw	%r7 %r13 20
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r8 %r13 %r25
	lw.s	%r25 %f2 0
	lw	%r7 %r8 20
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r8 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r12 %r8 2
	add	%r9 %r8 %r25
	lw	%r25 %r8 0
	lw	%r7 %r9 4
	addi	%r0 %r12 1
	bne	%r9 %r12 beq_else.31619 
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.31621 
	neg.s	%f4 %f4
	j	fbl_cont.31622 
fbl_else.31621 :
fbl_cont.31622 :
	lw	%r7 %r9 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31623 
	addi	%r0 %r9 1
	j	fbl_cont.31624 
fbl_else.31623 :
	addi	%r0 %r9 0
fbl_cont.31624 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31625 
	addi	%r0 %r9 0
	j	beq_cont.31626 
beq_else.31625 :
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.31627 
	neg.s	%f4 %f4
	j	fbl_cont.31628 
fbl_else.31627 :
fbl_cont.31628 :
	lw	%r7 %r9 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31629 
	addi	%r0 %r9 1
	j	fbl_cont.31630 
fbl_else.31629 :
	addi	%r0 %r9 0
fbl_cont.31630 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31631 
	addi	%r0 %r9 0
	j	beq_cont.31632 
beq_else.31631 :
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbne	%f4 %f5 fbeq_else.31633 
	addi	%r0 %r9 1
	j	fbeq_cont.31634 
fbeq_else.31633 :
	addi	%r0 %r9 0
fbeq_cont.31634 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31635 
	addi	%r0 %r9 1
	j	beq_cont.31636 
beq_else.31635 :
	addi	%r0 %r9 0
beq_cont.31636 :
beq_cont.31632 :
beq_cont.31626 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31637 
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r9 3
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.31639 
	neg.s	%f4 %f4
	j	fbl_cont.31640 
fbl_else.31639 :
fbl_cont.31640 :
	lw	%r7 %r9 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31641 
	addi	%r0 %r9 1
	j	fbl_cont.31642 
fbl_else.31641 :
	addi	%r0 %r9 0
fbl_cont.31642 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31643 
	addi	%r0 %r9 0
	j	beq_cont.31644 
beq_else.31643 :
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbge	%f4 %f5 fbl_else.31645 
	neg.s	%f4 %f4
	j	fbl_cont.31646 
fbl_else.31645 :
fbl_cont.31646 :
	lw	%r7 %r9 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31647 
	addi	%r0 %r9 1
	j	fbl_cont.31648 
fbl_else.31647 :
	addi	%r0 %r9 0
fbl_cont.31648 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31649 
	addi	%r0 %r9 0
	j	beq_cont.31650 
beq_else.31649 :
	addi	%r0 %r9 3
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f5 0
	fbne	%f4 %f5 fbeq_else.31651 
	addi	%r0 %r9 1
	j	fbeq_cont.31652 
fbeq_else.31651 :
	addi	%r0 %r9 0
fbeq_cont.31652 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31653 
	addi	%r0 %r9 1
	j	beq_cont.31654 
beq_else.31653 :
	addi	%r0 %r9 0
beq_cont.31654 :
beq_cont.31650 :
beq_cont.31644 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31655 
	addi	%r0 %r9 4
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r9 5
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f3 0
	fbge	%f0 %f3 fbl_else.31657 
	neg.s	%f0 %f0
	j	fbl_cont.31658 
fbl_else.31657 :
fbl_cont.31658 :
	lw	%r7 %r9 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.31659 
	addi	%r0 %r9 1
	j	fbl_cont.31660 
fbl_else.31659 :
	addi	%r0 %r9 0
fbl_cont.31660 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.31661 
	addi	%r0 %r3 0
	j	beq_cont.31662 
beq_else.31661 :
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.31663 
	neg.s	%f0 %f0
	j	fbl_cont.31664 
fbl_else.31663 :
fbl_cont.31664 :
	lw	%r7 %r3 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r3 %r7 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.31665 
	addi	%r0 %r3 1
	j	fbl_cont.31666 
fbl_else.31665 :
	addi	%r0 %r3 0
fbl_cont.31666 :
	addi	%r0 %r7 0
	bne	%r3 %r7 beq_else.31667 
	addi	%r0 %r3 0
	j	beq_cont.31668 
beq_else.31667 :
	addi	%r0 %r3 5
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.31669 
	addi	%r0 %r3 1
	j	fbeq_cont.31670 
fbeq_else.31669 :
	addi	%r0 %r3 0
fbeq_cont.31670 :
	addi	%r0 %r7 0
	bne	%r3 %r7 beq_else.31671 
	addi	%r0 %r3 1
	j	beq_cont.31672 
beq_else.31671 :
	addi	%r0 %r3 0
beq_cont.31672 :
beq_cont.31668 :
beq_cont.31662 :
	addi	%r0 %r7 0
	bne	%r3 %r7 beq_else.31673 
	addi	%r0 %r3 0
	j	beq_cont.31674 
beq_else.31673 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r3 3
beq_cont.31674 :
	j	beq_cont.31656 
beq_else.31655 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 2
beq_cont.31656 :
	j	beq_cont.31638 
beq_else.31637 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 1
beq_cont.31638 :
	j	beq_cont.31620 
beq_else.31619 :
	addi	%r0 %r3 2
	bne	%r9 %r3 beq_else.31675 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.31677 
	addi	%r0 %r3 1
	j	fbl_cont.31678 
fbl_else.31677 :
	addi	%r0 %r3 0
fbl_cont.31678 :
	addi	%r0 %r7 0
	bne	%r3 %r7 beq_else.31679 
	addi	%r0 %r3 0
	j	beq_cont.31680 
beq_else.31679 :
	addi	%r0 %r3 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r7 3
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
beq_cont.31680 :
	j	beq_cont.31676 
beq_else.31675 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.31681 
	addi	%r0 %r3 1
	j	fbeq_cont.31682 
fbeq_else.31681 :
	addi	%r0 %r3 0
fbeq_cont.31682 :
	addi	%r0 %r9 0
	bne	%r3 %r9 beq_else.31683 
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r3 3
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r7 %r3 16
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r7 %r3 16
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r7 %r3 16
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r7 %r3 12
	addi	%r0 %r9 0
	bne	%r3 %r9 beq_else.31685 
	mov.s	%f5 %f0
	j	beq_cont.31686 
beq_else.31685 :
	mul.s	%f2 %f1 %f6
	lw	%r7 %r3 36
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r7 %r3 36
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r7 %r3 36
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.31686 :
	lw	%r7 %r3 4
	addi	%r0 %r9 3
	bne	%r3 %r9 beq_else.31687 
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.31688 
beq_else.31687 :
beq_cont.31688 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.31689 
	addi	%r0 %r3 1
	j	fbl_cont.31690 
fbl_else.31689 :
	addi	%r0 %r3 0
fbl_cont.31690 :
	addi	%r0 %r9 0
	bne	%r3 %r9 beq_else.31691 
	addi	%r0 %r3 0
	j	beq_cont.31692 
beq_else.31691 :
	lw	%r7 %r3 24
	addi	%r0 %r7 0
	bne	%r3 %r7 beq_else.31693 
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r0 %r7 4
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.31694 
beq_else.31693 :
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r7 4
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
beq_cont.31694 :
	addi	%r0 %r3 1
beq_cont.31692 :
	j	beq_cont.31684 
beq_else.31683 :
	addi	%r0 %r3 0
beq_cont.31684 :
beq_cont.31676 :
beq_cont.31620 :
	addi	%r0 %r7 0
	beq	%r3 %r7 bne_else.31695 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.25365
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.31697 
	addi	%r0 %r3 1
	j	fbl_cont.31698 
fbl_else.31697 :
	addi	%r0 %r3 0
fbl_cont.31698 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.31699 
	addi	%r0 %r1 0
	j	beq_cont.31700 
beq_else.31699 :
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r11 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 -1
	bne	%r3 %r4 beq_else.31701 
	addi	%r0 %r1 0
	j	beq_cont.31702 
beq_else.31701 :
	slli	%r3 %r3 2
	add	%r10 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 0
	mov	%r3 %r2
	mov	%r4 %r1
	mov	%r6 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31703 
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31705 
	addi	%r0 %r1 0
	j	beq_cont.31706 
beq_else.31705 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31707 
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31709 
	addi	%r0 %r1 0
	j	beq_cont.31710 
beq_else.31709 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31711 
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31713 
	addi	%r0 %r1 0
	j	beq_cont.31714 
beq_else.31713 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31715 
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31717 
	addi	%r0 %r1 0
	j	beq_cont.31718 
beq_else.31717 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31719 
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31721 
	addi	%r0 %r1 0
	j	beq_cont.31722 
beq_else.31721 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31723 
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31725 
	addi	%r0 %r1 0
	j	beq_cont.31726 
beq_else.31725 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31727 
	addi	%r0 %r1 8
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.31728 
beq_else.31727 :
	addi	%r0 %r1 1
beq_cont.31728 :
beq_cont.31726 :
	j	beq_cont.31724 
beq_else.31723 :
	addi	%r0 %r1 1
beq_cont.31724 :
beq_cont.31722 :
	j	beq_cont.31720 
beq_else.31719 :
	addi	%r0 %r1 1
beq_cont.31720 :
beq_cont.31718 :
	j	beq_cont.31716 
beq_else.31715 :
	addi	%r0 %r1 1
beq_cont.31716 :
beq_cont.31714 :
	j	beq_cont.31712 
beq_else.31711 :
	addi	%r0 %r1 1
beq_cont.31712 :
beq_cont.31710 :
	j	beq_cont.31708 
beq_else.31707 :
	addi	%r0 %r1 1
beq_cont.31708 :
beq_cont.31706 :
	j	beq_cont.31704 
beq_else.31703 :
	addi	%r0 %r1 1
beq_cont.31704 :
beq_cont.31702 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31729 
	addi	%r0 %r1 0
	j	beq_cont.31730 
beq_else.31729 :
	addi	%r0 %r1 1
beq_cont.31730 :
beq_cont.31700 :
	j	bne_cont.31696 
bne_else.31695 :
	addi	%r0 %r1 0
bne_cont.31696 :
beq_cont.31618 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31731 
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r1
	lw	%r26 %r2 16
	lw	%r26 %r24 20
	lw	%r24 %r23 0
	jr	%r23
beq_else.31731 :
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31732 
	addi	%r0 %r1 0
	j	beq_cont.31733 
beq_else.31732 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31734 
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31736 
	addi	%r0 %r1 0
	j	beq_cont.31737 
beq_else.31736 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31738 
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31740 
	addi	%r0 %r1 0
	j	beq_cont.31741 
beq_else.31740 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31742 
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31744 
	addi	%r0 %r1 0
	j	beq_cont.31745 
beq_else.31744 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31746 
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31748 
	addi	%r0 %r1 0
	j	beq_cont.31749 
beq_else.31748 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31750 
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31752 
	addi	%r0 %r1 0
	j	beq_cont.31753 
beq_else.31752 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31754 
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.31756 
	addi	%r0 %r1 0
	j	beq_cont.31757 
beq_else.31756 :
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r24 4
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31758 
	addi	%r0 %r1 8
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.31759 
beq_else.31758 :
	addi	%r0 %r1 1
beq_cont.31759 :
beq_cont.31757 :
	j	beq_cont.31755 
beq_else.31754 :
	addi	%r0 %r1 1
beq_cont.31755 :
beq_cont.31753 :
	j	beq_cont.31751 
beq_else.31750 :
	addi	%r0 %r1 1
beq_cont.31751 :
beq_cont.31749 :
	j	beq_cont.31747 
beq_else.31746 :
	addi	%r0 %r1 1
beq_cont.31747 :
beq_cont.31745 :
	j	beq_cont.31743 
beq_else.31742 :
	addi	%r0 %r1 1
beq_cont.31743 :
beq_cont.31741 :
	j	beq_cont.31739 
beq_else.31738 :
	addi	%r0 %r1 1
beq_cont.31739 :
beq_cont.31737 :
	j	beq_cont.31735 
beq_else.31734 :
	addi	%r0 %r1 1
beq_cont.31735 :
beq_cont.31733 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31760 
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r1
	lw	%r26 %r2 16
	lw	%r26 %r24 20
	lw	%r24 %r23 0
	jr	%r23
beq_else.31760 :
	addi	%r0 %r1 1
	retl
solve_each_element.2950 :
	lw	%r24 %r4 32
	lw	%r24 %r5 28
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	slli	%r1 %r12 2
	add	%r2 %r12 %r25
	lw	%r25 %r12 0
	addi	%r0 %r13 -1
	bne	%r12 %r13 beq_else.31761 
	retl
beq_else.31761 :
	slli	%r12 %r13 2
	add	%r7 %r13 %r25
	lw	%r25 %r13 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r5 %r14 %r25
	lw.s	%r25 %f0 0
	lw	%r13 %r14 20
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r5 %r14 %r25
	lw.s	%r25 %f1 0
	lw	%r13 %r14 20
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r5 %r14 %r25
	lw.s	%r25 %f2 0
	lw	%r13 %r14 20
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r13 %r14 4
	addi	%r0 %r15 1
	bne	%r14 %r15 beq_else.31763 
	addi	%r0 %r14 0
	addi	%r0 %r15 1
	addi	%r0 %r16 2
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.31765 
	addi	%r0 %r17 1
	j	fbeq_cont.31766 
fbeq_else.31765 :
	addi	%r0 %r17 0
fbeq_cont.31766 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.31767 
	lw	%r13 %r17 16
	lw	%r13 %r18 24
	slli	%r14 %r19 2
	add	%r3 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 l.24782
	ilw.s	%r19 %f4 0
	fbge	%f3 %f4 fbl_else.31769 
	addi	%r0 %r19 1
	j	fbl_cont.31770 
fbl_else.31769 :
	addi	%r0 %r19 0
fbl_cont.31770 :
	addi	%r0 %r20 0
	bne	%r18 %r20 beq_else.31771 
	mov	%r19 %r18
	j	beq_cont.31772 
beq_else.31771 :
	addi	%r0 %r18 0
	bne	%r19 %r18 beq_else.31773 
	addi	%r0 %r18 1
	j	beq_cont.31774 
beq_else.31773 :
	addi	%r0 %r18 0
beq_cont.31774 :
beq_cont.31772 :
	slli	%r14 %r19 2
	add	%r17 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 0
	bne	%r18 %r19 beq_else.31775 
	neg.s	%f3 %f3
	j	beq_cont.31776 
beq_else.31775 :
beq_cont.31776 :
	sub.s	%f0 %f3 %f3
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r15 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.31777 
	neg.s	%f4 %f4
	j	fbl_cont.31778 
fbl_else.31777 :
fbl_cont.31778 :
	slli	%r15 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31779 
	addi	%r0 %r14 1
	j	fbl_cont.31780 
fbl_else.31779 :
	addi	%r0 %r14 0
fbl_cont.31780 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31781 
	addi	%r0 %r14 0
	j	beq_cont.31782 
beq_else.31781 :
	slli	%r16 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.31783 
	neg.s	%f4 %f4
	j	fbl_cont.31784 
fbl_else.31783 :
fbl_cont.31784 :
	slli	%r16 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31785 
	addi	%r0 %r14 1
	j	fbl_cont.31786 
fbl_else.31785 :
	addi	%r0 %r14 0
fbl_cont.31786 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31787 
	addi	%r0 %r14 0
	j	beq_cont.31788 
beq_else.31787 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.31788 :
beq_cont.31782 :
	j	beq_cont.31768 
beq_else.31767 :
	addi	%r0 %r14 0
beq_cont.31768 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31789 
	addi	%r0 %r14 1
	addi	%r0 %r15 2
	addi	%r0 %r16 0
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.31791 
	addi	%r0 %r17 1
	j	fbeq_cont.31792 
fbeq_else.31791 :
	addi	%r0 %r17 0
fbeq_cont.31792 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.31793 
	lw	%r13 %r17 16
	lw	%r13 %r18 24
	slli	%r14 %r19 2
	add	%r3 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 l.24782
	ilw.s	%r19 %f4 0
	fbge	%f3 %f4 fbl_else.31795 
	addi	%r0 %r19 1
	j	fbl_cont.31796 
fbl_else.31795 :
	addi	%r0 %r19 0
fbl_cont.31796 :
	addi	%r0 %r20 0
	bne	%r18 %r20 beq_else.31797 
	mov	%r19 %r18
	j	beq_cont.31798 
beq_else.31797 :
	addi	%r0 %r18 0
	bne	%r19 %r18 beq_else.31799 
	addi	%r0 %r18 1
	j	beq_cont.31800 
beq_else.31799 :
	addi	%r0 %r18 0
beq_cont.31800 :
beq_cont.31798 :
	slli	%r14 %r19 2
	add	%r17 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 0
	bne	%r18 %r19 beq_else.31801 
	neg.s	%f3 %f3
	j	beq_cont.31802 
beq_else.31801 :
beq_cont.31802 :
	sub.s	%f1 %f3 %f3
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r15 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.31803 
	neg.s	%f4 %f4
	j	fbl_cont.31804 
fbl_else.31803 :
fbl_cont.31804 :
	slli	%r15 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31805 
	addi	%r0 %r14 1
	j	fbl_cont.31806 
fbl_else.31805 :
	addi	%r0 %r14 0
fbl_cont.31806 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31807 
	addi	%r0 %r14 0
	j	beq_cont.31808 
beq_else.31807 :
	slli	%r16 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.31809 
	neg.s	%f4 %f4
	j	fbl_cont.31810 
fbl_else.31809 :
fbl_cont.31810 :
	slli	%r16 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31811 
	addi	%r0 %r14 1
	j	fbl_cont.31812 
fbl_else.31811 :
	addi	%r0 %r14 0
fbl_cont.31812 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31813 
	addi	%r0 %r14 0
	j	beq_cont.31814 
beq_else.31813 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.31814 :
beq_cont.31808 :
	j	beq_cont.31794 
beq_else.31793 :
	addi	%r0 %r14 0
beq_cont.31794 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31815 
	addi	%r0 %r14 2
	addi	%r0 %r15 0
	addi	%r0 %r16 1
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.31817 
	addi	%r0 %r17 1
	j	fbeq_cont.31818 
fbeq_else.31817 :
	addi	%r0 %r17 0
fbeq_cont.31818 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.31819 
	lw	%r13 %r17 16
	lw	%r13 %r13 24
	slli	%r14 %r18 2
	add	%r3 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 l.24782
	ilw.s	%r18 %f4 0
	fbge	%f3 %f4 fbl_else.31821 
	addi	%r0 %r18 1
	j	fbl_cont.31822 
fbl_else.31821 :
	addi	%r0 %r18 0
fbl_cont.31822 :
	addi	%r0 %r19 0
	bne	%r13 %r19 beq_else.31823 
	mov	%r18 %r13
	j	beq_cont.31824 
beq_else.31823 :
	addi	%r0 %r13 0
	bne	%r18 %r13 beq_else.31825 
	addi	%r0 %r13 1
	j	beq_cont.31826 
beq_else.31825 :
	addi	%r0 %r13 0
beq_cont.31826 :
beq_cont.31824 :
	slli	%r14 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 0
	bne	%r13 %r18 beq_else.31827 
	neg.s	%f3 %f3
	j	beq_cont.31828 
beq_else.31827 :
beq_cont.31828 :
	sub.s	%f2 %f3 %f2
	slli	%r14 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r15 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.31829 
	neg.s	%f0 %f0
	j	fbl_cont.31830 
fbl_else.31829 :
fbl_cont.31830 :
	slli	%r15 %r13 2
	add	%r17 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.31831 
	addi	%r0 %r13 1
	j	fbl_cont.31832 
fbl_else.31831 :
	addi	%r0 %r13 0
fbl_cont.31832 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.31833 
	addi	%r0 %r13 0
	j	beq_cont.31834 
beq_else.31833 :
	slli	%r16 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f1 0
	fbge	%f0 %f1 fbl_else.31835 
	neg.s	%f0 %f0
	j	fbl_cont.31836 
fbl_else.31835 :
fbl_cont.31836 :
	slli	%r16 %r13 2
	add	%r17 %r13 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.31837 
	addi	%r0 %r13 1
	j	fbl_cont.31838 
fbl_else.31837 :
	addi	%r0 %r13 0
fbl_cont.31838 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.31839 
	addi	%r0 %r13 0
	j	beq_cont.31840 
beq_else.31839 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r13 1
beq_cont.31840 :
beq_cont.31834 :
	j	beq_cont.31820 
beq_else.31819 :
	addi	%r0 %r13 0
beq_cont.31820 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.31841 
	addi	%r0 %r13 0
	j	beq_cont.31842 
beq_else.31841 :
	addi	%r0 %r13 3
beq_cont.31842 :
	j	beq_cont.31816 
beq_else.31815 :
	addi	%r0 %r13 2
beq_cont.31816 :
	j	beq_cont.31790 
beq_else.31789 :
	addi	%r0 %r13 1
beq_cont.31790 :
	j	beq_cont.31764 
beq_else.31763 :
	addi	%r0 %r15 2
	bne	%r14 %r15 beq_else.31843 
	lw	%r13 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f4 0
	fbge	%f4 %f3 fbl_else.31845 
	addi	%r0 %r14 1
	j	fbl_cont.31846 
fbl_else.31845 :
	addi	%r0 %r14 0
fbl_cont.31846 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31847 
	addi	%r0 %r13 0
	j	beq_cont.31848 
beq_else.31847 :
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r13 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r13 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r13 %r15 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r14 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r13 1
beq_cont.31848 :
	j	beq_cont.31844 
beq_else.31843 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r13 %r14 16
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r13 %r14 16
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r13 %r14 16
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r13 %r14 12
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31849 
	mov.s	%f6 %f3
	j	beq_cont.31850 
beq_else.31849 :
	mul.s	%f5 %f4 %f7
	lw	%r13 %r14 36
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r13 %r14 36
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r13 %r14 36
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.31850 :
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.31851 
	addi	%r0 %r14 1
	j	fbeq_cont.31852 
fbeq_else.31851 :
	addi	%r0 %r14 0
fbeq_cont.31852 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31853 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f5 0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r13 %r14 16
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r13 %r14 16
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r13 %r14 16
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r13 %r14 12
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31855 
	mov.s	%f7 %f4
	j	beq_cont.31856 
beq_else.31855 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r13 %r14 36
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r13 %r14 36
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r13 %r14 36
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r14 l.24980
	ilw.s	%r14 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.31856 :
	mul.s	%f0 %f0 %f5
	lw	%r13 %r14 16
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r13 %r14 16
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r13 %r14 16
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r13 %r14 12
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31857 
	mov.s	%f5 %f0
	j	beq_cont.31858 
beq_else.31857 :
	mul.s	%f2 %f1 %f6
	lw	%r13 %r14 36
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r13 %r14 36
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r13 %r14 36
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.31858 :
	lw	%r13 %r14 4
	addi	%r0 %r15 3
	bne	%r14 %r15 beq_else.31859 
	addi	%r0 %r14 l.24784
	ilw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.31860 
beq_else.31859 :
beq_cont.31860 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f1 0
	fbge	%f1 %f0 fbl_else.31861 
	addi	%r0 %r14 1
	j	fbl_cont.31862 
fbl_else.31861 :
	addi	%r0 %r14 0
fbl_cont.31862 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31863 
	addi	%r0 %r13 0
	j	beq_cont.31864 
beq_else.31863 :
	sqrt.s	%f0 %f0
	lw	%r13 %r13 24
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.31865 
	neg.s	%f0 %f0
	j	beq_cont.31866 
beq_else.31865 :
beq_cont.31866 :
	addi	%r0 %r13 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r13 1
beq_cont.31864 :
	j	beq_cont.31854 
beq_else.31853 :
	addi	%r0 %r13 0
beq_cont.31854 :
beq_cont.31844 :
beq_cont.31764 :
	addi	%r0 %r14 0
	beq	%r13 %r14 bne_else.31867 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.31868 
	addi	%r0 %r6 1
	j	fbl_cont.31869 
fbl_else.31868 :
	addi	%r0 %r6 0
fbl_cont.31869 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.31870 
	j	beq_cont.31871 
beq_else.31870 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.31872 
	addi	%r0 %r6 1
	j	fbl_cont.31873 
fbl_else.31872 :
	addi	%r0 %r6 0
fbl_cont.31873 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.31874 
	j	beq_cont.31875 
beq_else.31874 :
	addi	%r0 %r6 l.25273
	ilw.s	%r6 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	add.s	%f4 %f3 %f3
	addi	%r0 %r5 0
	sw	%r26 %r8 16
	sw	%r26 %r13 20
	sw	%r26 %r10 24
	sw	%r26 %r12 28
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw	%r26 %r9 48
	sw.s	%r26 %f1 56
	sw	%r26 %r4 64
	sw.s	%r26 %f0 72
	mov	%r5 %r1
	mov	%r11 %r24
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.31878 
	j	beq_cont.31879 
beq_else.31878 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	lw.s	%r26 %f0 72
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 48
	lw.s	%r26 %f0 56
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw.s	%r26 %f0 40
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw.s	%r26 %f0 32
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	lw	%r26 %r3 28
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 16
	lw	%r26 %r3 20
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
beq_cont.31879 :
beq_cont.31875 :
beq_cont.31871 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.31867 :
	slli	%r12 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.31880 
	retl
beq_else.31880 :
	addi	%r0 %r4 1
	add	%r1 %r4 %r1
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.2954 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	slli	%r1 %r6 2
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.31882 
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 0
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r6 %r2
	mov	%r7 %r1
	mov	%r4 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31883 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 24
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31884 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 28
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31885 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 32
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31886 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 36
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31887 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 40
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 40
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31888 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 44
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.31889 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r5 4
	lw	%r26 %r24 8
	sw	%r26 %r1 48
	mov	%r5 %r3
	mov	%r4 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 48
	add	%r2 %r1 %r1
	lw	%r26 %r2 16
	lw	%r26 %r3 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bne_else.31889 :
	retl
bne_else.31888 :
	retl
bne_else.31887 :
	retl
bne_else.31886 :
	retl
bne_else.31885 :
	retl
bne_else.31884 :
	retl
bne_else.31883 :
	retl
bne_else.31882 :
	retl
trace_or_matrix.2958 :
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	slli	%r1 %r11 2
	add	%r2 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r12 0
	addi	%r0 %r13 -1
	bne	%r12 %r13 beq_else.31898 
	retl
beq_else.31898 :
	addi	%r0 %r13 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r12 %r13 beq_else.31900 
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r11 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.31902 
	slli	%r4 %r4 2
	add	%r10 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r7 16
	sw	%r26 %r8 20
	sw	%r26 %r10 24
	sw	%r26 %r11 28
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r8 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31904 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31906 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31908 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31910 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31912 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.31914 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r4 0
	lw	%r26 %r24 20
	mov	%r1 %r2
	mov	%r3 %r1
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 8
	lw	%r26 %r2 28
	lw	%r26 %r3 0
	lw	%r26 %r24 16
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	bne_cont.31915 
bne_else.31914 :
bne_cont.31915 :
	j	bne_cont.31913 
bne_else.31912 :
bne_cont.31913 :
	j	bne_cont.31911 
bne_else.31910 :
bne_cont.31911 :
	j	bne_cont.31909 
bne_else.31908 :
bne_cont.31909 :
	j	bne_cont.31907 
bne_else.31906 :
bne_cont.31907 :
	j	bne_cont.31905 
bne_else.31904 :
bne_cont.31905 :
	j	bne_cont.31903 
bne_else.31902 :
bne_cont.31903 :
	j	beq_cont.31901 
beq_else.31900 :
	slli	%r12 %r12 2
	add	%r9 %r12 %r25
	lw	%r25 %r9 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f0 0
	lw	%r9 %r12 20
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f1 0
	lw	%r9 %r12 20
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f2 0
	lw	%r9 %r5 20
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r9 %r5 4
	addi	%r0 %r12 1
	bne	%r5 %r12 beq_else.31916 
	addi	%r0 %r5 0
	addi	%r0 %r12 1
	addi	%r0 %r13 2
	slli	%r5 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.31918 
	addi	%r0 %r14 1
	j	fbeq_cont.31919 
fbeq_else.31918 :
	addi	%r0 %r14 0
fbeq_cont.31919 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31920 
	lw	%r9 %r14 16
	lw	%r9 %r15 24
	slli	%r5 %r16 2
	add	%r3 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.24782
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.31922 
	addi	%r0 %r16 1
	j	fbl_cont.31923 
fbl_else.31922 :
	addi	%r0 %r16 0
fbl_cont.31923 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.31924 
	mov	%r16 %r15
	j	beq_cont.31925 
beq_else.31924 :
	addi	%r0 %r15 0
	bne	%r16 %r15 beq_else.31926 
	addi	%r0 %r15 1
	j	beq_cont.31927 
beq_else.31926 :
	addi	%r0 %r15 0
beq_cont.31927 :
beq_cont.31925 :
	slli	%r5 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.31928 
	neg.s	%f3 %f3
	j	beq_cont.31929 
beq_else.31928 :
beq_cont.31929 :
	sub.s	%f0 %f3 %f3
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r12 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.31930 
	neg.s	%f4 %f4
	j	fbl_cont.31931 
fbl_else.31930 :
fbl_cont.31931 :
	slli	%r12 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31932 
	addi	%r0 %r5 1
	j	fbl_cont.31933 
fbl_else.31932 :
	addi	%r0 %r5 0
fbl_cont.31933 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31934 
	addi	%r0 %r5 0
	j	beq_cont.31935 
beq_else.31934 :
	slli	%r13 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.31936 
	neg.s	%f4 %f4
	j	fbl_cont.31937 
fbl_else.31936 :
fbl_cont.31937 :
	slli	%r13 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31938 
	addi	%r0 %r5 1
	j	fbl_cont.31939 
fbl_else.31938 :
	addi	%r0 %r5 0
fbl_cont.31939 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31940 
	addi	%r0 %r5 0
	j	beq_cont.31941 
beq_else.31940 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 1
beq_cont.31941 :
beq_cont.31935 :
	j	beq_cont.31921 
beq_else.31920 :
	addi	%r0 %r5 0
beq_cont.31921 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31942 
	addi	%r0 %r5 1
	addi	%r0 %r12 2
	addi	%r0 %r13 0
	slli	%r5 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.31944 
	addi	%r0 %r14 1
	j	fbeq_cont.31945 
fbeq_else.31944 :
	addi	%r0 %r14 0
fbeq_cont.31945 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31946 
	lw	%r9 %r14 16
	lw	%r9 %r15 24
	slli	%r5 %r16 2
	add	%r3 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.24782
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.31948 
	addi	%r0 %r16 1
	j	fbl_cont.31949 
fbl_else.31948 :
	addi	%r0 %r16 0
fbl_cont.31949 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.31950 
	mov	%r16 %r15
	j	beq_cont.31951 
beq_else.31950 :
	addi	%r0 %r15 0
	bne	%r16 %r15 beq_else.31952 
	addi	%r0 %r15 1
	j	beq_cont.31953 
beq_else.31952 :
	addi	%r0 %r15 0
beq_cont.31953 :
beq_cont.31951 :
	slli	%r5 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.31954 
	neg.s	%f3 %f3
	j	beq_cont.31955 
beq_else.31954 :
beq_cont.31955 :
	sub.s	%f1 %f3 %f3
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r12 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.31956 
	neg.s	%f4 %f4
	j	fbl_cont.31957 
fbl_else.31956 :
fbl_cont.31957 :
	slli	%r12 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31958 
	addi	%r0 %r5 1
	j	fbl_cont.31959 
fbl_else.31958 :
	addi	%r0 %r5 0
fbl_cont.31959 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31960 
	addi	%r0 %r5 0
	j	beq_cont.31961 
beq_else.31960 :
	slli	%r13 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.31962 
	neg.s	%f4 %f4
	j	fbl_cont.31963 
fbl_else.31962 :
fbl_cont.31963 :
	slli	%r13 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.31964 
	addi	%r0 %r5 1
	j	fbl_cont.31965 
fbl_else.31964 :
	addi	%r0 %r5 0
fbl_cont.31965 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31966 
	addi	%r0 %r5 0
	j	beq_cont.31967 
beq_else.31966 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 1
beq_cont.31967 :
beq_cont.31961 :
	j	beq_cont.31947 
beq_else.31946 :
	addi	%r0 %r5 0
beq_cont.31947 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.31968 
	addi	%r0 %r5 2
	addi	%r0 %r12 0
	addi	%r0 %r13 1
	slli	%r5 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.31970 
	addi	%r0 %r14 1
	j	fbeq_cont.31971 
fbeq_else.31970 :
	addi	%r0 %r14 0
fbeq_cont.31971 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.31972 
	lw	%r9 %r14 16
	lw	%r9 %r9 24
	slli	%r5 %r15 2
	add	%r3 %r15 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r15 l.24782
	ilw.s	%r15 %f4 0
	fbge	%f3 %f4 fbl_else.31974 
	addi	%r0 %r15 1
	j	fbl_cont.31975 
fbl_else.31974 :
	addi	%r0 %r15 0
fbl_cont.31975 :
	addi	%r0 %r16 0
	bne	%r9 %r16 beq_else.31976 
	mov	%r15 %r9
	j	beq_cont.31977 
beq_else.31976 :
	addi	%r0 %r9 0
	bne	%r15 %r9 beq_else.31978 
	addi	%r0 %r9 1
	j	beq_cont.31979 
beq_else.31978 :
	addi	%r0 %r9 0
beq_cont.31979 :
beq_cont.31977 :
	slli	%r5 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r15 0
	bne	%r9 %r15 beq_else.31980 
	neg.s	%f3 %f3
	j	beq_cont.31981 
beq_else.31980 :
beq_cont.31981 :
	sub.s	%f2 %f3 %f2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r12 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.31982 
	neg.s	%f0 %f0
	j	fbl_cont.31983 
fbl_else.31982 :
fbl_cont.31983 :
	slli	%r12 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.31984 
	addi	%r0 %r5 1
	j	fbl_cont.31985 
fbl_else.31984 :
	addi	%r0 %r5 0
fbl_cont.31985 :
	addi	%r0 %r9 0
	bne	%r5 %r9 beq_else.31986 
	addi	%r0 %r5 0
	j	beq_cont.31987 
beq_else.31986 :
	slli	%r13 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.31988 
	neg.s	%f0 %f0
	j	fbl_cont.31989 
fbl_else.31988 :
fbl_cont.31989 :
	slli	%r13 %r5 2
	add	%r14 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.31990 
	addi	%r0 %r5 1
	j	fbl_cont.31991 
fbl_else.31990 :
	addi	%r0 %r5 0
fbl_cont.31991 :
	addi	%r0 %r9 0
	bne	%r5 %r9 beq_else.31992 
	addi	%r0 %r5 0
	j	beq_cont.31993 
beq_else.31992 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 1
beq_cont.31993 :
beq_cont.31987 :
	j	beq_cont.31973 
beq_else.31972 :
	addi	%r0 %r5 0
beq_cont.31973 :
	addi	%r0 %r9 0
	bne	%r5 %r9 beq_else.31994 
	addi	%r0 %r5 0
	j	beq_cont.31995 
beq_else.31994 :
	addi	%r0 %r5 3
beq_cont.31995 :
	j	beq_cont.31969 
beq_else.31968 :
	addi	%r0 %r5 2
beq_cont.31969 :
	j	beq_cont.31943 
beq_else.31942 :
	addi	%r0 %r5 1
beq_cont.31943 :
	j	beq_cont.31917 
beq_else.31916 :
	addi	%r0 %r12 2
	bne	%r5 %r12 beq_else.31996 
	lw	%r9 %r5 16
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r5 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r5 %r9 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r5 %r9 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r9 l.24782
	ilw.s	%r9 %f4 0
	fbge	%f4 %f3 fbl_else.31998 
	addi	%r0 %r9 1
	j	fbl_cont.31999 
fbl_else.31998 :
	addi	%r0 %r9 0
fbl_cont.31999 :
	addi	%r0 %r12 0
	bne	%r9 %r12 beq_else.32000 
	addi	%r0 %r5 0
	j	beq_cont.32001 
beq_else.32000 :
	addi	%r0 %r9 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r9 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
beq_cont.32001 :
	j	beq_cont.31997 
beq_else.31996 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r9 %r5 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r9 %r5 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r9 %r5 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r9 %r5 12
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.32002 
	mov.s	%f6 %f3
	j	beq_cont.32003 
beq_else.32002 :
	mul.s	%f5 %f4 %f7
	lw	%r9 %r5 36
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r9 %r5 36
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r9 %r5 36
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.32003 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.32004 
	addi	%r0 %r5 1
	j	fbeq_cont.32005 
fbeq_else.32004 :
	addi	%r0 %r5 0
fbeq_cont.32005 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.32006 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f5 0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r9 %r5 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r9 %r5 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r9 %r5 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r9 %r5 12
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.32008 
	mov.s	%f7 %f4
	j	beq_cont.32009 
beq_else.32008 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r9 %r5 36
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r9 %r5 36
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r9 %r5 36
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.32009 :
	mul.s	%f0 %f0 %f5
	lw	%r9 %r5 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r9 %r5 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r9 %r5 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r9 %r5 12
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.32010 
	mov.s	%f5 %f0
	j	beq_cont.32011 
beq_else.32010 :
	mul.s	%f2 %f1 %f6
	lw	%r9 %r5 36
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r9 %r5 36
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r9 %r5 36
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.32011 :
	lw	%r9 %r5 4
	addi	%r0 %r12 3
	bne	%r5 %r12 beq_else.32012 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.32013 
beq_else.32012 :
beq_cont.32013 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.32014 
	addi	%r0 %r5 1
	j	fbl_cont.32015 
fbl_else.32014 :
	addi	%r0 %r5 0
fbl_cont.32015 :
	addi	%r0 %r12 0
	bne	%r5 %r12 beq_else.32016 
	addi	%r0 %r5 0
	j	beq_cont.32017 
beq_else.32016 :
	sqrt.s	%f0 %f0
	lw	%r9 %r5 24
	addi	%r0 %r9 0
	bne	%r5 %r9 beq_else.32018 
	neg.s	%f0 %f0
	j	beq_cont.32019 
beq_else.32018 :
beq_cont.32019 :
	addi	%r0 %r5 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
beq_cont.32017 :
	j	beq_cont.32007 
beq_else.32006 :
	addi	%r0 %r5 0
beq_cont.32007 :
beq_cont.31997 :
beq_cont.31917 :
	addi	%r0 %r9 0
	beq	%r5 %r9 bne_else.32020 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.32022 
	addi	%r0 %r4 1
	j	fbl_cont.32023 
fbl_else.32022 :
	addi	%r0 %r4 0
fbl_cont.32023 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.32024 
	j	beq_cont.32025 
beq_else.32024 :
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r11 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.32026 
	slli	%r4 %r4 2
	add	%r10 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r7 16
	sw	%r26 %r8 20
	sw	%r26 %r10 24
	sw	%r26 %r11 28
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r8 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32028 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32030 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32032 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32034 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32036 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32038 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r4 0
	lw	%r26 %r24 20
	mov	%r1 %r2
	mov	%r3 %r1
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 8
	lw	%r26 %r2 28
	lw	%r26 %r3 0
	lw	%r26 %r24 16
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	bne_cont.32039 
bne_else.32038 :
bne_cont.32039 :
	j	bne_cont.32037 
bne_else.32036 :
bne_cont.32037 :
	j	bne_cont.32035 
bne_else.32034 :
bne_cont.32035 :
	j	bne_cont.32033 
bne_else.32032 :
bne_cont.32033 :
	j	bne_cont.32031 
bne_else.32030 :
bne_cont.32031 :
	j	bne_cont.32029 
bne_else.32028 :
bne_cont.32029 :
	j	bne_cont.32027 
bne_else.32026 :
bne_cont.32027 :
beq_cont.32025 :
	j	bne_cont.32021 
bne_else.32020 :
bne_cont.32021 :
beq_cont.31901 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
solve_each_element_fast.2964 :
	lw	%r24 %r4 32
	lw	%r24 %r5 28
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r3 %r12 0
	slli	%r1 %r13 2
	add	%r2 %r13 %r25
	lw	%r25 %r13 0
	addi	%r0 %r14 -1
	bne	%r13 %r14 beq_else.32040 
	retl
beq_else.32040 :
	slli	%r13 %r14 2
	add	%r7 %r14 %r25
	lw	%r25 %r14 0
	lw	%r14 %r15 40
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r16 4
	slli	%r13 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	lw	%r14 %r17 4
	addi	%r0 %r18 1
	bne	%r17 %r18 beq_else.32042 
	lw	%r3 %r15 0
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.32044 
	neg.s	%f4 %f4
	j	fbl_cont.32045 
fbl_else.32044 :
fbl_cont.32045 :
	lw	%r14 %r17 16
	addi	%r0 %r18 1
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32046 
	addi	%r0 %r17 1
	j	fbl_cont.32047 
fbl_else.32046 :
	addi	%r0 %r17 0
fbl_cont.32047 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32048 
	addi	%r0 %r17 0
	j	beq_cont.32049 
beq_else.32048 :
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.32050 
	neg.s	%f4 %f4
	j	fbl_cont.32051 
fbl_else.32050 :
fbl_cont.32051 :
	lw	%r14 %r17 16
	addi	%r0 %r18 2
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32052 
	addi	%r0 %r17 1
	j	fbl_cont.32053 
fbl_else.32052 :
	addi	%r0 %r17 0
fbl_cont.32053 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32054 
	addi	%r0 %r17 0
	j	beq_cont.32055 
beq_else.32054 :
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.32056 
	addi	%r0 %r17 1
	j	fbeq_cont.32057 
fbeq_else.32056 :
	addi	%r0 %r17 0
fbeq_cont.32057 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32058 
	addi	%r0 %r17 1
	j	beq_cont.32059 
beq_else.32058 :
	addi	%r0 %r17 0
beq_cont.32059 :
beq_cont.32055 :
beq_cont.32049 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32060 
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r17 3
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.32062 
	neg.s	%f4 %f4
	j	fbl_cont.32063 
fbl_else.32062 :
fbl_cont.32063 :
	lw	%r14 %r17 16
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32064 
	addi	%r0 %r17 1
	j	fbl_cont.32065 
fbl_else.32064 :
	addi	%r0 %r17 0
fbl_cont.32065 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32066 
	addi	%r0 %r17 0
	j	beq_cont.32067 
beq_else.32066 :
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.32068 
	neg.s	%f4 %f4
	j	fbl_cont.32069 
fbl_else.32068 :
fbl_cont.32069 :
	lw	%r14 %r17 16
	addi	%r0 %r18 2
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32070 
	addi	%r0 %r17 1
	j	fbl_cont.32071 
fbl_else.32070 :
	addi	%r0 %r17 0
fbl_cont.32071 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32072 
	addi	%r0 %r17 0
	j	beq_cont.32073 
beq_else.32072 :
	addi	%r0 %r17 3
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.32074 
	addi	%r0 %r17 1
	j	fbeq_cont.32075 
fbeq_else.32074 :
	addi	%r0 %r17 0
fbeq_cont.32075 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32076 
	addi	%r0 %r17 1
	j	beq_cont.32077 
beq_else.32076 :
	addi	%r0 %r17 0
beq_cont.32077 :
beq_cont.32073 :
beq_cont.32067 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32078 
	addi	%r0 %r17 4
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r17 5
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.32080 
	neg.s	%f0 %f0
	j	fbl_cont.32081 
fbl_else.32080 :
fbl_cont.32081 :
	lw	%r14 %r17 16
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.32082 
	addi	%r0 %r17 1
	j	fbl_cont.32083 
fbl_else.32082 :
	addi	%r0 %r17 0
fbl_cont.32083 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32084 
	addi	%r0 %r14 0
	j	beq_cont.32085 
beq_else.32084 :
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 l.24782
	ilw.s	%r15 %f1 0
	fbge	%f0 %f1 fbl_else.32086 
	neg.s	%f0 %f0
	j	fbl_cont.32087 
fbl_else.32086 :
fbl_cont.32087 :
	lw	%r14 %r14 16
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.32088 
	addi	%r0 %r14 1
	j	fbl_cont.32089 
fbl_else.32088 :
	addi	%r0 %r14 0
fbl_cont.32089 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.32090 
	addi	%r0 %r14 0
	j	beq_cont.32091 
beq_else.32090 :
	addi	%r0 %r14 5
	slli	%r14 %r14 2
	add	%r16 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f1 0
	fbne	%f0 %f1 fbeq_else.32092 
	addi	%r0 %r14 1
	j	fbeq_cont.32093 
fbeq_else.32092 :
	addi	%r0 %r14 0
fbeq_cont.32093 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.32094 
	addi	%r0 %r14 1
	j	beq_cont.32095 
beq_else.32094 :
	addi	%r0 %r14 0
beq_cont.32095 :
beq_cont.32091 :
beq_cont.32085 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.32096 
	addi	%r0 %r14 0
	j	beq_cont.32097 
beq_else.32096 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r14 3
beq_cont.32097 :
	j	beq_cont.32079 
beq_else.32078 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 2
beq_cont.32079 :
	j	beq_cont.32061 
beq_else.32060 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.32061 :
	j	beq_cont.32043 
beq_else.32042 :
	addi	%r0 %r18 2
	bne	%r17 %r18 beq_else.32098 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r16 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 l.24782
	ilw.s	%r14 %f1 0
	fbge	%f0 %f1 fbl_else.32100 
	addi	%r0 %r14 1
	j	fbl_cont.32101 
fbl_else.32100 :
	addi	%r0 %r14 0
fbl_cont.32101 :
	addi	%r0 %r17 0
	bne	%r14 %r17 beq_else.32102 
	addi	%r0 %r14 0
	j	beq_cont.32103 
beq_else.32102 :
	addi	%r0 %r14 0
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r16 3
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 1
beq_cont.32103 :
	j	beq_cont.32099 
beq_else.32098 :
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.24782
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.32104 
	addi	%r0 %r17 1
	j	fbeq_cont.32105 
fbeq_else.32104 :
	addi	%r0 %r17 0
fbeq_cont.32105 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.32106 
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r17 3
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r17 3
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r15 l.24782
	ilw.s	%r15 %f2 0
	fbge	%f2 %f1 fbl_else.32108 
	addi	%r0 %r15 1
	j	fbl_cont.32109 
fbl_else.32108 :
	addi	%r0 %r15 0
fbl_cont.32109 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.32110 
	addi	%r0 %r14 0
	j	beq_cont.32111 
beq_else.32110 :
	lw	%r14 %r14 24
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.32112 
	addi	%r0 %r14 0
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r15 4
	slli	%r15 %r15 2
	add	%r16 %r15 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32113 
beq_else.32112 :
	addi	%r0 %r14 0
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 4
	slli	%r15 %r15 2
	add	%r16 %r15 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f0 0
beq_cont.32113 :
	addi	%r0 %r14 1
beq_cont.32111 :
	j	beq_cont.32107 
beq_else.32106 :
	addi	%r0 %r14 0
beq_cont.32107 :
beq_cont.32099 :
beq_cont.32043 :
	addi	%r0 %r15 0
	beq	%r14 %r15 bne_else.32114 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.32115 
	addi	%r0 %r6 1
	j	fbl_cont.32116 
fbl_else.32115 :
	addi	%r0 %r6 0
fbl_cont.32116 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.32117 
	j	beq_cont.32118 
beq_else.32117 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.32119 
	addi	%r0 %r6 1
	j	fbl_cont.32120 
fbl_else.32119 :
	addi	%r0 %r6 0
fbl_cont.32120 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.32121 
	j	beq_cont.32122 
beq_else.32121 :
	addi	%r0 %r6 l.25273
	ilw.s	%r6 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r12 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r12 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r12 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	add.s	%f4 %f3 %f3
	addi	%r0 %r5 0
	sw	%r26 %r8 16
	sw	%r26 %r14 20
	sw	%r26 %r10 24
	sw	%r26 %r13 28
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw	%r26 %r9 48
	sw.s	%r26 %f1 56
	sw	%r26 %r4 64
	sw.s	%r26 %f0 72
	mov	%r5 %r1
	mov	%r11 %r24
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32125 
	j	beq_cont.32126 
beq_else.32125 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	lw.s	%r26 %f0 72
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 48
	lw.s	%r26 %f0 56
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw.s	%r26 %f0 40
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw.s	%r26 %f0 32
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	lw	%r26 %r3 28
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 16
	lw	%r26 %r3 20
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
beq_cont.32126 :
beq_cont.32122 :
beq_cont.32118 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.32114 :
	slli	%r13 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.32127 
	retl
beq_else.32127 :
	addi	%r0 %r4 1
	add	%r1 %r4 %r1
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.2968 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	slli	%r1 %r6 2
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.32129 
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 0
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r6 %r2
	mov	%r7 %r1
	mov	%r4 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32130 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 24
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32131 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 28
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32132 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 32
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32133 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 36
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32134 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 40
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 40
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32135 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r5 0
	lw	%r26 %r6 4
	lw	%r26 %r24 8
	sw	%r26 %r1 44
	mov	%r6 %r3
	mov	%r5 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	add	%r2 %r1 %r1
	slli	%r1 %r2 2
	lw	%r26 %r3 16
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 -1
	beq	%r2 %r4 bne_else.32136 
	slli	%r2 %r2 2
	lw	%r26 %r4 12
	add	%r4 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r5 4
	lw	%r26 %r24 8
	sw	%r26 %r1 48
	mov	%r5 %r3
	mov	%r4 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 48
	add	%r2 %r1 %r1
	lw	%r26 %r2 16
	lw	%r26 %r3 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bne_else.32136 :
	retl
bne_else.32135 :
	retl
bne_else.32134 :
	retl
bne_else.32133 :
	retl
bne_else.32132 :
	retl
bne_else.32131 :
	retl
bne_else.32130 :
	retl
bne_else.32129 :
	retl
trace_or_matrix_fast.2972 :
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	slli	%r1 %r10 2
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r11 0
	addi	%r0 %r12 -1
	bne	%r11 %r12 beq_else.32145 
	retl
beq_else.32145 :
	addi	%r0 %r12 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r11 %r12 beq_else.32147 
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r10 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.32149 
	slli	%r4 %r4 2
	add	%r9 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r6 16
	sw	%r26 %r7 20
	sw	%r26 %r9 24
	sw	%r26 %r10 28
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r7 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32151 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32153 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32155 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32157 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32159 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32161 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r4 0
	lw	%r26 %r24 20
	mov	%r1 %r2
	mov	%r3 %r1
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 8
	lw	%r26 %r2 28
	lw	%r26 %r3 0
	lw	%r26 %r24 16
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	bne_cont.32162 
bne_else.32161 :
bne_cont.32162 :
	j	bne_cont.32160 
bne_else.32159 :
bne_cont.32160 :
	j	bne_cont.32158 
bne_else.32157 :
bne_cont.32158 :
	j	bne_cont.32156 
bne_else.32155 :
bne_cont.32156 :
	j	bne_cont.32154 
bne_else.32153 :
bne_cont.32154 :
	j	bne_cont.32152 
bne_else.32151 :
bne_cont.32152 :
	j	bne_cont.32150 
bne_else.32149 :
bne_cont.32150 :
	j	beq_cont.32148 
beq_else.32147 :
	slli	%r11 %r12 2
	add	%r8 %r12 %r25
	lw	%r25 %r8 0
	lw	%r8 %r12 40
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r13 4
	slli	%r11 %r11 2
	add	%r13 %r11 %r25
	lw	%r25 %r11 0
	lw	%r8 %r13 4
	addi	%r0 %r14 1
	bne	%r13 %r14 beq_else.32163 
	lw	%r3 %r12 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.32165 
	neg.s	%f4 %f4
	j	fbl_cont.32166 
fbl_else.32165 :
fbl_cont.32166 :
	lw	%r8 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32167 
	addi	%r0 %r13 1
	j	fbl_cont.32168 
fbl_else.32167 :
	addi	%r0 %r13 0
fbl_cont.32168 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32169 
	addi	%r0 %r13 0
	j	beq_cont.32170 
beq_else.32169 :
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.32171 
	neg.s	%f4 %f4
	j	fbl_cont.32172 
fbl_else.32171 :
fbl_cont.32172 :
	lw	%r8 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32173 
	addi	%r0 %r13 1
	j	fbl_cont.32174 
fbl_else.32173 :
	addi	%r0 %r13 0
fbl_cont.32174 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32175 
	addi	%r0 %r13 0
	j	beq_cont.32176 
beq_else.32175 :
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbne	%f4 %f5 fbeq_else.32177 
	addi	%r0 %r13 1
	j	fbeq_cont.32178 
fbeq_else.32177 :
	addi	%r0 %r13 0
fbeq_cont.32178 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32179 
	addi	%r0 %r13 1
	j	beq_cont.32180 
beq_else.32179 :
	addi	%r0 %r13 0
beq_cont.32180 :
beq_cont.32176 :
beq_cont.32170 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32181 
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.32183 
	neg.s	%f4 %f4
	j	fbl_cont.32184 
fbl_else.32183 :
fbl_cont.32184 :
	lw	%r8 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32185 
	addi	%r0 %r13 1
	j	fbl_cont.32186 
fbl_else.32185 :
	addi	%r0 %r13 0
fbl_cont.32186 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32187 
	addi	%r0 %r13 0
	j	beq_cont.32188 
beq_else.32187 :
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.32189 
	neg.s	%f4 %f4
	j	fbl_cont.32190 
fbl_else.32189 :
fbl_cont.32190 :
	lw	%r8 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.32191 
	addi	%r0 %r13 1
	j	fbl_cont.32192 
fbl_else.32191 :
	addi	%r0 %r13 0
fbl_cont.32192 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32193 
	addi	%r0 %r13 0
	j	beq_cont.32194 
beq_else.32193 :
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f5 0
	fbne	%f4 %f5 fbeq_else.32195 
	addi	%r0 %r13 1
	j	fbeq_cont.32196 
fbeq_else.32195 :
	addi	%r0 %r13 0
fbeq_cont.32196 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32197 
	addi	%r0 %r13 1
	j	beq_cont.32198 
beq_else.32197 :
	addi	%r0 %r13 0
beq_cont.32198 :
beq_cont.32194 :
beq_cont.32188 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32199 
	addi	%r0 %r13 4
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r13 5
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.32201 
	neg.s	%f0 %f0
	j	fbl_cont.32202 
fbl_else.32201 :
fbl_cont.32202 :
	lw	%r8 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.32203 
	addi	%r0 %r13 1
	j	fbl_cont.32204 
fbl_else.32203 :
	addi	%r0 %r13 0
fbl_cont.32204 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32205 
	addi	%r0 %r8 0
	j	beq_cont.32206 
beq_else.32205 :
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f1 0
	fbge	%f0 %f1 fbl_else.32207 
	neg.s	%f0 %f0
	j	fbl_cont.32208 
fbl_else.32207 :
fbl_cont.32208 :
	lw	%r8 %r8 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.32209 
	addi	%r0 %r8 1
	j	fbl_cont.32210 
fbl_else.32209 :
	addi	%r0 %r8 0
fbl_cont.32210 :
	addi	%r0 %r12 0
	bne	%r8 %r12 beq_else.32211 
	addi	%r0 %r8 0
	j	beq_cont.32212 
beq_else.32211 :
	addi	%r0 %r8 5
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f1 0
	fbne	%f0 %f1 fbeq_else.32213 
	addi	%r0 %r8 1
	j	fbeq_cont.32214 
fbeq_else.32213 :
	addi	%r0 %r8 0
fbeq_cont.32214 :
	addi	%r0 %r11 0
	bne	%r8 %r11 beq_else.32215 
	addi	%r0 %r8 1
	j	beq_cont.32216 
beq_else.32215 :
	addi	%r0 %r8 0
beq_cont.32216 :
beq_cont.32212 :
beq_cont.32206 :
	addi	%r0 %r11 0
	bne	%r8 %r11 beq_else.32217 
	addi	%r0 %r8 0
	j	beq_cont.32218 
beq_else.32217 :
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r8 3
beq_cont.32218 :
	j	beq_cont.32200 
beq_else.32199 :
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 2
beq_cont.32200 :
	j	beq_cont.32182 
beq_else.32181 :
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 1
beq_cont.32182 :
	j	beq_cont.32164 
beq_else.32163 :
	addi	%r0 %r14 2
	bne	%r13 %r14 beq_else.32219 
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f1 0
	fbge	%f0 %f1 fbl_else.32221 
	addi	%r0 %r8 1
	j	fbl_cont.32222 
fbl_else.32221 :
	addi	%r0 %r8 0
fbl_cont.32222 :
	addi	%r0 %r13 0
	bne	%r8 %r13 beq_else.32223 
	addi	%r0 %r8 0
	j	beq_cont.32224 
beq_else.32223 :
	addi	%r0 %r8 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r12 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r8 1
beq_cont.32224 :
	j	beq_cont.32220 
beq_else.32219 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 l.24782
	ilw.s	%r13 %f4 0
	fbne	%f3 %f4 fbeq_else.32225 
	addi	%r0 %r13 1
	j	fbeq_cont.32226 
fbeq_else.32225 :
	addi	%r0 %r13 0
fbeq_cont.32226 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.32227 
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r12 l.24782
	ilw.s	%r12 %f2 0
	fbge	%f2 %f1 fbl_else.32229 
	addi	%r0 %r12 1
	j	fbl_cont.32230 
fbl_else.32229 :
	addi	%r0 %r12 0
fbl_cont.32230 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.32231 
	addi	%r0 %r8 0
	j	beq_cont.32232 
beq_else.32231 :
	lw	%r8 %r8 24
	addi	%r0 %r12 0
	bne	%r8 %r12 beq_else.32233 
	addi	%r0 %r8 0
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32234 
beq_else.32233 :
	addi	%r0 %r8 0
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	sw.s	%r25 %f0 0
beq_cont.32234 :
	addi	%r0 %r8 1
beq_cont.32232 :
	j	beq_cont.32228 
beq_else.32227 :
	addi	%r0 %r8 0
beq_cont.32228 :
beq_cont.32220 :
beq_cont.32164 :
	addi	%r0 %r11 0
	beq	%r8 %r11 bne_else.32235 
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.32237 
	addi	%r0 %r4 1
	j	fbl_cont.32238 
fbl_else.32237 :
	addi	%r0 %r4 0
fbl_cont.32238 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.32239 
	j	beq_cont.32240 
beq_else.32239 :
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r10 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	beq	%r4 %r5 bne_else.32241 
	slli	%r4 %r4 2
	add	%r9 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r6 16
	sw	%r26 %r7 20
	sw	%r26 %r9 24
	sw	%r26 %r10 28
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r7 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32243 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32245 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32247 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 5
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32249 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 6
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32251 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 7
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 bne_else.32253 
	slli	%r1 %r1 2
	lw	%r26 %r3 24
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	lw	%r26 %r4 0
	lw	%r26 %r24 20
	mov	%r1 %r2
	mov	%r3 %r1
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 8
	lw	%r26 %r2 28
	lw	%r26 %r3 0
	lw	%r26 %r24 16
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	bne_cont.32254 
bne_else.32253 :
bne_cont.32254 :
	j	bne_cont.32252 
bne_else.32251 :
bne_cont.32252 :
	j	bne_cont.32250 
bne_else.32249 :
bne_cont.32250 :
	j	bne_cont.32248 
bne_else.32247 :
bne_cont.32248 :
	j	bne_cont.32246 
bne_else.32245 :
bne_cont.32246 :
	j	bne_cont.32244 
bne_else.32243 :
bne_cont.32244 :
	j	bne_cont.32242 
bne_else.32241 :
bne_cont.32242 :
beq_cont.32240 :
	j	bne_cont.32236 
bne_else.32235 :
bne_cont.32236 :
beq_cont.32148 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_reflections.2994 :
	lw	%r24 %r3 40
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r13 0
	bg	%r13 %r1 ble_else.32255 
	slli	%r1 %r13 2
	add	%r8 %r13 %r25
	lw	%r25 %r8 0
	lw	%r8 %r13 4
	addi	%r0 %r14 0
	addi	%r0 %r15 l.25808
	ilw.s	%r15 %f2 0
	slli	%r14 %r14 2
	add	%r4 %r14 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r9 %r15 %r25
	lw	%r25 %r15 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw.s	%r26 %f1 8
	sw	%r26 %r5 16
	sw	%r26 %r7 20
	sw	%r26 %r2 24
	sw.s	%r26 %f0 32
	sw	%r26 %r10 40
	sw	%r26 %r13 44
	sw	%r26 %r6 48
	sw	%r26 %r9 52
	sw	%r26 %r8 56
	sw	%r26 %r11 60
	sw	%r26 %r12 64
	sw	%r26 %r4 68
	mov	%r15 %r2
	mov	%r14 %r1
	mov	%r3 %r24
	mov	%r13 %r3
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 68
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.25365
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32257 
	addi	%r0 %r1 1
	j	fbl_cont.32258 
fbl_else.32257 :
	addi	%r0 %r1 0
fbl_cont.32258 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32259 
	addi	%r0 %r1 0
	j	beq_cont.32260 
beq_else.32259 :
	addi	%r0 %r1 l.25814
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.32261 
	addi	%r0 %r1 1
	j	fbl_cont.32262 
fbl_else.32261 :
	addi	%r0 %r1 0
fbl_cont.32262 :
beq_cont.32260 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32263 
	j	beq_cont.32264 
beq_else.32263 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 56
	lw	%r2 %r3 0
	bne	%r1 %r3 beq_else.32265 
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 52
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r24 48
	mov	%r3 %r2
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32267 
	lw	%r26 %r1 44
	lw	%r1 %r2 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 40
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r26 %r2 56
	lw.s	%r2 %f1 8
	lw.s	%r26 %f2 32
	mul.s	%f2 %f1 %f3
	mul.s	%f0 %f3 %f0
	lw	%r1 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.32269 
	addi	%r0 %r1 1
	j	fbl_cont.32270 
fbl_else.32269 :
	addi	%r0 %r1 0
fbl_cont.32270 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32271 
	j	beq_cont.32272 
beq_else.32271 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 20
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r5 16
	add	%r5 %r2 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 1
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f0 0
beq_cont.32272 :
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f0 0
	fbge	%f0 %f1 fbl_else.32273 
	addi	%r0 %r1 1
	j	fbl_cont.32274 
fbl_else.32273 :
	addi	%r0 %r1 0
fbl_cont.32274 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32275 
	j	beq_cont.32276 
beq_else.32275 :
	mul.s	%f1 %f1 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 20
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 1
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f0
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f0 0
beq_cont.32276 :
	j	beq_cont.32268 
beq_else.32267 :
beq_cont.32268 :
	j	beq_cont.32266 
beq_else.32265 :
beq_cont.32266 :
beq_cont.32264 :
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 8
	lw	%r26 %r2 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32255 :
	retl
trace_ray.2999 :
	lw	%r24 %r4 84
	lw	%r24 %r5 80
	lw	%r24 %r6 76
	lw	%r24 %r7 72
	lw	%r24 %r8 68
	lw	%r24 %r9 64
	lw	%r24 %r10 60
	lw	%r24 %r11 56
	lw	%r24 %r12 52
	lw	%r24 %r13 48
	lw	%r24 %r14 44
	lw	%r24 %r15 40
	lw	%r24 %r16 36
	lw	%r24 %r17 32
	lw	%r24 %r18 28
	lw	%r24 %r19 24
	lw	%r24 %r20 20
	lw	%r24 %r21 16
	lw	%r24 %r22 12
	lw	%r24 %r23 8
	sw	%r26 %r24 0
	lw	%r24 %r24 4
	sw	%r26 %r4 4
	addi	%r0 %r4 4
	bg	%r1 %r4 ble_else.32278 
	lw	%r3 %r4 8
	sw	%r26 %r17 8
	addi	%r0 %r17 0
	sw	%r26 %r12 12
	addi	%r0 %r12 l.25808
	ilw.s	%r12 %f2 0
	slli	%r17 %r12 2
	add	%r6 %r12 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r12 0
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r14 %r17 %r25
	lw	%r25 %r17 0
	sw.s	%r26 %f1 16
	sw	%r26 %r18 24
	sw	%r26 %r8 28
	sw	%r26 %r11 32
	sw	%r26 %r14 36
	sw	%r26 %r3 40
	sw	%r26 %r23 44
	sw	%r26 %r10 48
	sw	%r26 %r7 52
	sw	%r26 %r9 56
	sw	%r26 %r21 60
	sw	%r26 %r16 64
	sw	%r26 %r20 68
	sw	%r26 %r15 72
	sw	%r26 %r22 76
	sw	%r26 %r13 80
	sw	%r26 %r24 84
	sw.s	%r26 %f0 88
	sw	%r26 %r19 96
	sw	%r26 %r2 100
	sw	%r26 %r4 104
	sw	%r26 %r1 108
	sw	%r26 %r6 112
	mov	%r2 %r3
	mov	%r12 %r1
	mov	%r5 %r24
	mov	%r17 %r2
	sw	%r26 %r28 116
	lw	%r24 %r23 0
	addi	%r26 %r26 120	
	jalr	%r23
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 112
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.25365
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32279 
	addi	%r0 %r1 1
	j	fbl_cont.32280 
fbl_else.32279 :
	addi	%r0 %r1 0
fbl_cont.32280 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.32281 
	addi	%r0 %r1 0
	j	beq_cont.32282 
beq_else.32281 :
	addi	%r0 %r1 l.25814
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.32283 
	addi	%r0 %r1 1
	j	fbl_cont.32284 
fbl_else.32283 :
	addi	%r0 %r1 0
fbl_cont.32284 :
beq_cont.32282 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.32285 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	slli	%r2 %r3 2
	lw	%r26 %r4 104
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	beq	%r2 %r1 bne_else.32286 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 100
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 96
	add	%r3 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32287 
	addi	%r0 %r1 1
	j	fbl_cont.32288 
fbl_else.32287 :
	addi	%r0 %r1 0
fbl_cont.32288 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32289 
	retl
beq_else.32289 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 88
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 84
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 80
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	add.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	add.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	add.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f0 0
	retl
bne_else.32286 :
	retl
beq_else.32285 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 76
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r3 2
	lw	%r26 %r4 72
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 8
	lw	%r3 %r5 28
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	lw.s	%r26 %f1 88
	mul.s	%f1 %f0 %f0
	lw	%r3 %r5 4
	addi	%r0 %r6 1
	bne	%r5 %r6 beq_else.32293 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 68
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f2 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	lw	%r26 %r8 64
	add	%r8 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 1
	sub	%r5 %r7 %r7
	addi	%r0 %r9 1
	sub	%r5 %r9 %r5
	slli	%r5 %r5 2
	lw	%r26 %r9 100
	add	%r9 %r5 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbne	%f2 %f3 fbeq_else.32295 
	addi	%r0 %r5 1
	j	fbeq_cont.32296 
fbeq_else.32295 :
	addi	%r0 %r5 0
fbeq_cont.32296 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.32297 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbge	%f3 %f2 fbl_else.32299 
	addi	%r0 %r5 1
	j	fbl_cont.32300 
fbl_else.32299 :
	addi	%r0 %r5 0
fbl_cont.32300 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.32301 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f2 0
	j	beq_cont.32302 
beq_else.32301 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f2 0
beq_cont.32302 :
	j	beq_cont.32298 
beq_else.32297 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f2 0
beq_cont.32298 :
	neg.s	%f2 %f2
	slli	%r7 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.32294 
beq_else.32293 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.32303 
	addi	%r0 %r5 0
	lw	%r3 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r5 %r5 2
	lw	%r26 %r6 64
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 1
	lw	%r3 %r7 16
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 2
	lw	%r3 %r7 16
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.32304 
beq_else.32303 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 60
	add	%r6 %r5 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r5 20
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r5 20
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f4 0
	lw	%r3 %r5 20
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f4 %f4
	lw	%r3 %r5 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r3 %r5 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f3 %f6
	lw	%r3 %r5 16
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f4 %f7
	lw	%r3 %r5 12
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.32305 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r7 64
	add	%r7 %r5 %r25
	sw.s	%r25 %f5 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f6 0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f7 0
	j	beq_cont.32306 
beq_else.32305 :
	addi	%r0 %r5 0
	lw	%r3 %r7 36
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f3 %f8
	lw	%r3 %r7 36
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f4 %f9
	add.s	%f9 %f8 %f8
	addi	%r0 %r7 l.24980
	ilw.s	%r7 %f9 0
	div.s	%f9 %f8 %f8
	add.s	%f8 %f5 %f5
	slli	%r5 %r5 2
	lw	%r26 %r7 64
	add	%r7 %r5 %r25
	sw.s	%r25 %f5 0
	addi	%r0 %r5 1
	lw	%r3 %r8 36
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r3 %r8 36
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f4
	addi	%r0 %r8 l.24980
	ilw.s	%r8 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r5 2
	lw	%r3 %r8 36
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	lw	%r3 %r8 36
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r8 l.24980
	ilw.s	%r8 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f2 0
beq_cont.32306 :
	lw	%r3 %r5 24
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f2 %f2
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f3 0
	fbne	%f2 %f3 fbeq_else.32307 
	addi	%r0 %r8 1
	j	fbeq_cont.32308 
fbeq_else.32307 :
	addi	%r0 %r8 0
fbeq_cont.32308 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.32309 
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.32311 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	j	beq_cont.32312 
beq_else.32311 :
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
beq_cont.32312 :
	j	beq_cont.32310 
beq_else.32309 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f2 0
beq_cont.32310 :
	addi	%r0 %r5 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f3
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f3
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f2 0
beq_cont.32304 :
beq_cont.32294 :
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r7 60
	add	%r7 %r6 %r25
	lw.s	%r25 %f2 0
	slli	%r5 %r5 2
	lw	%r26 %r6 56
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	lw	%r3 %r5 0
	addi	%r0 %r6 0
	lw	%r3 %r8 32
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	lw	%r26 %r8 52
	add	%r8 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 1
	lw	%r3 %r9 32
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 2
	lw	%r3 %r9 32
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 1
	sw	%r26 %r4 116
	sw.s	%r26 %f0 120
	sw	%r26 %r3 128
	sw	%r26 %r1 132
	bne	%r5 %r6 beq_else.32313 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r5 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.26109
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r5 l.26111
	ilw.s	%r5 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.26091
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32315 
	addi	%r0 %r5 1
	j	fbl_cont.32316 
fbl_else.32315 :
	addi	%r0 %r5 0
fbl_cont.32316 :
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r6 20
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.26109
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r6 l.26111
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.26091
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.32317 
	addi	%r0 %r6 1
	j	fbl_cont.32318 
fbl_else.32317 :
	addi	%r0 %r6 0
fbl_cont.32318 :
	addi	%r0 %r9 1
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.32319 
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.32321 
	addi	%r0 %r5 l.26082
	ilw.s	%r5 %f2 0
	j	beq_cont.32322 
beq_else.32321 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f2 0
beq_cont.32322 :
	j	beq_cont.32320 
beq_else.32319 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.32323 
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f2 0
	j	beq_cont.32324 
beq_else.32323 :
	addi	%r0 %r5 l.26082
	ilw.s	%r5 %f2 0
beq_cont.32324 :
beq_cont.32320 :
	slli	%r9 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.32314 
beq_else.32313 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.32325 
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r5 l.26100
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r24 48
	mov.s	%f2 %f0
	sw	%r26 %r28 140
	lw	%r24 %r23 0
	addi	%r26 %r26 144	
	jalr	%r23
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32326 
beq_else.32325 :
	addi	%r0 %r6 3
	bne	%r5 %r6 beq_else.32327 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r5 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r5 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f2
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r5 l.26091
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.26006
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r24 44
	mov.s	%f2 %f0
	sw	%r26 %r28 140
	lw	%r24 %r23 0
	addi	%r26 %r26 144	
	jalr	%r23
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32328 
beq_else.32327 :
	addi	%r0 %r6 4
	bne	%r5 %r6 beq_else.32329 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r5 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r3 %r5 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f2 %f2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r5 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	lw	%r3 %r5 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	mul.s	%f3 %f3 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f2 %f5 fbl_else.32331 
	neg.s	%f2 %f5
	j	fbl_cont.32332 
fbl_else.32331 :
	mov.s	%f2 %f5
fbl_cont.32332 :
	addi	%r0 %r5 l.25931
	ilw.s	%r5 %f6 0
	fbge	%f5 %f6 fbl_else.32333 
	addi	%r0 %r5 1
	j	fbl_cont.32334 
fbl_else.32333 :
	addi	%r0 %r5 0
fbl_cont.32334 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.32335 
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32337 
	neg.s	%f2 %f2
	j	fbl_cont.32338 
fbl_else.32337 :
fbl_cont.32338 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbg	%f3 %f2 fble_else.32339 
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32341 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32342 
fbl_else.32341 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32343 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32344 
fbl_else.32343 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.32344 :
fbl_cont.32342 :
	j	fble_cont.32340 
fble_else.32339 :
	neg.s	%f2 %f2
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32345 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32346 
fbl_else.32345 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32347 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32348 
fbl_else.32347 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.32348 :
fbl_cont.32346 :
fble_cont.32340 :
	addi	%r0 %r5 l.26004
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r5 l.26006
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	j	beq_cont.32336 
beq_else.32335 :
	addi	%r0 %r5 l.25933
	ilw.s	%r5 %f2 0
beq_cont.32336 :
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r5 20
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f3 %f3
	lw	%r3 %r5 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f5 0
	sqrt.s	%f5 %f5
	mul.s	%f5 %f3 %f3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.32349 
	neg.s	%f4 %f5
	j	fbl_cont.32350 
fbl_else.32349 :
	mov.s	%f4 %f5
fbl_cont.32350 :
	addi	%r0 %r5 l.25931
	ilw.s	%r5 %f6 0
	fbge	%f5 %f6 fbl_else.32351 
	addi	%r0 %r5 1
	j	fbl_cont.32352 
fbl_else.32351 :
	addi	%r0 %r5 0
fbl_cont.32352 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.32353 
	div.s	%f4 %f3 %f3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.32355 
	neg.s	%f3 %f3
	j	fbl_cont.32356 
fbl_else.32355 :
fbl_cont.32356 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f4 0
	fbg	%f4 %f3 fble_else.32357 
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.32359 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.32360 
fbl_else.32359 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.32361 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.32362 
fbl_else.32361 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.32362 :
fbl_cont.32360 :
	j	fble_cont.32358 
fble_else.32357 :
	neg.s	%f3 %f3
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.32363 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.32364 
fbl_else.32363 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.32365 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.32366 
fbl_else.32365 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.32366 :
fbl_cont.32364 :
fble_cont.32358 :
	addi	%r0 %r5 l.26004
	ilw.s	%r5 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r5 l.26006
	ilw.s	%r5 %f4 0
	div.s	%f4 %f3 %f3
	j	beq_cont.32354 
beq_else.32353 :
	addi	%r0 %r5 l.25933
	ilw.s	%r5 %f3 0
beq_cont.32354 :
	floor.w.s	%f3 %f4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r5 l.26076
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24795
	ilw.s	%r5 %f5 0
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f4 %f2
	addi	%r0 %r5 l.24795
	ilw.s	%r5 %f4 0
	sub.s	%f3 %f4 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.32367 
	addi	%r0 %r5 1
	j	fbl_cont.32368 
fbl_else.32367 :
	addi	%r0 %r5 0
fbl_cont.32368 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.32369 
	j	beq_cont.32370 
beq_else.32369 :
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f2 0
beq_cont.32370 :
	addi	%r0 %r5 2
	addi	%r0 %r6 l.26082
	ilw.s	%r6 %f3 0
	mul.s	%f2 %f3 %f2
	addi	%r0 %r6 l.26084
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r5 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.32330 
beq_else.32329 :
beq_cont.32330 :
beq_cont.32328 :
beq_cont.32326 :
beq_cont.32314 :
	addi	%r0 %r1 4
	lw	%r26 %r2 132
	mul	%r2 %r1 %r1
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 68
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 108
	slli	%r2 %r3 2
	lw	%r26 %r4 104
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 40
	lw	%r1 %r3 4
	slli	%r2 %r5 2
	add	%r3 %r5 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r7 60
	add	%r7 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	sw.s	%r25 %f0 0
	lw	%r1 %r3 12
	lw	%r26 %r5 128
	lw	%r5 %r6 28
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.24795
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.32371 
	addi	%r0 %r6 1
	j	fbl_cont.32372 
fbl_else.32371 :
	addi	%r0 %r6 0
fbl_cont.32372 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.32373 
	addi	%r0 %r6 1
	slli	%r2 %r8 2
	add	%r3 %r8 %r25
	sw	%r25 %r6 0
	lw	%r1 %r3 16
	slli	%r2 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r8 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	lw	%r26 %r10 52
	add	%r10 %r9 %r25
	lw.s	%r25 %f0 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r8 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r10 %r9 %r25
	lw.s	%r25 %f0 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r8 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r10 %r9 %r25
	lw.s	%r25 %f0 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r2 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r3 0
	addi	%r0 %r6 l.26145
	ilw.s	%r6 %f0 0
	lw.s	%r26 %f1 120
	mul.s	%f1 %f0 %f0
	addi	%r0 %r6 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f0 0
	lw	%r1 %r3 28
	slli	%r2 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r3 0
	addi	%r0 %r6 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	lw	%r26 %r9 64
	add	%r9 %r8 %r25
	lw.s	%r25 %f0 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r6 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	lw.s	%r25 %f0 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r6 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	lw.s	%r25 %f0 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32374 
beq_else.32373 :
	addi	%r0 %r6 0
	slli	%r2 %r8 2
	add	%r3 %r8 %r25
	sw	%r25 %r6 0
beq_cont.32374 :
	addi	%r0 %r3 l.26160
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r6 100
	add	%r6 %r3 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r8 64
	add	%r8 %r3 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r3 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	slli	%r3 %r3 2
	add	%r6 %r3 %r25
	sw.s	%r25 %f0 0
	lw	%r5 %r3 28
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f0 0
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	lw	%r26 %r10 36
	add	%r10 %r9 %r25
	lw	%r25 %r9 0
	lw	%r26 %r24 32
	sw.s	%r26 %f0 136
	mov	%r9 %r2
	mov	%r3 %r1
	sw	%r26 %r28 148
	lw	%r24 %r23 0
	addi	%r26 %r26 152	
	jalr	%r23
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32375 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 64
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 96
	add	%r3 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	lw.s	%r26 %f1 120
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 100
	add	%r2 %r1 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.32377 
	addi	%r0 %r1 1
	j	fbl_cont.32378 
fbl_else.32377 :
	addi	%r0 %r1 0
fbl_cont.32378 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.32379 
	j	beq_cont.32380 
beq_else.32379 :
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 80
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r5 52
	add	%r5 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r5 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f4
	add.s	%f4 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 2
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r5 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f0 0
beq_cont.32380 :
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f0 0
	fbge	%f0 %f2 fbl_else.32381 
	addi	%r0 %r1 1
	j	fbl_cont.32382 
fbl_else.32381 :
	addi	%r0 %r1 0
fbl_cont.32382 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.32383 
	j	beq_cont.32384 
beq_else.32383 :
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f2 136
	mul.s	%f2 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 80
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f3
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r1 2
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	add.s	%f0 %f3 %f0
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	sw.s	%r25 %f0 0
beq_cont.32384 :
	j	beq_cont.32376 
beq_else.32375 :
beq_cont.32376 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	slli	%r1 %r1 2
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 1
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 2
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	lw	%r26 %r24 12
	mov	%r3 %r1
	sw	%r26 %r28 148
	lw	%r24 %r23 0
	addi	%r26 %r26 152	
	jalr	%r23
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 8
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	lw.s	%r26 %f0 120
	lw.s	%r26 %f1 136
	lw	%r26 %r2 100
	lw	%r26 %r24 4
	sw	%r26 %r28 148
	lw	%r24 %r23 0
	addi	%r26 %r26 152	
	jalr	%r23
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.26216
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 88
	fbge	%f0 %f1 fbl_else.32385 
	addi	%r0 %r1 1
	j	fbl_cont.32386 
fbl_else.32385 :
	addi	%r0 %r1 0
fbl_cont.32386 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32387 
	retl
beq_else.32387 :
	addi	%r0 %r1 4
	lw	%r26 %r2 108
	bge	%r2 %r1 bl_else.32389 
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 -1
	slli	%r1 %r1 2
	lw	%r26 %r4 104
	add	%r4 %r1 %r25
	sw	%r25 %r3 0
	j	bl_cont.32390 
bl_else.32389 :
bl_cont.32390 :
	addi	%r0 %r1 2
	lw	%r26 %r3 116
	bne	%r3 %r1 beq_else.32391 
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 128
	lw	%r1 %r1 28
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 112
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 16
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 100
	lw	%r26 %r3 40
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
beq_else.32391 :
	retl
ble_else.32278 :
	retl
iter_trace_diffuse_rays.3008 :
	lw	%r24 %r5 56
	lw	%r24 %r6 52
	lw	%r24 %r7 48
	lw	%r24 %r8 44
	lw	%r24 %r9 40
	lw	%r24 %r10 36
	lw	%r24 %r11 32
	lw	%r24 %r12 28
	lw	%r24 %r13 24
	lw	%r24 %r14 20
	lw	%r24 %r15 16
	lw	%r24 %r16 12
	lw	%r24 %r17 8
	lw	%r24 %r18 4
	addi	%r0 %r19 0
	bg	%r19 %r4 ble_else.32394 
	slli	%r4 %r19 2
	add	%r1 %r19 %r25
	lw	%r25 %r19 0
	lw	%r19 %r19 0
	addi	%r0 %r20 0
	slli	%r20 %r20 2
	add	%r19 %r20 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r20 0
	slli	%r20 %r20 2
	add	%r2 %r20 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r20 1
	slli	%r20 %r20 2
	add	%r19 %r20 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r20 1
	slli	%r20 %r20 2
	add	%r2 %r20 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r20 2
	slli	%r20 %r20 2
	add	%r19 %r20 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r19 2
	slli	%r19 %r19 2
	add	%r2 %r19 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r19 l.24782
	ilw.s	%r19 %f1 0
	fbge	%f0 %f1 fbl_else.32395 
	addi	%r0 %r19 1
	j	fbl_cont.32396 
fbl_else.32395 :
	addi	%r0 %r19 0
fbl_cont.32396 :
	addi	%r0 %r20 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r4 16
	bne	%r19 %r20 beq_else.32397 
	slli	%r4 %r19 2
	add	%r1 %r19 %r25
	lw	%r25 %r19 0
	addi	%r0 %r20 l.26517
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 0
	addi	%r0 %r21 l.25808
	ilw.s	%r21 %f1 0
	slli	%r20 %r20 2
	add	%r6 %r20 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r20 0
	addi	%r0 %r21 0
	slli	%r21 %r21 2
	add	%r10 %r21 %r25
	lw	%r25 %r21 0
	sw	%r26 %r17 20
	sw.s	%r26 %f0 24
	sw	%r26 %r13 32
	sw	%r26 %r9 36
	sw	%r26 %r10 40
	sw	%r26 %r18 44
	sw	%r26 %r8 48
	sw	%r26 %r7 52
	sw	%r26 %r15 56
	sw	%r26 %r12 60
	sw	%r26 %r14 64
	sw	%r26 %r19 68
	sw	%r26 %r11 72
	sw	%r26 %r16 76
	sw	%r26 %r6 80
	mov	%r19 %r3
	mov	%r21 %r2
	mov	%r20 %r1
	mov	%r5 %r24
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 80
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.25365
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32399 
	addi	%r0 %r1 1
	j	fbl_cont.32400 
fbl_else.32399 :
	addi	%r0 %r1 0
fbl_cont.32400 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32401 
	addi	%r0 %r1 0
	j	beq_cont.32402 
beq_else.32401 :
	addi	%r0 %r1 l.25814
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.32403 
	addi	%r0 %r1 1
	j	fbl_cont.32404 
fbl_else.32403 :
	addi	%r0 %r1 0
fbl_cont.32404 :
beq_cont.32402 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32405 
	j	beq_cont.32406 
beq_else.32405 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 76
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 68
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.32407 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 64
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 60
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r4
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.32409 
	addi	%r0 %r2 1
	j	fbeq_cont.32410 
fbeq_else.32409 :
	addi	%r0 %r2 0
fbeq_cont.32410 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32411 
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.32413 
	addi	%r0 %r2 1
	j	fbl_cont.32414 
fbl_else.32413 :
	addi	%r0 %r2 0
fbl_cont.32414 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32415 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f0 0
	j	beq_cont.32416 
beq_else.32415 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f0 0
beq_cont.32416 :
	j	beq_cont.32412 
beq_else.32411 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32412 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32408 
beq_else.32407 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.32417 
	addi	%r0 %r2 0
	lw	%r1 %r3 16
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	lw	%r1 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	lw	%r1 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32418 
beq_else.32417 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f2 0
	lw	%r1 %r2 20
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.32419 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 60
	add	%r4 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f5 0
	j	beq_cont.32420 
beq_else.32419 :
	addi	%r0 %r2 0
	lw	%r1 %r4 36
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r4 36
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r4 l.24980
	ilw.s	%r4 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	slli	%r2 %r2 2
	lw	%r26 %r4 60
	add	%r4 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	lw	%r1 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 2
	lw	%r1 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.32420 :
	lw	%r1 %r2 24
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.32421 
	addi	%r0 %r5 1
	j	fbeq_cont.32422 
fbeq_else.32421 :
	addi	%r0 %r5 0
fbeq_cont.32422 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.32423 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.32425 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.32426 
beq_else.32425 :
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.32426 :
	j	beq_cont.32424 
beq_else.32423 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f0 0
beq_cont.32424 :
	addi	%r0 %r2 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.32418 :
beq_cont.32408 :
	lw	%r1 %r2 0
	addi	%r0 %r3 0
	lw	%r1 %r4 32
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	lw	%r26 %r4 52
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	lw	%r1 %r5 32
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	lw	%r1 %r5 32
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	sw	%r26 %r1 84
	bne	%r2 %r3 beq_else.32427 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26109
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.26111
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26091
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32429 
	addi	%r0 %r2 1
	j	fbl_cont.32430 
fbl_else.32429 :
	addi	%r0 %r2 0
fbl_cont.32430 :
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r3 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.26109
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r3 l.26111
	ilw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.26091
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.32431 
	addi	%r0 %r3 1
	j	fbl_cont.32432 
fbl_else.32431 :
	addi	%r0 %r3 0
fbl_cont.32432 :
	addi	%r0 %r5 1
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.32433 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.32435 
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f0 0
	j	beq_cont.32436 
beq_else.32435 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32436 :
	j	beq_cont.32434 
beq_else.32433 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.32437 
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
	j	beq_cont.32438 
beq_else.32437 :
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f0 0
beq_cont.32438 :
beq_cont.32434 :
	slli	%r5 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32428 
beq_else.32427 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.32439 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.26100
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 48
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32440 
beq_else.32439 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.32441 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r2 l.26091
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 44
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32442 
beq_else.32441 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.32443 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.32445 
	neg.s	%f0 %f3
	j	fbl_cont.32446 
fbl_else.32445 :
	mov.s	%f0 %f3
fbl_cont.32446 :
	addi	%r0 %r2 l.25931
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.32447 
	addi	%r0 %r2 1
	j	fbl_cont.32448 
fbl_else.32447 :
	addi	%r0 %r2 0
fbl_cont.32448 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.32449 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32451 
	neg.s	%f0 %f0
	j	fbl_cont.32452 
fbl_else.32451 :
fbl_cont.32452 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.32453 
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32455 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32456 
fbl_else.32455 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32457 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32458 
fbl_else.32457 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.32458 :
fbl_cont.32456 :
	j	fble_cont.32454 
fble_else.32453 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32459 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32460 
fbl_else.32459 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32461 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32462 
fbl_else.32461 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.32462 :
fbl_cont.32460 :
fble_cont.32454 :
	addi	%r0 %r2 l.26004
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.32450 
beq_else.32449 :
	addi	%r0 %r2 l.25933
	ilw.s	%r2 %f0 0
beq_cont.32450 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32463 
	neg.s	%f2 %f3
	j	fbl_cont.32464 
fbl_else.32463 :
	mov.s	%f2 %f3
fbl_cont.32464 :
	addi	%r0 %r2 l.25931
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.32465 
	addi	%r0 %r2 1
	j	fbl_cont.32466 
fbl_else.32465 :
	addi	%r0 %r2 0
fbl_cont.32466 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32467 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32469 
	neg.s	%f1 %f1
	j	fbl_cont.32470 
fbl_else.32469 :
fbl_cont.32470 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.32471 
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32473 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32474 
fbl_else.32473 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32475 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32476 
fbl_else.32475 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.32476 :
fbl_cont.32474 :
	j	fble_cont.32472 
fble_else.32471 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32477 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32478 
fbl_else.32477 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32479 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32480 
fbl_else.32479 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.32480 :
fbl_cont.32478 :
fble_cont.32472 :
	addi	%r0 %r2 l.26004
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.32468 
beq_else.32467 :
	addi	%r0 %r2 l.25933
	ilw.s	%r2 %f1 0
beq_cont.32468 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.26076
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24795
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.24795
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32481 
	addi	%r0 %r2 1
	j	fbl_cont.32482 
fbl_else.32481 :
	addi	%r0 %r2 0
fbl_cont.32482 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32483 
	j	beq_cont.32484 
beq_else.32483 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32484 :
	addi	%r0 %r2 2
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 l.26084
	ilw.s	%r3 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32444 
beq_else.32443 :
beq_cont.32444 :
beq_cont.32442 :
beq_cont.32440 :
beq_cont.32428 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32485 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 32
	add	%r3 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32487 
	addi	%r0 %r1 1
	j	fbl_cont.32488 
fbl_else.32487 :
	addi	%r0 %r1 0
fbl_cont.32488 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32489 
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f0 0
	j	beq_cont.32490 
beq_else.32489 :
beq_cont.32490 :
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 84
	lw	%r1 %r1 28
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 52
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32486 
beq_else.32485 :
beq_cont.32486 :
beq_cont.32406 :
	j	beq_cont.32398 
beq_else.32397 :
	addi	%r0 %r19 1
	add	%r4 %r19 %r19
	slli	%r19 %r19 2
	add	%r1 %r19 %r25
	lw	%r25 %r19 0
	addi	%r0 %r20 l.26246
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 0
	addi	%r0 %r21 l.25808
	ilw.s	%r21 %f1 0
	slli	%r20 %r20 2
	add	%r6 %r20 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r20 0
	addi	%r0 %r21 0
	slli	%r21 %r21 2
	add	%r10 %r21 %r25
	lw	%r25 %r21 0
	sw	%r26 %r17 20
	sw.s	%r26 %f0 88
	sw	%r26 %r13 32
	sw	%r26 %r9 36
	sw	%r26 %r10 40
	sw	%r26 %r18 44
	sw	%r26 %r8 48
	sw	%r26 %r7 52
	sw	%r26 %r15 56
	sw	%r26 %r12 60
	sw	%r26 %r14 64
	sw	%r26 %r19 96
	sw	%r26 %r11 72
	sw	%r26 %r16 76
	sw	%r26 %r6 80
	mov	%r19 %r3
	mov	%r21 %r2
	mov	%r20 %r1
	mov	%r5 %r24
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 80
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.25365
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32491 
	addi	%r0 %r1 1
	j	fbl_cont.32492 
fbl_else.32491 :
	addi	%r0 %r1 0
fbl_cont.32492 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32493 
	addi	%r0 %r1 0
	j	beq_cont.32494 
beq_else.32493 :
	addi	%r0 %r1 l.25814
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.32495 
	addi	%r0 %r1 1
	j	fbl_cont.32496 
fbl_else.32495 :
	addi	%r0 %r1 0
fbl_cont.32496 :
beq_cont.32494 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32497 
	j	beq_cont.32498 
beq_else.32497 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 76
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 96
	lw	%r2 %r2 0
	lw	%r1 %r3 4
	addi	%r0 %r4 1
	bne	%r3 %r4 beq_else.32499 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 64
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 60
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	sub	%r3 %r4 %r4
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.32501 
	addi	%r0 %r2 1
	j	fbeq_cont.32502 
fbeq_else.32501 :
	addi	%r0 %r2 0
fbeq_cont.32502 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32503 
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.32505 
	addi	%r0 %r2 1
	j	fbl_cont.32506 
fbl_else.32505 :
	addi	%r0 %r2 0
fbl_cont.32506 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32507 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f0 0
	j	beq_cont.32508 
beq_else.32507 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f0 0
beq_cont.32508 :
	j	beq_cont.32504 
beq_else.32503 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32504 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32500 
beq_else.32499 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.32509 
	addi	%r0 %r2 0
	lw	%r1 %r3 16
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	lw	%r1 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	lw	%r1 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32510 
beq_else.32509 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f2 0
	lw	%r1 %r2 20
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.32511 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 60
	add	%r4 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f5 0
	j	beq_cont.32512 
beq_else.32511 :
	addi	%r0 %r2 0
	lw	%r1 %r4 36
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r4 36
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r4 l.24980
	ilw.s	%r4 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	slli	%r2 %r2 2
	lw	%r26 %r4 60
	add	%r4 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	lw	%r1 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 2
	lw	%r1 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 l.24980
	ilw.s	%r5 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.32512 :
	lw	%r1 %r2 24
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.32513 
	addi	%r0 %r5 1
	j	fbeq_cont.32514 
fbeq_else.32513 :
	addi	%r0 %r5 0
fbeq_cont.32514 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.32515 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.32517 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.32518 
beq_else.32517 :
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.32518 :
	j	beq_cont.32516 
beq_else.32515 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f0 0
beq_cont.32516 :
	addi	%r0 %r2 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.32510 :
beq_cont.32500 :
	lw	%r1 %r2 0
	addi	%r0 %r3 0
	lw	%r1 %r4 32
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	lw	%r26 %r4 52
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	lw	%r1 %r5 32
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	lw	%r1 %r5 32
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	sw	%r26 %r1 100
	bne	%r2 %r3 beq_else.32519 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26109
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.26111
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26091
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32521 
	addi	%r0 %r2 1
	j	fbl_cont.32522 
fbl_else.32521 :
	addi	%r0 %r2 0
fbl_cont.32522 :
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r3 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.26109
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r3 l.26111
	ilw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.26091
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.32523 
	addi	%r0 %r3 1
	j	fbl_cont.32524 
fbl_else.32523 :
	addi	%r0 %r3 0
fbl_cont.32524 :
	addi	%r0 %r5 1
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.32525 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.32527 
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f0 0
	j	beq_cont.32528 
beq_else.32527 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32528 :
	j	beq_cont.32526 
beq_else.32525 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.32529 
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
	j	beq_cont.32530 
beq_else.32529 :
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f0 0
beq_cont.32530 :
beq_cont.32526 :
	slli	%r5 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32520 
beq_else.32519 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.32531 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.26100
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 48
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32532 
beq_else.32531 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.32533 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r2 l.26091
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 44
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.26082
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.24784
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32534 
beq_else.32533 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.32535 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.32537 
	neg.s	%f0 %f3
	j	fbl_cont.32538 
fbl_else.32537 :
	mov.s	%f0 %f3
fbl_cont.32538 :
	addi	%r0 %r2 l.25931
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.32539 
	addi	%r0 %r2 1
	j	fbl_cont.32540 
fbl_else.32539 :
	addi	%r0 %r2 0
fbl_cont.32540 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.32541 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32543 
	neg.s	%f0 %f0
	j	fbl_cont.32544 
fbl_else.32543 :
fbl_cont.32544 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.32545 
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32547 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32548 
fbl_else.32547 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32549 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32550 
fbl_else.32549 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.32550 :
fbl_cont.32548 :
	j	fble_cont.32546 
fble_else.32545 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32551 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32552 
fbl_else.32551 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32553 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.32554 
fbl_else.32553 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.32554 :
fbl_cont.32552 :
fble_cont.32546 :
	addi	%r0 %r2 l.26004
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.32542 
beq_else.32541 :
	addi	%r0 %r2 l.25933
	ilw.s	%r2 %f0 0
beq_cont.32542 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32555 
	neg.s	%f2 %f3
	j	fbl_cont.32556 
fbl_else.32555 :
	mov.s	%f2 %f3
fbl_cont.32556 :
	addi	%r0 %r2 l.25931
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.32557 
	addi	%r0 %r2 1
	j	fbl_cont.32558 
fbl_else.32557 :
	addi	%r0 %r2 0
fbl_cont.32558 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32559 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32561 
	neg.s	%f1 %f1
	j	fbl_cont.32562 
fbl_else.32561 :
fbl_cont.32562 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.32563 
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32565 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32566 
fbl_else.32565 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32567 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32568 
fbl_else.32567 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.32568 :
fbl_cont.32566 :
	j	fble_cont.32564 
fble_else.32563 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32569 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32570 
fbl_else.32569 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.32571 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.32572 
fbl_else.32571 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.32572 :
fbl_cont.32570 :
fble_cont.32564 :
	addi	%r0 %r2 l.26004
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.26006
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.32560 
beq_else.32559 :
	addi	%r0 %r2 l.25933
	ilw.s	%r2 %f1 0
beq_cont.32560 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.26076
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.24795
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.24795
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.32573 
	addi	%r0 %r2 1
	j	fbl_cont.32574 
fbl_else.32573 :
	addi	%r0 %r2 0
fbl_cont.32574 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.32575 
	j	beq_cont.32576 
beq_else.32575 :
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
beq_cont.32576 :
	addi	%r0 %r2 2
	addi	%r0 %r3 l.26082
	ilw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 l.26084
	ilw.s	%r3 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32536 
beq_else.32535 :
beq_cont.32536 :
beq_cont.32534 :
beq_cont.32532 :
beq_cont.32520 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32577 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 32
	add	%r3 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.32579 
	addi	%r0 %r1 1
	j	fbl_cont.32580 
fbl_else.32579 :
	addi	%r0 %r1 0
fbl_cont.32580 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.32581 
	addi	%r0 %r1 l.24782
	ilw.s	%r1 %f0 0
	j	beq_cont.32582 
beq_else.32581 :
beq_cont.32582 :
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 100
	lw	%r1 %r1 28
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 52
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r3 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.32578 
beq_else.32577 :
beq_cont.32578 :
beq_cont.32498 :
beq_cont.32398 :
	addi	%r0 %r1 2
	lw	%r26 %r2 16
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
ble_else.32394 :
	retl
do_without_neighbors.3030 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r10 4
	bg	%r2 %r10 ble_else.32584 
	lw	%r1 %r10 8
	addi	%r0 %r11 0
	slli	%r2 %r12 2
	add	%r10 %r12 %r25
	lw	%r25 %r10 0
	bg	%r11 %r10 ble_else.32585 
	lw	%r1 %r10 12
	slli	%r2 %r11 2
	add	%r10 %r11 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 0
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	bne	%r10 %r11 beq_else.32586 
	j	beq_cont.32587 
beq_else.32586 :
	lw	%r1 %r10 20
	lw	%r1 %r11 28
	lw	%r1 %r12 4
	lw	%r1 %r13 16
	slli	%r2 %r14 2
	add	%r10 %r14 %r25
	lw	%r25 %r10 0
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 1
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 2
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	lw	%r1 %r10 24
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r10 %r14 %r25
	lw	%r25 %r10 0
	slli	%r2 %r14 2
	add	%r11 %r14 %r25
	lw	%r25 %r11 0
	slli	%r2 %r14 2
	add	%r12 %r14 %r25
	lw	%r25 %r12 0
	addi	%r0 %r14 0
	sw	%r26 %r9 12
	sw	%r26 %r5 16
	sw	%r26 %r13 20
	sw	%r26 %r11 24
	sw	%r26 %r7 28
	sw	%r26 %r4 32
	sw	%r26 %r6 36
	sw	%r26 %r3 40
	sw	%r26 %r12 44
	sw	%r26 %r8 48
	sw	%r26 %r10 52
	beq	%r10 %r14 bne_else.32588 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r8 %r14 %r25
	lw	%r25 %r14 0
	addi	%r0 %r15 0
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r3 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 1
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r3 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 2
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r3 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r6 %r15 %r25
	lw	%r25 %r15 0
	addi	%r0 %r16 1
	sub	%r15 %r16 %r15
	sw	%r26 %r14 56
	mov	%r15 %r2
	mov	%r12 %r1
	mov	%r4 %r24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r4 118
	lw	%r26 %r1 56
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	j	bne_cont.32589 
bne_else.32588 :
bne_cont.32589 :
	addi	%r0 %r1 1
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.32590 
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r3 48
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 44
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 40
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r7 36
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r24 32
	sw	%r26 %r1 60
	mov	%r4 %r2
	mov	%r6 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 60
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	bne_cont.32591 
bne_else.32590 :
bne_cont.32591 :
	addi	%r0 %r1 2
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.32592 
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r3 48
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 44
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 40
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r7 36
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r24 32
	sw	%r26 %r1 64
	mov	%r4 %r2
	mov	%r6 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 64
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	bne_cont.32593 
bne_else.32592 :
bne_cont.32593 :
	addi	%r0 %r1 3
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.32594 
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r3 48
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 44
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 40
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r7 36
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r24 32
	sw	%r26 %r1 68
	mov	%r4 %r2
	mov	%r6 %r1
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 68
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	bne_cont.32595 
bne_else.32594 :
bne_cont.32595 :
	addi	%r0 %r1 4
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.32596 
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 48
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	lw	%r26 %r24 32
	sw	%r26 %r1 72
	mov	%r4 %r1
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 72
	lw	%r26 %r2 24
	lw	%r26 %r3 44
	lw	%r26 %r24 28
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	bne_cont.32597 
bne_else.32596 :
bne_cont.32597 :
	lw	%r26 %r1 8
	slli	%r1 %r2 2
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 16
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r6 12
	add	%r6 %r4 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r5 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r6 %r4 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r5 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r6 %r2 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.32587 :
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
ble_else.32585 :
	retl
ble_else.32584 :
	retl
try_exploit_neighbors.3046 :
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	slli	%r1 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 4
	bg	%r6 %r11 ble_else.32600 
	addi	%r0 %r11 0
	lw	%r10 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bg	%r11 %r12 ble_else.32601 
	slli	%r1 %r11 2
	add	%r4 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r11 8
	slli	%r6 %r12 2
	add	%r11 %r12 %r25
	lw	%r25 %r11 0
	slli	%r1 %r12 2
	add	%r3 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.32602 
	slli	%r1 %r12 2
	add	%r5 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.32604 
	addi	%r0 %r12 1
	sub	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.32606 
	addi	%r0 %r12 1
	add	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.32608 
	addi	%r0 %r11 1
	j	beq_cont.32609 
beq_else.32608 :
	addi	%r0 %r11 0
beq_cont.32609 :
	j	beq_cont.32607 
beq_else.32606 :
	addi	%r0 %r11 0
beq_cont.32607 :
	j	beq_cont.32605 
beq_else.32604 :
	addi	%r0 %r11 0
beq_cont.32605 :
	j	beq_cont.32603 
beq_else.32602 :
	addi	%r0 %r11 0
beq_cont.32603 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.32610 
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	mov	%r6 %r2
	mov	%r8 %r24
	lw	%r24 %r23 0
	jr	%r23
beq_else.32610 :
	lw	%r10 %r8 12
	slli	%r6 %r10 2
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.32611 
	j	beq_cont.32612 
beq_else.32611 :
	slli	%r1 %r8 2
	add	%r3 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r8 20
	addi	%r0 %r10 1
	sub	%r1 %r10 %r10
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r10 20
	slli	%r1 %r11 2
	add	%r4 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r11 20
	addi	%r0 %r12 1
	add	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 20
	slli	%r1 %r13 2
	add	%r5 %r13 %r25
	lw	%r25 %r13 0
	lw	%r13 %r13 20
	slli	%r6 %r14 2
	add	%r8 %r14 %r25
	lw	%r25 %r8 0
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 1
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 2
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r8 2
	add	%r10 %r8 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r8 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r8 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r8 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r8 2
	add	%r11 %r8 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r8 2
	add	%r12 %r8 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r8 2
	add	%r13 %r8 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r10 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f0 0
	slli	%r1 %r8 2
	add	%r4 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r8 16
	slli	%r6 %r10 2
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r10 %r8 2
	add	%r7 %r8 %r25
	sw.s	%r25 %f0 0
beq_cont.32612 :
	addi	%r0 %r7 1
	add	%r6 %r7 %r6
	lw	%r24 %r23 0
	jr	%r23
ble_else.32601 :
	retl
ble_else.32600 :
	retl
pretrace_diffuse_rays.3059 :
	lw	%r24 %r3 24
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r9 4
	bg	%r2 %r9 ble_else.32615 
	lw	%r1 %r9 8
	slli	%r2 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	bg	%r10 %r9 ble_else.32616 
	lw	%r1 %r9 12
	slli	%r2 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	bne	%r9 %r10 beq_else.32617 
	j	beq_cont.32618 
beq_else.32617 :
	lw	%r1 %r9 24
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 l.24782
	ilw.s	%r10 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	sw.s	%r25 %f0 0
	lw	%r1 %r10 28
	lw	%r1 %r11 4
	slli	%r9 %r9 2
	add	%r7 %r9 %r25
	lw	%r25 %r7 0
	slli	%r2 %r9 2
	add	%r10 %r9 %r25
	lw	%r25 %r9 0
	slli	%r2 %r10 2
	add	%r11 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 1
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 2
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r5 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	sw	%r26 %r8 8
	sw	%r26 %r1 12
	sw	%r26 %r10 16
	sw	%r26 %r9 20
	sw	%r26 %r7 24
	sw	%r26 %r6 28
	mov	%r3 %r2
	mov	%r10 %r1
	mov	%r4 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r4 118
	lw	%r26 %r1 24
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r24 28
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 12
	lw	%r1 %r2 20
	lw	%r26 %r3 4
	slli	%r3 %r4 2
	add	%r2 %r4 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 8
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
beq_cont.32618 :
	addi	%r0 %r2 1
	lw	%r26 %r3 4
	add	%r3 %r2 %r2
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32616 :
	retl
ble_else.32615 :
	retl
pretrace_pixels.3062 :
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r13 0
	bg	%r13 %r2 ble_else.32621 
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r8 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r12 %r8 %r25
	lw	%r25 %r8 0
	sub	%r2 %r8 %r8
	mtc1	%r8 %f4
	mul.s	%f4 %f3 %f3
	addi	%r0 %r8 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r8 1
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r8 2
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r7 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f2 %f3 %f3
	slli	%r8 %r7 2
	add	%r10 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	sqrt.s	%f3 %f3
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f4 0
	fbne	%f3 %f4 fbeq_else.32622 
	addi	%r0 %r7 1
	j	fbeq_cont.32623 
fbeq_else.32622 :
	addi	%r0 %r7 0
fbeq_cont.32623 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.32624 
	addi	%r0 %r7 l.24784
	ilw.s	%r7 %f4 0
	div.s	%f3 %f4 %f3
	j	beq_cont.32625 
beq_else.32624 :
	addi	%r0 %r7 l.24784
	ilw.s	%r7 %f3 0
beq_cont.32625 :
	addi	%r0 %r7 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f4
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r7 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f4
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r7 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f3
	slli	%r7 %r7 2
	add	%r10 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f3 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r4 %r8 %r25
	lw.s	%r25 %f3 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r4 %r8 %r25
	lw.s	%r25 %f3 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r4 %r8 %r25
	lw.s	%r25 %f3 0
	slli	%r7 %r4 2
	add	%r6 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r4 0
	addi	%r0 %r6 l.24784
	ilw.s	%r6 %f3 0
	slli	%r2 %r6 2
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f4 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r24 24
	sw	%r26 %r11 28
	sw	%r26 %r3 32
	sw	%r26 %r9 36
	sw	%r26 %r1 40
	sw	%r26 %r2 44
	mov	%r6 %r3
	mov	%r10 %r2
	mov	%r4 %r1
	mov	%r5 %r24
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	slli	%r1 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 36
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 24
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 32
	add	%r2 %r4 %r25
	sw	%r25 %r5 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r24 28
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	sub	%r2 %r1 %r2
	addi	%r0 %r1 1
	lw	%r26 %r3 32
	add	%r3 %r1 %r1
	addi	%r0 %r3 5
	bg	%r3 %r1 ble_else.32626 
	addi	%r0 %r3 5
	sub	%r1 %r3 %r3
	j	ble_cont.32627 
ble_else.32626 :
	mov	%r1 %r3
ble_cont.32627 :
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 40
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
ble_else.32621 :
	retl
scan_pixel.3073 :
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	lw	%r8 %r10 0
	bge	%r1 %r10 bl_else.32629 
	slli	%r1 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r10 0
	addi	%r0 %r11 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 1
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 2
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f0 0
	slli	%r11 %r10 2
	add	%r7 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	add	%r2 %r10 %r10
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw	%r25 %r11 0
	bge	%r10 %r11 bl_else.32630 
	addi	%r0 %r10 0
	bge	%r10 %r2 bl_else.32632 
	addi	%r0 %r10 1
	add	%r1 %r10 %r10
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw	%r25 %r8 0
	bge	%r10 %r8 bl_else.32634 
	addi	%r0 %r8 0
	bge	%r8 %r1 bl_else.32636 
	addi	%r0 %r8 1
	j	bl_cont.32637 
bl_else.32636 :
	addi	%r0 %r8 0
bl_cont.32637 :
	j	bl_cont.32635 
bl_else.32634 :
	addi	%r0 %r8 0
bl_cont.32635 :
	j	bl_cont.32633 
bl_else.32632 :
	addi	%r0 %r8 0
bl_cont.32633 :
	j	bl_cont.32631 
bl_else.32630 :
	addi	%r0 %r8 0
bl_cont.32631 :
	addi	%r0 %r10 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r1 20
	sw	%r26 %r7 24
	bne	%r8 %r10 beq_else.32638 
	slli	%r1 %r6 2
	add	%r4 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r8 0
	mov	%r8 %r2
	mov	%r6 %r1
	mov	%r9 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.32639 
beq_else.32638 :
	addi	%r0 %r8 0
	mov	%r6 %r24
	mov	%r8 %r6
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
beq_cont.32639 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.32640 
	addi	%r0 %r1 255
	j	bl_cont.32641 
bl_else.32640 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.32642 
	addi	%r0 %r1 0
	j	bl_cont.32643 
bl_else.32642 :
bl_cont.32643 :
bl_cont.32641 :
	addi	%r0 %r3 100
	div	%r1 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r1 %r5 %r1
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r1 %r5 %r1
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.32644 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.32645 
bl_else.32644 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.32646 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.32647 
bl_else.32646 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.32647 :
bl_cont.32645 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.32648 
	addi	%r0 %r1 255
	j	bl_cont.32649 
bl_else.32648 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.32650 
	addi	%r0 %r1 0
	j	bl_cont.32651 
bl_else.32650 :
bl_cont.32651 :
bl_cont.32649 :
	addi	%r0 %r3 100
	div	%r1 %r3 %r3
	addi	%r0 %r4 100
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r4
	addi	%r0 %r5 10
	div	%r4 %r5 %r4
	addi	%r0 %r5 100
	mul	%r3 %r5 %r5
	sub	%r1 %r5 %r1
	addi	%r0 %r5 10
	mul	%r4 %r5 %r5
	sub	%r1 %r5 %r1
	addi	%r0 %r5 0
	bge	%r5 %r3 bl_else.32652 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.32653 
bl_else.32652 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.32654 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.32655 
bl_else.32654 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.32655 :
bl_cont.32653 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.32656 
	addi	%r0 %r1 255
	j	bl_cont.32657 
bl_else.32656 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.32658 
	addi	%r0 %r1 0
	j	bl_cont.32659 
bl_else.32658 :
bl_cont.32659 :
bl_cont.32657 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 10
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 0
	bge	%r4 %r2 bl_else.32660 
	addi	%r0 %r4 48
	add	%r2 %r4 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.32661 
bl_else.32660 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.32662 
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.32663 
bl_else.32662 :
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
bl_cont.32663 :
bl_cont.32661 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	add	%r2 %r1 %r1
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
bl_else.32629 :
	retl
scan_line.3079 :
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	lw	%r11 %r13 4
	bge	%r1 %r13 bl_else.32665 
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw	%r25 %r13 0
	addi	%r0 %r14 1
	sub	%r13 %r14 %r13
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r8 24
	bge	%r1 %r13 bl_else.32666 
	addi	%r0 %r13 1
	add	%r1 %r13 %r13
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r9 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r12 %r9 %r25
	lw	%r25 %r9 0
	sub	%r13 %r9 %r9
	mtc1	%r9 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r7 %r9 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r7 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f2
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r6 %r9 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r7 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f0 %f0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r11 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 1
	sub	%r6 %r7 %r6
	mov	%r5 %r3
	mov	%r6 %r2
	mov	%r4 %r1
	mov	%r10 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	bl_cont.32667 
bl_else.32666 :
bl_cont.32667 :
	addi	%r0 %r1 0
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r24 24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	add	%r2 %r1 %r1
	addi	%r0 %r2 2
	lw	%r26 %r3 4
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.32668 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r5
	j	ble_cont.32669 
ble_else.32668 :
	mov	%r2 %r5
ble_cont.32669 :
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.32665 :
	retl
init_line_elements.3089 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.32671 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 1
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 12
	sw	%r26 %r2 16
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 24
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 28
	slli	%r2 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 40
	sw	%r26 %r2 44
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 44
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 48
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 52
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	slli	%r2 %r2 2
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 1
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 60
	sw	%r26 %r2 64
	mov	%r3 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r2 68
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r2 72
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r2 76
	slli	%r2 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 1
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 84
	sw	%r26 %r2 88
	mov	%r3 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r2 88
	slli	%r2 %r2 2
	lw	%r26 %r3 84
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r2 92
	slli	%r2 %r2 2
	lw	%r26 %r3 84
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 3
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r2 96
	slli	%r2 %r2 2
	lw	%r26 %r3 84
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r2 100
	slli	%r2 %r2 2
	lw	%r26 %r3 84
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r3 28
	lw	%r26 %r2 80
	sw	%r1 %r2 24
	lw	%r26 %r2 60
	sw	%r1 %r2 20
	lw	%r26 %r2 40
	sw	%r1 %r2 16
	lw	%r26 %r2 36
	sw	%r1 %r2 12
	lw	%r26 %r2 32
	sw	%r1 %r2 8
	lw	%r26 %r2 12
	sw	%r1 %r2 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	lw	%r26 %r2 4
	slli	%r2 %r3 2
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	mov	%r4 %r1
	j	init_line_elements.3089
ble_else.32671 :
	retl
calc_dirvec.3099 :
	lw	%r24 %r4 12
	lw	%r24 %r5 8
	lw	%r24 %r6 4
	addi	%r0 %r7 5
	bg	%r7 %r1 ble_else.32672 
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	div.s	%f2 %f0 %f0
	div.s	%f2 %f1 %f1
	addi	%r0 %r1 l.24784
	ilw.s	%r1 %f3 0
	div.s	%f2 %f3 %f2
	slli	%r2 %r1 2
	add	%r5 %r1 %r25
	lw	%r25 %r1 0
	slli	%r3 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 40
	add	%r3 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f1 %f3
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 80
	add	%r3 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r2 1
	add	%r3 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f1 %f4
	neg.s	%f2 %f5
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f5 0
	addi	%r0 %r2 41
	add	%r3 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	neg.s	%f0 %f3
	neg.s	%f2 %f4
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 81
	add	%r3 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f2
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f1 0
	retl
ble_else.32672 :
	mul.s	%f1 %f1 %f0
	addi	%r0 %r5 l.26216
	ilw.s	%r5 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f1 0
	div.s	%f0 %f1 %f1
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f4 0
	fbg	%f4 %f1 fble_else.32674 
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.32676 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.32677 
fbl_else.32676 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.32678 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.32679 
fbl_else.32678 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.32679 :
fbl_cont.32677 :
	j	fble_cont.32675 
fble_else.32674 :
	neg.s	%f1 %f1
	addi	%r0 %r5 l.25937
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.32680 
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.32681 
fbl_else.32680 :
	addi	%r0 %r5 l.25939
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.32682 
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.24815
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.24788
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.32683 
fbl_else.32682 :
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.24784
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.25943
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.25945
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.25947
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25949
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25951
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.25955
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.32683 :
fbl_cont.32681 :
fble_cont.32675 :
	mul.s	%f2 %f1 %f1
	sw.s	%r26 %f2 0
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r4 20
	sw.s	%r26 %f3 24
	sw	%r26 %r1 32
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r6 56
	mov	%r4 %r24
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	lw	%r26 %r24 56
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	add	%r2 %r1 %r1
	mul.s	%f0 %f0 %f1
	addi	%r0 %r2 l.26216
	ilw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	sqrt.s	%f1 %f1
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f2
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f3 0
	fbg	%f3 %f2 fble_else.32686 
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32688 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32689 
fbl_else.32688 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32690 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32691 
fbl_else.32690 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.32691 :
fbl_cont.32689 :
	j	fble_cont.32687 
fble_else.32686 :
	neg.s	%f2 %f2
	addi	%r0 %r2 l.25937
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32692 
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32693 
fbl_else.32692 :
	addi	%r0 %r2 l.25939
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.32694 
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.24815
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.24788
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.32695 
fbl_else.32694 :
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.24784
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.25943
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.25945
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.25947
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25949
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25951
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.25955
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.32695 :
fbl_cont.32693 :
fble_cont.32687 :
	lw.s	%r26 %f3 24
	mul.s	%f3 %f2 %f2
	lw	%r26 %r24 20
	sw.s	%r26 %f0 72
	sw	%r26 %r1 80
	sw.s	%r26 %f1 88
	sw.s	%r26 %f2 96
	mov.s	%f2 %f0
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	lw	%r26 %r24 56
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	lw	%r24 %r23 0
	addi	%r26 %r26 120	
	jalr	%r23
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	div.s	%f0 %f1 %f0
	lw.s	%r26 %f1 88
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 72
	lw.s	%r26 %f2 0
	lw.s	%r26 %f3 24
	lw	%r26 %r1 80
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
calc_dirvecs.3107 :
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.32697 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.25953
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.27221
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f3 0
	sw	%r26 %r24 0
	sw.s	%r26 %f0 8
	sw	%r26 %r2 16
	sw	%r26 %r4 20
	sw	%r26 %r3 24
	sw	%r26 %r1 28
	mov	%r5 %r1
	mov	%r4 %r24
	mov.s	%f3 %f31
	mov.s	%f0 %f3
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	mtc1	%r1 %f0
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26216
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 2
	lw	%r26 %r4 24
	add	%r4 %r3 %r3
	lw.s	%r26 %f3 8
	lw	%r26 %r5 16
	lw	%r26 %r24 20
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	sub	%r2 %r1 %r1
	addi	%r0 %r2 1
	lw	%r26 %r3 16
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.32699 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.32700 
ble_else.32699 :
ble_cont.32700 :
	addi	%r0 %r3 0
	bg	%r3 %r1 ble_else.32701 
	mtc1	%r1 %f0
	addi	%r0 %r3 l.25953
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r3 l.27221
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f2
	addi	%r0 %r3 0
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f1 0
	lw.s	%r26 %f3 8
	lw	%r26 %r4 24
	lw	%r26 %r24 20
	sw	%r26 %r2 32
	sw	%r26 %r1 36
	mov	%r3 %r1
	mov	%r4 %r3
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 36
	mtc1	%r1 %f0
	addi	%r0 %r2 l.25953
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.26216
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 2
	lw	%r26 %r4 24
	add	%r4 %r3 %r3
	lw.s	%r26 %f3 8
	lw	%r26 %r5 32
	lw	%r26 %r24 20
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	sub	%r2 %r1 %r1
	addi	%r0 %r2 1
	lw	%r26 %r3 32
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.32702 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.32703 
ble_else.32702 :
ble_cont.32703 :
	lw.s	%r26 %f0 8
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32701 :
	retl
ble_else.32697 :
	retl
calc_dirvec_rows.3112 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 0
	bg	%r6 %r1 ble_else.32706 
	mtc1	%r1 %f0
	addi	%r0 %r6 l.25953
	ilw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r6 l.27221
	ilw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f3
	addi	%r0 %r6 4
	mtc1	%r6 %f0
	addi	%r0 %r7 l.25953
	ilw.s	%r7 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r7 l.27221
	ilw.s	%r7 %f1 0
	sub.s	%f1 %f0 %f2
	addi	%r0 %r7 0
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f0 0
	addi	%r0 %r8 l.24782
	ilw.s	%r8 %f1 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r4 8
	sw.s	%r26 %f3 16
	sw	%r26 %r2 24
	sw	%r26 %r5 28
	sw	%r26 %r3 32
	sw	%r26 %r6 36
	mov	%r7 %r1
	mov	%r5 %r24
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 36
	mtc1	%r1 %f0
	addi	%r0 %r1 l.25953
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.26216
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r1 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f0 0
	addi	%r0 %r2 l.24782
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 2
	lw	%r26 %r3 32
	add	%r3 %r2 %r2
	lw.s	%r26 %f3 16
	lw	%r26 %r4 24
	lw	%r26 %r24 28
	mov	%r2 %r3
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 3
	addi	%r0 %r2 1
	lw	%r26 %r3 24
	add	%r3 %r2 %r2
	addi	%r0 %r4 5
	bg	%r4 %r2 ble_else.32708 
	addi	%r0 %r4 5
	sub	%r2 %r4 %r2
	j	ble_cont.32709 
ble_else.32708 :
ble_cont.32709 :
	lw.s	%r26 %f0 16
	lw	%r26 %r4 32
	lw	%r26 %r24 8
	mov	%r4 %r3
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	addi	%r0 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.32710 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.32711 
ble_else.32710 :
ble_cont.32711 :
	addi	%r0 %r3 4
	lw	%r26 %r4 32
	add	%r4 %r3 %r3
	addi	%r0 %r4 0
	bg	%r4 %r1 ble_else.32712 
	mtc1	%r1 %f0
	addi	%r0 %r4 l.25953
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r4 l.27221
	ilw.s	%r4 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r4 4
	lw	%r26 %r24 8
	sw	%r26 %r3 40
	sw	%r26 %r2 44
	sw	%r26 %r1 48
	mov	%r4 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 48
	sub	%r2 %r1 %r1
	addi	%r0 %r2 2
	lw	%r26 %r3 44
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.32713 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.32714 
ble_else.32713 :
ble_cont.32714 :
	addi	%r0 %r3 4
	lw	%r26 %r4 40
	add	%r4 %r3 %r3
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32712 :
	retl
ble_else.32706 :
	retl
create_dirvec_elements.3118 :
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.32717 
	addi	%r0 %r4 3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw	%r26 %r3 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 16
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 8
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32718 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 24
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 20
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32719 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 32
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 28
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32720 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 40
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 36
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32721 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 48
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 48
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 44
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32722 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 56
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 52
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32723 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 64
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 60
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32724 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 12
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 72
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 68
	slli	%r2 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
ble_else.32724 :
	retl
ble_else.32723 :
	retl
ble_else.32722 :
	retl
ble_else.32721 :
	retl
ble_else.32720 :
	retl
ble_else.32719 :
	retl
ble_else.32718 :
	retl
ble_else.32717 :
	retl
create_dirvecs.3121 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.32733 
	addi	%r0 %r5 120
	addi	%r0 %r6 3
	addi	%r0 %r7 l.24782
	ilw.s	%r7 %f0 0
	sw	%r26 %r24 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r5 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 24
	sw	%r2 %r1 0
	lw	%r26 %r1 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	addi	%r0 %r5 3
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f0 0
	sw	%r26 %r1 28
	sw	%r26 %r3 32
	mov	%r5 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 36
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 36
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 32
	slli	%r2 %r2 2
	lw	%r26 %r3 28
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 117
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 44
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 40
	slli	%r2 %r2 2
	lw	%r26 %r3 28
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 116
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 52
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 52
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 48
	slli	%r2 %r2 2
	lw	%r26 %r3 28
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 115
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 60
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 56
	slli	%r2 %r3 2
	lw	%r26 %r4 28
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32734 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 68
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 68
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 64
	slli	%r2 %r3 2
	lw	%r26 %r4 28
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32736 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 76
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 76
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 72
	slli	%r2 %r3 2
	lw	%r26 %r4 28
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32738 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 84
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 84
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 80
	slli	%r2 %r3 2
	lw	%r26 %r4 28
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 4
	mov	%r4 %r1
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	ble_cont.32739 
ble_else.32738 :
ble_cont.32739 :
	j	ble_cont.32737 
ble_else.32736 :
ble_cont.32737 :
	j	ble_cont.32735 
ble_else.32734 :
ble_cont.32735 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32740 
	addi	%r0 %r2 120
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 88
	sw	%r26 %r2 92
	mov	%r3 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 96
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 96
	sw	%r2 %r1 0
	lw	%r26 %r1 92
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r2 88
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	addi	%r0 %r5 3
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f0 0
	sw	%r26 %r1 100
	sw	%r26 %r3 104
	mov	%r5 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 108
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 108
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 104
	slli	%r2 %r2 2
	lw	%r26 %r3 100
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 117
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 116
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 116
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 112
	slli	%r2 %r2 2
	lw	%r26 %r3 100
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 116
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 124
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 124
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 120
	slli	%r2 %r3 2
	lw	%r26 %r4 100
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32741 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 128
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 132
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 132
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 128
	slli	%r2 %r3 2
	lw	%r26 %r4 100
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32743 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 136
	mov	%r2 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 140
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 140
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 136
	slli	%r2 %r3 2
	lw	%r26 %r4 100
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32745 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 148
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 148
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 144
	slli	%r2 %r3 2
	lw	%r26 %r4 100
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 4
	mov	%r4 %r1
	sw	%r26 %r28 156
	lw	%r24 %r23 0
	addi	%r26 %r26 160	
	jalr	%r23
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	j	ble_cont.32746 
ble_else.32745 :
ble_cont.32746 :
	j	ble_cont.32744 
ble_else.32743 :
ble_cont.32744 :
	j	ble_cont.32742 
ble_else.32741 :
ble_cont.32742 :
	addi	%r0 %r1 1
	lw	%r26 %r2 88
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32747 
	addi	%r0 %r2 120
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 152
	sw	%r26 %r2 156
	mov	%r3 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 160
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 160
	sw	%r2 %r1 0
	lw	%r26 %r1 156
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 152
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	addi	%r0 %r5 3
	addi	%r0 %r6 l.24782
	ilw.s	%r6 %f0 0
	sw	%r26 %r1 164
	sw	%r26 %r3 168
	mov	%r5 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 172
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 172
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 168
	slli	%r2 %r2 2
	lw	%r26 %r3 164
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 117
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 176
	mov	%r2 %r1
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 180
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 180
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 176
	slli	%r2 %r2 2
	lw	%r26 %r3 164
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 116
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 184
	mov	%r2 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 188
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 188
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 184
	slli	%r2 %r3 2
	lw	%r26 %r4 164
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32748 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 192
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 196
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 196
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 192
	slli	%r2 %r3 2
	lw	%r26 %r4 164
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32750 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 200
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 204
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 204
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 200
	slli	%r2 %r3 2
	lw	%r26 %r4 164
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 4
	mov	%r4 %r1
	sw	%r26 %r28 212
	lw	%r24 %r23 0
	addi	%r26 %r26 216	
	jalr	%r23
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	j	ble_cont.32751 
ble_else.32750 :
ble_cont.32751 :
	j	ble_cont.32749 
ble_else.32748 :
ble_cont.32749 :
	addi	%r0 %r1 1
	lw	%r26 %r2 152
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32752 
	addi	%r0 %r2 120
	addi	%r0 %r3 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 208
	sw	%r26 %r2 212
	mov	%r3 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 216
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 216
	sw	%r2 %r1 0
	lw	%r26 %r1 212
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 208
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	addi	%r0 %r4 3
	addi	%r0 %r5 l.24782
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 220
	sw	%r26 %r3 224
	mov	%r4 %r1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 228
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 228
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 224
	slli	%r2 %r2 2
	lw	%r26 %r3 220
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 117
	addi	%r0 %r2 3
	addi	%r0 %r4 l.24782
	ilw.s	%r4 %f0 0
	sw	%r26 %r1 232
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 236
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 236
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 232
	slli	%r2 %r3 2
	lw	%r26 %r4 220
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32753 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 240
	mov	%r2 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 244
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 244
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 240
	slli	%r2 %r3 2
	lw	%r26 %r4 220
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32755 
	addi	%r0 %r2 3
	addi	%r0 %r3 l.24782
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 248
	mov	%r2 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 20
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 252
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 252
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 248
	slli	%r2 %r3 2
	lw	%r26 %r4 220
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r24 4
	mov	%r4 %r1
	sw	%r26 %r28 260
	lw	%r24 %r23 0
	addi	%r26 %r26 264	
	jalr	%r23
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	j	ble_cont.32756 
ble_else.32755 :
ble_cont.32756 :
	j	ble_cont.32754 
ble_else.32753 :
ble_cont.32754 :
	addi	%r0 %r1 1
	lw	%r26 %r2 208
	sub	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32752 :
	retl
ble_else.32747 :
	retl
ble_else.32740 :
	retl
ble_else.32733 :
	retl
init_dirvec_constants.3123 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r2 ble_else.32761 
	slli	%r2 %r5 2
	add	%r1 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 1
	sub	%r6 %r7 %r6
	sw	%r26 %r24 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r2 16
	mov	%r6 %r2
	mov	%r5 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32762 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 20
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 20
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32763 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 24
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32764 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 28
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32765 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 32
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32766 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 36
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32767 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 40
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 40
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32768 
	slli	%r1 %r2 2
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 8
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r4
	lw	%r26 %r24 4
	sw	%r26 %r1 44
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	sub	%r2 %r1 %r2
	lw	%r26 %r1 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32768 :
	retl
ble_else.32767 :
	retl
ble_else.32766 :
	retl
ble_else.32765 :
	retl
ble_else.32764 :
	retl
ble_else.32763 :
	retl
ble_else.32762 :
	retl
ble_else.32761 :
	retl
init_vecset_constants.3126 :
	lw	%r24 %r2 16
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 0
	bg	%r6 %r1 ble_else.32777 
	slli	%r1 %r6 2
	add	%r5 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 119
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r2 %r8 %r25
	lw	%r25 %r8 0
	addi	%r0 %r9 1
	sub	%r8 %r9 %r8
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r1 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	sw	%r26 %r2 20
	sw	%r26 %r6 24
	mov	%r8 %r2
	mov	%r7 %r1
	mov	%r3 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 118
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 20
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	lw	%r26 %r24 16
	mov	%r3 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 117
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 20
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	lw	%r26 %r24 16
	mov	%r3 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 116
	slli	%r1 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 28
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32778 
	slli	%r1 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 32
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32780 
	slli	%r1 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 36
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32782 
	slli	%r1 %r2 2
	lw	%r26 %r3 24
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 40
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 1
	lw	%r26 %r2 40
	sub	%r2 %r1 %r2
	lw	%r26 %r1 24
	lw	%r26 %r24 12
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	j	ble_cont.32783 
ble_else.32782 :
ble_cont.32783 :
	j	ble_cont.32781 
ble_else.32780 :
ble_cont.32781 :
	j	ble_cont.32779 
ble_else.32778 :
ble_cont.32779 :
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32784 
	slli	%r1 %r2 2
	lw	%r26 %r3 4
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 119
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 20
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 1
	sub	%r5 %r7 %r5
	lw	%r26 %r24 16
	sw	%r26 %r1 44
	sw	%r26 %r2 48
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 118
	slli	%r1 %r1 2
	lw	%r26 %r2 48
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 20
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	lw	%r26 %r24 16
	mov	%r3 %r2
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r1 117
	slli	%r1 %r2 2
	lw	%r26 %r3 48
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 52
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r1 1
	lw	%r26 %r2 52
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32785 
	slli	%r1 %r2 2
	lw	%r26 %r3 48
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 56
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r1 1
	lw	%r26 %r2 56
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32787 
	slli	%r1 %r2 2
	lw	%r26 %r3 48
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 60
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 1
	lw	%r26 %r2 60
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32789 
	slli	%r1 %r2 2
	lw	%r26 %r3 48
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 64
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 1
	lw	%r26 %r2 64
	sub	%r2 %r1 %r2
	lw	%r26 %r1 48
	lw	%r26 %r24 12
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	ble_cont.32790 
ble_else.32789 :
ble_cont.32790 :
	j	ble_cont.32788 
ble_else.32787 :
ble_cont.32788 :
	j	ble_cont.32786 
ble_else.32785 :
ble_cont.32786 :
	addi	%r0 %r1 1
	lw	%r26 %r2 44
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32791 
	slli	%r1 %r2 2
	lw	%r26 %r3 4
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 119
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 20
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 1
	sub	%r5 %r7 %r5
	lw	%r26 %r24 16
	sw	%r26 %r1 68
	sw	%r26 %r2 72
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r1 118
	slli	%r1 %r1 2
	lw	%r26 %r2 72
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 20
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 1
	sub	%r3 %r5 %r3
	lw	%r26 %r24 16
	mov	%r3 %r2
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r1 117
	slli	%r1 %r2 2
	lw	%r26 %r3 72
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 76
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 1
	lw	%r26 %r2 76
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32792 
	slli	%r1 %r2 2
	lw	%r26 %r3 72
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 80
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 84
	lw	%r24 %r23 0
	addi	%r26 %r26 88	
	jalr	%r23
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 1
	lw	%r26 %r2 80
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32794 
	slli	%r1 %r2 2
	lw	%r26 %r3 72
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 84
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r1 1
	lw	%r26 %r2 84
	sub	%r2 %r1 %r2
	lw	%r26 %r1 72
	lw	%r26 %r24 12
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	ble_cont.32795 
ble_else.32794 :
ble_cont.32795 :
	j	ble_cont.32793 
ble_else.32792 :
ble_cont.32793 :
	addi	%r0 %r1 1
	lw	%r26 %r2 68
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32796 
	slli	%r1 %r2 2
	lw	%r26 %r3 4
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 119
	slli	%r3 %r3 2
	add	%r2 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 88
	sw	%r26 %r2 92
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 118
	slli	%r1 %r2 2
	lw	%r26 %r3 92
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 96
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 1
	lw	%r26 %r2 96
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32797 
	slli	%r1 %r2 2
	lw	%r26 %r3 92
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 1
	sub	%r4 %r6 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 100
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r1 1
	lw	%r26 %r2 100
	sub	%r2 %r1 %r1
	addi	%r0 %r2 0
	bg	%r2 %r1 ble_else.32799 
	slli	%r1 %r2 2
	lw	%r26 %r3 92
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 20
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r4
	lw	%r26 %r24 16
	sw	%r26 %r1 104
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r1 1
	lw	%r26 %r2 104
	sub	%r2 %r1 %r2
	lw	%r26 %r1 92
	lw	%r26 %r24 12
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	ble_cont.32800 
ble_else.32799 :
ble_cont.32800 :
	j	ble_cont.32798 
ble_else.32797 :
ble_cont.32798 :
	addi	%r0 %r1 1
	lw	%r26 %r2 88
	sub	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.32796 :
	retl
ble_else.32791 :
	retl
ble_else.32784 :
	retl
ble_else.32777 :
	retl
#libraries
min_caml_create_array :
	mov	%r1 %r3
	mov	%r27 %r1
create_array_loop :
	bne     %r3 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r3 %r3 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	mov	%r1 %r2
	mov	%r27 %r1
create_float_array_loop :
	bne	%r2 %r0	create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r2 %r2 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
