#data_section
l.24793 :	# -200.000000
	.long	0xc3480000
l.24790 :	# 200.000000
	.long	0x43480000
l.24638 :	# 128.000000
	.long	0x43000000
l.24582 :	# 3.141593
	.long	0x40490fdb
l.24556 :	# 0.900000
	.long	0x3f666666
l.23852 :	# 150.000000
	.long	0x43160000
l.23581 :	# -150.000000
	.long	0xc3160000
l.23551 :	# 0.100000
	.long	0x3dcccccd
l.23495 :	# -2.000000
	.long	0xc0000000
l.23480 :	# 0.003906
	.long	0x3b800000
l.23446 :	# 20.000000
	.long	0x41a00000
l.23444 :	# 0.050000
	.long	0x3d4ccccd
l.23435 :	# 0.250000
	.long	0x3e800000
l.23426 :	# 10.000000
	.long	0x41200000
l.23419 :	# 0.300000
	.long	0x3e99999a
l.23417 :	# 255.000000
	.long	0x437f0000
l.23411 :	# 0.150000
	.long	0x3e19999a
l.23341 :	# 3.141593
	.long	0x40490fdb
l.23339 :	# 30.000000
	.long	0x41f00000
l.23290 :	# 0.333333
	.long	0x3eaaaaaa
l.23288 :	# 0.200000
	.long	0x3e4ccccd
l.23286 :	# 0.142857
	.long	0x3e124925
l.23284 :	# 0.111111
	.long	0x3de38e38
l.23282 :	# 0.089764
	.long	0x3db7d66e
l.23280 :	# 0.060035
	.long	0x3d75e7c5
l.23278 :	# -1.570796
	.long	0xbfc90fdb
l.23274 :	# 2.437500
	.long	0x401c0000
l.23272 :	# 0.437500
	.long	0x3ee00000
l.23268 :	# 15.000000
	.long	0x41700000
l.23266 :	# 0.000100
	.long	0x38d1b717
l.23149 :	# 100000000.000000
	.long	0x4cbebc20
l.23143 :	# 1000000000.000000
	.long	0x4e6e6b28
l.22812 :	# -0.100000
	.long	0xbdcccccd
l.22734 :	# 0.010000
	.long	0x3c23d70a
l.22732 :	# -0.200000
	.long	0xbe4ccccd
l.22504 :	# 2.000000
	.long	0x40000000
l.22431 :	# 0.017453
	.long	0x3c8efa35
l.22339 :	# -1.000000
	.long	0xbf800000
l.22326 :	# 0.166667
	.long	0x3e2aaaac
l.22324 :	# 0.008333
	.long	0x3c088666
l.22322 :	# 0.000196
	.long	0x394d64b6
l.22319 :	# 0.500000
	.long	0x3f000000
l.22317 :	# 0.041664
	.long	0x3d2aa789
l.22315 :	# 0.001370
	.long	0x3ab38106
l.22312 :	# 0.785398
	.long	0x3f490fdb
l.22310 :	# 1.570796
	.long	0x3fc90fdb
l.22308 :	# 1.000000
	.long	0x3f800000
l.22306 :	# 0.000000
	.long	0x0
l.22304 :	# 6.283185
	.long	0x40c90fdb
#text_section
program_start :
	addi	%r0 %r1 l.24582
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 1
	addi	%r0 %r3 l.23417
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.23143
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 124
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r5 l.22306
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
	addi	%r0 %r4 l.22306
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
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r19 shadow_check_one_or_matrix.2947
	sw	%r12 %r19 0
	sw	%r12 %r13 24
	sw	%r12 %r14 20
	sw	%r12 %r18 16
	sw	%r12 %r4 12
	sw	%r12 %r16 8
	sw	%r12 %r17 4
	mov	%r27 %r17
	addi	%r27 %r27 40
	addi	%r0 %r18 solve_each_element.2950
	sw	%r17 %r18 0
	lw	%r26 %r18 56
	sw	%r17 %r18 32
	lw	%r26 %r19 96
	sw	%r17 %r19 28
	sw	%r17 %r14 24
	sw	%r17 %r4 20
	lw	%r26 %r20 52
	sw	%r17 %r20 16
	sw	%r17 %r16 12
	lw	%r26 %r21 64
	sw	%r17 %r21 8
	sw	%r17 %r11 4
	mov	%r27 %r22
	addi	%r27 %r27 16
	addi	%r0 %r23 solve_one_or_network.2954
	sw	%r22 %r23 0
	sw	%r22 %r17 8
	sw	%r22 %r8 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r23 trace_or_matrix.2958
	sw	%r17 %r23 0
	sw	%r17 %r18 20
	sw	%r17 %r19 16
	sw	%r17 %r14 12
	sw	%r17 %r22 8
	sw	%r17 %r4 4
	mov	%r27 %r22
	addi	%r27 %r27 40
	addi	%r0 %r23 solve_each_element_fast.2964
	sw	%r22 %r23 0
	sw	%r22 %r18 32
	lw	%r26 %r23 100
	sw	%r22 %r23 28
	sw	%r22 %r14 24
	sw	%r22 %r4 20
	sw	%r22 %r20 16
	sw	%r22 %r16 12
	sw	%r22 %r21 8
	sw	%r22 %r11 4
	mov	%r27 %r11
	addi	%r27 %r27 16
	addi	%r0 %r24 solve_one_or_network_fast.2968
	sw	%r11 %r24 0
	sw	%r11 %r22 8
	sw	%r11 %r8 4
	mov	%r27 %r8
	addi	%r27 %r27 24
	addi	%r0 %r22 trace_or_matrix_fast.2972
	sw	%r8 %r22 0
	sw	%r8 %r18 16
	sw	%r8 %r14 12
	sw	%r8 %r11 8
	sw	%r8 %r4 4
	mov	%r27 %r11
	addi	%r27 %r27 48
	addi	%r0 %r14 trace_reflections.2994
	sw	%r11 %r14 0
	sw	%r11 %r8 40
	sw	%r11 %r18 36
	lw	%r26 %r14 72
	sw	%r11 %r14 32
	sw	%r11 %r12 28
	lw	%r26 %r22 80
	sw	%r11 %r22 24
	lw	%r26 %r24 148
	sw	%r11 %r24 20
	lw	%r26 %r24 44
	sw	%r11 %r24 16
	lw	%r26 %r13 68
	sw	%r11 %r13 12
	sw	%r11 %r20 8
	sw	%r11 %r21 4
	sw	%r26 %r7 152
	mov	%r27 %r7
	addi	%r27 %r27 88
	sw	%r26 %r2 156
	addi	%r0 %r2 trace_ray.2999
	sw	%r7 %r2 0
	sw	%r7 %r11 84
	sw	%r7 %r17 80
	sw	%r7 %r18 76
	sw	%r7 %r14 72
	sw	%r7 %r23 68
	sw	%r7 %r19 64
	sw	%r7 %r3 60
	sw	%r7 %r12 56
	sw	%r7 %r10 52
	sw	%r7 %r22 48
	sw	%r7 %r24 44
	sw	%r7 %r4 40
	sw	%r7 %r13 36
	sw	%r7 %r1 32
	sw	%r7 %r5 28
	sw	%r7 %r15 24
	sw	%r7 %r20 20
	sw	%r7 %r16 16
	sw	%r7 %r21 12
	sw	%r7 %r6 8
	lw	%r26 %r2 28
	sw	%r7 %r2 4
	mov	%r27 %r11
	addi	%r27 %r27 64
	addi	%r0 %r17 iter_trace_diffuse_rays.3008
	sw	%r11 %r17 0
	sw	%r11 %r8 56
	sw	%r11 %r18 52
	sw	%r11 %r14 48
	sw	%r11 %r3 44
	sw	%r11 %r12 40
	sw	%r11 %r24 36
	sw	%r11 %r4 32
	sw	%r11 %r13 28
	sw	%r11 %r15 24
	sw	%r11 %r20 20
	sw	%r11 %r16 16
	sw	%r11 %r21 12
	lw	%r26 %r8 76
	sw	%r11 %r8 8
	sw	%r11 %r6 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r13 do_without_neighbors.3030
	sw	%r12 %r13 0
	sw	%r12 %r23 28
	sw	%r12 %r10 24
	sw	%r12 %r22 20
	sw	%r12 %r5 16
	sw	%r12 %r11 12
	lw	%r26 %r13 124
	sw	%r12 %r13 8
	sw	%r12 %r8 4
	mov	%r27 %r14
	addi	%r27 %r27 16
	addi	%r0 %r16 try_exploit_neighbors.3046
	sw	%r14 %r16 0
	sw	%r14 %r22 12
	sw	%r14 %r12 8
	sw	%r14 %r8 4
	mov	%r27 %r16
	addi	%r27 %r27 32
	addi	%r0 %r17 pretrace_diffuse_rays.3059
	sw	%r16 %r17 0
	sw	%r16 %r23 24
	sw	%r16 %r10 20
	sw	%r16 %r5 16
	sw	%r16 %r11 12
	sw	%r16 %r13 8
	sw	%r16 %r8 4
	mov	%r27 %r8
	addi	%r27 %r27 40
	addi	%r0 %r10 pretrace_pixels.3062
	sw	%r8 %r10 0
	lw	%r26 %r10 20
	sw	%r8 %r10 36
	sw	%r8 %r7 32
	sw	%r8 %r19 28
	lw	%r26 %r7 104
	sw	%r8 %r7 24
	lw	%r26 %r11 92
	sw	%r8 %r11 20
	sw	%r8 %r22 16
	lw	%r26 %r17 116
	sw	%r8 %r17 12
	sw	%r8 %r16 8
	lw	%r26 %r16 88
	sw	%r8 %r16 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 scan_pixel.3073
	sw	%r17 %r18 0
	sw	%r17 %r14 16
	sw	%r17 %r22 12
	lw	%r26 %r14 84
	sw	%r17 %r14 8
	sw	%r17 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 32
	addi	%r0 %r18 scan_line.3079
	sw	%r12 %r18 0
	lw	%r26 %r18 112
	sw	%r12 %r18 28
	lw	%r26 %r19 108
	sw	%r12 %r19 24
	sw	%r12 %r17 20
	sw	%r12 %r11 16
	sw	%r12 %r8 12
	sw	%r12 %r14 8
	sw	%r12 %r16 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r20 calc_dirvec.3099
	sw	%r17 %r20 0
	sw	%r17 %r3 12
	sw	%r17 %r13 8
	sw	%r17 %r6 4
	mov	%r27 %r20
	addi	%r27 %r27 8
	addi	%r0 %r21 calc_dirvecs.3107
	sw	%r20 %r21 0
	sw	%r20 %r17 4
	mov	%r27 %r17
	addi	%r27 %r27 8
	addi	%r0 %r21 calc_dirvec_rows.3112
	sw	%r17 %r21 0
	sw	%r17 %r20 4
	mov	%r27 %r20
	addi	%r27 %r27 8
	addi	%r0 %r21 create_dirvec_elements.3118
	sw	%r20 %r21 0
	sw	%r20 %r5 4
	mov	%r27 %r21
	addi	%r27 %r27 16
	addi	%r0 %r22 create_dirvecs.3121
	sw	%r21 %r22 0
	sw	%r21 %r5 12
	sw	%r21 %r13 8
	sw	%r21 %r20 4
	mov	%r27 %r20
	addi	%r27 %r27 16
	addi	%r0 %r22 init_dirvec_constants.3123
	sw	%r20 %r22 0
	sw	%r20 %r5 8
	sw	%r20 %r9 4
	mov	%r27 %r22
	addi	%r27 %r27 16
	addi	%r0 %r23 init_vecset_constants.3126
	sw	%r22 %r23 0
	sw	%r22 %r20 8
	sw	%r22 %r13 4
	addi	%r0 %r13 128
	addi	%r0 %r20 128
	sw	%r14 %r13 0
	sw	%r14 %r20 4
	addi	%r0 %r20 64
	sw	%r16 %r20 0
	addi	%r0 %r20 64
	sw	%r16 %r20 4
	addi	%r0 %r20 l.24638
	ilw.s	%r20 %f0 0
	mtc1	%r13 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r11 %f0 0
	lw	%r14 %r13 0
	addi	%r0 %r20 3
	addi	%r0 %r23 l.22306
	ilw.s	%r23 %f0 0
	sw	%r26 %r12 160
	sw	%r26 %r8 164
	sw	%r26 %r1 168
	sw	%r26 %r9 172
	sw	%r26 %r22 176
	sw	%r26 %r17 180
	sw	%r26 %r21 184
	sw	%r26 %r13 188
	mov	%r20 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 192
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 196
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 196
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 196
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 196
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 196
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 200
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	lw	%r26 %r2 208
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 212
	mov	%r2 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 212
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 220
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 216
	sw	%r1 %r2 24
	lw	%r26 %r2 212
	sw	%r1 %r2 20
	lw	%r26 %r2 208
	sw	%r1 %r2 16
	lw	%r26 %r2 204
	sw	%r1 %r2 12
	lw	%r26 %r2 200
	sw	%r1 %r2 8
	lw	%r26 %r2 196
	sw	%r1 %r2 4
	lw	%r26 %r2 192
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 188
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	init_line_elements.3089 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 224
	sw	%r26 %r3 228
	mov	%r4 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 232
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 236
	mov	%r2 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 236
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 236
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 236
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 236
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 240
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -256
	lw	%r26 %r28 252
	lw	%r26 %r2 248
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 252
	mov	%r2 %r1
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 252
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 260
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 256
	sw	%r1 %r2 24
	lw	%r26 %r2 252
	sw	%r1 %r2 20
	lw	%r26 %r2 248
	sw	%r1 %r2 16
	lw	%r26 %r2 244
	sw	%r1 %r2 12
	lw	%r26 %r2 240
	sw	%r1 %r2 8
	lw	%r26 %r2 236
	sw	%r1 %r2 4
	lw	%r26 %r2 232
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 228
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	init_line_elements.3089 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 264
	sw	%r26 %r3 268
	mov	%r4 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 272
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 276
	mov	%r2 %r1
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 276
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 276
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 276
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 276
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 280
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	lw	%r26 %r2 288
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 292
	mov	%r2 %r1
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw	%r26 %r2 292
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	min_caml_create_array 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 300
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 296
	sw	%r1 %r2 24
	lw	%r26 %r2 292
	sw	%r1 %r2 20
	lw	%r26 %r2 288
	sw	%r1 %r2 16
	lw	%r26 %r2 284
	sw	%r1 %r2 12
	lw	%r26 %r2 280
	sw	%r1 %r2 8
	lw	%r26 %r2 276
	sw	%r1 %r2 4
	lw	%r26 %r2 272
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 268
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	min_caml_create_array 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	init_line_elements.3089 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	fin	%f0
	lw	%r26 %r2 16
	sw.s	%r2 %f0 0
	fin	%f0
	sw.s	%r2 %f0 4
	fin	%f0
	sw.s	%r2 %f0 8
	fin	%f0
	addi	%r0 %r3 l.22431
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 0
	sw	%r26 %r1 304
	sw.s	%r26 %f0 312
	sw	%r26 %r28 324
	lw	%r24 %r23 0
	addi	%r26 %r26 328	
	jalr	%r23
	addi	%r26 %r26 -328
	lw	%r26 %r28 324
	lw.s	%r26 %f1 312
	lw	%r26 %r24 4
	sw.s	%r26 %f0 320
	mov.s	%f1 %f0
	sw	%r26 %r28 332
	lw	%r24 %r23 0
	addi	%r26 %r26 336	
	jalr	%r23
	addi	%r26 %r26 -336
	lw	%r26 %r28 332
	fin	%f1
	addi	%r0 %r1 l.22431
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	lw	%r26 %r24 0
	sw.s	%r26 %f0 328
	sw.s	%r26 %f1 336
	mov.s	%f1 %f0
	sw	%r26 %r28 348
	lw	%r24 %r23 0
	addi	%r26 %r26 352	
	jalr	%r23
	addi	%r26 %r26 -352
	lw	%r26 %r28 348
	lw.s	%r26 %f1 336
	lw	%r26 %r24 4
	sw.s	%r26 %f0 344
	mov.s	%f1 %f0
	sw	%r26 %r28 356
	lw	%r24 %r23 0
	addi	%r26 %r26 360	
	jalr	%r23
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	lw.s	%r26 %f1 320
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.24790
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 112
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.24793
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 328
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 344
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.24790
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 104
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22431
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r24 4
	sw.s	%r26 %f0 352
	sw	%r26 %r28 364
	lw	%r24 %r23 0
	addi	%r26 %r26 368	
	jalr	%r23
	addi	%r26 %r26 -368
	lw	%r26 %r28 364
	neg.s	%f0 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.22431
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 352
	lw	%r26 %r24 0
	sw.s	%r26 %f0 360
	mov.s	%f1 %f0
	sw	%r26 %r28 372
	lw	%r24 %r23 0
	addi	%r26 %r26 376	
	jalr	%r23
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	lw.s	%r26 %f1 360
	lw	%r26 %r24 4
	sw.s	%r26 %f0 368
	mov.s	%f1 %f0
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	lw.s	%r26 %f1 368
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 360
	lw	%r26 %r24 0
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	lw.s	%r26 %f1 368
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r2 28
	sw.s	%r2 %f0 0
	addi	%r0 %r2 0
	lw	%r26 %r24 156
	mov	%r2 %r1
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	addi	%r0 %r1 0
	lw	%r26 %r24 152
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	addi	%r0 %r1 0
	sw	%r26 %r28 380
	addi	%r26 %r26 384
	jal	read_or_network.2806 
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
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
	bge	%r5 %r3 bl_else.25988 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.25989 
bl_else.25988 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.25990 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.25991 
bl_else.25990 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.25991 :
bl_cont.25989 :
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
	bge	%r5 %r3 bl_else.25992 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.25993 
bl_else.25992 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.25994 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.25995 
bl_else.25994 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.25995 :
bl_cont.25993 :
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
	addi	%r0 %r2 4
	lw	%r26 %r24 184
	mov	%r2 %r1
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r24 180
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	addi	%r0 %r1 4
	lw	%r26 %r24 176
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
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
	lw	%r26 %r24 172
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 380
	lw	%r24 %r23 0
	addi	%r26 %r26 384	
	jalr	%r23
	addi	%r26 %r26 -384
	lw	%r26 %r28 380
	lw	%r26 %r1 8
	lw	%r1 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.25996 
	slli	%r2 %r3 2
	lw	%r26 %r4 12
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r4 8
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.25998 
	lw	%r3 %r4 28
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f1 0
	fbge	%f0 %f1 fbl_else.26000 
	addi	%r0 %r4 1
	j	fbl_cont.26001 
fbl_else.26000 :
	addi	%r0 %r4 0
fbl_cont.26001 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26002 
	j	beq_cont.26003 
beq_else.26002 :
	lw	%r3 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.26004 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 168
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 l.22308
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
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	sw.s	%r26 %f1 376
	sw	%r26 %r2 384
	sw	%r26 %r4 388
	sw	%r26 %r3 392
	sw.s	%r26 %f0 400
	sw.s	%r26 %f3 408
	sw.s	%r26 %f2 416
	sw.s	%r26 %f4 424
	mov	%r7 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 436
	addi	%r26 %r26 440
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -440
	lw	%r26 %r28 436
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 432
	sw	%r26 %r28 436
	addi	%r26 %r26 440
	jal	min_caml_create_array 
	addi	%r26 %r26 -440
	lw	%r26 %r28 436
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 432
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 424
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 416
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 408
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r24 172
	sw	%r26 %r2 436
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 444
	lw	%r24 %r23 0
	addi	%r26 %r26 448	
	jalr	%r23
	addi	%r26 %r26 -448
	lw	%r26 %r28 444
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 436
	sw	%r1 %r2 4
	lw	%r26 %r2 392
	sw	%r1 %r2 0
	lw	%r26 %r2 388
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 2
	lw	%r26 %r5 384
	add	%r5 %r3 %r3
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	lw	%r26 %r7 24
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r6 3
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f2 0
	sw	%r26 %r1 440
	sw	%r26 %r3 444
	sw.s	%r26 %f1 448
	mov	%r6 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 460
	addi	%r26 %r26 464
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -464
	lw	%r26 %r28 460
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 456
	sw	%r26 %r28 460
	addi	%r26 %r26 464
	jal	min_caml_create_array 
	addi	%r26 %r26 -464
	lw	%r26 %r28 460
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 456
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 376
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f1 448
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 408
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r24 172
	sw	%r26 %r2 460
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 468
	lw	%r24 %r23 0
	addi	%r26 %r26 472	
	jalr	%r23
	addi	%r26 %r26 -472
	lw	%r26 %r28 468
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 460
	sw	%r1 %r2 4
	lw	%r26 %r2 444
	sw	%r1 %r2 0
	lw	%r26 %r2 440
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	lw	%r26 %r2 388
	add	%r2 %r1 %r1
	addi	%r0 %r4 3
	lw	%r26 %r5 384
	add	%r5 %r4 %r4
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	lw	%r26 %r6 24
	add	%r6 %r5 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r5 3
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
	sw	%r26 %r1 464
	sw	%r26 %r4 468
	sw.s	%r26 %f1 472
	mov	%r5 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 484
	addi	%r26 %r26 488
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 480
	sw	%r26 %r28 484
	addi	%r26 %r26 488
	jal	min_caml_create_array 
	addi	%r26 %r26 -488
	lw	%r26 %r28 484
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 480
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 376
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 416
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 472
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r24 172
	sw	%r26 %r2 484
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 492
	lw	%r24 %r23 0
	addi	%r26 %r26 496	
	jalr	%r23
	addi	%r26 %r26 -496
	lw	%r26 %r28 492
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 400
	sw.s	%r1 %f0 8
	lw	%r26 %r2 484
	sw	%r1 %r2 4
	lw	%r26 %r2 468
	sw	%r1 %r2 0
	lw	%r26 %r2 464
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	addi	%r0 %r2 3
	lw	%r26 %r3 388
	add	%r3 %r2 %r2
	slli	%r1 %r1 2
	lw	%r26 %r3 168
	add	%r3 %r1 %r25
	sw	%r25 %r2 0
	j	beq_cont.26005 
beq_else.26004 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.26007 
	addi	%r0 %r4 4
	mul	%r2 %r4 %r2
	addi	%r0 %r4 1
	add	%r2 %r4 %r2
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 168
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r6 l.22308
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
	addi	%r0 %r6 l.22504
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
	addi	%r0 %r6 l.22504
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
	addi	%r0 %r6 l.22504
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
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f4 0
	sw	%r26 %r4 488
	sw	%r26 %r2 492
	sw.s	%r26 %f0 496
	sw.s	%r26 %f1 504
	sw.s	%r26 %f3 512
	sw.s	%r26 %f2 520
	mov	%r3 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 532
	addi	%r26 %r26 536
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 528
	sw	%r26 %r28 532
	addi	%r26 %r26 536
	jal	min_caml_create_array 
	addi	%r26 %r26 -536
	lw	%r26 %r28 532
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 528
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 520
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 512
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 504
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	lw	%r26 %r24 172
	sw	%r26 %r2 532
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 540
	lw	%r24 %r23 0
	addi	%r26 %r26 544	
	jalr	%r23
	addi	%r26 %r26 -544
	lw	%r26 %r28 540
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 496
	sw.s	%r1 %f0 8
	lw	%r26 %r2 532
	sw	%r1 %r2 4
	lw	%r26 %r2 492
	sw	%r1 %r2 0
	lw	%r26 %r2 488
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
	j	beq_cont.26008 
beq_else.26007 :
beq_cont.26008 :
beq_cont.26005 :
beq_cont.26003 :
	j	beq_cont.25999 
beq_else.25998 :
beq_cont.25999 :
	j	ble_cont.25997 
ble_else.25996 :
ble_cont.25997 :
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
	lw	%r26 %r1 264
	lw	%r26 %r24 164
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 540
	lw	%r24 %r23 0
	addi	%r26 %r26 544	
	jalr	%r23
	addi	%r26 %r26 -544
	lw	%r26 %r28 540
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 224
	lw	%r26 %r3 264
	lw	%r26 %r4 304
	lw	%r26 %r24 160
	sw	%r26 %r28 540
	lw	%r24 %r23 0
	addi	%r26 %r26 544	
	jalr	%r23
	addi	%r26 %r26 -544
	lw	%r26 %r28 540
	addi	%r0 %r1 0
	ret
sin.2619 :
	lw.s	%r24 %f1 8
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.26009 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fble_else.26009 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.26010 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fbl_else.26010 :
	fbg	%f1 %f0 fble_else.26011 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.26012 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26013 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26013 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26012 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26014 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26014 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26011 :
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.26015 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26016 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26016 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26015 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26017 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26017 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
cos.2621 :
	lw.s	%r24 %f1 8
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.26018 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fble_else.26018 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f2 0
	fbge	%f0 %f2 fbl_else.26019 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r24 %r23 0
	jr	%r23
fbl_else.26019 :
	fbg	%f1 %f0 fble_else.26020 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.26021 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.26022 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.26022 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.26021 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26023 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26023 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26020 :
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f0 fble_else.26024 
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.26025 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.26025 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
fble_else.26024 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26026 
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22315
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22317
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22319
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26026 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
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
	bge	%r1 %r6 bl_else.26027 
	in	%r6
	addi	%r0 %r7 -1
	sw	%r26 %r24 0
	sw	%r26 %r4 4
	sw	%r26 %r1 8
	beq	%r6 %r7 bne_else.26028 
	in	%r7
	in	%r8
	in	%r9
	addi	%r0 %r10 3
	addi	%r0 %r11 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26030 
	addi	%r0 %r2 1
	j	fbl_cont.26031 
fbl_else.26030 :
	addi	%r0 %r2 0
fbl_cont.26031 :
	addi	%r0 %r3 2
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r3 l.22306
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
	beq	%r3 %r2 bne_else.26032 
	addi	%r0 %r2 0
	fin	%f0
	addi	%r0 %r4 l.22431
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	fin	%f0
	addi	%r0 %r4 l.22431
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	fin	%f0
	addi	%r0 %r4 l.22431
	ilw.s	%r4 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	bne_cont.26033 
bne_else.26032 :
bne_cont.26033 :
	addi	%r0 %r2 2
	lw	%r26 %r4 32
	bne	%r4 %r2 beq_else.26034 
	addi	%r0 %r2 1
	j	beq_cont.26035 
beq_else.26034 :
	lw	%r26 %r2 48
beq_cont.26035 :
	addi	%r0 %r5 4
	addi	%r0 %r6 l.22306
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
	bne	%r5 %r2 beq_else.26036 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26038 
	addi	%r0 %r5 1
	j	fbeq_cont.26039 
fbeq_else.26038 :
	addi	%r0 %r5 0
fbeq_cont.26039 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26040 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26042 
	addi	%r0 %r5 1
	j	fbeq_cont.26043 
fbeq_else.26042 :
	addi	%r0 %r5 0
fbeq_cont.26043 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26044 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26046 
	addi	%r0 %r5 1
	j	fbl_cont.26047 
fbl_else.26046 :
	addi	%r0 %r5 0
fbl_cont.26047 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26048 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26049 
beq_else.26048 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26049 :
	j	beq_cont.26045 
beq_else.26044 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26045 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26041 
beq_else.26040 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26041 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 1
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26050 
	addi	%r0 %r5 1
	j	fbeq_cont.26051 
fbeq_else.26050 :
	addi	%r0 %r5 0
fbeq_cont.26051 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26052 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26054 
	addi	%r0 %r5 1
	j	fbeq_cont.26055 
fbeq_else.26054 :
	addi	%r0 %r5 0
fbeq_cont.26055 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26056 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26058 
	addi	%r0 %r5 1
	j	fbl_cont.26059 
fbl_else.26058 :
	addi	%r0 %r5 0
fbl_cont.26059 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26060 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26061 
beq_else.26060 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26061 :
	j	beq_cont.26057 
beq_else.26056 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26057 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26053 
beq_else.26052 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26053 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 2
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26062 
	addi	%r0 %r5 1
	j	fbeq_cont.26063 
fbeq_else.26062 :
	addi	%r0 %r5 0
fbeq_cont.26063 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26064 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26066 
	addi	%r0 %r5 1
	j	fbeq_cont.26067 
fbeq_else.26066 :
	addi	%r0 %r5 0
fbeq_cont.26067 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26068 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26070 
	addi	%r0 %r5 1
	j	fbl_cont.26071 
fbl_else.26070 :
	addi	%r0 %r5 0
fbl_cont.26071 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26072 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26073 
beq_else.26072 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26073 :
	j	beq_cont.26069 
beq_else.26068 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26069 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26065 
beq_else.26064 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26065 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26037 
beq_else.26036 :
	addi	%r0 %r2 2
	bne	%r5 %r2 beq_else.26074 
	addi	%r0 %r2 0
	lw	%r26 %r5 48
	bne	%r5 %r2 beq_else.26076 
	addi	%r0 %r2 1
	j	beq_cont.26077 
beq_else.26076 :
	addi	%r0 %r2 0
beq_cont.26077 :
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26078 
	addi	%r0 %r5 1
	j	fbeq_cont.26079 
fbeq_else.26078 :
	addi	%r0 %r5 0
fbeq_cont.26079 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26080 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.26082 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.26083 
beq_else.26082 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.26083 :
	j	beq_cont.26081 
beq_else.26080 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.26081 :
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
	j	beq_cont.26075 
beq_else.26074 :
beq_cont.26075 :
beq_cont.26037 :
	addi	%r0 %r2 0
	beq	%r4 %r2 bne_else.26084 
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
	addi	%r0 %r2 l.22504
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
	addi	%r0 %r3 l.22504
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
	addi	%r0 %r3 l.22504
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
	j	bne_cont.26085 
bne_else.26084 :
bne_cont.26085 :
	addi	%r0 %r1 1
	j	bne_cont.26029 
bne_else.26028 :
	addi	%r0 %r1 0
bne_cont.26029 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26087 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 4
	lw	%r26 %r3 8
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
	retl
beq_else.26087 :
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.26027 :
	retl
read_net_item.2804 :
	in	%r2
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.26090 
	addi	%r0 %r2 1
	add	%r1 %r2 %r1
	addi	%r0 %r2 -1
	j	min_caml_create_array
beq_else.26090 :
	addi	%r0 %r3 1
	add	%r1 %r3 %r3
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2804 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	slli	%r2 %r2 2
	lw	%r26 %r3 0
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2806 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2804 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r3 -1
	bne	%r1 %r3 beq_else.26091 
	addi	%r0 %r1 1
	lw	%r26 %r3 0
	add	%r3 %r1 %r1
	j	min_caml_create_array
beq_else.26091 :
	addi	%r0 %r1 1
	lw	%r26 %r3 0
	add	%r3 %r1 %r1
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2806 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 4
	add	%r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2808 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2804 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.26092 
	retl
beq_else.26092 :
	lw	%r26 %r2 8
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
	bg	%r4 %r2 ble_else.26094 
	slli	%r2 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	lw	%r1 %r4 4
	lw	%r1 %r5 0
	lw	%r3 %r6 4
	addi	%r0 %r7 1
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	bne	%r6 %r7 beq_else.26095 
	addi	%r0 %r6 6
	addi	%r0 %r7 l.22306
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26097 
	addi	%r0 %r2 1
	j	fbeq_cont.26098 
fbeq_else.26097 :
	addi	%r0 %r2 0
fbeq_cont.26098 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26099 
	addi	%r0 %r2 0
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26101 
	addi	%r0 %r6 1
	j	fbl_cont.26102 
fbl_else.26101 :
	addi	%r0 %r6 0
fbl_cont.26102 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26103 
	mov	%r6 %r5
	j	beq_cont.26104 
beq_else.26103 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26105 
	addi	%r0 %r5 1
	j	beq_cont.26106 
beq_else.26105 :
	addi	%r0 %r5 0
beq_cont.26106 :
beq_cont.26104 :
	lw	%r4 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26107 
	neg.s	%f0 %f0
	j	beq_cont.26108 
beq_else.26107 :
beq_cont.26108 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26100 
beq_else.26099 :
	addi	%r0 %r2 1
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26100 :
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26109 
	addi	%r0 %r2 1
	j	fbeq_cont.26110 
fbeq_else.26109 :
	addi	%r0 %r2 0
fbeq_cont.26110 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26111 
	addi	%r0 %r2 2
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26113 
	addi	%r0 %r6 1
	j	fbl_cont.26114 
fbl_else.26113 :
	addi	%r0 %r6 0
fbl_cont.26114 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26115 
	mov	%r6 %r5
	j	beq_cont.26116 
beq_else.26115 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26117 
	addi	%r0 %r5 1
	j	beq_cont.26118 
beq_else.26117 :
	addi	%r0 %r5 0
beq_cont.26118 :
beq_cont.26116 :
	lw	%r4 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26119 
	neg.s	%f0 %f0
	j	beq_cont.26120 
beq_else.26119 :
beq_cont.26120 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 3
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26112 
beq_else.26111 :
	addi	%r0 %r2 3
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26112 :
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26121 
	addi	%r0 %r2 1
	j	fbeq_cont.26122 
fbeq_else.26121 :
	addi	%r0 %r2 0
fbeq_cont.26122 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26123 
	addi	%r0 %r2 4
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26125 
	addi	%r0 %r6 1
	j	fbl_cont.26126 
fbl_else.26125 :
	addi	%r0 %r6 0
fbl_cont.26126 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26127 
	mov	%r6 %r5
	j	beq_cont.26128 
beq_else.26127 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26129 
	addi	%r0 %r5 1
	j	beq_cont.26130 
beq_else.26129 :
	addi	%r0 %r5 0
beq_cont.26130 :
beq_cont.26128 :
	lw	%r4 %r4 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.26131 
	neg.s	%f0 %f0
	j	beq_cont.26132 
beq_else.26131 :
beq_cont.26132 :
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 5
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f0 0
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r3 %r4 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26124 
beq_else.26123 :
	addi	%r0 %r2 5
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26124 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.26096 
beq_else.26095 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.26133 
	addi	%r0 %r6 4
	addi	%r0 %r7 l.22306
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.26135 
	addi	%r0 %r3 1
	j	fbl_cont.26136 
fbl_else.26135 :
	addi	%r0 %r3 0
fbl_cont.26136 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26137 
	addi	%r0 %r2 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26138 
beq_else.26137 :
	addi	%r0 %r3 0
	addi	%r0 %r4 l.22339
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
beq_cont.26138 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.26134 
beq_else.26133 :
	addi	%r0 %r6 5
	addi	%r0 %r7 l.22306
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
	bne	%r4 %r5 beq_else.26139 
	mov.s	%f3 %f0
	j	beq_cont.26140 
beq_else.26139 :
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
beq_cont.26140 :
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
	beq	%r4 %r5 bne_else.26141 
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
	addi	%r0 %r5 l.22504
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
	addi	%r0 %r5 l.22504
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
	addi	%r0 %r2 l.22504
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	sub.s	%f1 %f3 %f1
	slli	%r4 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f1 0
	j	bne_cont.26142 
bne_else.26141 :
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
bne_cont.26142 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26143 
	addi	%r0 %r2 1
	j	fbeq_cont.26144 
fbeq_else.26143 :
	addi	%r0 %r2 0
fbeq_cont.26144 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.26145 
	addi	%r0 %r2 4
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	div.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26146 
beq_else.26145 :
beq_cont.26146 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
beq_cont.26134 :
beq_cont.26096 :
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
ble_else.26094 :
	retl
setup_startp_constants.2910 :
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.26148 
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
	bne	%r5 %r6 beq_else.26149 
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
	j	beq_cont.26150 
beq_else.26149 :
	addi	%r0 %r6 2
	bge	%r6 %r5 bl_else.26151 
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
	bne	%r6 %r7 beq_else.26153 
	mov.s	%f3 %f0
	j	beq_cont.26154 
beq_else.26153 :
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
beq_cont.26154 :
	addi	%r0 %r3 3
	addi	%r0 %r6 3
	bne	%r5 %r6 beq_else.26155 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26156 
beq_else.26155 :
beq_cont.26156 :
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	bl_cont.26152 
bl_else.26151 :
bl_cont.26152 :
beq_cont.26150 :
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	lw	%r24 %r23 0
	jr	%r23
ble_else.26148 :
	retl
check_all_inside.2935 :
	lw	%r24 %r3 4
	slli	%r1 %r4 2
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.26158 
	addi	%r0 %r1 1
	retl
beq_else.26158 :
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
	bne	%r4 %r5 beq_else.26159 
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f6 0
	fbge	%f3 %f6 fbl_else.26161 
	neg.s	%f3 %f3
	j	fbl_cont.26162 
fbl_else.26161 :
fbl_cont.26162 :
	lw	%r3 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f6 0
	fbge	%f3 %f6 fbl_else.26163 
	addi	%r0 %r4 1
	j	fbl_cont.26164 
fbl_else.26163 :
	addi	%r0 %r4 0
fbl_cont.26164 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26165 
	addi	%r0 %r4 0
	j	beq_cont.26166 
beq_else.26165 :
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f3 0
	fbge	%f4 %f3 fbl_else.26167 
	neg.s	%f4 %f3
	j	fbl_cont.26168 
fbl_else.26167 :
	mov.s	%f4 %f3
fbl_cont.26168 :
	lw	%r3 %r4 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.26169 
	addi	%r0 %r4 1
	j	fbl_cont.26170 
fbl_else.26169 :
	addi	%r0 %r4 0
fbl_cont.26170 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26171 
	addi	%r0 %r4 0
	j	beq_cont.26172 
beq_else.26171 :
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f3 0
	fbge	%f5 %f3 fbl_else.26173 
	neg.s	%f5 %f3
	j	fbl_cont.26174 
fbl_else.26173 :
	mov.s	%f5 %f3
fbl_cont.26174 :
	lw	%r3 %r4 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.26175 
	addi	%r0 %r4 1
	j	fbl_cont.26176 
fbl_else.26175 :
	addi	%r0 %r4 0
fbl_cont.26176 :
beq_cont.26172 :
beq_cont.26166 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26177 
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26179 
	addi	%r0 %r3 1
	j	beq_cont.26180 
beq_else.26179 :
	addi	%r0 %r3 0
beq_cont.26180 :
	j	beq_cont.26178 
beq_else.26177 :
	lw	%r3 %r3 24
beq_cont.26178 :
	j	beq_cont.26160 
beq_else.26159 :
	addi	%r0 %r5 2
	bne	%r4 %r5 beq_else.26181 
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
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.26183 
	addi	%r0 %r4 1
	j	fbl_cont.26184 
fbl_else.26183 :
	addi	%r0 %r4 0
fbl_cont.26184 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.26185 
	mov	%r4 %r3
	j	beq_cont.26186 
beq_else.26185 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.26187 
	addi	%r0 %r3 1
	j	beq_cont.26188 
beq_else.26187 :
	addi	%r0 %r3 0
beq_cont.26188 :
beq_cont.26186 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26189 
	addi	%r0 %r3 1
	j	beq_cont.26190 
beq_else.26189 :
	addi	%r0 %r3 0
beq_cont.26190 :
	j	beq_cont.26182 
beq_else.26181 :
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
	bne	%r4 %r5 beq_else.26191 
	mov.s	%f6 %f3
	j	beq_cont.26192 
beq_else.26191 :
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
beq_cont.26192 :
	lw	%r3 %r4 4
	addi	%r0 %r5 3
	bne	%r4 %r5 beq_else.26193 
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f4 0
	sub.s	%f4 %f3 %f3
	j	beq_cont.26194 
beq_else.26193 :
beq_cont.26194 :
	lw	%r3 %r3 24
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f4 0
	fbge	%f3 %f4 fbl_else.26195 
	addi	%r0 %r4 1
	j	fbl_cont.26196 
fbl_else.26195 :
	addi	%r0 %r4 0
fbl_cont.26196 :
	addi	%r0 %r5 0
	bne	%r3 %r5 beq_else.26197 
	mov	%r4 %r3
	j	beq_cont.26198 
beq_else.26197 :
	addi	%r0 %r3 0
	bne	%r4 %r3 beq_else.26199 
	addi	%r0 %r3 1
	j	beq_cont.26200 
beq_else.26199 :
	addi	%r0 %r3 0
beq_cont.26200 :
beq_cont.26198 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26201 
	addi	%r0 %r3 1
	j	beq_cont.26202 
beq_else.26201 :
	addi	%r0 %r3 0
beq_cont.26202 :
beq_cont.26182 :
beq_cont.26160 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26203 
	addi	%r0 %r3 1
	add	%r1 %r3 %r1
	lw	%r24 %r23 0
	jr	%r23
beq_else.26203 :
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
	bne	%r10 %r11 beq_else.26204 
	addi	%r0 %r1 0
	retl
beq_else.26204 :
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
	bne	%r12 %r13 beq_else.26205 
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
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26207 
	neg.s	%f4 %f4
	j	fbl_cont.26208 
fbl_else.26207 :
fbl_cont.26208 :
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26209 
	addi	%r0 %r12 1
	j	fbl_cont.26210 
fbl_else.26209 :
	addi	%r0 %r12 0
fbl_cont.26210 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26211 
	addi	%r0 %r12 0
	j	beq_cont.26212 
beq_else.26211 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26213 
	neg.s	%f4 %f4
	j	fbl_cont.26214 
fbl_else.26213 :
fbl_cont.26214 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26215 
	addi	%r0 %r12 1
	j	fbl_cont.26216 
fbl_else.26215 :
	addi	%r0 %r12 0
fbl_cont.26216 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26217 
	addi	%r0 %r12 0
	j	beq_cont.26218 
beq_else.26217 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26219 
	addi	%r0 %r12 1
	j	fbeq_cont.26220 
fbeq_else.26219 :
	addi	%r0 %r12 0
fbeq_cont.26220 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26221 
	addi	%r0 %r12 1
	j	beq_cont.26222 
beq_else.26221 :
	addi	%r0 %r12 0
beq_cont.26222 :
beq_cont.26218 :
beq_cont.26212 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26223 
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
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26225 
	neg.s	%f4 %f4
	j	fbl_cont.26226 
fbl_else.26225 :
fbl_cont.26226 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26227 
	addi	%r0 %r12 1
	j	fbl_cont.26228 
fbl_else.26227 :
	addi	%r0 %r12 0
fbl_cont.26228 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26229 
	addi	%r0 %r12 0
	j	beq_cont.26230 
beq_else.26229 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26231 
	neg.s	%f4 %f4
	j	fbl_cont.26232 
fbl_else.26231 :
fbl_cont.26232 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26233 
	addi	%r0 %r12 1
	j	fbl_cont.26234 
fbl_else.26233 :
	addi	%r0 %r12 0
fbl_cont.26234 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26235 
	addi	%r0 %r12 0
	j	beq_cont.26236 
beq_else.26235 :
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26237 
	addi	%r0 %r12 1
	j	fbeq_cont.26238 
fbeq_else.26237 :
	addi	%r0 %r12 0
fbeq_cont.26238 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26239 
	addi	%r0 %r12 1
	j	beq_cont.26240 
beq_else.26239 :
	addi	%r0 %r12 0
beq_cont.26240 :
beq_cont.26236 :
beq_cont.26230 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26241 
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
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.26243 
	neg.s	%f0 %f0
	j	fbl_cont.26244 
fbl_else.26243 :
fbl_cont.26244 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26245 
	addi	%r0 %r12 1
	j	fbl_cont.26246 
fbl_else.26245 :
	addi	%r0 %r12 0
fbl_cont.26246 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26247 
	addi	%r0 %r3 0
	j	beq_cont.26248 
beq_else.26247 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.26249 
	neg.s	%f0 %f0
	j	fbl_cont.26250 
fbl_else.26249 :
fbl_cont.26250 :
	lw	%r11 %r3 16
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26251 
	addi	%r0 %r3 1
	j	fbl_cont.26252 
fbl_else.26251 :
	addi	%r0 %r3 0
fbl_cont.26252 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.26253 
	addi	%r0 %r3 0
	j	beq_cont.26254 
beq_else.26253 :
	addi	%r0 %r3 5
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.26255 
	addi	%r0 %r3 1
	j	fbeq_cont.26256 
fbeq_else.26255 :
	addi	%r0 %r3 0
fbeq_cont.26256 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.26257 
	addi	%r0 %r3 1
	j	beq_cont.26258 
beq_else.26257 :
	addi	%r0 %r3 0
beq_cont.26258 :
beq_cont.26254 :
beq_cont.26248 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.26259 
	addi	%r0 %r3 0
	j	beq_cont.26260 
beq_else.26259 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r3 3
beq_cont.26260 :
	j	beq_cont.26242 
beq_else.26241 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 2
beq_cont.26242 :
	j	beq_cont.26224 
beq_else.26223 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 1
beq_cont.26224 :
	j	beq_cont.26206 
beq_else.26205 :
	addi	%r0 %r3 2
	bne	%r12 %r3 beq_else.26261 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.26263 
	addi	%r0 %r3 1
	j	fbl_cont.26264 
fbl_else.26263 :
	addi	%r0 %r3 0
fbl_cont.26264 :
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.26265 
	addi	%r0 %r3 0
	j	beq_cont.26266 
beq_else.26265 :
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
beq_cont.26266 :
	j	beq_cont.26262 
beq_else.26261 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r8 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.26267 
	addi	%r0 %r3 1
	j	fbeq_cont.26268 
fbeq_else.26267 :
	addi	%r0 %r3 0
fbeq_cont.26268 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.26269 
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
	bne	%r3 %r12 beq_else.26271 
	mov.s	%f5 %f0
	j	beq_cont.26272 
beq_else.26271 :
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
beq_cont.26272 :
	lw	%r11 %r3 4
	addi	%r0 %r12 3
	bne	%r3 %r12 beq_else.26273 
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26274 
beq_else.26273 :
beq_cont.26274 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.26275 
	addi	%r0 %r3 1
	j	fbl_cont.26276 
fbl_else.26275 :
	addi	%r0 %r3 0
fbl_cont.26276 :
	addi	%r0 %r12 0
	bne	%r3 %r12 beq_else.26277 
	addi	%r0 %r3 0
	j	beq_cont.26278 
beq_else.26277 :
	lw	%r11 %r3 24
	addi	%r0 %r11 0
	bne	%r3 %r11 beq_else.26279 
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
	j	beq_cont.26280 
beq_else.26279 :
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
beq_cont.26280 :
	addi	%r0 %r3 1
beq_cont.26278 :
	j	beq_cont.26270 
beq_else.26269 :
	addi	%r0 %r3 0
beq_cont.26270 :
beq_cont.26262 :
beq_cont.26206 :
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r4 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	beq	%r3 %r4 bne_else.26281 
	addi	%r0 %r3 l.22732
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.26283 
	addi	%r0 %r3 1
	j	fbl_cont.26284 
fbl_else.26283 :
	addi	%r0 %r3 0
fbl_cont.26284 :
	j	bne_cont.26282 
bne_else.26281 :
	addi	%r0 %r3 0
bne_cont.26282 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26285 
	slli	%r10 %r3 2
	add	%r5 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r3 24
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26286 
	addi	%r0 %r1 0
	retl
beq_else.26286 :
	addi	%r0 %r3 1
	add	%r1 %r3 %r1
	lw	%r24 %r23 0
	jr	%r23
beq_else.26285 :
	addi	%r0 %r3 l.22734
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
	bne	%r1 %r2 beq_else.26287 
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
beq_else.26287 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2944 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	slli	%r1 %r5 2
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 -1
	bne	%r5 %r6 beq_else.26288 
	addi	%r0 %r1 0
	retl
beq_else.26288 :
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 0
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r1 8
	mov	%r4 %r2
	mov	%r5 %r1
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26289 
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
beq_else.26289 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2947 :
	lw	%r24 %r3 24
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	slli	%r1 %r9 2
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.26290 
	addi	%r0 %r1 0
	retl
beq_else.26290 :
	addi	%r0 %r11 99
	sw	%r26 %r9 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
	bne	%r10 %r11 beq_else.26291 
	addi	%r0 %r1 1
	j	beq_cont.26292 
beq_else.26291 :
	slli	%r10 %r11 2
	add	%r6 %r11 %r25
	lw	%r25 %r6 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f0 0
	lw	%r6 %r11 20
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f1 0
	lw	%r6 %r11 20
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f2 0
	lw	%r6 %r7 20
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r7 %r11 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r10 %r7 2
	add	%r8 %r7 %r25
	lw	%r25 %r7 0
	lw	%r6 %r8 4
	addi	%r0 %r10 1
	bne	%r8 %r10 beq_else.26293 
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.26295 
	neg.s	%f4 %f4
	j	fbl_cont.26296 
fbl_else.26295 :
fbl_cont.26296 :
	lw	%r6 %r8 16
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26297 
	addi	%r0 %r8 1
	j	fbl_cont.26298 
fbl_else.26297 :
	addi	%r0 %r8 0
fbl_cont.26298 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26299 
	addi	%r0 %r8 0
	j	beq_cont.26300 
beq_else.26299 :
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.26301 
	neg.s	%f4 %f4
	j	fbl_cont.26302 
fbl_else.26301 :
fbl_cont.26302 :
	lw	%r6 %r8 16
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26303 
	addi	%r0 %r8 1
	j	fbl_cont.26304 
fbl_else.26303 :
	addi	%r0 %r8 0
fbl_cont.26304 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26305 
	addi	%r0 %r8 0
	j	beq_cont.26306 
beq_else.26305 :
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbeq_else.26307 
	addi	%r0 %r8 1
	j	fbeq_cont.26308 
fbeq_else.26307 :
	addi	%r0 %r8 0
fbeq_cont.26308 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26309 
	addi	%r0 %r8 1
	j	beq_cont.26310 
beq_else.26309 :
	addi	%r0 %r8 0
beq_cont.26310 :
beq_cont.26306 :
beq_cont.26300 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26311 
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r8 3
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.26313 
	neg.s	%f4 %f4
	j	fbl_cont.26314 
fbl_else.26313 :
fbl_cont.26314 :
	lw	%r6 %r8 16
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26315 
	addi	%r0 %r8 1
	j	fbl_cont.26316 
fbl_else.26315 :
	addi	%r0 %r8 0
fbl_cont.26316 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26317 
	addi	%r0 %r8 0
	j	beq_cont.26318 
beq_else.26317 :
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbge	%f4 %f5 fbl_else.26319 
	neg.s	%f4 %f4
	j	fbl_cont.26320 
fbl_else.26319 :
fbl_cont.26320 :
	lw	%r6 %r8 16
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26321 
	addi	%r0 %r8 1
	j	fbl_cont.26322 
fbl_else.26321 :
	addi	%r0 %r8 0
fbl_cont.26322 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26323 
	addi	%r0 %r8 0
	j	beq_cont.26324 
beq_else.26323 :
	addi	%r0 %r8 3
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f5 0
	fbne	%f4 %f5 fbeq_else.26325 
	addi	%r0 %r8 1
	j	fbeq_cont.26326 
fbeq_else.26325 :
	addi	%r0 %r8 0
fbeq_cont.26326 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26327 
	addi	%r0 %r8 1
	j	beq_cont.26328 
beq_else.26327 :
	addi	%r0 %r8 0
beq_cont.26328 :
beq_cont.26324 :
beq_cont.26318 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26329 
	addi	%r0 %r8 4
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r8 5
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f3 0
	fbge	%f0 %f3 fbl_else.26331 
	neg.s	%f0 %f0
	j	fbl_cont.26332 
fbl_else.26331 :
fbl_cont.26332 :
	lw	%r6 %r8 16
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26333 
	addi	%r0 %r8 1
	j	fbl_cont.26334 
fbl_else.26333 :
	addi	%r0 %r8 0
fbl_cont.26334 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26335 
	addi	%r0 %r3 0
	j	beq_cont.26336 
beq_else.26335 :
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.26337 
	neg.s	%f0 %f0
	j	fbl_cont.26338 
fbl_else.26337 :
fbl_cont.26338 :
	lw	%r6 %r3 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26339 
	addi	%r0 %r3 1
	j	fbl_cont.26340 
fbl_else.26339 :
	addi	%r0 %r3 0
fbl_cont.26340 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.26341 
	addi	%r0 %r3 0
	j	beq_cont.26342 
beq_else.26341 :
	addi	%r0 %r3 5
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbne	%f0 %f1 fbeq_else.26343 
	addi	%r0 %r3 1
	j	fbeq_cont.26344 
fbeq_else.26343 :
	addi	%r0 %r3 0
fbeq_cont.26344 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.26345 
	addi	%r0 %r3 1
	j	beq_cont.26346 
beq_else.26345 :
	addi	%r0 %r3 0
beq_cont.26346 :
beq_cont.26342 :
beq_cont.26336 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.26347 
	addi	%r0 %r3 0
	j	beq_cont.26348 
beq_else.26347 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r3 3
beq_cont.26348 :
	j	beq_cont.26330 
beq_else.26329 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 2
beq_cont.26330 :
	j	beq_cont.26312 
beq_else.26311 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r3 1
beq_cont.26312 :
	j	beq_cont.26294 
beq_else.26293 :
	addi	%r0 %r3 2
	bne	%r8 %r3 beq_else.26349 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f4 0
	fbge	%f3 %f4 fbl_else.26351 
	addi	%r0 %r3 1
	j	fbl_cont.26352 
fbl_else.26351 :
	addi	%r0 %r3 0
fbl_cont.26352 :
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.26353 
	addi	%r0 %r3 0
	j	beq_cont.26354 
beq_else.26353 :
	addi	%r0 %r3 0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 3
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
beq_cont.26354 :
	j	beq_cont.26350 
beq_else.26349 :
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f4 0
	fbne	%f3 %f4 fbeq_else.26355 
	addi	%r0 %r3 1
	j	fbeq_cont.26356 
fbeq_else.26355 :
	addi	%r0 %r3 0
fbeq_cont.26356 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.26357 
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r3 3
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r6 %r3 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r6 %r3 16
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r6 %r3 16
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r6 %r3 12
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.26359 
	mov.s	%f5 %f0
	j	beq_cont.26360 
beq_else.26359 :
	mul.s	%f2 %f1 %f6
	lw	%r6 %r3 36
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r6 %r3 36
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r6 %r3 36
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26360 :
	lw	%r6 %r3 4
	addi	%r0 %r8 3
	bne	%r3 %r8 beq_else.26361 
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26362 
beq_else.26361 :
beq_cont.26362 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f1 0
	fbge	%f1 %f0 fbl_else.26363 
	addi	%r0 %r3 1
	j	fbl_cont.26364 
fbl_else.26363 :
	addi	%r0 %r3 0
fbl_cont.26364 :
	addi	%r0 %r8 0
	bne	%r3 %r8 beq_else.26365 
	addi	%r0 %r3 0
	j	beq_cont.26366 
beq_else.26365 :
	lw	%r6 %r3 24
	addi	%r0 %r6 0
	bne	%r3 %r6 beq_else.26367 
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r0 %r6 4
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26368 
beq_else.26367 :
	addi	%r0 %r3 0
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r6 4
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
beq_cont.26368 :
	addi	%r0 %r3 1
beq_cont.26366 :
	j	beq_cont.26358 
beq_else.26357 :
	addi	%r0 %r3 0
beq_cont.26358 :
beq_cont.26350 :
beq_cont.26294 :
	addi	%r0 %r6 0
	beq	%r3 %r6 bne_else.26369 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r3 l.22812
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.26371 
	addi	%r0 %r3 1
	j	fbl_cont.26372 
fbl_else.26371 :
	addi	%r0 %r3 0
fbl_cont.26372 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26373 
	addi	%r0 %r1 0
	j	beq_cont.26374 
beq_else.26373 :
	addi	%r0 %r3 1
	mov	%r9 %r2
	mov	%r3 %r1
	mov	%r5 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26375 
	addi	%r0 %r1 0
	j	beq_cont.26376 
beq_else.26375 :
	addi	%r0 %r1 1
beq_cont.26376 :
beq_cont.26374 :
	j	bne_cont.26370 
bne_else.26369 :
	addi	%r0 %r1 0
bne_cont.26370 :
beq_cont.26292 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26377 
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
beq_else.26377 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26378 
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
beq_else.26378 :
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
	bne	%r12 %r13 beq_else.26379 
	retl
beq_else.26379 :
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
	bne	%r14 %r15 beq_else.26381 
	addi	%r0 %r14 0
	addi	%r0 %r15 1
	addi	%r0 %r16 2
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.26383 
	addi	%r0 %r17 1
	j	fbeq_cont.26384 
fbeq_else.26383 :
	addi	%r0 %r17 0
fbeq_cont.26384 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26385 
	lw	%r13 %r17 16
	lw	%r13 %r18 24
	slli	%r14 %r19 2
	add	%r3 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 l.22306
	ilw.s	%r19 %f4 0
	fbge	%f3 %f4 fbl_else.26387 
	addi	%r0 %r19 1
	j	fbl_cont.26388 
fbl_else.26387 :
	addi	%r0 %r19 0
fbl_cont.26388 :
	addi	%r0 %r20 0
	bne	%r18 %r20 beq_else.26389 
	mov	%r19 %r18
	j	beq_cont.26390 
beq_else.26389 :
	addi	%r0 %r18 0
	bne	%r19 %r18 beq_else.26391 
	addi	%r0 %r18 1
	j	beq_cont.26392 
beq_else.26391 :
	addi	%r0 %r18 0
beq_cont.26392 :
beq_cont.26390 :
	slli	%r14 %r19 2
	add	%r17 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 0
	bne	%r18 %r19 beq_else.26393 
	neg.s	%f3 %f3
	j	beq_cont.26394 
beq_else.26393 :
beq_cont.26394 :
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
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.26395 
	neg.s	%f4 %f4
	j	fbl_cont.26396 
fbl_else.26395 :
fbl_cont.26396 :
	slli	%r15 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26397 
	addi	%r0 %r14 1
	j	fbl_cont.26398 
fbl_else.26397 :
	addi	%r0 %r14 0
fbl_cont.26398 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26399 
	addi	%r0 %r14 0
	j	beq_cont.26400 
beq_else.26399 :
	slli	%r16 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.26401 
	neg.s	%f4 %f4
	j	fbl_cont.26402 
fbl_else.26401 :
fbl_cont.26402 :
	slli	%r16 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26403 
	addi	%r0 %r14 1
	j	fbl_cont.26404 
fbl_else.26403 :
	addi	%r0 %r14 0
fbl_cont.26404 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26405 
	addi	%r0 %r14 0
	j	beq_cont.26406 
beq_else.26405 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.26406 :
beq_cont.26400 :
	j	beq_cont.26386 
beq_else.26385 :
	addi	%r0 %r14 0
beq_cont.26386 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26407 
	addi	%r0 %r14 1
	addi	%r0 %r15 2
	addi	%r0 %r16 0
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.26409 
	addi	%r0 %r17 1
	j	fbeq_cont.26410 
fbeq_else.26409 :
	addi	%r0 %r17 0
fbeq_cont.26410 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26411 
	lw	%r13 %r17 16
	lw	%r13 %r18 24
	slli	%r14 %r19 2
	add	%r3 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 l.22306
	ilw.s	%r19 %f4 0
	fbge	%f3 %f4 fbl_else.26413 
	addi	%r0 %r19 1
	j	fbl_cont.26414 
fbl_else.26413 :
	addi	%r0 %r19 0
fbl_cont.26414 :
	addi	%r0 %r20 0
	bne	%r18 %r20 beq_else.26415 
	mov	%r19 %r18
	j	beq_cont.26416 
beq_else.26415 :
	addi	%r0 %r18 0
	bne	%r19 %r18 beq_else.26417 
	addi	%r0 %r18 1
	j	beq_cont.26418 
beq_else.26417 :
	addi	%r0 %r18 0
beq_cont.26418 :
beq_cont.26416 :
	slli	%r14 %r19 2
	add	%r17 %r19 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r19 0
	bne	%r18 %r19 beq_else.26419 
	neg.s	%f3 %f3
	j	beq_cont.26420 
beq_else.26419 :
beq_cont.26420 :
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
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.26421 
	neg.s	%f4 %f4
	j	fbl_cont.26422 
fbl_else.26421 :
fbl_cont.26422 :
	slli	%r15 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26423 
	addi	%r0 %r14 1
	j	fbl_cont.26424 
fbl_else.26423 :
	addi	%r0 %r14 0
fbl_cont.26424 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26425 
	addi	%r0 %r14 0
	j	beq_cont.26426 
beq_else.26425 :
	slli	%r16 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f5 0
	fbge	%f4 %f5 fbl_else.26427 
	neg.s	%f4 %f4
	j	fbl_cont.26428 
fbl_else.26427 :
fbl_cont.26428 :
	slli	%r16 %r14 2
	add	%r17 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26429 
	addi	%r0 %r14 1
	j	fbl_cont.26430 
fbl_else.26429 :
	addi	%r0 %r14 0
fbl_cont.26430 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26431 
	addi	%r0 %r14 0
	j	beq_cont.26432 
beq_else.26431 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.26432 :
beq_cont.26426 :
	j	beq_cont.26412 
beq_else.26411 :
	addi	%r0 %r14 0
beq_cont.26412 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26433 
	addi	%r0 %r14 2
	addi	%r0 %r15 0
	addi	%r0 %r16 1
	slli	%r14 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.26435 
	addi	%r0 %r17 1
	j	fbeq_cont.26436 
fbeq_else.26435 :
	addi	%r0 %r17 0
fbeq_cont.26436 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26437 
	lw	%r13 %r17 16
	lw	%r13 %r13 24
	slli	%r14 %r18 2
	add	%r3 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 l.22306
	ilw.s	%r18 %f4 0
	fbge	%f3 %f4 fbl_else.26439 
	addi	%r0 %r18 1
	j	fbl_cont.26440 
fbl_else.26439 :
	addi	%r0 %r18 0
fbl_cont.26440 :
	addi	%r0 %r19 0
	bne	%r13 %r19 beq_else.26441 
	mov	%r18 %r13
	j	beq_cont.26442 
beq_else.26441 :
	addi	%r0 %r13 0
	bne	%r18 %r13 beq_else.26443 
	addi	%r0 %r13 1
	j	beq_cont.26444 
beq_else.26443 :
	addi	%r0 %r13 0
beq_cont.26444 :
beq_cont.26442 :
	slli	%r14 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 0
	bne	%r13 %r18 beq_else.26445 
	neg.s	%f3 %f3
	j	beq_cont.26446 
beq_else.26445 :
beq_cont.26446 :
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
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.26447 
	neg.s	%f0 %f0
	j	fbl_cont.26448 
fbl_else.26447 :
fbl_cont.26448 :
	slli	%r15 %r13 2
	add	%r17 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26449 
	addi	%r0 %r13 1
	j	fbl_cont.26450 
fbl_else.26449 :
	addi	%r0 %r13 0
fbl_cont.26450 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26451 
	addi	%r0 %r13 0
	j	beq_cont.26452 
beq_else.26451 :
	slli	%r16 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f1 0
	fbge	%f0 %f1 fbl_else.26453 
	neg.s	%f0 %f0
	j	fbl_cont.26454 
fbl_else.26453 :
fbl_cont.26454 :
	slli	%r16 %r13 2
	add	%r17 %r13 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26455 
	addi	%r0 %r13 1
	j	fbl_cont.26456 
fbl_else.26455 :
	addi	%r0 %r13 0
fbl_cont.26456 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26457 
	addi	%r0 %r13 0
	j	beq_cont.26458 
beq_else.26457 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r13 1
beq_cont.26458 :
beq_cont.26452 :
	j	beq_cont.26438 
beq_else.26437 :
	addi	%r0 %r13 0
beq_cont.26438 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26459 
	addi	%r0 %r13 0
	j	beq_cont.26460 
beq_else.26459 :
	addi	%r0 %r13 3
beq_cont.26460 :
	j	beq_cont.26434 
beq_else.26433 :
	addi	%r0 %r13 2
beq_cont.26434 :
	j	beq_cont.26408 
beq_else.26407 :
	addi	%r0 %r13 1
beq_cont.26408 :
	j	beq_cont.26382 
beq_else.26381 :
	addi	%r0 %r15 2
	bne	%r14 %r15 beq_else.26461 
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
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f4 0
	fbge	%f4 %f3 fbl_else.26463 
	addi	%r0 %r14 1
	j	fbl_cont.26464 
fbl_else.26463 :
	addi	%r0 %r14 0
fbl_cont.26464 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26465 
	addi	%r0 %r13 0
	j	beq_cont.26466 
beq_else.26465 :
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
beq_cont.26466 :
	j	beq_cont.26462 
beq_else.26461 :
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
	bne	%r14 %r15 beq_else.26467 
	mov.s	%f6 %f3
	j	beq_cont.26468 
beq_else.26467 :
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
beq_cont.26468 :
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f4 0
	fbne	%f3 %f4 fbeq_else.26469 
	addi	%r0 %r14 1
	j	fbeq_cont.26470 
fbeq_else.26469 :
	addi	%r0 %r14 0
fbeq_cont.26470 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26471 
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
	bne	%r14 %r15 beq_else.26473 
	mov.s	%f7 %f4
	j	beq_cont.26474 
beq_else.26473 :
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
	addi	%r0 %r14 l.22504
	ilw.s	%r14 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.26474 :
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
	bne	%r14 %r15 beq_else.26475 
	mov.s	%f5 %f0
	j	beq_cont.26476 
beq_else.26475 :
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
beq_cont.26476 :
	lw	%r13 %r14 4
	addi	%r0 %r15 3
	bne	%r14 %r15 beq_else.26477 
	addi	%r0 %r14 l.22308
	ilw.s	%r14 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26478 
beq_else.26477 :
beq_cont.26478 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f1 0
	fbge	%f1 %f0 fbl_else.26479 
	addi	%r0 %r14 1
	j	fbl_cont.26480 
fbl_else.26479 :
	addi	%r0 %r14 0
fbl_cont.26480 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26481 
	addi	%r0 %r13 0
	j	beq_cont.26482 
beq_else.26481 :
	sqrt.s	%f0 %f0
	lw	%r13 %r13 24
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26483 
	neg.s	%f0 %f0
	j	beq_cont.26484 
beq_else.26483 :
beq_cont.26484 :
	addi	%r0 %r13 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r13 1
beq_cont.26482 :
	j	beq_cont.26472 
beq_else.26471 :
	addi	%r0 %r13 0
beq_cont.26472 :
beq_cont.26462 :
beq_cont.26382 :
	addi	%r0 %r14 0
	beq	%r13 %r14 bne_else.26485 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.26486 
	addi	%r0 %r6 1
	j	fbl_cont.26487 
fbl_else.26486 :
	addi	%r0 %r6 0
fbl_cont.26487 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.26488 
	j	beq_cont.26489 
beq_else.26488 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26490 
	addi	%r0 %r6 1
	j	fbl_cont.26491 
fbl_else.26490 :
	addi	%r0 %r6 0
fbl_cont.26491 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.26492 
	j	beq_cont.26493 
beq_else.26492 :
	addi	%r0 %r6 l.22734
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
	bne	%r1 %r2 beq_else.26496 
	j	beq_cont.26497 
beq_else.26496 :
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
beq_cont.26497 :
beq_cont.26493 :
beq_cont.26489 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26485 :
	slli	%r12 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26498 
	retl
beq_else.26498 :
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
	beq	%r6 %r7 bne_else.26500 
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26500 :
	retl
trace_or_matrix.2958 :
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	slli	%r1 %r9 2
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.26502 
	retl
beq_else.26502 :
	addi	%r0 %r11 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r10 %r11 beq_else.26504 
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	beq_cont.26505 
beq_else.26504 :
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f0 0
	lw	%r8 %r10 20
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f1 0
	lw	%r8 %r10 20
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f2 0
	lw	%r8 %r5 20
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r8 %r5 4
	addi	%r0 %r10 1
	bne	%r5 %r10 beq_else.26506 
	addi	%r0 %r5 0
	addi	%r0 %r10 1
	addi	%r0 %r11 2
	slli	%r5 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26508 
	addi	%r0 %r12 1
	j	fbeq_cont.26509 
fbeq_else.26508 :
	addi	%r0 %r12 0
fbeq_cont.26509 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26510 
	lw	%r8 %r12 16
	lw	%r8 %r13 24
	slli	%r5 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f4 0
	fbge	%f3 %f4 fbl_else.26512 
	addi	%r0 %r14 1
	j	fbl_cont.26513 
fbl_else.26512 :
	addi	%r0 %r14 0
fbl_cont.26513 :
	addi	%r0 %r15 0
	bne	%r13 %r15 beq_else.26514 
	mov	%r14 %r13
	j	beq_cont.26515 
beq_else.26514 :
	addi	%r0 %r13 0
	bne	%r14 %r13 beq_else.26516 
	addi	%r0 %r13 1
	j	beq_cont.26517 
beq_else.26516 :
	addi	%r0 %r13 0
beq_cont.26517 :
beq_cont.26515 :
	slli	%r5 %r14 2
	add	%r12 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26518 
	neg.s	%f3 %f3
	j	beq_cont.26519 
beq_else.26518 :
beq_cont.26519 :
	sub.s	%f0 %f3 %f3
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r10 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.26520 
	neg.s	%f4 %f4
	j	fbl_cont.26521 
fbl_else.26520 :
fbl_cont.26521 :
	slli	%r10 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26522 
	addi	%r0 %r5 1
	j	fbl_cont.26523 
fbl_else.26522 :
	addi	%r0 %r5 0
fbl_cont.26523 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26524 
	addi	%r0 %r5 0
	j	beq_cont.26525 
beq_else.26524 :
	slli	%r11 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.26526 
	neg.s	%f4 %f4
	j	fbl_cont.26527 
fbl_else.26526 :
fbl_cont.26527 :
	slli	%r11 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26528 
	addi	%r0 %r5 1
	j	fbl_cont.26529 
fbl_else.26528 :
	addi	%r0 %r5 0
fbl_cont.26529 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26530 
	addi	%r0 %r5 0
	j	beq_cont.26531 
beq_else.26530 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 1
beq_cont.26531 :
beq_cont.26525 :
	j	beq_cont.26511 
beq_else.26510 :
	addi	%r0 %r5 0
beq_cont.26511 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26532 
	addi	%r0 %r5 1
	addi	%r0 %r10 2
	addi	%r0 %r11 0
	slli	%r5 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26534 
	addi	%r0 %r12 1
	j	fbeq_cont.26535 
fbeq_else.26534 :
	addi	%r0 %r12 0
fbeq_cont.26535 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26536 
	lw	%r8 %r12 16
	lw	%r8 %r13 24
	slli	%r5 %r14 2
	add	%r3 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f4 0
	fbge	%f3 %f4 fbl_else.26538 
	addi	%r0 %r14 1
	j	fbl_cont.26539 
fbl_else.26538 :
	addi	%r0 %r14 0
fbl_cont.26539 :
	addi	%r0 %r15 0
	bne	%r13 %r15 beq_else.26540 
	mov	%r14 %r13
	j	beq_cont.26541 
beq_else.26540 :
	addi	%r0 %r13 0
	bne	%r14 %r13 beq_else.26542 
	addi	%r0 %r13 1
	j	beq_cont.26543 
beq_else.26542 :
	addi	%r0 %r13 0
beq_cont.26543 :
beq_cont.26541 :
	slli	%r5 %r14 2
	add	%r12 %r14 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26544 
	neg.s	%f3 %f3
	j	beq_cont.26545 
beq_else.26544 :
beq_cont.26545 :
	sub.s	%f1 %f3 %f3
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r10 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.26546 
	neg.s	%f4 %f4
	j	fbl_cont.26547 
fbl_else.26546 :
fbl_cont.26547 :
	slli	%r10 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26548 
	addi	%r0 %r5 1
	j	fbl_cont.26549 
fbl_else.26548 :
	addi	%r0 %r5 0
fbl_cont.26549 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26550 
	addi	%r0 %r5 0
	j	beq_cont.26551 
beq_else.26550 :
	slli	%r11 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.26552 
	neg.s	%f4 %f4
	j	fbl_cont.26553 
fbl_else.26552 :
fbl_cont.26553 :
	slli	%r11 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26554 
	addi	%r0 %r5 1
	j	fbl_cont.26555 
fbl_else.26554 :
	addi	%r0 %r5 0
fbl_cont.26555 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26556 
	addi	%r0 %r5 0
	j	beq_cont.26557 
beq_else.26556 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r5 1
beq_cont.26557 :
beq_cont.26551 :
	j	beq_cont.26537 
beq_else.26536 :
	addi	%r0 %r5 0
beq_cont.26537 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26558 
	addi	%r0 %r5 2
	addi	%r0 %r10 0
	addi	%r0 %r11 1
	slli	%r5 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26560 
	addi	%r0 %r12 1
	j	fbeq_cont.26561 
fbeq_else.26560 :
	addi	%r0 %r12 0
fbeq_cont.26561 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26562 
	lw	%r8 %r12 16
	lw	%r8 %r8 24
	slli	%r5 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f4 0
	fbge	%f3 %f4 fbl_else.26564 
	addi	%r0 %r13 1
	j	fbl_cont.26565 
fbl_else.26564 :
	addi	%r0 %r13 0
fbl_cont.26565 :
	addi	%r0 %r14 0
	bne	%r8 %r14 beq_else.26566 
	mov	%r13 %r8
	j	beq_cont.26567 
beq_else.26566 :
	addi	%r0 %r8 0
	bne	%r13 %r8 beq_else.26568 
	addi	%r0 %r8 1
	j	beq_cont.26569 
beq_else.26568 :
	addi	%r0 %r8 0
beq_cont.26569 :
beq_cont.26567 :
	slli	%r5 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 0
	bne	%r8 %r13 beq_else.26570 
	neg.s	%f3 %f3
	j	beq_cont.26571 
beq_else.26570 :
beq_cont.26571 :
	sub.s	%f2 %f3 %f2
	slli	%r5 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r10 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f0 %f3 fbl_else.26572 
	neg.s	%f0 %f0
	j	fbl_cont.26573 
fbl_else.26572 :
fbl_cont.26573 :
	slli	%r10 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26574 
	addi	%r0 %r5 1
	j	fbl_cont.26575 
fbl_else.26574 :
	addi	%r0 %r5 0
fbl_cont.26575 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.26576 
	addi	%r0 %r5 0
	j	beq_cont.26577 
beq_else.26576 :
	slli	%r11 %r5 2
	add	%r3 %r5 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.26578 
	neg.s	%f0 %f0
	j	fbl_cont.26579 
fbl_else.26578 :
fbl_cont.26579 :
	slli	%r11 %r5 2
	add	%r12 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26580 
	addi	%r0 %r5 1
	j	fbl_cont.26581 
fbl_else.26580 :
	addi	%r0 %r5 0
fbl_cont.26581 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.26582 
	addi	%r0 %r5 0
	j	beq_cont.26583 
beq_else.26582 :
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r5 1
beq_cont.26583 :
beq_cont.26577 :
	j	beq_cont.26563 
beq_else.26562 :
	addi	%r0 %r5 0
beq_cont.26563 :
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.26584 
	addi	%r0 %r5 0
	j	beq_cont.26585 
beq_else.26584 :
	addi	%r0 %r5 3
beq_cont.26585 :
	j	beq_cont.26559 
beq_else.26558 :
	addi	%r0 %r5 2
beq_cont.26559 :
	j	beq_cont.26533 
beq_else.26532 :
	addi	%r0 %r5 1
beq_cont.26533 :
	j	beq_cont.26507 
beq_else.26506 :
	addi	%r0 %r10 2
	bne	%r5 %r10 beq_else.26586 
	lw	%r8 %r5 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r3 %r8 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r5 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f4 0
	fbge	%f4 %f3 fbl_else.26588 
	addi	%r0 %r8 1
	j	fbl_cont.26589 
fbl_else.26588 :
	addi	%r0 %r8 0
fbl_cont.26589 :
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.26590 
	addi	%r0 %r5 0
	j	beq_cont.26591 
beq_else.26590 :
	addi	%r0 %r8 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r8 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
beq_cont.26591 :
	j	beq_cont.26587 
beq_else.26586 :
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
	lw	%r8 %r5 16
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r8 %r5 16
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r8 %r5 16
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r8 %r5 12
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26592 
	mov.s	%f6 %f3
	j	beq_cont.26593 
beq_else.26592 :
	mul.s	%f5 %f4 %f7
	lw	%r8 %r5 36
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r8 %r5 36
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r8 %r5 36
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.26593 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbne	%f3 %f4 fbeq_else.26594 
	addi	%r0 %r5 1
	j	fbeq_cont.26595 
fbeq_else.26594 :
	addi	%r0 %r5 0
fbeq_cont.26595 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26596 
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
	lw	%r8 %r5 16
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r8 %r5 16
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r8 %r5 16
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r8 %r5 12
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26598 
	mov.s	%f7 %f4
	j	beq_cont.26599 
beq_else.26598 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r8 %r5 36
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r8 %r5 36
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r8 %r5 36
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r5 l.22504
	ilw.s	%r5 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.26599 :
	mul.s	%f0 %f0 %f5
	lw	%r8 %r5 16
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r8 %r5 16
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r8 %r5 16
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r8 %r5 12
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26600 
	mov.s	%f5 %f0
	j	beq_cont.26601 
beq_else.26600 :
	mul.s	%f2 %f1 %f6
	lw	%r8 %r5 36
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r8 %r5 36
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r8 %r5 36
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26601 :
	lw	%r8 %r5 4
	addi	%r0 %r10 3
	bne	%r5 %r10 beq_else.26602 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26603 
beq_else.26602 :
beq_cont.26603 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26604 
	addi	%r0 %r5 1
	j	fbl_cont.26605 
fbl_else.26604 :
	addi	%r0 %r5 0
fbl_cont.26605 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26606 
	addi	%r0 %r5 0
	j	beq_cont.26607 
beq_else.26606 :
	sqrt.s	%f0 %f0
	lw	%r8 %r5 24
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.26608 
	neg.s	%f0 %f0
	j	beq_cont.26609 
beq_else.26608 :
beq_cont.26609 :
	addi	%r0 %r5 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
beq_cont.26607 :
	j	beq_cont.26597 
beq_else.26596 :
	addi	%r0 %r5 0
beq_cont.26597 :
beq_cont.26587 :
beq_cont.26507 :
	addi	%r0 %r8 0
	beq	%r5 %r8 bne_else.26610 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26612 
	addi	%r0 %r4 1
	j	fbl_cont.26613 
fbl_else.26612 :
	addi	%r0 %r4 0
fbl_cont.26613 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26614 
	j	beq_cont.26615 
beq_else.26614 :
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
beq_cont.26615 :
	j	bne_cont.26611 
bne_else.26610 :
bne_cont.26611 :
beq_cont.26505 :
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
	bne	%r13 %r14 beq_else.26616 
	retl
beq_else.26616 :
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
	bne	%r17 %r18 beq_else.26618 
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
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.26620 
	neg.s	%f4 %f4
	j	fbl_cont.26621 
fbl_else.26620 :
fbl_cont.26621 :
	lw	%r14 %r17 16
	addi	%r0 %r18 1
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26622 
	addi	%r0 %r17 1
	j	fbl_cont.26623 
fbl_else.26622 :
	addi	%r0 %r17 0
fbl_cont.26623 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26624 
	addi	%r0 %r17 0
	j	beq_cont.26625 
beq_else.26624 :
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.26626 
	neg.s	%f4 %f4
	j	fbl_cont.26627 
fbl_else.26626 :
fbl_cont.26627 :
	lw	%r14 %r17 16
	addi	%r0 %r18 2
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26628 
	addi	%r0 %r17 1
	j	fbl_cont.26629 
fbl_else.26628 :
	addi	%r0 %r17 0
fbl_cont.26629 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26630 
	addi	%r0 %r17 0
	j	beq_cont.26631 
beq_else.26630 :
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.26632 
	addi	%r0 %r17 1
	j	fbeq_cont.26633 
fbeq_else.26632 :
	addi	%r0 %r17 0
fbeq_cont.26633 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26634 
	addi	%r0 %r17 1
	j	beq_cont.26635 
beq_else.26634 :
	addi	%r0 %r17 0
beq_cont.26635 :
beq_cont.26631 :
beq_cont.26625 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26636 
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
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.26638 
	neg.s	%f4 %f4
	j	fbl_cont.26639 
fbl_else.26638 :
fbl_cont.26639 :
	lw	%r14 %r17 16
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26640 
	addi	%r0 %r17 1
	j	fbl_cont.26641 
fbl_else.26640 :
	addi	%r0 %r17 0
fbl_cont.26641 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26642 
	addi	%r0 %r17 0
	j	beq_cont.26643 
beq_else.26642 :
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbge	%f4 %f5 fbl_else.26644 
	neg.s	%f4 %f4
	j	fbl_cont.26645 
fbl_else.26644 :
fbl_cont.26645 :
	lw	%r14 %r17 16
	addi	%r0 %r18 2
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26646 
	addi	%r0 %r17 1
	j	fbl_cont.26647 
fbl_else.26646 :
	addi	%r0 %r17 0
fbl_cont.26647 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26648 
	addi	%r0 %r17 0
	j	beq_cont.26649 
beq_else.26648 :
	addi	%r0 %r17 3
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f5 0
	fbne	%f4 %f5 fbeq_else.26650 
	addi	%r0 %r17 1
	j	fbeq_cont.26651 
fbeq_else.26650 :
	addi	%r0 %r17 0
fbeq_cont.26651 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26652 
	addi	%r0 %r17 1
	j	beq_cont.26653 
beq_else.26652 :
	addi	%r0 %r17 0
beq_cont.26653 :
beq_cont.26649 :
beq_cont.26643 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26654 
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
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f3 0
	fbge	%f0 %f3 fbl_else.26656 
	neg.s	%f0 %f0
	j	fbl_cont.26657 
fbl_else.26656 :
fbl_cont.26657 :
	lw	%r14 %r17 16
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r17 %r18 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26658 
	addi	%r0 %r17 1
	j	fbl_cont.26659 
fbl_else.26658 :
	addi	%r0 %r17 0
fbl_cont.26659 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26660 
	addi	%r0 %r14 0
	j	beq_cont.26661 
beq_else.26660 :
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r15 l.22306
	ilw.s	%r15 %f1 0
	fbge	%f0 %f1 fbl_else.26662 
	neg.s	%f0 %f0
	j	fbl_cont.26663 
fbl_else.26662 :
fbl_cont.26663 :
	lw	%r14 %r14 16
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26664 
	addi	%r0 %r14 1
	j	fbl_cont.26665 
fbl_else.26664 :
	addi	%r0 %r14 0
fbl_cont.26665 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26666 
	addi	%r0 %r14 0
	j	beq_cont.26667 
beq_else.26666 :
	addi	%r0 %r14 5
	slli	%r14 %r14 2
	add	%r16 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f1 0
	fbne	%f0 %f1 fbeq_else.26668 
	addi	%r0 %r14 1
	j	fbeq_cont.26669 
fbeq_else.26668 :
	addi	%r0 %r14 0
fbeq_cont.26669 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26670 
	addi	%r0 %r14 1
	j	beq_cont.26671 
beq_else.26670 :
	addi	%r0 %r14 0
beq_cont.26671 :
beq_cont.26667 :
beq_cont.26661 :
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26672 
	addi	%r0 %r14 0
	j	beq_cont.26673 
beq_else.26672 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r14 3
beq_cont.26673 :
	j	beq_cont.26655 
beq_else.26654 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 2
beq_cont.26655 :
	j	beq_cont.26637 
beq_else.26636 :
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r14 1
beq_cont.26637 :
	j	beq_cont.26619 
beq_else.26618 :
	addi	%r0 %r18 2
	bne	%r17 %r18 beq_else.26674 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r16 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f1 0
	fbge	%f0 %f1 fbl_else.26676 
	addi	%r0 %r14 1
	j	fbl_cont.26677 
fbl_else.26676 :
	addi	%r0 %r14 0
fbl_cont.26677 :
	addi	%r0 %r17 0
	bne	%r14 %r17 beq_else.26678 
	addi	%r0 %r14 0
	j	beq_cont.26679 
beq_else.26678 :
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
beq_cont.26679 :
	j	beq_cont.26675 
beq_else.26674 :
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbne	%f3 %f4 fbeq_else.26680 
	addi	%r0 %r17 1
	j	fbeq_cont.26681 
fbeq_else.26680 :
	addi	%r0 %r17 0
fbeq_cont.26681 :
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26682 
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
	addi	%r0 %r15 l.22306
	ilw.s	%r15 %f2 0
	fbge	%f2 %f1 fbl_else.26684 
	addi	%r0 %r15 1
	j	fbl_cont.26685 
fbl_else.26684 :
	addi	%r0 %r15 0
fbl_cont.26685 :
	addi	%r0 %r17 0
	bne	%r15 %r17 beq_else.26686 
	addi	%r0 %r14 0
	j	beq_cont.26687 
beq_else.26686 :
	lw	%r14 %r14 24
	addi	%r0 %r15 0
	bne	%r14 %r15 beq_else.26688 
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
	j	beq_cont.26689 
beq_else.26688 :
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
beq_cont.26689 :
	addi	%r0 %r14 1
beq_cont.26687 :
	j	beq_cont.26683 
beq_else.26682 :
	addi	%r0 %r14 0
beq_cont.26683 :
beq_cont.26675 :
beq_cont.26619 :
	addi	%r0 %r15 0
	beq	%r14 %r15 bne_else.26690 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.26691 
	addi	%r0 %r6 1
	j	fbl_cont.26692 
fbl_else.26691 :
	addi	%r0 %r6 0
fbl_cont.26692 :
	addi	%r0 %r7 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r7 beq_else.26693 
	j	beq_cont.26694 
beq_else.26693 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26695 
	addi	%r0 %r6 1
	j	fbl_cont.26696 
fbl_else.26695 :
	addi	%r0 %r6 0
fbl_cont.26696 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.26697 
	j	beq_cont.26698 
beq_else.26697 :
	addi	%r0 %r6 l.22734
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
	bne	%r1 %r2 beq_else.26701 
	j	beq_cont.26702 
beq_else.26701 :
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
beq_cont.26702 :
beq_cont.26698 :
beq_cont.26694 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26690 :
	slli	%r13 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26703 
	retl
beq_else.26703 :
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
	beq	%r6 %r7 bne_else.26705 
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	mov	%r5 %r2
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26705 :
	retl
trace_or_matrix_fast.2972 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	slli	%r1 %r8 2
	add	%r2 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r9 0
	addi	%r0 %r10 -1
	bne	%r9 %r10 beq_else.26707 
	retl
beq_else.26707 :
	addi	%r0 %r10 99
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r9 %r10 beq_else.26709 
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	beq_cont.26710 
beq_else.26709 :
	slli	%r9 %r10 2
	add	%r7 %r10 %r25
	lw	%r25 %r7 0
	lw	%r7 %r10 40
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r11 4
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	lw	%r25 %r9 0
	lw	%r7 %r11 4
	addi	%r0 %r12 1
	bne	%r11 %r12 beq_else.26711 
	lw	%r3 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.26713 
	neg.s	%f4 %f4
	j	fbl_cont.26714 
fbl_else.26713 :
fbl_cont.26714 :
	lw	%r7 %r11 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26715 
	addi	%r0 %r11 1
	j	fbl_cont.26716 
fbl_else.26715 :
	addi	%r0 %r11 0
fbl_cont.26716 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26717 
	addi	%r0 %r11 0
	j	beq_cont.26718 
beq_else.26717 :
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.26719 
	neg.s	%f4 %f4
	j	fbl_cont.26720 
fbl_else.26719 :
fbl_cont.26720 :
	lw	%r7 %r11 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26721 
	addi	%r0 %r11 1
	j	fbl_cont.26722 
fbl_else.26721 :
	addi	%r0 %r11 0
fbl_cont.26722 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26723 
	addi	%r0 %r11 0
	j	beq_cont.26724 
beq_else.26723 :
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbeq_else.26725 
	addi	%r0 %r11 1
	j	fbeq_cont.26726 
fbeq_else.26725 :
	addi	%r0 %r11 0
fbeq_cont.26726 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26727 
	addi	%r0 %r11 1
	j	beq_cont.26728 
beq_else.26727 :
	addi	%r0 %r11 0
beq_cont.26728 :
beq_cont.26724 :
beq_cont.26718 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26729 
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.26731 
	neg.s	%f4 %f4
	j	fbl_cont.26732 
fbl_else.26731 :
fbl_cont.26732 :
	lw	%r7 %r11 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26733 
	addi	%r0 %r11 1
	j	fbl_cont.26734 
fbl_else.26733 :
	addi	%r0 %r11 0
fbl_cont.26734 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26735 
	addi	%r0 %r11 0
	j	beq_cont.26736 
beq_else.26735 :
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbge	%f4 %f5 fbl_else.26737 
	neg.s	%f4 %f4
	j	fbl_cont.26738 
fbl_else.26737 :
fbl_cont.26738 :
	lw	%r7 %r11 16
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26739 
	addi	%r0 %r11 1
	j	fbl_cont.26740 
fbl_else.26739 :
	addi	%r0 %r11 0
fbl_cont.26740 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26741 
	addi	%r0 %r11 0
	j	beq_cont.26742 
beq_else.26741 :
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f5 0
	fbne	%f4 %f5 fbeq_else.26743 
	addi	%r0 %r11 1
	j	fbeq_cont.26744 
fbeq_else.26743 :
	addi	%r0 %r11 0
fbeq_cont.26744 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26745 
	addi	%r0 %r11 1
	j	beq_cont.26746 
beq_else.26745 :
	addi	%r0 %r11 0
beq_cont.26746 :
beq_cont.26742 :
beq_cont.26736 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26747 
	addi	%r0 %r11 4
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r11 5
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.26749 
	neg.s	%f0 %f0
	j	fbl_cont.26750 
fbl_else.26749 :
fbl_cont.26750 :
	lw	%r7 %r11 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26751 
	addi	%r0 %r11 1
	j	fbl_cont.26752 
fbl_else.26751 :
	addi	%r0 %r11 0
fbl_cont.26752 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26753 
	addi	%r0 %r7 0
	j	beq_cont.26754 
beq_else.26753 :
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f1 0
	fbge	%f0 %f1 fbl_else.26755 
	neg.s	%f0 %f0
	j	fbl_cont.26756 
fbl_else.26755 :
fbl_cont.26756 :
	lw	%r7 %r7 16
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26757 
	addi	%r0 %r7 1
	j	fbl_cont.26758 
fbl_else.26757 :
	addi	%r0 %r7 0
fbl_cont.26758 :
	addi	%r0 %r10 0
	bne	%r7 %r10 beq_else.26759 
	addi	%r0 %r7 0
	j	beq_cont.26760 
beq_else.26759 :
	addi	%r0 %r7 5
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r7 l.22306
	ilw.s	%r7 %f1 0
	fbne	%f0 %f1 fbeq_else.26761 
	addi	%r0 %r7 1
	j	fbeq_cont.26762 
fbeq_else.26761 :
	addi	%r0 %r7 0
fbeq_cont.26762 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.26763 
	addi	%r0 %r7 1
	j	beq_cont.26764 
beq_else.26763 :
	addi	%r0 %r7 0
beq_cont.26764 :
beq_cont.26760 :
beq_cont.26754 :
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.26765 
	addi	%r0 %r7 0
	j	beq_cont.26766 
beq_else.26765 :
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 3
beq_cont.26766 :
	j	beq_cont.26748 
beq_else.26747 :
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 2
beq_cont.26748 :
	j	beq_cont.26730 
beq_else.26729 :
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r7 1
beq_cont.26730 :
	j	beq_cont.26712 
beq_else.26711 :
	addi	%r0 %r12 2
	bne	%r11 %r12 beq_else.26767 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r7 l.22306
	ilw.s	%r7 %f1 0
	fbge	%f0 %f1 fbl_else.26769 
	addi	%r0 %r7 1
	j	fbl_cont.26770 
fbl_else.26769 :
	addi	%r0 %r7 0
fbl_cont.26770 :
	addi	%r0 %r11 0
	bne	%r7 %r11 beq_else.26771 
	addi	%r0 %r7 0
	j	beq_cont.26772 
beq_else.26771 :
	addi	%r0 %r7 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r9 3
	slli	%r9 %r9 2
	add	%r10 %r9 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r7 1
beq_cont.26772 :
	j	beq_cont.26768 
beq_else.26767 :
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f4 0
	fbne	%f3 %f4 fbeq_else.26773 
	addi	%r0 %r11 1
	j	fbeq_cont.26774 
fbeq_else.26773 :
	addi	%r0 %r11 0
fbeq_cont.26774 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26775 
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r9 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r11 3
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f2 0
	fbge	%f2 %f1 fbl_else.26777 
	addi	%r0 %r10 1
	j	fbl_cont.26778 
fbl_else.26777 :
	addi	%r0 %r10 0
fbl_cont.26778 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26779 
	addi	%r0 %r7 0
	j	beq_cont.26780 
beq_else.26779 :
	lw	%r7 %r7 24
	addi	%r0 %r10 0
	bne	%r7 %r10 beq_else.26781 
	addi	%r0 %r7 0
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r10 4
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26782 
beq_else.26781 :
	addi	%r0 %r7 0
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r10 4
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
beq_cont.26782 :
	addi	%r0 %r7 1
beq_cont.26780 :
	j	beq_cont.26776 
beq_else.26775 :
	addi	%r0 %r7 0
beq_cont.26776 :
beq_cont.26768 :
beq_cont.26712 :
	addi	%r0 %r9 0
	beq	%r7 %r9 bne_else.26783 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26785 
	addi	%r0 %r4 1
	j	fbl_cont.26786 
fbl_else.26785 :
	addi	%r0 %r4 0
fbl_cont.26786 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26787 
	j	beq_cont.26788 
beq_else.26787 :
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r6 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
beq_cont.26788 :
	j	bne_cont.26784 
bne_else.26783 :
bne_cont.26784 :
beq_cont.26710 :
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
	bg	%r13 %r1 ble_else.26789 
	slli	%r1 %r13 2
	add	%r8 %r13 %r25
	lw	%r25 %r8 0
	lw	%r8 %r13 4
	addi	%r0 %r14 0
	addi	%r0 %r15 l.23143
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
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26791 
	addi	%r0 %r1 1
	j	fbl_cont.26792 
fbl_else.26791 :
	addi	%r0 %r1 0
fbl_cont.26792 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26793 
	addi	%r0 %r1 0
	j	beq_cont.26794 
beq_else.26793 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.26795 
	addi	%r0 %r1 1
	j	fbl_cont.26796 
fbl_else.26795 :
	addi	%r0 %r1 0
fbl_cont.26796 :
beq_cont.26794 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26797 
	j	beq_cont.26798 
beq_else.26797 :
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
	bne	%r1 %r3 beq_else.26799 
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
	bne	%r1 %r2 beq_else.26801 
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
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.26803 
	addi	%r0 %r1 1
	j	fbl_cont.26804 
fbl_else.26803 :
	addi	%r0 %r1 0
fbl_cont.26804 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26805 
	j	beq_cont.26806 
beq_else.26805 :
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
beq_cont.26806 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	fbge	%f0 %f1 fbl_else.26807 
	addi	%r0 %r1 1
	j	fbl_cont.26808 
fbl_else.26807 :
	addi	%r0 %r1 0
fbl_cont.26808 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26809 
	j	beq_cont.26810 
beq_else.26809 :
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
beq_cont.26810 :
	j	beq_cont.26802 
beq_else.26801 :
beq_cont.26802 :
	j	beq_cont.26800 
beq_else.26799 :
beq_cont.26800 :
beq_cont.26798 :
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 8
	lw	%r26 %r2 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.26789 :
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
	bg	%r1 %r4 ble_else.26812 
	lw	%r3 %r4 8
	sw	%r26 %r17 8
	addi	%r0 %r17 0
	sw	%r26 %r12 12
	addi	%r0 %r12 l.23143
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
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26813 
	addi	%r0 %r1 1
	j	fbl_cont.26814 
fbl_else.26813 :
	addi	%r0 %r1 0
fbl_cont.26814 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26815 
	addi	%r0 %r1 0
	j	beq_cont.26816 
beq_else.26815 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.26817 
	addi	%r0 %r1 1
	j	fbl_cont.26818 
fbl_else.26817 :
	addi	%r0 %r1 0
fbl_cont.26818 :
beq_cont.26816 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26819 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	slli	%r2 %r3 2
	lw	%r26 %r4 104
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	beq	%r2 %r1 bne_else.26820 
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
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26821 
	addi	%r0 %r1 1
	j	fbl_cont.26822 
fbl_else.26821 :
	addi	%r0 %r1 0
fbl_cont.26822 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26823 
	retl
beq_else.26823 :
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
bne_else.26820 :
	retl
beq_else.26819 :
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
	bne	%r5 %r6 beq_else.26827 
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 68
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 l.22306
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbne	%f2 %f3 fbeq_else.26829 
	addi	%r0 %r5 1
	j	fbeq_cont.26830 
fbeq_else.26829 :
	addi	%r0 %r5 0
fbeq_cont.26830 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26831 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f3 %f2 fbl_else.26833 
	addi	%r0 %r5 1
	j	fbl_cont.26834 
fbl_else.26833 :
	addi	%r0 %r5 0
fbl_cont.26834 :
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26835 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f2 0
	j	beq_cont.26836 
beq_else.26835 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f2 0
beq_cont.26836 :
	j	beq_cont.26832 
beq_else.26831 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f2 0
beq_cont.26832 :
	neg.s	%f2 %f2
	slli	%r7 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26828 
beq_else.26827 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.26837 
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
	j	beq_cont.26838 
beq_else.26837 :
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
	bne	%r5 %r7 beq_else.26839 
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
	j	beq_cont.26840 
beq_else.26839 :
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
	addi	%r0 %r7 l.22504
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
	addi	%r0 %r8 l.22504
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
	addi	%r0 %r8 l.22504
	ilw.s	%r8 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	sw.s	%r25 %f2 0
beq_cont.26840 :
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
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f3 0
	fbne	%f2 %f3 fbeq_else.26841 
	addi	%r0 %r8 1
	j	fbeq_cont.26842 
fbeq_else.26841 :
	addi	%r0 %r8 0
fbeq_cont.26842 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.26843 
	addi	%r0 %r8 0
	bne	%r5 %r8 beq_else.26845 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	j	beq_cont.26846 
beq_else.26845 :
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
beq_cont.26846 :
	j	beq_cont.26844 
beq_else.26843 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f2 0
beq_cont.26844 :
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
beq_cont.26838 :
beq_cont.26828 :
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
	bne	%r5 %r6 beq_else.26847 
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
	addi	%r0 %r5 l.23444
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r5 l.23446
	ilw.s	%r5 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.23426
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26849 
	addi	%r0 %r5 1
	j	fbl_cont.26850 
fbl_else.26849 :
	addi	%r0 %r5 0
fbl_cont.26850 :
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
	addi	%r0 %r6 l.23444
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r6 l.23446
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.23426
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26851 
	addi	%r0 %r6 1
	j	fbl_cont.26852 
fbl_else.26851 :
	addi	%r0 %r6 0
fbl_cont.26852 :
	addi	%r0 %r9 1
	addi	%r0 %r10 0
	bne	%r5 %r10 beq_else.26853 
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26855 
	addi	%r0 %r5 l.23417
	ilw.s	%r5 %f2 0
	j	beq_cont.26856 
beq_else.26855 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f2 0
beq_cont.26856 :
	j	beq_cont.26854 
beq_else.26853 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26857 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f2 0
	j	beq_cont.26858 
beq_else.26857 :
	addi	%r0 %r5 l.23417
	ilw.s	%r5 %f2 0
beq_cont.26858 :
beq_cont.26854 :
	slli	%r9 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26848 
beq_else.26847 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.26859 
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r7 %r5 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r5 l.23435
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26860 
beq_else.26859 :
	addi	%r0 %r6 3
	bne	%r5 %r6 beq_else.26861 
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
	addi	%r0 %r5 l.23426
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.23341
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26862 
beq_else.26861 :
	addi	%r0 %r6 4
	bne	%r5 %r6 beq_else.26863 
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f2 %f5 fbl_else.26865 
	neg.s	%f2 %f5
	j	fbl_cont.26866 
fbl_else.26865 :
	mov.s	%f2 %f5
fbl_cont.26866 :
	addi	%r0 %r5 l.23266
	ilw.s	%r5 %f6 0
	fbge	%f5 %f6 fbl_else.26867 
	addi	%r0 %r5 1
	j	fbl_cont.26868 
fbl_else.26867 :
	addi	%r0 %r5 0
fbl_cont.26868 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26869 
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26871 
	neg.s	%f2 %f2
	j	fbl_cont.26872 
fbl_else.26871 :
fbl_cont.26872 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbg	%f3 %f2 fble_else.26873 
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26875 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26876 
fbl_else.26875 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26877 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26878 
fbl_else.26877 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.26878 :
fbl_cont.26876 :
	j	fble_cont.26874 
fble_else.26873 :
	neg.s	%f2 %f2
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26879 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26880 
fbl_else.26879 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26881 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26882 
fbl_else.26881 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f3 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.26882 :
fbl_cont.26880 :
fble_cont.26874 :
	addi	%r0 %r5 l.23339
	ilw.s	%r5 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r5 l.23341
	ilw.s	%r5 %f3 0
	div.s	%f3 %f2 %f2
	j	beq_cont.26870 
beq_else.26869 :
	addi	%r0 %r5 l.23268
	ilw.s	%r5 %f2 0
beq_cont.26870 :
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	fbge	%f4 %f5 fbl_else.26883 
	neg.s	%f4 %f5
	j	fbl_cont.26884 
fbl_else.26883 :
	mov.s	%f4 %f5
fbl_cont.26884 :
	addi	%r0 %r5 l.23266
	ilw.s	%r5 %f6 0
	fbge	%f5 %f6 fbl_else.26885 
	addi	%r0 %r5 1
	j	fbl_cont.26886 
fbl_else.26885 :
	addi	%r0 %r5 0
fbl_cont.26886 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26887 
	div.s	%f4 %f3 %f3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26889 
	neg.s	%f3 %f3
	j	fbl_cont.26890 
fbl_else.26889 :
fbl_cont.26890 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbg	%f4 %f3 fble_else.26891 
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26893 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26894 
fbl_else.26893 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26895 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26896 
fbl_else.26895 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.26896 :
fbl_cont.26894 :
	j	fble_cont.26892 
fble_else.26891 :
	neg.s	%f3 %f3
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26897 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26898 
fbl_else.26897 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26899 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26900 
fbl_else.26899 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.26900 :
fbl_cont.26898 :
fble_cont.26892 :
	addi	%r0 %r5 l.23339
	ilw.s	%r5 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r5 l.23341
	ilw.s	%r5 %f4 0
	div.s	%f4 %f3 %f3
	j	beq_cont.26888 
beq_else.26887 :
	addi	%r0 %r5 l.23268
	ilw.s	%r5 %f3 0
beq_cont.26888 :
	floor.w.s	%f3 %f4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r5 l.23411
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22319
	ilw.s	%r5 %f5 0
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f4 %f2
	addi	%r0 %r5 l.22319
	ilw.s	%r5 %f4 0
	sub.s	%f3 %f4 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f2 %f3 fbl_else.26901 
	addi	%r0 %r5 1
	j	fbl_cont.26902 
fbl_else.26901 :
	addi	%r0 %r5 0
fbl_cont.26902 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26903 
	j	beq_cont.26904 
beq_else.26903 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f2 0
beq_cont.26904 :
	addi	%r0 %r5 2
	addi	%r0 %r6 l.23417
	ilw.s	%r6 %f3 0
	mul.s	%f2 %f3 %f2
	addi	%r0 %r6 l.23419
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r5 %r5 2
	add	%r8 %r5 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26864 
beq_else.26863 :
beq_cont.26864 :
beq_cont.26862 :
beq_cont.26860 :
beq_cont.26848 :
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
	addi	%r0 %r6 l.22319
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26905 
	addi	%r0 %r6 1
	j	fbl_cont.26906 
fbl_else.26905 :
	addi	%r0 %r6 0
fbl_cont.26906 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.26907 
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
	addi	%r0 %r6 l.23480
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
	j	beq_cont.26908 
beq_else.26907 :
	addi	%r0 %r6 0
	slli	%r2 %r8 2
	add	%r3 %r8 %r25
	sw	%r25 %r6 0
beq_cont.26908 :
	addi	%r0 %r3 l.23495
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
	bne	%r1 %r2 beq_else.26909 
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
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f3 0
	fbge	%f3 %f0 fbl_else.26911 
	addi	%r0 %r1 1
	j	fbl_cont.26912 
fbl_else.26911 :
	addi	%r0 %r1 0
fbl_cont.26912 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26913 
	j	beq_cont.26914 
beq_else.26913 :
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
beq_cont.26914 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	fbge	%f0 %f2 fbl_else.26915 
	addi	%r0 %r1 1
	j	fbl_cont.26916 
fbl_else.26915 :
	addi	%r0 %r1 0
fbl_cont.26916 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26917 
	j	beq_cont.26918 
beq_else.26917 :
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
beq_cont.26918 :
	j	beq_cont.26910 
beq_else.26909 :
beq_cont.26910 :
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
	addi	%r0 %r1 l.23551
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 88
	fbge	%f0 %f1 fbl_else.26919 
	addi	%r0 %r1 1
	j	fbl_cont.26920 
fbl_else.26919 :
	addi	%r0 %r1 0
fbl_cont.26920 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26921 
	retl
beq_else.26921 :
	addi	%r0 %r1 4
	lw	%r26 %r2 108
	bge	%r2 %r1 bl_else.26923 
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 -1
	slli	%r1 %r1 2
	lw	%r26 %r4 104
	add	%r4 %r1 %r25
	sw	%r25 %r3 0
	j	bl_cont.26924 
bl_else.26923 :
bl_cont.26924 :
	addi	%r0 %r1 2
	lw	%r26 %r3 116
	bne	%r3 %r1 beq_else.26925 
	addi	%r0 %r1 l.22308
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
beq_else.26925 :
	retl
ble_else.26812 :
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
	bg	%r19 %r4 ble_else.26928 
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
	addi	%r0 %r19 l.22306
	ilw.s	%r19 %f1 0
	fbge	%f0 %f1 fbl_else.26929 
	addi	%r0 %r19 1
	j	fbl_cont.26930 
fbl_else.26929 :
	addi	%r0 %r19 0
fbl_cont.26930 :
	addi	%r0 %r20 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r4 16
	bne	%r19 %r20 beq_else.26931 
	slli	%r4 %r19 2
	add	%r1 %r19 %r25
	lw	%r25 %r19 0
	addi	%r0 %r20 l.23852
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 0
	addi	%r0 %r21 l.23143
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
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26933 
	addi	%r0 %r1 1
	j	fbl_cont.26934 
fbl_else.26933 :
	addi	%r0 %r1 0
fbl_cont.26934 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26935 
	addi	%r0 %r1 0
	j	beq_cont.26936 
beq_else.26935 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.26937 
	addi	%r0 %r1 1
	j	fbl_cont.26938 
fbl_else.26937 :
	addi	%r0 %r1 0
fbl_cont.26938 :
beq_cont.26936 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26939 
	j	beq_cont.26940 
beq_else.26939 :
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
	bne	%r3 %r4 beq_else.26941 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 64
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26943 
	addi	%r0 %r2 1
	j	fbeq_cont.26944 
fbeq_else.26943 :
	addi	%r0 %r2 0
fbeq_cont.26944 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.26945 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.26947 
	addi	%r0 %r2 1
	j	fbl_cont.26948 
fbl_else.26947 :
	addi	%r0 %r2 0
fbl_cont.26948 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.26949 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f0 0
	j	beq_cont.26950 
beq_else.26949 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.26950 :
	j	beq_cont.26946 
beq_else.26945 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.26946 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26942 
beq_else.26941 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.26951 
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
	j	beq_cont.26952 
beq_else.26951 :
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
	bne	%r2 %r4 beq_else.26953 
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
	j	beq_cont.26954 
beq_else.26953 :
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
	addi	%r0 %r4 l.22504
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
	addi	%r0 %r5 l.22504
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
	addi	%r0 %r5 l.22504
	ilw.s	%r5 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26954 :
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26955 
	addi	%r0 %r5 1
	j	fbeq_cont.26956 
fbeq_else.26955 :
	addi	%r0 %r5 0
fbeq_cont.26956 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26957 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.26959 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.26960 
beq_else.26959 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.26960 :
	j	beq_cont.26958 
beq_else.26957 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.26958 :
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
beq_cont.26952 :
beq_cont.26942 :
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
	bne	%r2 %r3 beq_else.26961 
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
	addi	%r0 %r2 l.23444
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.23446
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23426
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26963 
	addi	%r0 %r2 1
	j	fbl_cont.26964 
fbl_else.26963 :
	addi	%r0 %r2 0
fbl_cont.26964 :
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
	addi	%r0 %r3 l.23444
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r3 l.23446
	ilw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.23426
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.26965 
	addi	%r0 %r3 1
	j	fbl_cont.26966 
fbl_else.26965 :
	addi	%r0 %r3 0
fbl_cont.26966 :
	addi	%r0 %r5 1
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.26967 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.26969 
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
	j	beq_cont.26970 
beq_else.26969 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.26970 :
	j	beq_cont.26968 
beq_else.26967 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.26971 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
	j	beq_cont.26972 
beq_else.26971 :
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
beq_cont.26972 :
beq_cont.26968 :
	slli	%r5 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26962 
beq_else.26961 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.26973 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.23435
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26974 
beq_else.26973 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.26975 
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
	addi	%r0 %r2 l.23426
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26976 
beq_else.26975 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.26977 
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.26979 
	neg.s	%f0 %f3
	j	fbl_cont.26980 
fbl_else.26979 :
	mov.s	%f0 %f3
fbl_cont.26980 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.26981 
	addi	%r0 %r2 1
	j	fbl_cont.26982 
fbl_else.26981 :
	addi	%r0 %r2 0
fbl_cont.26982 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.26983 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26985 
	neg.s	%f0 %f0
	j	fbl_cont.26986 
fbl_else.26985 :
fbl_cont.26986 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.26987 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26989 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.26990 
fbl_else.26989 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26991 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.26992 
fbl_else.26991 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.26992 :
fbl_cont.26990 :
	j	fble_cont.26988 
fble_else.26987 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26993 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.26994 
fbl_else.26993 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.26995 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.26996 
fbl_else.26995 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.26996 :
fbl_cont.26994 :
fble_cont.26988 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.26984 
beq_else.26983 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f0 0
beq_cont.26984 :
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.26997 
	neg.s	%f2 %f3
	j	fbl_cont.26998 
fbl_else.26997 :
	mov.s	%f2 %f3
fbl_cont.26998 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.26999 
	addi	%r0 %r2 1
	j	fbl_cont.27000 
fbl_else.26999 :
	addi	%r0 %r2 0
fbl_cont.27000 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27001 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27003 
	neg.s	%f1 %f1
	j	fbl_cont.27004 
fbl_else.27003 :
fbl_cont.27004 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.27005 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27007 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27008 
fbl_else.27007 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27009 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27010 
fbl_else.27009 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.27010 :
fbl_cont.27008 :
	j	fble_cont.27006 
fble_else.27005 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27011 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27012 
fbl_else.27011 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27013 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27014 
fbl_else.27013 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.27014 :
fbl_cont.27012 :
fble_cont.27006 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.27002 
beq_else.27001 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f1 0
beq_cont.27002 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23411
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22319
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.22319
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27015 
	addi	%r0 %r2 1
	j	fbl_cont.27016 
fbl_else.27015 :
	addi	%r0 %r2 0
fbl_cont.27016 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27017 
	j	beq_cont.27018 
beq_else.27017 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27018 :
	addi	%r0 %r2 2
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 l.23419
	ilw.s	%r3 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26978 
beq_else.26977 :
beq_cont.26978 :
beq_cont.26976 :
beq_cont.26974 :
beq_cont.26962 :
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
	bne	%r1 %r2 beq_else.27019 
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
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.27021 
	addi	%r0 %r1 1
	j	fbl_cont.27022 
fbl_else.27021 :
	addi	%r0 %r1 0
fbl_cont.27022 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27023 
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	j	beq_cont.27024 
beq_else.27023 :
beq_cont.27024 :
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
	j	beq_cont.27020 
beq_else.27019 :
beq_cont.27020 :
beq_cont.26940 :
	j	beq_cont.26932 
beq_else.26931 :
	addi	%r0 %r19 1
	add	%r4 %r19 %r19
	slli	%r19 %r19 2
	add	%r1 %r19 %r25
	lw	%r25 %r19 0
	addi	%r0 %r20 l.23581
	ilw.s	%r20 %f1 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r20 0
	addi	%r0 %r21 l.23143
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
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.27025 
	addi	%r0 %r1 1
	j	fbl_cont.27026 
fbl_else.27025 :
	addi	%r0 %r1 0
fbl_cont.27026 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27027 
	addi	%r0 %r1 0
	j	beq_cont.27028 
beq_else.27027 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.27029 
	addi	%r0 %r1 1
	j	fbl_cont.27030 
fbl_else.27029 :
	addi	%r0 %r1 0
fbl_cont.27030 :
beq_cont.27028 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27031 
	j	beq_cont.27032 
beq_else.27031 :
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
	bne	%r3 %r4 beq_else.27033 
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 64
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.27035 
	addi	%r0 %r2 1
	j	fbeq_cont.27036 
fbeq_else.27035 :
	addi	%r0 %r2 0
fbeq_cont.27036 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27037 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.27039 
	addi	%r0 %r2 1
	j	fbl_cont.27040 
fbl_else.27039 :
	addi	%r0 %r2 0
fbl_cont.27040 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27041 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f0 0
	j	beq_cont.27042 
beq_else.27041 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27042 :
	j	beq_cont.27038 
beq_else.27037 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27038 :
	neg.s	%f0 %f0
	slli	%r4 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27034 
beq_else.27033 :
	addi	%r0 %r2 2
	bne	%r3 %r2 beq_else.27043 
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
	j	beq_cont.27044 
beq_else.27043 :
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
	bne	%r2 %r4 beq_else.27045 
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
	j	beq_cont.27046 
beq_else.27045 :
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
	addi	%r0 %r4 l.22504
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
	addi	%r0 %r5 l.22504
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
	addi	%r0 %r5 l.22504
	ilw.s	%r5 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.27046 :
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
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.27047 
	addi	%r0 %r5 1
	j	fbeq_cont.27048 
fbeq_else.27047 :
	addi	%r0 %r5 0
fbeq_cont.27048 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.27049 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.27051 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.27052 
beq_else.27051 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.27052 :
	j	beq_cont.27050 
beq_else.27049 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27050 :
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
beq_cont.27044 :
beq_cont.27034 :
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
	bne	%r2 %r3 beq_else.27053 
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
	addi	%r0 %r2 l.23444
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r2 l.23446
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23426
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27055 
	addi	%r0 %r2 1
	j	fbl_cont.27056 
fbl_else.27055 :
	addi	%r0 %r2 0
fbl_cont.27056 :
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
	addi	%r0 %r3 l.23444
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r3 l.23446
	ilw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 l.23426
	ilw.s	%r3 %f1 0
	fbge	%f0 %f1 fbl_else.27057 
	addi	%r0 %r3 1
	j	fbl_cont.27058 
fbl_else.27057 :
	addi	%r0 %r3 0
fbl_cont.27058 :
	addi	%r0 %r5 1
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27059 
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.27061 
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
	j	beq_cont.27062 
beq_else.27061 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27062 :
	j	beq_cont.27060 
beq_else.27059 :
	addi	%r0 %r2 0
	bne	%r3 %r2 beq_else.27063 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
	j	beq_cont.27064 
beq_else.27063 :
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
beq_cont.27064 :
beq_cont.27060 :
	slli	%r5 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27054 
beq_else.27053 :
	addi	%r0 %r3 2
	bne	%r2 %r3 beq_else.27065 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r3 56
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.23435
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 1
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27066 
beq_else.27065 :
	addi	%r0 %r3 3
	bne	%r2 %r3 beq_else.27067 
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
	addi	%r0 %r2 l.23426
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
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
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 2
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27068 
beq_else.27067 :
	addi	%r0 %r3 4
	bne	%r2 %r3 beq_else.27069 
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.27071 
	neg.s	%f0 %f3
	j	fbl_cont.27072 
fbl_else.27071 :
	mov.s	%f0 %f3
fbl_cont.27072 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27073 
	addi	%r0 %r2 1
	j	fbl_cont.27074 
fbl_else.27073 :
	addi	%r0 %r2 0
fbl_cont.27074 :
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.27075 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27077 
	neg.s	%f0 %f0
	j	fbl_cont.27078 
fbl_else.27077 :
fbl_cont.27078 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.27079 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27081 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.27082 
fbl_else.27081 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27083 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.27084 
fbl_else.27083 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.27084 :
fbl_cont.27082 :
	j	fble_cont.27080 
fble_else.27079 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27085 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.27086 
fbl_else.27085 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27087 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f0 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	j	fbl_cont.27088 
fbl_else.27087 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f0 %f4
	mul.s	%f0 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f0 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f0 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
fbl_cont.27088 :
fbl_cont.27086 :
fble_cont.27080 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.27076 
beq_else.27075 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f0 0
beq_cont.27076 :
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
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27089 
	neg.s	%f2 %f3
	j	fbl_cont.27090 
fbl_else.27089 :
	mov.s	%f2 %f3
fbl_cont.27090 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27091 
	addi	%r0 %r2 1
	j	fbl_cont.27092 
fbl_else.27091 :
	addi	%r0 %r2 0
fbl_cont.27092 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27093 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27095 
	neg.s	%f1 %f1
	j	fbl_cont.27096 
fbl_else.27095 :
fbl_cont.27096 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.27097 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27099 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27100 
fbl_else.27099 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27101 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27102 
fbl_else.27101 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.27102 :
fbl_cont.27100 :
	j	fble_cont.27098 
fble_else.27097 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27103 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27104 
fbl_else.27103 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27105 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	add.s	%f3 %f1 %f1
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
	j	fbl_cont.27106 
fbl_else.27105 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f3 0
	neg.s	%f1 %f4
	mul.s	%f1 %f4 %f4
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f5 0
	mul.s	%f1 %f5 %f5
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f6 0
	mul.s	%f1 %f6 %f6
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f5 %f4
	add.s	%f4 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f2 %f1 %f1
fbl_cont.27106 :
fbl_cont.27104 :
fble_cont.27098 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.27094 
beq_else.27093 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f1 0
beq_cont.27094 :
	floor.w.s	%f1 %f2
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23411
	ilw.s	%r2 %f2 0
	addi	%r0 %r2 l.22319
	ilw.s	%r2 %f3 0
	sub.s	%f0 %f3 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.22319
	ilw.s	%r2 %f2 0
	sub.s	%f1 %f2 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27107 
	addi	%r0 %r2 1
	j	fbl_cont.27108 
fbl_else.27107 :
	addi	%r0 %r2 0
fbl_cont.27108 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.27109 
	j	beq_cont.27110 
beq_else.27109 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27110 :
	addi	%r0 %r2 2
	addi	%r0 %r3 l.23417
	ilw.s	%r3 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 l.23419
	ilw.s	%r3 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27070 
beq_else.27069 :
beq_cont.27070 :
beq_cont.27068 :
beq_cont.27066 :
beq_cont.27054 :
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
	bne	%r1 %r2 beq_else.27111 
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
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.27113 
	addi	%r0 %r1 1
	j	fbl_cont.27114 
fbl_else.27113 :
	addi	%r0 %r1 0
fbl_cont.27114 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27115 
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	j	beq_cont.27116 
beq_else.27115 :
beq_cont.27116 :
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
	j	beq_cont.27112 
beq_else.27111 :
beq_cont.27112 :
beq_cont.27032 :
beq_cont.26932 :
	addi	%r0 %r1 2
	lw	%r26 %r2 16
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
ble_else.26928 :
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
	bg	%r2 %r10 ble_else.27118 
	lw	%r1 %r10 8
	addi	%r0 %r11 0
	slli	%r2 %r12 2
	add	%r10 %r12 %r25
	lw	%r25 %r10 0
	bg	%r11 %r10 ble_else.27119 
	lw	%r1 %r10 12
	slli	%r2 %r11 2
	add	%r10 %r11 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 0
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	bne	%r10 %r11 beq_else.27120 
	j	beq_cont.27121 
beq_else.27120 :
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
	beq	%r10 %r14 bne_else.27122 
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
	j	bne_cont.27123 
bne_else.27122 :
bne_cont.27123 :
	addi	%r0 %r1 1
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27124 
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
	j	bne_cont.27125 
bne_else.27124 :
bne_cont.27125 :
	addi	%r0 %r1 2
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27126 
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
	j	bne_cont.27127 
bne_else.27126 :
bne_cont.27127 :
	addi	%r0 %r1 3
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27128 
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
	j	bne_cont.27129 
bne_else.27128 :
bne_cont.27129 :
	addi	%r0 %r1 4
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27130 
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
	j	bne_cont.27131 
bne_else.27130 :
bne_cont.27131 :
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
beq_cont.27121 :
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
ble_else.27119 :
	retl
ble_else.27118 :
	retl
try_exploit_neighbors.3046 :
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	slli	%r1 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 4
	bg	%r6 %r11 ble_else.27134 
	addi	%r0 %r11 0
	lw	%r10 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bg	%r11 %r12 ble_else.27135 
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
	bne	%r12 %r11 beq_else.27136 
	slli	%r1 %r12 2
	add	%r5 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.27138 
	addi	%r0 %r12 1
	sub	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.27140 
	addi	%r0 %r12 1
	add	%r1 %r12 %r12
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 8
	slli	%r6 %r13 2
	add	%r12 %r13 %r25
	lw	%r25 %r12 0
	bne	%r12 %r11 beq_else.27142 
	addi	%r0 %r11 1
	j	beq_cont.27143 
beq_else.27142 :
	addi	%r0 %r11 0
beq_cont.27143 :
	j	beq_cont.27141 
beq_else.27140 :
	addi	%r0 %r11 0
beq_cont.27141 :
	j	beq_cont.27139 
beq_else.27138 :
	addi	%r0 %r11 0
beq_cont.27139 :
	j	beq_cont.27137 
beq_else.27136 :
	addi	%r0 %r11 0
beq_cont.27137 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.27144 
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	mov	%r6 %r2
	mov	%r8 %r24
	lw	%r24 %r23 0
	jr	%r23
beq_else.27144 :
	lw	%r10 %r8 12
	slli	%r6 %r10 2
	add	%r8 %r10 %r25
	lw	%r25 %r8 0
	addi	%r0 %r10 0
	bne	%r8 %r10 beq_else.27145 
	j	beq_cont.27146 
beq_else.27145 :
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
beq_cont.27146 :
	addi	%r0 %r7 1
	add	%r6 %r7 %r6
	lw	%r24 %r23 0
	jr	%r23
ble_else.27135 :
	retl
ble_else.27134 :
	retl
pretrace_diffuse_rays.3059 :
	lw	%r24 %r3 24
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r9 4
	bg	%r2 %r9 ble_else.27149 
	lw	%r1 %r9 8
	slli	%r2 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	bg	%r10 %r9 ble_else.27150 
	lw	%r1 %r9 12
	slli	%r2 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	bne	%r9 %r10 beq_else.27151 
	j	beq_cont.27152 
beq_else.27151 :
	lw	%r1 %r9 24
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 l.22306
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
beq_cont.27152 :
	addi	%r0 %r2 1
	lw	%r26 %r3 4
	add	%r3 %r2 %r2
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27150 :
	retl
ble_else.27149 :
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
	bg	%r13 %r2 ble_else.27155 
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
	addi	%r0 %r7 l.22306
	ilw.s	%r7 %f4 0
	fbne	%f3 %f4 fbeq_else.27156 
	addi	%r0 %r7 1
	j	fbeq_cont.27157 
fbeq_else.27156 :
	addi	%r0 %r7 0
fbeq_cont.27157 :
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.27158 
	addi	%r0 %r7 l.22308
	ilw.s	%r7 %f4 0
	div.s	%f3 %f4 %f3
	j	beq_cont.27159 
beq_else.27158 :
	addi	%r0 %r7 l.22308
	ilw.s	%r7 %f3 0
beq_cont.27159 :
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
	addi	%r0 %r7 l.22306
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
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	slli	%r2 %r6 2
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 l.22306
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
	bg	%r3 %r1 ble_else.27160 
	addi	%r0 %r3 5
	sub	%r1 %r3 %r3
	j	ble_cont.27161 
ble_else.27160 :
	mov	%r1 %r3
ble_cont.27161 :
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 40
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
ble_else.27155 :
	retl
scan_pixel.3073 :
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	lw	%r8 %r10 0
	bge	%r1 %r10 bl_else.27163 
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
	bge	%r10 %r11 bl_else.27164 
	addi	%r0 %r10 0
	bge	%r10 %r2 bl_else.27166 
	addi	%r0 %r10 1
	add	%r1 %r10 %r10
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r8 %r11 %r25
	lw	%r25 %r8 0
	bge	%r10 %r8 bl_else.27168 
	addi	%r0 %r8 0
	bge	%r8 %r1 bl_else.27170 
	addi	%r0 %r8 1
	j	bl_cont.27171 
bl_else.27170 :
	addi	%r0 %r8 0
bl_cont.27171 :
	j	bl_cont.27169 
bl_else.27168 :
	addi	%r0 %r8 0
bl_cont.27169 :
	j	bl_cont.27167 
bl_else.27166 :
	addi	%r0 %r8 0
bl_cont.27167 :
	j	bl_cont.27165 
bl_else.27164 :
	addi	%r0 %r8 0
bl_cont.27165 :
	addi	%r0 %r10 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r1 20
	sw	%r26 %r7 24
	bne	%r8 %r10 beq_else.27172 
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
	j	beq_cont.27173 
beq_else.27172 :
	addi	%r0 %r8 0
	mov	%r6 %r24
	mov	%r8 %r6
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
beq_cont.27173 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.27174 
	addi	%r0 %r1 255
	j	bl_cont.27175 
bl_else.27174 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.27176 
	addi	%r0 %r1 0
	j	bl_cont.27177 
bl_else.27176 :
bl_cont.27177 :
bl_cont.27175 :
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
	bge	%r5 %r3 bl_else.27178 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27179 
bl_else.27178 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.27180 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27181 
bl_else.27180 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.27181 :
bl_cont.27179 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.27182 
	addi	%r0 %r1 255
	j	bl_cont.27183 
bl_else.27182 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.27184 
	addi	%r0 %r1 0
	j	bl_cont.27185 
bl_else.27184 :
bl_cont.27185 :
bl_cont.27183 :
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
	bge	%r5 %r3 bl_else.27186 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27187 
bl_else.27186 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.27188 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27189 
bl_else.27188 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.27189 :
bl_cont.27187 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.27190 
	addi	%r0 %r1 255
	j	bl_cont.27191 
bl_else.27190 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.27192 
	addi	%r0 %r1 0
	j	bl_cont.27193 
bl_else.27192 :
bl_cont.27193 :
bl_cont.27191 :
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
	bge	%r4 %r2 bl_else.27194 
	addi	%r0 %r4 48
	add	%r2 %r4 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.27195 
bl_else.27194 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.27196 
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.27197 
bl_else.27196 :
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
bl_cont.27197 :
bl_cont.27195 :
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
bl_else.27163 :
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
	bge	%r1 %r13 bl_else.27199 
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
	bge	%r1 %r13 bl_else.27200 
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
	j	bl_cont.27201 
bl_else.27200 :
bl_cont.27201 :
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
	bg	%r3 %r2 ble_else.27202 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r5
	j	ble_cont.27203 
ble_else.27202 :
	mov	%r2 %r5
ble_cont.27203 :
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.27199 :
	retl
init_line_elements.3089 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.27205 
	addi	%r0 %r3 3
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r2 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r3 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
	addi	%r0 %r4 l.22306
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
ble_else.27205 :
	retl
calc_dirvec.3099 :
	lw	%r24 %r4 12
	lw	%r24 %r5 8
	lw	%r24 %r6 4
	addi	%r0 %r7 5
	bg	%r7 %r1 ble_else.27206 
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f3 0
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	div.s	%f2 %f0 %f0
	div.s	%f2 %f1 %f1
	addi	%r0 %r1 l.22308
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
ble_else.27206 :
	mul.s	%f1 %f1 %f0
	addi	%r0 %r5 l.23551
	ilw.s	%r5 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
	div.s	%f0 %f1 %f1
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbg	%f4 %f1 fble_else.27208 
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.27210 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.27211 
fbl_else.27210 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.27212 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.27213 
fbl_else.27212 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.27213 :
fbl_cont.27211 :
	j	fble_cont.27209 
fble_else.27208 :
	neg.s	%f1 %f1
	addi	%r0 %r5 l.23272
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.27214 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.27215 
fbl_else.27214 :
	addi	%r0 %r5 l.23274
	ilw.s	%r5 %f4 0
	fbge	%f1 %f4 fbl_else.27216 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f1 %f4
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f5 0
	add.s	%f5 %f1 %f1
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.22312
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
	j	fbl_cont.27217 
fbl_else.27216 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	div.s	%f1 %f4 %f1
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	addi	%r0 %r5 l.23278
	ilw.s	%r5 %f5 0
	neg.s	%f1 %f6
	mul.s	%f1 %f6 %f6
	addi	%r0 %r5 l.23280
	ilw.s	%r5 %f7 0
	mul.s	%f1 %f7 %f7
	addi	%r0 %r5 l.23282
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23284
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23286
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r5 l.23290
	ilw.s	%r5 %f8 0
	mul.s	%f1 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f1 %f1
	add.s	%f1 %f5 %f1
	mul.s	%f4 %f1 %f1
fbl_cont.27217 :
fbl_cont.27215 :
fble_cont.27209 :
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
	addi	%r0 %r2 l.23551
	ilw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	sqrt.s	%f1 %f1
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f2 0
	div.s	%f1 %f2 %f2
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbg	%f3 %f2 fble_else.27220 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27222 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.27223 
fbl_else.27222 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27224 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.27225 
fbl_else.27224 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.27225 :
fbl_cont.27223 :
	j	fble_cont.27221 
fble_else.27220 :
	neg.s	%f2 %f2
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27226 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.27227 
fbl_else.27226 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27228 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f4 0
	add.s	%f4 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.22312
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.27229 
fbl_else.27228 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f3 0
	addi	%r0 %r2 l.23278
	ilw.s	%r2 %f4 0
	neg.s	%f2 %f5
	mul.s	%f2 %f5 %f5
	addi	%r0 %r2 l.23280
	ilw.s	%r2 %f6 0
	mul.s	%f2 %f6 %f6
	addi	%r0 %r2 l.23282
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23284
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23286
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	addi	%r0 %r2 l.23290
	ilw.s	%r2 %f7 0
	mul.s	%f2 %f7 %f7
	mul.s	%f5 %f6 %f6
	add.s	%f6 %f7 %f6
	mul.s	%f5 %f6 %f5
	add.s	%f5 %f2 %f2
	add.s	%f2 %f4 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.27229 :
fbl_cont.27227 :
fble_cont.27221 :
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
	bg	%r5 %r1 ble_else.27231 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.24556
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.22306
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
	addi	%r0 %r2 l.23288
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23551
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.22306
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
	bg	%r3 %r2 ble_else.27233 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.27234 
ble_else.27233 :
ble_cont.27234 :
	lw.s	%r26 %f0 8
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27231 :
	retl
calc_dirvec_rows.3112 :
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.27236 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.23288
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.24556
	ilw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r5 4
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r5 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r1
	addi	%r0 %r2 2
	lw	%r26 %r3 8
	add	%r3 %r2 %r2
	addi	%r0 %r3 5
	bg	%r3 %r2 ble_else.27237 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.27238 
ble_else.27237 :
ble_cont.27238 :
	addi	%r0 %r3 4
	lw	%r26 %r4 4
	add	%r4 %r3 %r3
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27236 :
	retl
create_dirvec_elements.3118 :
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r2 ble_else.27240 
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
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
	sub	%r2 %r1 %r2
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
ble_else.27240 :
	retl
create_dirvecs.3121 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.27242 
	addi	%r0 %r5 120
	addi	%r0 %r6 3
	addi	%r0 %r7 l.22306
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
	lw	%r26 %r24 4
	mov	%r3 %r2
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27242 :
	retl
init_dirvec_constants.3123 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r2 ble_else.27244 
	slli	%r2 %r5 2
	add	%r1 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r3 0
	addi	%r0 %r6 1
	sub	%r3 %r6 %r3
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	mov	%r3 %r2
	mov	%r5 %r1
	mov	%r4 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	sub	%r2 %r1 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
ble_else.27244 :
	retl
init_vecset_constants.3126 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r4 0
	bg	%r4 %r1 ble_else.27246 
	slli	%r1 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	addi	%r0 %r4 119
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	mov	%r2 %r24
	mov	%r4 %r2
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27246 :
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
