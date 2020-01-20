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
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw.s	%r26 %f0 0
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
	addi	%r27 %r27 32
	addi	%r0 %r3 shadow_check_one_or_group.2944
	sw	%r2 %r3 0
	lw	%r26 %r3 132
	sw	%r2 %r3 28
	lw	%r26 %r4 48
	sw	%r2 %r4 24
	lw	%r26 %r5 12
	sw	%r2 %r5 20
	lw	%r26 %r6 24
	sw	%r2 %r6 16
	lw	%r26 %r7 60
	sw	%r2 %r7 12
	lw	%r26 %r8 140
	sw	%r2 %r8 8
	lw	%r26 %r9 36
	sw	%r2 %r9 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 shadow_check_one_or_matrix.2947
	sw	%r10 %r11 0
	sw	%r10 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 32
	addi	%r0 %r11 solve_each_element.2950
	sw	%r2 %r11 0
	lw	%r26 %r11 56
	sw	%r2 %r11 28
	lw	%r26 %r12 96
	sw	%r2 %r12 24
	sw	%r2 %r4 20
	sw	%r2 %r5 16
	lw	%r26 %r13 52
	sw	%r2 %r13 12
	sw	%r2 %r7 8
	lw	%r26 %r14 64
	sw	%r2 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r16 solve_one_or_network.2954
	sw	%r15 %r16 0
	sw	%r15 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r16 trace_or_matrix.2958
	sw	%r2 %r16 0
	sw	%r2 %r15 4
	mov	%r27 %r15
	addi	%r27 %r27 32
	addi	%r0 %r16 solve_each_element_fast.2964
	sw	%r15 %r16 0
	sw	%r15 %r11 28
	lw	%r26 %r16 100
	sw	%r15 %r16 24
	sw	%r15 %r4 20
	sw	%r15 %r5 16
	sw	%r15 %r13 12
	sw	%r15 %r7 8
	sw	%r15 %r14 4
	mov	%r27 %r17
	addi	%r27 %r27 8
	addi	%r0 %r18 solve_one_or_network_fast.2968
	sw	%r17 %r18 0
	sw	%r17 %r15 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r18 trace_or_matrix_fast.2972
	sw	%r15 %r18 0
	sw	%r15 %r17 4
	mov	%r27 %r17
	addi	%r27 %r27 72
	addi	%r0 %r18 trace_reflections.2994
	sw	%r17 %r18 0
	sw	%r17 %r3 64
	sw	%r17 %r15 60
	sw	%r17 %r11 56
	lw	%r26 %r18 72
	sw	%r17 %r18 52
	sw	%r17 %r4 48
	sw	%r17 %r10 44
	lw	%r26 %r19 80
	sw	%r17 %r19 40
	lw	%r26 %r20 148
	sw	%r17 %r20 36
	lw	%r26 %r21 44
	sw	%r17 %r21 32
	sw	%r17 %r5 28
	lw	%r26 %r22 68
	sw	%r17 %r22 24
	sw	%r17 %r13 20
	sw	%r17 %r7 16
	sw	%r17 %r14 12
	sw	%r17 %r8 8
	sw	%r17 %r9 4
	mov	%r27 %r23
	addi	%r27 %r27 104
	addi	%r0 %r24 trace_ray.2999
	sw	%r23 %r24 0
	sw	%r23 %r3 100
	sw	%r23 %r17 96
	sw	%r23 %r2 92
	sw	%r23 %r11 88
	sw	%r23 %r18 84
	sw	%r23 %r16 80
	sw	%r23 %r12 76
	sw	%r23 %r4 72
	sw	%r23 %r10 68
	sw	%r23 %r19 64
	lw.s	%r26 %f0 0
	sw.s	%r23 %f0 56
	sw	%r23 %r21 48
	sw	%r23 %r5 44
	sw	%r23 %r22 40
	sw	%r23 %r1 36
	lw	%r26 %r2 8
	sw	%r23 %r2 32
	sw	%r23 %r6 28
	sw	%r23 %r13 24
	sw	%r23 %r7 20
	sw	%r23 %r14 16
	sw	%r23 %r8 12
	lw	%r26 %r17 28
	sw	%r23 %r17 8
	sw	%r23 %r9 4
	mov	%r27 %r24
	addi	%r27 %r27 80
	addi	%r0 %r20 iter_trace_diffuse_rays.3008
	sw	%r24 %r20 0
	sw	%r24 %r3 76
	sw	%r24 %r15 72
	sw	%r24 %r11 68
	sw	%r24 %r18 64
	sw	%r24 %r4 60
	sw	%r24 %r10 56
	sw.s	%r24 %f0 48
	sw	%r24 %r21 40
	sw	%r24 %r5 36
	sw	%r24 %r22 32
	sw	%r24 %r6 28
	sw	%r24 %r13 24
	sw	%r24 %r7 20
	sw	%r24 %r14 16
	lw	%r26 %r4 76
	sw	%r24 %r4 12
	sw	%r24 %r8 8
	sw	%r24 %r9 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r8 do_without_neighbors.3030
	sw	%r7 %r8 0
	sw	%r7 %r24 4
	mov	%r27 %r8
	addi	%r27 %r27 32
	addi	%r0 %r10 try_exploit_neighbors.3046
	sw	%r8 %r10 0
	sw	%r8 %r16 28
	sw	%r8 %r19 24
	sw	%r8 %r5 20
	sw	%r8 %r2 16
	sw	%r8 %r7 12
	lw	%r26 %r10 124
	sw	%r8 %r10 8
	sw	%r8 %r4 4
	mov	%r27 %r11
	addi	%r27 %r27 8
	addi	%r0 %r13 pretrace_diffuse_rays.3059
	sw	%r11 %r13 0
	sw	%r11 %r24 4
	mov	%r27 %r13
	addi	%r27 %r27 64
	addi	%r0 %r14 pretrace_pixels.3062
	sw	%r13 %r14 0
	lw	%r26 %r14 20
	sw	%r13 %r14 56
	sw	%r13 %r23 52
	sw	%r13 %r16 48
	sw	%r13 %r12 44
	lw	%r26 %r12 104
	sw	%r13 %r12 40
	lw	%r26 %r15 92
	sw	%r13 %r15 36
	sw	%r13 %r19 32
	lw	%r26 %r18 116
	sw	%r13 %r18 28
	sw	%r13 %r11 24
	sw	%r13 %r5 20
	sw	%r13 %r2 16
	lw	%r26 %r11 88
	sw	%r13 %r11 12
	sw	%r13 %r10 8
	sw	%r13 %r4 4
	mov	%r27 %r18
	addi	%r27 %r27 40
	addi	%r0 %r20 scan_pixel.3073
	sw	%r18 %r20 0
	sw	%r18 %r8 36
	sw	%r18 %r16 32
	sw	%r18 %r19 28
	sw	%r18 %r5 24
	sw	%r18 %r2 20
	lw	%r26 %r8 84
	sw	%r18 %r8 16
	sw	%r18 %r7 12
	sw	%r18 %r10 8
	sw	%r18 %r4 4
	mov	%r27 %r4
	addi	%r27 %r27 32
	addi	%r0 %r7 scan_line.3079
	sw	%r4 %r7 0
	lw	%r26 %r7 112
	sw	%r4 %r7 28
	lw	%r26 %r16 108
	sw	%r4 %r16 24
	sw	%r4 %r18 20
	sw	%r4 %r15 16
	sw	%r4 %r13 12
	sw	%r4 %r8 8
	sw	%r4 %r11 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 calc_dirvec.3099
	sw	%r18 %r19 0
	sw.s	%r18 %f0 8
	sw	%r18 %r10 4
	mov	%r27 %r19
	addi	%r27 %r27 8
	addi	%r0 %r20 calc_dirvecs.3107
	sw	%r19 %r20 0
	sw	%r19 %r18 4
	mov	%r27 %r18
	addi	%r27 %r27 8
	addi	%r0 %r20 calc_dirvec_rows.3112
	sw	%r18 %r20 0
	sw	%r18 %r19 4
	addi	%r0 %r19 128
	addi	%r0 %r20 128
	sw	%r8 %r19 0
	sw	%r8 %r20 4
	addi	%r0 %r20 64
	sw	%r11 %r20 0
	addi	%r0 %r20 64
	sw	%r11 %r20 4
	addi	%r0 %r20 l.24638
	ilw.s	%r20 %f1 0
	mtc1	%r19 %f2
	div.s	%f2 %f1 %f1
	sw.s	%r15 %f1 0
	lw	%r8 %r19 0
	addi	%r0 %r20 3
	addi	%r0 %r22 l.22306
	ilw.s	%r22 %f1 0
	sw	%r26 %r4 152
	sw	%r26 %r13 156
	sw	%r26 %r1 160
	sw	%r26 %r18 164
	sw	%r26 %r19 168
	mov	%r20 %r1
	mov.s	%f1 %f0
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 172
	mov	%r2 %r1
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 176
	mov	%r2 %r1
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r2 176
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r2 176
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r2 176
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r2 176
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	min_caml_create_array 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 180
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 184
	mov	%r2 %r1
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_array 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 188
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 188
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	sw	%r26 %r1 192
	mov	%r2 %r1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 192
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 192
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 192
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r2 192
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
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
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 200
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 200
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 196
	sw	%r1 %r2 24
	lw	%r26 %r2 192
	sw	%r1 %r2 20
	lw	%r26 %r2 188
	sw	%r1 %r2 16
	lw	%r26 %r2 184
	sw	%r1 %r2 12
	lw	%r26 %r2 180
	sw	%r1 %r2 8
	lw	%r26 %r2 176
	sw	%r1 %r2 4
	lw	%r26 %r2 172
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 168
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_array 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	init_line_elements.3089 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 204
	sw	%r26 %r3 208
	mov	%r4 %r1
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	min_caml_create_float_array 
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
	sw	%r26 %r1 216
	mov	%r2 %r1
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 216
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 216
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 216
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	lw	%r26 %r2 216
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array 
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 220
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	min_caml_create_array 
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 224
	mov	%r2 %r1
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 228
	mov	%r2 %r1
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 228
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	lw	%r26 %r2 232
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
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
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 240
	mov	%r2 %r1
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 240
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 236
	sw	%r1 %r2 24
	lw	%r26 %r2 232
	sw	%r1 %r2 20
	lw	%r26 %r2 228
	sw	%r1 %r2 16
	lw	%r26 %r2 224
	sw	%r1 %r2 12
	lw	%r26 %r2 220
	sw	%r1 %r2 8
	lw	%r26 %r2 216
	sw	%r1 %r2 4
	lw	%r26 %r2 212
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 208
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_array 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	init_line_elements.3089 
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	sw	%r26 %r1 244
	sw	%r26 %r3 248
	mov	%r4 %r1
	sw	%r26 %r28 252
	addi	%r26 %r26 256
	jal	min_caml_create_float_array 
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
	sw	%r26 %r1 256
	mov	%r2 %r1
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 256
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 256
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 256
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	lw	%r26 %r2 256
	sw	%r2 %r1 16
	addi	%r0 %r1 5
	addi	%r0 %r3 0
	mov	%r3 %r2
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_array 
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 260
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 268
	addi	%r26 %r26 272
	jal	min_caml_create_array 
	addi	%r26 %r26 -272
	lw	%r26 %r28 268
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 264
	mov	%r2 %r1
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 268
	mov	%r2 %r1
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 268
	sw	%r2 %r1 16
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
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
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	lw	%r26 %r2 272
	sw	%r2 %r1 16
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	mov	%r3 %r2
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
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	addi	%r0 %r2 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 280
	mov	%r2 %r1
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 280
	sw	%r2 %r1 16
	mov	%r27 %r1
	addi	%r27 %r27 32
	sw	%r1 %r2 28
	lw	%r26 %r2 276
	sw	%r1 %r2 24
	lw	%r26 %r2 272
	sw	%r1 %r2 20
	lw	%r26 %r2 268
	sw	%r1 %r2 16
	lw	%r26 %r2 264
	sw	%r1 %r2 12
	lw	%r26 %r2 260
	sw	%r1 %r2 8
	lw	%r26 %r2 256
	sw	%r1 %r2 4
	lw	%r26 %r2 252
	sw	%r1 %r2 0
	mov	%r1 %r2
	lw	%r26 %r1 248
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	min_caml_create_array 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
	lw	%r26 %r2 84
	lw	%r2 %r3 0
	addi	%r0 %r4 2
	sub	%r3 %r4 %r3
	mov	%r3 %r2
	sw	%r26 %r28 284
	addi	%r26 %r26 288
	jal	init_line_elements.3089 
	addi	%r26 %r26 -288
	lw	%r26 %r28 284
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
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 0
	sw	%r26 %r1 284
	sw.s	%r26 %f1 288
	sw	%r26 %r28 300
	addi	%r26 %r26 304
	jal	cos.2621 
	addi	%r26 %r26 -304
	lw	%r26 %r28 300
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 288
	sw.s	%r26 %f0 296
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 308
	addi	%r26 %r26 312
	jal	sin.2619 
	addi	%r26 %r26 -312
	lw	%r26 %r28 308
	fin	%f1
	addi	%r0 %r1 l.22431
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 304
	sw.s	%r26 %f1 312
	mov.s	%f2 %f0
	sw	%r26 %r28 324
	addi	%r26 %r26 328
	jal	cos.2621 
	addi	%r26 %r26 -328
	lw	%r26 %r28 324
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 312
	sw.s	%r26 %f0 320
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 332
	addi	%r26 %r26 336
	jal	sin.2619 
	addi	%r26 %r26 -336
	lw	%r26 %r28 332
	lw.s	%r26 %f1 296
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.24790
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 112
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.24793
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 304
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 320
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
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 0
	sw.s	%r26 %f1 328
	sw	%r26 %r28 340
	addi	%r26 %r26 344
	jal	sin.2619 
	addi	%r26 %r26 -344
	lw	%r26 %r28 340
	neg.s	%f0 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	fin	%f0
	addi	%r0 %r2 l.22431
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 328
	sw.s	%r26 %f0 336
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 348
	addi	%r26 %r26 352
	jal	cos.2621 
	addi	%r26 %r26 -352
	lw	%r26 %r28 348
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 336
	sw.s	%r26 %f0 344
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	sin.2619 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	lw.s	%r26 %f1 344
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 0
	lw.s	%r26 %f2 336
	mov.s	%f2 %f1
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	cos.2621 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	lw.s	%r26 %f1 344
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r2 28
	sw.s	%r2 %f0 0
	addi	%r0 %r3 0
	lw.s	%r26 %f0 0
	lw	%r26 %r2 8
	lw	%r26 %r4 12
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	read_object.2800 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	addi	%r0 %r2 0
	lw	%r26 %r1 36
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	read_and_network.2808 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	addi	%r0 %r1 0
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	read_or_network.2806 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
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
	bge	%r5 %r3 bl_else.26080 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.26081 
bl_else.26080 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.26082 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.26083 
bl_else.26082 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.26083 :
bl_cont.26081 :
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
	bge	%r5 %r3 bl_else.26084 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.26085 
bl_else.26084 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.26086 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
	j	bl_cont.26087 
bl_else.26086 :
	addi	%r0 %r3 48
	add	%r2 %r3 %r2
	out	%r2
bl_cont.26087 :
bl_cont.26085 :
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
	addi	%r0 %r3 4
	lw	%r26 %r2 124
	lw	%r26 %r4 8
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	create_dirvecs.3121 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r24 164
	sw	%r26 %r28 356
	lw	%r24 %r23 0
	addi	%r26 %r26 360	
	jalr	%r23
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	addi	%r0 %r4 4
	lw	%r26 %r1 124
	lw	%r26 %r2 8
	lw	%r26 %r3 12
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	init_vecset_constants.3126 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
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
	lw	%r26 %r4 12
	lw	%r26 %r5 136
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 356
	addi	%r26 %r26 360
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -360
	lw	%r26 %r28 356
	lw	%r26 %r1 8
	lw	%r1 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r2
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.26088 
	slli	%r2 %r3 2
	lw	%r26 %r4 12
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r5 8
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.26090 
	lw	%r3 %r5 28
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
	fbge	%f0 %f1 fbl_else.26092 
	addi	%r0 %r5 1
	j	fbl_cont.26093 
fbl_else.26092 :
	addi	%r0 %r5 0
fbl_cont.26093 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26094 
	j	beq_cont.26095 
beq_else.26094 :
	lw	%r3 %r5 4
	addi	%r0 %r6 1
	bne	%r5 %r6 beq_else.26096 
	addi	%r0 %r5 4
	mul	%r2 %r5 %r2
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 160
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 l.22308
	ilw.s	%r7 %f0 0
	lw	%r3 %r3 28
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r3 %r7 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r7 24
	add	%r7 %r3 %r25
	lw.s	%r25 %f1 0
	neg.s	%f1 %f1
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r7 %r3 %r25
	lw.s	%r25 %f3 0
	neg.s	%f3 %f3
	addi	%r0 %r3 1
	add	%r2 %r3 %r3
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r8 3
	addi	%r0 %r9 l.22306
	ilw.s	%r9 %f5 0
	sw.s	%r26 %f1 352
	sw	%r26 %r2 360
	sw	%r26 %r5 364
	sw	%r26 %r3 368
	sw.s	%r26 %f0 376
	sw.s	%r26 %f3 384
	sw.s	%r26 %f2 392
	sw.s	%r26 %f4 400
	mov	%r8 %r1
	mov.s	%f5 %f0
	sw	%r26 %r28 412
	addi	%r26 %r26 416
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -416
	lw	%r26 %r28 412
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 408
	sw	%r26 %r28 412
	addi	%r26 %r26 416
	jal	min_caml_create_array 
	addi	%r26 %r26 -416
	lw	%r26 %r28 412
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 408
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 400
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 392
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 384
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r4 12
	sw	%r26 %r2 412
	mov	%r1 %r3
	mov	%r4 %r1
	sw	%r26 %r28 420
	addi	%r26 %r26 424
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -424
	lw	%r26 %r28 420
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 376
	sw.s	%r1 %f0 8
	lw	%r26 %r2 412
	sw	%r1 %r2 4
	lw	%r26 %r2 368
	sw	%r1 %r2 0
	lw	%r26 %r2 364
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 2
	lw	%r26 %r5 360
	add	%r5 %r3 %r3
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	lw	%r26 %r7 24
	add	%r7 %r6 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r6 3
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f2 0
	sw	%r26 %r1 416
	sw	%r26 %r3 420
	sw.s	%r26 %f1 424
	mov	%r6 %r1
	mov.s	%f2 %f0
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
	lw.s	%r26 %f0 352
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f1 424
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f1 384
	add	%r1 %r3 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 1
	sub	%r1 %r4 %r1
	lw	%r26 %r4 12
	sw	%r26 %r2 436
	mov	%r1 %r3
	mov	%r4 %r1
	sw	%r26 %r28 444
	addi	%r26 %r26 448
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -448
	lw	%r26 %r28 444
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 376
	sw.s	%r1 %f0 8
	lw	%r26 %r2 436
	sw	%r1 %r2 4
	lw	%r26 %r2 420
	sw	%r1 %r2 0
	lw	%r26 %r2 416
	slli	%r2 %r2 2
	lw	%r26 %r3 148
	add	%r3 %r2 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 2
	lw	%r26 %r2 364
	add	%r2 %r1 %r1
	addi	%r0 %r4 3
	lw	%r26 %r5 360
	add	%r5 %r4 %r4
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	lw	%r26 %r6 24
	add	%r6 %r5 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r5 3
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
	sw	%r26 %r1 440
	sw	%r26 %r4 444
	sw.s	%r26 %f1 448
	mov	%r5 %r1
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
	lw.s	%r26 %f0 352
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 392
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 448
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r3
	lw	%r26 %r1 12
	sw	%r26 %r2 460
	sw	%r26 %r28 468
	addi	%r26 %r26 472
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -472
	lw	%r26 %r28 468
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 376
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
	addi	%r0 %r1 0
	addi	%r0 %r2 3
	lw	%r26 %r3 364
	add	%r3 %r2 %r2
	slli	%r1 %r1 2
	lw	%r26 %r3 160
	add	%r3 %r1 %r25
	sw	%r25 %r2 0
	j	beq_cont.26097 
beq_else.26096 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.26099 
	addi	%r0 %r5 4
	mul	%r2 %r5 %r2
	addi	%r0 %r5 1
	add	%r2 %r5 %r2
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 160
	add	%r6 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r7 l.22308
	ilw.s	%r7 %f0 0
	lw	%r3 %r7 28
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r3 %r7 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	lw	%r26 %r9 24
	add	%r9 %r8 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r7 l.22504
	ilw.s	%r7 %f2 0
	lw	%r3 %r7 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	mul.s	%f1 %f2 %f2
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r7 l.22504
	ilw.s	%r7 %f3 0
	lw	%r3 %r7 16
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f3 %f3
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	addi	%r0 %r7 l.22504
	ilw.s	%r7 %f4 0
	lw	%r3 %r3 16
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r3 %r7 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	mul.s	%f1 %f4 %f1
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	add	%r9 %r3 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f1 %f1
	addi	%r0 %r3 3
	addi	%r0 %r7 l.22306
	ilw.s	%r7 %f4 0
	sw	%r26 %r5 464
	sw	%r26 %r2 468
	sw.s	%r26 %f0 472
	sw.s	%r26 %f1 480
	sw.s	%r26 %f3 488
	sw.s	%r26 %f2 496
	mov	%r3 %r1
	mov.s	%f4 %f0
	sw	%r26 %r28 508
	addi	%r26 %r26 512
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -512
	lw	%r26 %r28 508
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 504
	sw	%r26 %r28 508
	addi	%r26 %r26 512
	jal	min_caml_create_array 
	addi	%r26 %r26 -512
	lw	%r26 %r28 508
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 504
	sw	%r2 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw.s	%r26 %f0 496
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	slli	%r3 %r3 2
	lw.s	%r26 %f0 488
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	slli	%r3 %r3 2
	lw.s	%r26 %f0 480
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r3
	lw	%r26 %r1 12
	sw	%r26 %r2 508
	sw	%r26 %r28 516
	addi	%r26 %r26 520
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -520
	lw	%r26 %r28 516
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 472
	sw.s	%r1 %f0 8
	lw	%r26 %r2 508
	sw	%r1 %r2 4
	lw	%r26 %r2 468
	sw	%r1 %r2 0
	lw	%r26 %r2 464
	slli	%r2 %r3 2
	lw	%r26 %r4 148
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	addi	%r0 %r3 1
	add	%r2 %r3 %r2
	slli	%r1 %r1 2
	lw	%r26 %r3 160
	add	%r3 %r1 %r25
	sw	%r25 %r2 0
	j	beq_cont.26100 
beq_else.26099 :
beq_cont.26100 :
beq_cont.26097 :
beq_cont.26095 :
	j	beq_cont.26091 
beq_else.26090 :
beq_cont.26091 :
	j	ble_cont.26089 
ble_else.26088 :
ble_cont.26089 :
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
	lw	%r26 %r1 244
	lw	%r26 %r24 156
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 516
	lw	%r24 %r23 0
	addi	%r26 %r26 520	
	jalr	%r23
	addi	%r26 %r26 -520
	lw	%r26 %r28 516
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 204
	lw	%r26 %r3 244
	lw	%r26 %r4 284
	lw	%r26 %r24 152
	sw	%r26 %r28 516
	lw	%r24 %r23 0
	addi	%r26 %r26 520	
	jalr	%r23
	addi	%r26 %r26 -520
	lw	%r26 %r28 516
	addi	%r0 %r1 0
	ret
sin.2619 :
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	fbg	%f2 %f1 fble_else.26101 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f1
	j	sin.2619
fble_else.26101 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f2 0
	fbge	%f1 %f2 fbl_else.26102 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	add.s	%f2 %f1 %f1
	j	sin.2619
fbl_else.26102 :
	fbg	%f0 %f1 fble_else.26103 
	sub.s	%f0 %f1 %f1
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f1 fble_else.26104 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26105 
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
fble_else.26105 :
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
fble_else.26104 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 fble_else.26106 
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f1 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f1
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26106 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
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
fble_else.26103 :
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f1 fble_else.26107 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.26108 
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
fble_else.26108 :
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
fble_else.26107 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 fble_else.26109 
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.22322
	ilw.s	%r1 %f3 0
	mul.s	%f1 %f3 %f3
	addi	%r0 %r1 l.22324
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22326
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f4 %f1
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.26109 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
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
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	fbg	%f2 %f1 fble_else.26110 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f1
	j	cos.2621
fble_else.26110 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f2 0
	fbge	%f1 %f2 fbl_else.26111 
	addi	%r0 %r1 l.22304
	ilw.s	%r1 %f2 0
	add.s	%f2 %f1 %f1
	j	cos.2621
fbl_else.26111 :
	fbg	%f0 %f1 fble_else.26112 
	sub.s	%f0 %f1 %f1
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f1 fble_else.26113 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.26114 
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
fble_else.26114 :
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
fble_else.26113 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 fble_else.26115 
	mul.s	%f1 %f1 %f0
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
fble_else.26115 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
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
fble_else.26112 :
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f3 0
	fbg	%f3 %f1 fble_else.26116 
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22339
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f2 0
	fbg	%f0 %f2 fble_else.26117 
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
fble_else.26117 :
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
fble_else.26116 :
	addi	%r0 %r1 l.22312
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 fble_else.26118 
	mul.s	%f1 %f1 %f0
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
fble_else.26118 :
	addi	%r0 %r1 l.22310
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
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
	addi	%r0 %r4 60
	bge	%r3 %r4 bl_else.26119 
	in	%r4
	addi	%r0 %r5 -1
	sw.s	%r26 %f0 0
	sw	%r26 %r2 8
	sw	%r26 %r1 12
	sw	%r26 %r3 16
	beq	%r4 %r5 bne_else.26120 
	in	%r5
	in	%r6
	in	%r7
	addi	%r0 %r8 3
	addi	%r0 %r9 l.22306
	ilw.s	%r9 %f1 0
	sw	%r26 %r4 20
	sw	%r26 %r6 24
	sw	%r26 %r5 28
	sw	%r26 %r7 32
	mov	%r8 %r1
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
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
	sw	%r26 %r1 36
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
	fbge	%f0 %f1 fbl_else.26122 
	addi	%r0 %r2 1
	j	fbl_cont.26123 
fbl_else.26122 :
	addi	%r0 %r2 0
fbl_cont.26123 :
	addi	%r0 %r3 2
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
	sw	%r26 %r1 48
	mov	%r2 %r1
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
	addi	%r0 %r2 2
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
	lw	%r26 %r3 32
	beq	%r3 %r2 bne_else.26124 
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
	j	bne_cont.26125 
bne_else.26124 :
bne_cont.26125 :
	addi	%r0 %r2 2
	lw	%r26 %r4 28
	bne	%r4 %r2 beq_else.26126 
	addi	%r0 %r2 1
	j	beq_cont.26127 
beq_else.26126 :
	lw	%r26 %r2 44
beq_cont.26127 :
	addi	%r0 %r5 4
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f0 0
	sw	%r26 %r2 56
	sw	%r26 %r1 60
	mov	%r5 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r27 %r2
	addi	%r27 %r27 48
	sw	%r2 %r1 40
	lw	%r26 %r1 60
	sw	%r2 %r1 36
	lw	%r26 %r3 52
	sw	%r2 %r3 32
	lw	%r26 %r3 48
	sw	%r2 %r3 28
	lw	%r26 %r3 56
	sw	%r2 %r3 24
	lw	%r26 %r3 40
	sw	%r2 %r3 20
	lw	%r26 %r3 36
	sw	%r2 %r3 16
	lw	%r26 %r4 32
	sw	%r2 %r4 12
	lw	%r26 %r5 24
	sw	%r2 %r5 8
	lw	%r26 %r5 28
	sw	%r2 %r5 4
	lw	%r26 %r6 20
	sw	%r2 %r6 0
	lw	%r26 %r6 16
	slli	%r6 %r7 2
	lw	%r26 %r8 8
	add	%r8 %r7 %r25
	sw	%r25 %r2 0
	addi	%r0 %r2 3
	bne	%r5 %r2 beq_else.26128 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26130 
	addi	%r0 %r5 1
	j	fbeq_cont.26131 
fbeq_else.26130 :
	addi	%r0 %r5 0
fbeq_cont.26131 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26132 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26134 
	addi	%r0 %r5 1
	j	fbeq_cont.26135 
fbeq_else.26134 :
	addi	%r0 %r5 0
fbeq_cont.26135 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26136 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26138 
	addi	%r0 %r5 1
	j	fbl_cont.26139 
fbl_else.26138 :
	addi	%r0 %r5 0
fbl_cont.26139 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26140 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26141 
beq_else.26140 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26141 :
	j	beq_cont.26137 
beq_else.26136 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26137 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26133 
beq_else.26132 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26133 :
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
	fbne	%f0 %f1 fbeq_else.26142 
	addi	%r0 %r5 1
	j	fbeq_cont.26143 
fbeq_else.26142 :
	addi	%r0 %r5 0
fbeq_cont.26143 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26144 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26146 
	addi	%r0 %r5 1
	j	fbeq_cont.26147 
fbeq_else.26146 :
	addi	%r0 %r5 0
fbeq_cont.26147 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26148 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26150 
	addi	%r0 %r5 1
	j	fbl_cont.26151 
fbl_else.26150 :
	addi	%r0 %r5 0
fbl_cont.26151 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26152 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26153 
beq_else.26152 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26153 :
	j	beq_cont.26149 
beq_else.26148 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26149 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26145 
beq_else.26144 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26145 :
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
	fbne	%f0 %f1 fbeq_else.26154 
	addi	%r0 %r5 1
	j	fbeq_cont.26155 
fbeq_else.26154 :
	addi	%r0 %r5 0
fbeq_cont.26155 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26156 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbne	%f0 %f1 fbeq_else.26158 
	addi	%r0 %r5 1
	j	fbeq_cont.26159 
fbeq_else.26158 :
	addi	%r0 %r5 0
fbeq_cont.26159 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26160 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
	fbge	%f1 %f0 fbl_else.26162 
	addi	%r0 %r5 1
	j	fbl_cont.26163 
fbl_else.26162 :
	addi	%r0 %r5 0
fbl_cont.26163 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26164 
	addi	%r0 %r5 l.22339
	ilw.s	%r5 %f1 0
	j	beq_cont.26165 
beq_else.26164 :
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f1 0
beq_cont.26165 :
	j	beq_cont.26161 
beq_else.26160 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f1 0
beq_cont.26161 :
	mul.s	%f0 %f0 %f0
	div.s	%f0 %f1 %f0
	j	beq_cont.26157 
beq_else.26156 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
beq_cont.26157 :
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26129 
beq_else.26128 :
	addi	%r0 %r2 2
	bne	%r5 %r2 beq_else.26166 
	addi	%r0 %r2 0
	lw	%r26 %r5 44
	bne	%r5 %r2 beq_else.26168 
	addi	%r0 %r2 1
	j	beq_cont.26169 
beq_else.26168 :
	addi	%r0 %r2 0
beq_cont.26169 :
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
	fbne	%f0 %f1 fbeq_else.26170 
	addi	%r0 %r5 1
	j	fbeq_cont.26171 
fbeq_else.26170 :
	addi	%r0 %r5 0
fbeq_cont.26171 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26172 
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.26174 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.26175 
beq_else.26174 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.26175 :
	j	beq_cont.26173 
beq_else.26172 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.26173 :
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
	j	beq_cont.26167 
beq_else.26166 :
beq_cont.26167 :
beq_cont.26129 :
	addi	%r0 %r2 0
	beq	%r4 %r2 bne_else.26176 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f0 0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	cos.2621 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 64
	mov.s	%f2 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	sin.2619 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2621 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 80
	mov.s	%f2 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	sin.2619 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 88
	mov.s	%f2 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	cos.2621 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 96
	mov.s	%f2 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	sin.2619 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	lw.s	%r26 %f2 80
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 88
	lw.s	%r26 %f5 72
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 64
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
	lw	%r26 %r2 36
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
	lw	%r26 %r2 60
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
	j	bne_cont.26177 
bne_else.26176 :
bne_cont.26177 :
	addi	%r0 %r1 1
	j	bne_cont.26121 
bne_else.26120 :
	addi	%r0 %r1 0
bne_cont.26121 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26178 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 12
	lw	%r26 %r3 16
	add	%r2 %r1 %r25
	sw	%r25 %r3 0
	retl
beq_else.26178 :
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r3
	lw.s	%r26 %f0 0
	lw	%r26 %r1 12
	lw	%r26 %r2 8
	j	read_object.2800
bl_else.26119 :
	retl
read_net_item.2804 :
	in	%r2
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.26181 
	addi	%r0 %r2 1
	add	%r1 %r2 %r1
	addi	%r0 %r2 -1
	j	min_caml_create_array
beq_else.26181 :
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
	bne	%r1 %r3 beq_else.26182 
	addi	%r0 %r1 1
	lw	%r26 %r3 0
	add	%r3 %r1 %r1
	j	min_caml_create_array
beq_else.26182 :
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
	addi	%r0 %r3 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2804 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r3 -1
	bne	%r2 %r3 beq_else.26183 
	retl
beq_else.26183 :
	lw	%r26 %r2 4
	slli	%r2 %r3 2
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	add	%r2 %r1 %r2
	mov	%r4 %r1
	j	read_and_network.2808
iter_setup_dirvec_constants.2905 :
	addi	%r0 %r4 0
	bg	%r4 %r3 ble_else.26185 
	slli	%r3 %r4 2
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	lw	%r2 %r5 4
	lw	%r2 %r6 0
	lw	%r4 %r7 4
	addi	%r0 %r8 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	bne	%r7 %r8 beq_else.26186 
	addi	%r0 %r7 6
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f0 0
	sw	%r26 %r5 8
	sw	%r26 %r3 12
	sw	%r26 %r4 16
	sw	%r26 %r6 20
	mov	%r7 %r1
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
	fbne	%f0 %f1 fbeq_else.26188 
	addi	%r0 %r2 1
	j	fbeq_cont.26189 
fbeq_else.26188 :
	addi	%r0 %r2 0
fbeq_cont.26189 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26190 
	addi	%r0 %r2 0
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26192 
	addi	%r0 %r6 1
	j	fbl_cont.26193 
fbl_else.26192 :
	addi	%r0 %r6 0
fbl_cont.26193 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26194 
	mov	%r6 %r5
	j	beq_cont.26195 
beq_else.26194 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26196 
	addi	%r0 %r5 1
	j	beq_cont.26197 
beq_else.26196 :
	addi	%r0 %r5 0
beq_cont.26197 :
beq_cont.26195 :
	lw	%r4 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26198 
	neg.s	%f0 %f0
	j	beq_cont.26199 
beq_else.26198 :
beq_cont.26199 :
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
	j	beq_cont.26191 
beq_else.26190 :
	addi	%r0 %r2 1
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26191 :
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26200 
	addi	%r0 %r2 1
	j	fbeq_cont.26201 
fbeq_else.26200 :
	addi	%r0 %r2 0
fbeq_cont.26201 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26202 
	addi	%r0 %r2 2
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26204 
	addi	%r0 %r6 1
	j	fbl_cont.26205 
fbl_else.26204 :
	addi	%r0 %r6 0
fbl_cont.26205 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26206 
	mov	%r6 %r5
	j	beq_cont.26207 
beq_else.26206 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26208 
	addi	%r0 %r5 1
	j	beq_cont.26209 
beq_else.26208 :
	addi	%r0 %r5 0
beq_cont.26209 :
beq_cont.26207 :
	lw	%r4 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26210 
	neg.s	%f0 %f0
	j	beq_cont.26211 
beq_else.26210 :
beq_cont.26211 :
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
	j	beq_cont.26203 
beq_else.26202 :
	addi	%r0 %r2 3
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26203 :
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26212 
	addi	%r0 %r2 1
	j	fbeq_cont.26213 
fbeq_else.26212 :
	addi	%r0 %r2 0
fbeq_cont.26213 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.26214 
	addi	%r0 %r2 4
	lw	%r26 %r4 16
	lw	%r4 %r5 24
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r3 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26216 
	addi	%r0 %r6 1
	j	fbl_cont.26217 
fbl_else.26216 :
	addi	%r0 %r6 0
fbl_cont.26217 :
	addi	%r0 %r7 0
	bne	%r5 %r7 beq_else.26218 
	mov	%r6 %r5
	j	beq_cont.26219 
beq_else.26218 :
	addi	%r0 %r5 0
	bne	%r6 %r5 beq_else.26220 
	addi	%r0 %r5 1
	j	beq_cont.26221 
beq_else.26220 :
	addi	%r0 %r5 0
beq_cont.26221 :
beq_cont.26219 :
	lw	%r4 %r4 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.26222 
	neg.s	%f0 %f0
	j	beq_cont.26223 
beq_else.26222 :
beq_cont.26223 :
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
	j	beq_cont.26215 
beq_else.26214 :
	addi	%r0 %r2 5
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.26215 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.26187 
beq_else.26186 :
	addi	%r0 %r8 2
	bne	%r7 %r8 beq_else.26224 
	addi	%r0 %r7 4
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f0 0
	sw	%r26 %r5 8
	sw	%r26 %r3 12
	sw	%r26 %r4 16
	sw	%r26 %r6 20
	mov	%r7 %r1
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
	fbge	%f1 %f0 fbl_else.26226 
	addi	%r0 %r3 1
	j	fbl_cont.26227 
fbl_else.26226 :
	addi	%r0 %r3 0
fbl_cont.26227 :
	addi	%r0 %r4 0
	bne	%r3 %r4 beq_else.26228 
	addi	%r0 %r2 0
	addi	%r0 %r3 l.22306
	ilw.s	%r3 %f0 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26229 
beq_else.26228 :
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
beq_cont.26229 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	j	beq_cont.26225 
beq_else.26224 :
	addi	%r0 %r7 5
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f0 0
	sw	%r26 %r5 8
	sw	%r26 %r3 12
	sw	%r26 %r4 16
	sw	%r26 %r6 20
	mov	%r7 %r1
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
	bne	%r4 %r5 beq_else.26230 
	mov.s	%f3 %f0
	j	beq_cont.26231 
beq_else.26230 :
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
beq_cont.26231 :
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
	beq	%r4 %r5 bne_else.26232 
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
	j	bne_cont.26233 
bne_else.26232 :
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
bne_cont.26233 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.26234 
	addi	%r0 %r2 1
	j	fbeq_cont.26235 
fbeq_else.26234 :
	addi	%r0 %r2 0
fbeq_cont.26235 :
	addi	%r0 %r3 0
	bne	%r2 %r3 beq_else.26236 
	addi	%r0 %r2 4
	addi	%r0 %r3 l.22308
	ilw.s	%r3 %f1 0
	div.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r1 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26237 
beq_else.26236 :
beq_cont.26237 :
	lw	%r26 %r2 12
	slli	%r2 %r3 2
	lw	%r26 %r4 8
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
beq_cont.26225 :
beq_cont.26187 :
	addi	%r0 %r1 1
	sub	%r2 %r1 %r3
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	j	iter_setup_dirvec_constants.2905
ble_else.26185 :
	retl
setup_startp_constants.2910 :
	addi	%r0 %r4 0
	bg	%r4 %r3 ble_else.26239 
	slli	%r3 %r4 2
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r5 40
	lw	%r4 %r6 4
	addi	%r0 %r7 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r2 %r8 %r25
	lw.s	%r25 %f0 0
	lw	%r4 %r8 20
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r7 1
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r2 %r8 %r25
	lw.s	%r25 %f0 0
	lw	%r4 %r8 20
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r7 2
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r2 %r8 %r25
	lw.s	%r25 %f0 0
	lw	%r4 %r8 20
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.26240 
	addi	%r0 %r6 3
	lw	%r4 %r4 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r4 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r4 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r4 %r7 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r6 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26241 
beq_else.26240 :
	addi	%r0 %r7 2
	bge	%r7 %r6 bl_else.26242 
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r5 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f0 %f3
	lw	%r4 %r7 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	mul.s	%f1 %f1 %f4
	lw	%r4 %r7 16
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	lw	%r4 %r7 16
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r4 %r7 12
	addi	%r0 %r8 0
	bne	%r7 %r8 beq_else.26244 
	mov.s	%f3 %f0
	j	beq_cont.26245 
beq_else.26244 :
	mul.s	%f2 %f1 %f4
	lw	%r4 %r7 36
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	mul.s	%f0 %f2 %f2
	lw	%r4 %r7 36
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f0 %f0
	lw	%r4 %r4 36
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r4 %r7 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26245 :
	addi	%r0 %r4 3
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.26246 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26247 
beq_else.26246 :
beq_cont.26247 :
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	j	bl_cont.26243 
bl_else.26242 :
bl_cont.26243 :
beq_cont.26241 :
	addi	%r0 %r4 1
	sub	%r3 %r4 %r3
	j	setup_startp_constants.2910
ble_else.26239 :
	retl
check_all_inside.2935 :
	slli	%r2 %r4 2
	add	%r3 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 -1
	bne	%r4 %r5 beq_else.26249 
	addi	%r0 %r1 1
	retl
beq_else.26249 :
	slli	%r4 %r4 2
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r5 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f0 %f3
	lw	%r4 %r5 20
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f1 %f4
	lw	%r4 %r5 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f2 %f5
	lw	%r4 %r5 4
	addi	%r0 %r6 1
	bne	%r5 %r6 beq_else.26250 
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f6 0
	fbge	%f3 %f6 fbl_else.26252 
	neg.s	%f3 %f3
	j	fbl_cont.26253 
fbl_else.26252 :
fbl_cont.26253 :
	lw	%r4 %r5 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	fbge	%f3 %f6 fbl_else.26254 
	addi	%r0 %r5 1
	j	fbl_cont.26255 
fbl_else.26254 :
	addi	%r0 %r5 0
fbl_cont.26255 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26256 
	addi	%r0 %r5 0
	j	beq_cont.26257 
beq_else.26256 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f4 %f3 fbl_else.26258 
	neg.s	%f4 %f3
	j	fbl_cont.26259 
fbl_else.26258 :
	mov.s	%f4 %f3
fbl_cont.26259 :
	lw	%r4 %r5 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.26260 
	addi	%r0 %r5 1
	j	fbl_cont.26261 
fbl_else.26260 :
	addi	%r0 %r5 0
fbl_cont.26261 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26262 
	addi	%r0 %r5 0
	j	beq_cont.26263 
beq_else.26262 :
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f3 0
	fbge	%f5 %f3 fbl_else.26264 
	neg.s	%f5 %f3
	j	fbl_cont.26265 
fbl_else.26264 :
	mov.s	%f5 %f3
fbl_cont.26265 :
	lw	%r4 %r5 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	fbge	%f3 %f4 fbl_else.26266 
	addi	%r0 %r5 1
	j	fbl_cont.26267 
fbl_else.26266 :
	addi	%r0 %r5 0
fbl_cont.26267 :
beq_cont.26263 :
beq_cont.26257 :
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26268 
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26270 
	addi	%r0 %r4 1
	j	beq_cont.26271 
beq_else.26270 :
	addi	%r0 %r4 0
beq_cont.26271 :
	j	beq_cont.26269 
beq_else.26268 :
	lw	%r4 %r4 24
beq_cont.26269 :
	j	beq_cont.26251 
beq_else.26250 :
	addi	%r0 %r6 2
	bne	%r5 %r6 beq_else.26272 
	lw	%r4 %r5 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f3 %f6 %f3
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f4 %f6 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	lw	%r4 %r4 24
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26274 
	addi	%r0 %r5 1
	j	fbl_cont.26275 
fbl_else.26274 :
	addi	%r0 %r5 0
fbl_cont.26275 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.26276 
	mov	%r5 %r4
	j	beq_cont.26277 
beq_else.26276 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.26278 
	addi	%r0 %r4 1
	j	beq_cont.26279 
beq_else.26278 :
	addi	%r0 %r4 0
beq_cont.26279 :
beq_cont.26277 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26280 
	addi	%r0 %r4 1
	j	beq_cont.26281 
beq_else.26280 :
	addi	%r0 %r4 0
beq_cont.26281 :
	j	beq_cont.26273 
beq_else.26272 :
	mul.s	%f3 %f3 %f6
	lw	%r4 %r5 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r4 %r5 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r4 %r5 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r4 %r5 12
	addi	%r0 %r6 0
	bne	%r5 %r6 beq_else.26282 
	mov.s	%f6 %f3
	j	beq_cont.26283 
beq_else.26282 :
	mul.s	%f5 %f4 %f7
	lw	%r4 %r5 36
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r4 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r4 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.26283 :
	lw	%r4 %r5 4
	addi	%r0 %r6 3
	bne	%r5 %r6 beq_else.26284 
	addi	%r0 %r5 l.22308
	ilw.s	%r5 %f4 0
	sub.s	%f4 %f3 %f3
	j	beq_cont.26285 
beq_else.26284 :
beq_cont.26285 :
	lw	%r4 %r4 24
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f4 0
	fbge	%f3 %f4 fbl_else.26286 
	addi	%r0 %r5 1
	j	fbl_cont.26287 
fbl_else.26286 :
	addi	%r0 %r5 0
fbl_cont.26287 :
	addi	%r0 %r6 0
	bne	%r4 %r6 beq_else.26288 
	mov	%r5 %r4
	j	beq_cont.26289 
beq_else.26288 :
	addi	%r0 %r4 0
	bne	%r5 %r4 beq_else.26290 
	addi	%r0 %r4 1
	j	beq_cont.26291 
beq_else.26290 :
	addi	%r0 %r4 0
beq_cont.26291 :
beq_cont.26289 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26292 
	addi	%r0 %r4 1
	j	beq_cont.26293 
beq_else.26292 :
	addi	%r0 %r4 0
beq_cont.26293 :
beq_cont.26273 :
beq_cont.26251 :
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26294 
	addi	%r0 %r4 1
	add	%r2 %r4 %r2
	j	check_all_inside.2935
beq_else.26294 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.2941 :
	slli	%r7 %r9 2
	add	%r8 %r9 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 -1
	bne	%r9 %r10 beq_else.26295 
	addi	%r0 %r1 0
	retl
beq_else.26295 :
	slli	%r7 %r9 2
	add	%r8 %r9 %r25
	lw	%r25 %r9 0
	slli	%r9 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r2 %r11 %r25
	lw.s	%r25 %f0 0
	lw	%r10 %r11 20
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r2 %r11 %r25
	lw.s	%r25 %f1 0
	lw	%r10 %r11 20
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r2 %r11 %r25
	lw.s	%r25 %f2 0
	lw	%r10 %r11 20
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r9 %r11 2
	add	%r1 %r11 %r25
	lw	%r25 %r11 0
	lw	%r10 %r12 4
	addi	%r0 %r13 1
	bne	%r12 %r13 beq_else.26296 
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26298 
	neg.s	%f4 %f4
	j	fbl_cont.26299 
fbl_else.26298 :
fbl_cont.26299 :
	lw	%r10 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26300 
	addi	%r0 %r12 1
	j	fbl_cont.26301 
fbl_else.26300 :
	addi	%r0 %r12 0
fbl_cont.26301 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26302 
	addi	%r0 %r12 0
	j	beq_cont.26303 
beq_else.26302 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26304 
	neg.s	%f4 %f4
	j	fbl_cont.26305 
fbl_else.26304 :
fbl_cont.26305 :
	lw	%r10 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26306 
	addi	%r0 %r12 1
	j	fbl_cont.26307 
fbl_else.26306 :
	addi	%r0 %r12 0
fbl_cont.26307 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26308 
	addi	%r0 %r12 0
	j	beq_cont.26309 
beq_else.26308 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26310 
	addi	%r0 %r12 1
	j	fbeq_cont.26311 
fbeq_else.26310 :
	addi	%r0 %r12 0
fbeq_cont.26311 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26312 
	addi	%r0 %r12 1
	j	beq_cont.26313 
beq_else.26312 :
	addi	%r0 %r12 0
beq_cont.26313 :
beq_cont.26309 :
beq_cont.26303 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26314 
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26316 
	neg.s	%f4 %f4
	j	fbl_cont.26317 
fbl_else.26316 :
fbl_cont.26317 :
	lw	%r10 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26318 
	addi	%r0 %r12 1
	j	fbl_cont.26319 
fbl_else.26318 :
	addi	%r0 %r12 0
fbl_cont.26319 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26320 
	addi	%r0 %r12 0
	j	beq_cont.26321 
beq_else.26320 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26322 
	neg.s	%f4 %f4
	j	fbl_cont.26323 
fbl_else.26322 :
fbl_cont.26323 :
	lw	%r10 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26324 
	addi	%r0 %r12 1
	j	fbl_cont.26325 
fbl_else.26324 :
	addi	%r0 %r12 0
fbl_cont.26325 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26326 
	addi	%r0 %r12 0
	j	beq_cont.26327 
beq_else.26326 :
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26328 
	addi	%r0 %r12 1
	j	fbeq_cont.26329 
fbeq_else.26328 :
	addi	%r0 %r12 0
fbeq_cont.26329 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26330 
	addi	%r0 %r12 1
	j	beq_cont.26331 
beq_else.26330 :
	addi	%r0 %r12 0
beq_cont.26331 :
beq_cont.26327 :
beq_cont.26321 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26332 
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r12 5
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.26334 
	neg.s	%f0 %f0
	j	fbl_cont.26335 
fbl_else.26334 :
fbl_cont.26335 :
	lw	%r10 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26336 
	addi	%r0 %r12 1
	j	fbl_cont.26337 
fbl_else.26336 :
	addi	%r0 %r12 0
fbl_cont.26337 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26338 
	addi	%r0 %r10 0
	j	beq_cont.26339 
beq_else.26338 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f0 %f1 fbl_else.26340 
	neg.s	%f0 %f0
	j	fbl_cont.26341 
fbl_else.26340 :
fbl_cont.26341 :
	lw	%r10 %r10 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26342 
	addi	%r0 %r10 1
	j	fbl_cont.26343 
fbl_else.26342 :
	addi	%r0 %r10 0
fbl_cont.26343 :
	addi	%r0 %r12 0
	bne	%r10 %r12 beq_else.26344 
	addi	%r0 %r10 0
	j	beq_cont.26345 
beq_else.26344 :
	addi	%r0 %r10 5
	slli	%r10 %r10 2
	add	%r11 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f1 0
	fbne	%f0 %f1 fbeq_else.26346 
	addi	%r0 %r10 1
	j	fbeq_cont.26347 
fbeq_else.26346 :
	addi	%r0 %r10 0
fbeq_cont.26347 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26348 
	addi	%r0 %r10 1
	j	beq_cont.26349 
beq_else.26348 :
	addi	%r0 %r10 0
beq_cont.26349 :
beq_cont.26345 :
beq_cont.26339 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26350 
	addi	%r0 %r10 0
	j	beq_cont.26351 
beq_else.26350 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r10 3
beq_cont.26351 :
	j	beq_cont.26333 
beq_else.26332 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 2
beq_cont.26333 :
	j	beq_cont.26315 
beq_else.26314 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 1
beq_cont.26315 :
	j	beq_cont.26297 
beq_else.26296 :
	addi	%r0 %r13 2
	bne	%r12 %r13 beq_else.26352 
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r11 %r10 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f4 0
	fbge	%f3 %f4 fbl_else.26354 
	addi	%r0 %r10 1
	j	fbl_cont.26355 
fbl_else.26354 :
	addi	%r0 %r10 0
fbl_cont.26355 :
	addi	%r0 %r12 0
	bne	%r10 %r12 beq_else.26356 
	addi	%r0 %r10 0
	j	beq_cont.26357 
beq_else.26356 :
	addi	%r0 %r10 0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
beq_cont.26357 :
	j	beq_cont.26353 
beq_else.26352 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26358 
	addi	%r0 %r12 1
	j	fbeq_cont.26359 
fbeq_else.26358 :
	addi	%r0 %r12 0
fbeq_cont.26359 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26360 
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r10 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r10 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r10 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r10 %r12 12
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26362 
	mov.s	%f5 %f0
	j	beq_cont.26363 
beq_else.26362 :
	mul.s	%f2 %f1 %f6
	lw	%r10 %r12 36
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r10 %r12 36
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r10 %r12 36
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26363 :
	lw	%r10 %r12 4
	addi	%r0 %r13 3
	bne	%r12 %r13 beq_else.26364 
	addi	%r0 %r12 l.22308
	ilw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26365 
beq_else.26364 :
beq_cont.26365 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f1 %f0 fbl_else.26366 
	addi	%r0 %r12 1
	j	fbl_cont.26367 
fbl_else.26366 :
	addi	%r0 %r12 0
fbl_cont.26367 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26368 
	addi	%r0 %r10 0
	j	beq_cont.26369 
beq_else.26368 :
	lw	%r10 %r10 24
	addi	%r0 %r12 0
	bne	%r10 %r12 beq_else.26370 
	addi	%r0 %r10 0
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26371 
beq_else.26370 :
	addi	%r0 %r10 0
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r10 %r10 2
	add	%r5 %r10 %r25
	sw.s	%r25 %f0 0
beq_cont.26371 :
	addi	%r0 %r10 1
beq_cont.26369 :
	j	beq_cont.26361 
beq_else.26360 :
	addi	%r0 %r10 0
beq_cont.26361 :
beq_cont.26353 :
beq_cont.26297 :
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r5 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	beq	%r10 %r11 bne_else.26372 
	addi	%r0 %r10 l.22732
	ilw.s	%r10 %f1 0
	fbge	%f0 %f1 fbl_else.26374 
	addi	%r0 %r10 1
	j	fbl_cont.26375 
fbl_else.26374 :
	addi	%r0 %r10 0
fbl_cont.26375 :
	j	bne_cont.26373 
bne_else.26372 :
	addi	%r0 %r10 0
bne_cont.26373 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26376 
	slli	%r9 %r9 2
	add	%r4 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r9 24
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.26377 
	addi	%r0 %r1 0
	retl
beq_else.26377 :
	addi	%r0 %r9 1
	add	%r7 %r9 %r7
	j	shadow_check_and_group.2941
beq_else.26376 :
	addi	%r0 %r9 l.22734
	ilw.s	%r9 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r2 %r9 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r2 %r9 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r3 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r2 %r9 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f0 %f0
	addi	%r0 %r9 0
	sw	%r26 %r8 0
	sw	%r26 %r6 4
	sw	%r26 %r5 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	sw	%r26 %r2 20
	sw	%r26 %r1 24
	sw	%r26 %r7 28
	mov	%r8 %r3
	mov	%r9 %r2
	mov	%r4 %r1
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	check_all_inside.2935 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26378 
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r7
	lw	%r26 %r1 24
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r6 4
	lw	%r26 %r8 0
	j	shadow_check_and_group.2941
beq_else.26378 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2944 :
	lw	%r24 %r6 28
	lw	%r24 %r5 24
	lw	%r24 %r4 20
	lw	%r24 %r3 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	slli	%r1 %r10 2
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.26379 
	addi	%r0 %r1 0
	retl
beq_else.26379 :
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r1 8
	mov	%r7 %r2
	mov	%r8 %r1
	mov	%r9 %r8
	mov	%r10 %r7
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	shadow_check_and_group.2941 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26380 
	addi	%r0 %r1 1
	lw	%r26 %r2 8
	add	%r2 %r1 %r1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
beq_else.26380 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2947 :
	lw	%r24 %r8 4
	slli	%r6 %r9 2
	add	%r7 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.26381 
	addi	%r0 %r1 0
	retl
beq_else.26381 :
	addi	%r0 %r11 99
	sw	%r26 %r9 0
	sw	%r26 %r8 4
	sw	%r26 %r7 8
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	sw	%r26 %r3 20
	sw	%r26 %r2 24
	sw	%r26 %r1 28
	sw	%r26 %r24 32
	sw	%r26 %r6 36
	bne	%r10 %r11 beq_else.26382 
	addi	%r0 %r1 1
	j	beq_cont.26383 
beq_else.26382 :
	slli	%r10 %r11 2
	add	%r3 %r11 %r25
	lw	%r25 %r11 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r2 %r12 %r25
	lw.s	%r25 %f0 0
	lw	%r11 %r12 20
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r2 %r12 %r25
	lw.s	%r25 %f1 0
	lw	%r11 %r12 20
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r2 %r12 %r25
	lw.s	%r25 %f2 0
	lw	%r11 %r12 20
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	slli	%r10 %r10 2
	add	%r1 %r10 %r25
	lw	%r25 %r10 0
	lw	%r11 %r12 4
	addi	%r0 %r13 1
	bne	%r12 %r13 beq_else.26384 
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26386 
	neg.s	%f4 %f4
	j	fbl_cont.26387 
fbl_else.26386 :
fbl_cont.26387 :
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26388 
	addi	%r0 %r12 1
	j	fbl_cont.26389 
fbl_else.26388 :
	addi	%r0 %r12 0
fbl_cont.26389 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26390 
	addi	%r0 %r12 0
	j	beq_cont.26391 
beq_else.26390 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26392 
	neg.s	%f4 %f4
	j	fbl_cont.26393 
fbl_else.26392 :
fbl_cont.26393 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26394 
	addi	%r0 %r12 1
	j	fbl_cont.26395 
fbl_else.26394 :
	addi	%r0 %r12 0
fbl_cont.26395 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26396 
	addi	%r0 %r12 0
	j	beq_cont.26397 
beq_else.26396 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26398 
	addi	%r0 %r12 1
	j	fbeq_cont.26399 
fbeq_else.26398 :
	addi	%r0 %r12 0
fbeq_cont.26399 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26400 
	addi	%r0 %r12 1
	j	beq_cont.26401 
beq_else.26400 :
	addi	%r0 %r12 0
beq_cont.26401 :
beq_cont.26397 :
beq_cont.26391 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26402 
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26404 
	neg.s	%f4 %f4
	j	fbl_cont.26405 
fbl_else.26404 :
fbl_cont.26405 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26406 
	addi	%r0 %r12 1
	j	fbl_cont.26407 
fbl_else.26406 :
	addi	%r0 %r12 0
fbl_cont.26407 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26408 
	addi	%r0 %r12 0
	j	beq_cont.26409 
beq_else.26408 :
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26410 
	neg.s	%f4 %f4
	j	fbl_cont.26411 
fbl_else.26410 :
fbl_cont.26411 :
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26412 
	addi	%r0 %r12 1
	j	fbl_cont.26413 
fbl_else.26412 :
	addi	%r0 %r12 0
fbl_cont.26413 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26414 
	addi	%r0 %r12 0
	j	beq_cont.26415 
beq_else.26414 :
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbne	%f4 %f5 fbeq_else.26416 
	addi	%r0 %r12 1
	j	fbeq_cont.26417 
fbeq_else.26416 :
	addi	%r0 %r12 0
fbeq_cont.26417 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26418 
	addi	%r0 %r12 1
	j	beq_cont.26419 
beq_else.26418 :
	addi	%r0 %r12 0
beq_cont.26419 :
beq_cont.26415 :
beq_cont.26409 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26420 
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r12 5
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.26422 
	neg.s	%f0 %f0
	j	fbl_cont.26423 
fbl_else.26422 :
fbl_cont.26423 :
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26424 
	addi	%r0 %r12 1
	j	fbl_cont.26425 
fbl_else.26424 :
	addi	%r0 %r12 0
fbl_cont.26425 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26426 
	addi	%r0 %r10 0
	j	beq_cont.26427 
beq_else.26426 :
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f0 %f1 fbl_else.26428 
	neg.s	%f0 %f0
	j	fbl_cont.26429 
fbl_else.26428 :
fbl_cont.26429 :
	lw	%r11 %r11 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26430 
	addi	%r0 %r11 1
	j	fbl_cont.26431 
fbl_else.26430 :
	addi	%r0 %r11 0
fbl_cont.26431 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26432 
	addi	%r0 %r10 0
	j	beq_cont.26433 
beq_else.26432 :
	addi	%r0 %r11 5
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f1 0
	fbne	%f0 %f1 fbeq_else.26434 
	addi	%r0 %r10 1
	j	fbeq_cont.26435 
fbeq_else.26434 :
	addi	%r0 %r10 0
fbeq_cont.26435 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26436 
	addi	%r0 %r10 1
	j	beq_cont.26437 
beq_else.26436 :
	addi	%r0 %r10 0
beq_cont.26437 :
beq_cont.26433 :
beq_cont.26427 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26438 
	addi	%r0 %r10 0
	j	beq_cont.26439 
beq_else.26438 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r10 3
beq_cont.26439 :
	j	beq_cont.26421 
beq_else.26420 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 2
beq_cont.26421 :
	j	beq_cont.26403 
beq_else.26402 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 1
beq_cont.26403 :
	j	beq_cont.26385 
beq_else.26384 :
	addi	%r0 %r13 2
	bne	%r12 %r13 beq_else.26440 
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f4 0
	fbge	%f3 %f4 fbl_else.26442 
	addi	%r0 %r11 1
	j	fbl_cont.26443 
fbl_else.26442 :
	addi	%r0 %r11 0
fbl_cont.26443 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26444 
	addi	%r0 %r10 0
	j	beq_cont.26445 
beq_else.26444 :
	addi	%r0 %r11 0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f0 %f3 %f0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
beq_cont.26445 :
	j	beq_cont.26441 
beq_else.26440 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26446 
	addi	%r0 %r12 1
	j	fbeq_cont.26447 
fbeq_else.26446 :
	addi	%r0 %r12 0
fbeq_cont.26447 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26448 
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f4
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r12 3
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f2 %f5 %f5
	add.s	%f5 %f4 %f4
	mul.s	%f0 %f0 %f5
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r11 %r12 12
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26450 
	mov.s	%f5 %f0
	j	beq_cont.26451 
beq_else.26450 :
	mul.s	%f2 %f1 %f6
	lw	%r11 %r12 36
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r11 %r12 36
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r11 %r12 36
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26451 :
	lw	%r11 %r12 4
	addi	%r0 %r13 3
	bne	%r12 %r13 beq_else.26452 
	addi	%r0 %r12 l.22308
	ilw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26453 
beq_else.26452 :
beq_cont.26453 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f1 %f0 fbl_else.26454 
	addi	%r0 %r12 1
	j	fbl_cont.26455 
fbl_else.26454 :
	addi	%r0 %r12 0
fbl_cont.26455 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26456 
	addi	%r0 %r10 0
	j	beq_cont.26457 
beq_else.26456 :
	lw	%r11 %r11 24
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26458 
	addi	%r0 %r11 0
	sqrt.s	%f0 %f0
	sub.s	%f0 %f4 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26459 
beq_else.26458 :
	addi	%r0 %r11 0
	sqrt.s	%f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r4 %r10 %r25
	sw.s	%r25 %f0 0
beq_cont.26459 :
	addi	%r0 %r10 1
beq_cont.26457 :
	j	beq_cont.26449 
beq_else.26448 :
	addi	%r0 %r10 0
beq_cont.26449 :
beq_cont.26441 :
beq_cont.26385 :
	addi	%r0 %r11 0
	beq	%r10 %r11 bne_else.26460 
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 l.22812
	ilw.s	%r10 %f1 0
	fbge	%f0 %f1 fbl_else.26462 
	addi	%r0 %r10 1
	j	fbl_cont.26463 
fbl_else.26462 :
	addi	%r0 %r10 0
fbl_cont.26463 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26464 
	addi	%r0 %r1 0
	j	beq_cont.26465 
beq_else.26464 :
	addi	%r0 %r10 1
	mov	%r9 %r2
	mov	%r10 %r1
	mov	%r8 %r24
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26466 
	addi	%r0 %r1 0
	j	beq_cont.26467 
beq_else.26466 :
	addi	%r0 %r1 1
beq_cont.26467 :
beq_cont.26465 :
	j	bne_cont.26461 
bne_else.26460 :
	addi	%r0 %r1 0
bne_cont.26461 :
beq_cont.26383 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26468 
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	add	%r2 %r1 %r6
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r3 20
	lw	%r26 %r4 16
	lw	%r26 %r5 12
	lw	%r26 %r7 8
	lw	%r26 %r24 32
	lw	%r24 %r23 0
	jr	%r23
beq_else.26468 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26469 
	addi	%r0 %r1 1
	lw	%r26 %r2 36
	add	%r2 %r1 %r6
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r3 20
	lw	%r26 %r4 16
	lw	%r26 %r5 12
	lw	%r26 %r7 8
	lw	%r26 %r24 32
	lw	%r24 %r23 0
	jr	%r23
beq_else.26469 :
	addi	%r0 %r1 1
	retl
solve_each_element.2950 :
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
	addi	%r0 %r12 -1
	bne	%r11 %r12 beq_else.26470 
	retl
beq_else.26470 :
	slli	%r11 %r12 2
	add	%r7 %r12 %r25
	lw	%r25 %r12 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r5 %r13 %r25
	lw.s	%r25 %f0 0
	lw	%r12 %r13 20
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r5 %r13 %r25
	lw.s	%r25 %f1 0
	lw	%r12 %r13 20
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r5 %r13 %r25
	lw.s	%r25 %f2 0
	lw	%r12 %r13 20
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r12 %r13 4
	addi	%r0 %r14 1
	bne	%r13 %r14 beq_else.26472 
	addi	%r0 %r13 0
	addi	%r0 %r14 1
	addi	%r0 %r15 2
	slli	%r13 %r16 2
	add	%r3 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f4 0
	fbne	%f3 %f4 fbeq_else.26474 
	addi	%r0 %r16 1
	j	fbeq_cont.26475 
fbeq_else.26474 :
	addi	%r0 %r16 0
fbeq_cont.26475 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26476 
	lw	%r12 %r16 16
	lw	%r12 %r17 24
	slli	%r13 %r18 2
	add	%r3 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 l.22306
	ilw.s	%r18 %f4 0
	fbge	%f3 %f4 fbl_else.26478 
	addi	%r0 %r18 1
	j	fbl_cont.26479 
fbl_else.26478 :
	addi	%r0 %r18 0
fbl_cont.26479 :
	addi	%r0 %r19 0
	bne	%r17 %r19 beq_else.26480 
	mov	%r18 %r17
	j	beq_cont.26481 
beq_else.26480 :
	addi	%r0 %r17 0
	bne	%r18 %r17 beq_else.26482 
	addi	%r0 %r17 1
	j	beq_cont.26483 
beq_else.26482 :
	addi	%r0 %r17 0
beq_cont.26483 :
beq_cont.26481 :
	slli	%r13 %r18 2
	add	%r16 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26484 
	neg.s	%f3 %f3
	j	beq_cont.26485 
beq_else.26484 :
beq_cont.26485 :
	sub.s	%f0 %f3 %f3
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r14 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26486 
	neg.s	%f4 %f4
	j	fbl_cont.26487 
fbl_else.26486 :
fbl_cont.26487 :
	slli	%r14 %r13 2
	add	%r16 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26488 
	addi	%r0 %r13 1
	j	fbl_cont.26489 
fbl_else.26488 :
	addi	%r0 %r13 0
fbl_cont.26489 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26490 
	addi	%r0 %r13 0
	j	beq_cont.26491 
beq_else.26490 :
	slli	%r15 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26492 
	neg.s	%f4 %f4
	j	fbl_cont.26493 
fbl_else.26492 :
fbl_cont.26493 :
	slli	%r15 %r13 2
	add	%r16 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26494 
	addi	%r0 %r13 1
	j	fbl_cont.26495 
fbl_else.26494 :
	addi	%r0 %r13 0
fbl_cont.26495 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26496 
	addi	%r0 %r13 0
	j	beq_cont.26497 
beq_else.26496 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r13 1
beq_cont.26497 :
beq_cont.26491 :
	j	beq_cont.26477 
beq_else.26476 :
	addi	%r0 %r13 0
beq_cont.26477 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26498 
	addi	%r0 %r13 1
	addi	%r0 %r14 2
	addi	%r0 %r15 0
	slli	%r13 %r16 2
	add	%r3 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f4 0
	fbne	%f3 %f4 fbeq_else.26500 
	addi	%r0 %r16 1
	j	fbeq_cont.26501 
fbeq_else.26500 :
	addi	%r0 %r16 0
fbeq_cont.26501 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26502 
	lw	%r12 %r16 16
	lw	%r12 %r17 24
	slli	%r13 %r18 2
	add	%r3 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 l.22306
	ilw.s	%r18 %f4 0
	fbge	%f3 %f4 fbl_else.26504 
	addi	%r0 %r18 1
	j	fbl_cont.26505 
fbl_else.26504 :
	addi	%r0 %r18 0
fbl_cont.26505 :
	addi	%r0 %r19 0
	bne	%r17 %r19 beq_else.26506 
	mov	%r18 %r17
	j	beq_cont.26507 
beq_else.26506 :
	addi	%r0 %r17 0
	bne	%r18 %r17 beq_else.26508 
	addi	%r0 %r17 1
	j	beq_cont.26509 
beq_else.26508 :
	addi	%r0 %r17 0
beq_cont.26509 :
beq_cont.26507 :
	slli	%r13 %r18 2
	add	%r16 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r18 0
	bne	%r17 %r18 beq_else.26510 
	neg.s	%f3 %f3
	j	beq_cont.26511 
beq_else.26510 :
beq_cont.26511 :
	sub.s	%f1 %f3 %f3
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r14 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26512 
	neg.s	%f4 %f4
	j	fbl_cont.26513 
fbl_else.26512 :
fbl_cont.26513 :
	slli	%r14 %r13 2
	add	%r16 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26514 
	addi	%r0 %r13 1
	j	fbl_cont.26515 
fbl_else.26514 :
	addi	%r0 %r13 0
fbl_cont.26515 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26516 
	addi	%r0 %r13 0
	j	beq_cont.26517 
beq_else.26516 :
	slli	%r15 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26518 
	neg.s	%f4 %f4
	j	fbl_cont.26519 
fbl_else.26518 :
fbl_cont.26519 :
	slli	%r15 %r13 2
	add	%r16 %r13 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26520 
	addi	%r0 %r13 1
	j	fbl_cont.26521 
fbl_else.26520 :
	addi	%r0 %r13 0
fbl_cont.26521 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26522 
	addi	%r0 %r13 0
	j	beq_cont.26523 
beq_else.26522 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r13 1
beq_cont.26523 :
beq_cont.26517 :
	j	beq_cont.26503 
beq_else.26502 :
	addi	%r0 %r13 0
beq_cont.26503 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26524 
	addi	%r0 %r13 2
	addi	%r0 %r14 0
	addi	%r0 %r15 1
	slli	%r13 %r16 2
	add	%r3 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f4 0
	fbne	%f3 %f4 fbeq_else.26526 
	addi	%r0 %r16 1
	j	fbeq_cont.26527 
fbeq_else.26526 :
	addi	%r0 %r16 0
fbeq_cont.26527 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26528 
	lw	%r12 %r16 16
	lw	%r12 %r12 24
	slli	%r13 %r17 2
	add	%r3 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbge	%f3 %f4 fbl_else.26530 
	addi	%r0 %r17 1
	j	fbl_cont.26531 
fbl_else.26530 :
	addi	%r0 %r17 0
fbl_cont.26531 :
	addi	%r0 %r18 0
	bne	%r12 %r18 beq_else.26532 
	mov	%r17 %r12
	j	beq_cont.26533 
beq_else.26532 :
	addi	%r0 %r12 0
	bne	%r17 %r12 beq_else.26534 
	addi	%r0 %r12 1
	j	beq_cont.26535 
beq_else.26534 :
	addi	%r0 %r12 0
beq_cont.26535 :
beq_cont.26533 :
	slli	%r13 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 0
	bne	%r12 %r17 beq_else.26536 
	neg.s	%f3 %f3
	j	beq_cont.26537 
beq_else.26536 :
beq_cont.26537 :
	sub.s	%f2 %f3 %f2
	slli	%r13 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r14 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f3 0
	fbge	%f0 %f3 fbl_else.26538 
	neg.s	%f0 %f0
	j	fbl_cont.26539 
fbl_else.26538 :
fbl_cont.26539 :
	slli	%r14 %r12 2
	add	%r16 %r12 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26540 
	addi	%r0 %r12 1
	j	fbl_cont.26541 
fbl_else.26540 :
	addi	%r0 %r12 0
fbl_cont.26541 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26542 
	addi	%r0 %r12 0
	j	beq_cont.26543 
beq_else.26542 :
	slli	%r15 %r12 2
	add	%r3 %r12 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f0 %f1 fbl_else.26544 
	neg.s	%f0 %f0
	j	fbl_cont.26545 
fbl_else.26544 :
fbl_cont.26545 :
	slli	%r15 %r12 2
	add	%r16 %r12 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26546 
	addi	%r0 %r12 1
	j	fbl_cont.26547 
fbl_else.26546 :
	addi	%r0 %r12 0
fbl_cont.26547 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26548 
	addi	%r0 %r12 0
	j	beq_cont.26549 
beq_else.26548 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r12 1
beq_cont.26549 :
beq_cont.26543 :
	j	beq_cont.26529 
beq_else.26528 :
	addi	%r0 %r12 0
beq_cont.26529 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26550 
	addi	%r0 %r12 0
	j	beq_cont.26551 
beq_else.26550 :
	addi	%r0 %r12 3
beq_cont.26551 :
	j	beq_cont.26525 
beq_else.26524 :
	addi	%r0 %r12 2
beq_cont.26525 :
	j	beq_cont.26499 
beq_else.26498 :
	addi	%r0 %r12 1
beq_cont.26499 :
	j	beq_cont.26473 
beq_else.26472 :
	addi	%r0 %r14 2
	bne	%r13 %r14 beq_else.26552 
	lw	%r12 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f4 0
	fbge	%f4 %f3 fbl_else.26554 
	addi	%r0 %r13 1
	j	fbl_cont.26555 
fbl_else.26554 :
	addi	%r0 %r13 0
fbl_cont.26555 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26556 
	addi	%r0 %r12 0
	j	beq_cont.26557 
beq_else.26556 :
	addi	%r0 %r13 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r12 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r12 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r12 %r14 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r13 %r12 2
	add	%r6 %r12 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r12 1
beq_cont.26557 :
	j	beq_cont.26553 
beq_else.26552 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r12 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r12 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r12 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r12 %r13 12
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26558 
	mov.s	%f6 %f3
	j	beq_cont.26559 
beq_else.26558 :
	mul.s	%f5 %f4 %f7
	lw	%r12 %r13 36
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r12 %r13 36
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r12 %r13 36
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.26559 :
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f4 0
	fbne	%f3 %f4 fbeq_else.26560 
	addi	%r0 %r13 1
	j	fbeq_cont.26561 
fbeq_else.26560 :
	addi	%r0 %r13 0
fbeq_cont.26561 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26562 
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f5 0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r3 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r12 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r12 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r12 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r12 %r13 12
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26564 
	mov.s	%f7 %f4
	j	beq_cont.26565 
beq_else.26564 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r12 %r13 36
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r12 %r13 36
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r12 %r13 36
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r13 l.22504
	ilw.s	%r13 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.26565 :
	mul.s	%f0 %f0 %f5
	lw	%r12 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r12 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r12 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r12 %r13 12
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26566 
	mov.s	%f5 %f0
	j	beq_cont.26567 
beq_else.26566 :
	mul.s	%f2 %f1 %f6
	lw	%r12 %r13 36
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r12 %r13 36
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r12 %r13 36
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26567 :
	lw	%r12 %r13 4
	addi	%r0 %r14 3
	bne	%r13 %r14 beq_else.26568 
	addi	%r0 %r13 l.22308
	ilw.s	%r13 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26569 
beq_else.26568 :
beq_cont.26569 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f1 0
	fbge	%f1 %f0 fbl_else.26570 
	addi	%r0 %r13 1
	j	fbl_cont.26571 
fbl_else.26570 :
	addi	%r0 %r13 0
fbl_cont.26571 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26572 
	addi	%r0 %r12 0
	j	beq_cont.26573 
beq_else.26572 :
	sqrt.s	%f0 %f0
	lw	%r12 %r12 24
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26574 
	neg.s	%f0 %f0
	j	beq_cont.26575 
beq_else.26574 :
beq_cont.26575 :
	addi	%r0 %r12 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r12 %r12 2
	add	%r6 %r12 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r12 1
beq_cont.26573 :
	j	beq_cont.26563 
beq_else.26562 :
	addi	%r0 %r12 0
beq_cont.26563 :
beq_cont.26553 :
beq_cont.26473 :
	addi	%r0 %r13 0
	beq	%r12 %r13 bne_else.26576 
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.26577 
	addi	%r0 %r6 1
	j	fbl_cont.26578 
fbl_else.26577 :
	addi	%r0 %r6 0
fbl_cont.26578 :
	addi	%r0 %r13 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r13 beq_else.26579 
	j	beq_cont.26580 
beq_else.26579 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26581 
	addi	%r0 %r6 1
	j	fbl_cont.26582 
fbl_else.26581 :
	addi	%r0 %r6 0
fbl_cont.26582 :
	addi	%r0 %r13 0
	bne	%r6 %r13 beq_else.26583 
	j	beq_cont.26584 
beq_else.26583 :
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
	sw	%r26 %r12 20
	sw	%r26 %r10 24
	sw	%r26 %r11 28
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw	%r26 %r9 48
	sw.s	%r26 %f1 56
	sw	%r26 %r4 64
	sw.s	%r26 %f0 72
	mov	%r2 %r3
	mov	%r7 %r1
	mov	%r5 %r2
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	check_all_inside.2935 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26587 
	j	beq_cont.26588 
beq_else.26587 :
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
beq_cont.26588 :
beq_cont.26584 :
beq_cont.26580 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26576 :
	slli	%r11 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26589 
	retl
beq_else.26589 :
	addi	%r0 %r4 1
	add	%r1 %r4 %r1
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.2954 :
	lw	%r24 %r5 4
	slli	%r2 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.26591 
	slli	%r6 %r6 2
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 0
	sw	%r26 %r4 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r2 16
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r7 %r1
	mov	%r5 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r2
	lw	%r26 %r1 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
bne_else.26591 :
	retl
trace_or_matrix.2958 :
	lw	%r24 %r9 4
	slli	%r6 %r10 2
	add	%r7 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r11 0
	addi	%r0 %r12 -1
	bne	%r11 %r12 beq_else.26593 
	retl
beq_else.26593 :
	addi	%r0 %r12 99
	sw	%r26 %r8 0
	sw	%r26 %r7 4
	sw	%r26 %r5 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	sw	%r26 %r2 20
	sw	%r26 %r1 24
	sw	%r26 %r24 28
	sw	%r26 %r6 32
	bne	%r11 %r12 beq_else.26595 
	addi	%r0 %r11 1
	mov	%r8 %r4
	mov	%r10 %r3
	mov	%r11 %r2
	mov	%r9 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	beq_cont.26596 
beq_else.26595 :
	slli	%r11 %r11 2
	add	%r2 %r11 %r25
	lw	%r25 %r11 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw.s	%r25 %f0 0
	lw	%r11 %r12 20
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw.s	%r25 %f1 0
	lw	%r11 %r12 20
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r4 %r12 %r25
	lw.s	%r25 %f2 0
	lw	%r11 %r12 20
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r11 %r12 4
	addi	%r0 %r13 1
	bne	%r12 %r13 beq_else.26597 
	addi	%r0 %r12 0
	addi	%r0 %r13 1
	addi	%r0 %r14 2
	slli	%r12 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r15 l.22306
	ilw.s	%r15 %f4 0
	fbne	%f3 %f4 fbeq_else.26599 
	addi	%r0 %r15 1
	j	fbeq_cont.26600 
fbeq_else.26599 :
	addi	%r0 %r15 0
fbeq_cont.26600 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.26601 
	lw	%r11 %r15 16
	lw	%r11 %r16 24
	slli	%r12 %r17 2
	add	%r8 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbge	%f3 %f4 fbl_else.26603 
	addi	%r0 %r17 1
	j	fbl_cont.26604 
fbl_else.26603 :
	addi	%r0 %r17 0
fbl_cont.26604 :
	addi	%r0 %r18 0
	bne	%r16 %r18 beq_else.26605 
	mov	%r17 %r16
	j	beq_cont.26606 
beq_else.26605 :
	addi	%r0 %r16 0
	bne	%r17 %r16 beq_else.26607 
	addi	%r0 %r16 1
	j	beq_cont.26608 
beq_else.26607 :
	addi	%r0 %r16 0
beq_cont.26608 :
beq_cont.26606 :
	slli	%r12 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26609 
	neg.s	%f3 %f3
	j	beq_cont.26610 
beq_else.26609 :
beq_cont.26610 :
	sub.s	%f0 %f3 %f3
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r13 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26611 
	neg.s	%f4 %f4
	j	fbl_cont.26612 
fbl_else.26611 :
fbl_cont.26612 :
	slli	%r13 %r12 2
	add	%r15 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26613 
	addi	%r0 %r12 1
	j	fbl_cont.26614 
fbl_else.26613 :
	addi	%r0 %r12 0
fbl_cont.26614 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26615 
	addi	%r0 %r12 0
	j	beq_cont.26616 
beq_else.26615 :
	slli	%r14 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26617 
	neg.s	%f4 %f4
	j	fbl_cont.26618 
fbl_else.26617 :
fbl_cont.26618 :
	slli	%r14 %r12 2
	add	%r15 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26619 
	addi	%r0 %r12 1
	j	fbl_cont.26620 
fbl_else.26619 :
	addi	%r0 %r12 0
fbl_cont.26620 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26621 
	addi	%r0 %r12 0
	j	beq_cont.26622 
beq_else.26621 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r12 1
beq_cont.26622 :
beq_cont.26616 :
	j	beq_cont.26602 
beq_else.26601 :
	addi	%r0 %r12 0
beq_cont.26602 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26623 
	addi	%r0 %r12 1
	addi	%r0 %r13 2
	addi	%r0 %r14 0
	slli	%r12 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r15 l.22306
	ilw.s	%r15 %f4 0
	fbne	%f3 %f4 fbeq_else.26625 
	addi	%r0 %r15 1
	j	fbeq_cont.26626 
fbeq_else.26625 :
	addi	%r0 %r15 0
fbeq_cont.26626 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.26627 
	lw	%r11 %r15 16
	lw	%r11 %r16 24
	slli	%r12 %r17 2
	add	%r8 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 l.22306
	ilw.s	%r17 %f4 0
	fbge	%f3 %f4 fbl_else.26629 
	addi	%r0 %r17 1
	j	fbl_cont.26630 
fbl_else.26629 :
	addi	%r0 %r17 0
fbl_cont.26630 :
	addi	%r0 %r18 0
	bne	%r16 %r18 beq_else.26631 
	mov	%r17 %r16
	j	beq_cont.26632 
beq_else.26631 :
	addi	%r0 %r16 0
	bne	%r17 %r16 beq_else.26633 
	addi	%r0 %r16 1
	j	beq_cont.26634 
beq_else.26633 :
	addi	%r0 %r16 0
beq_cont.26634 :
beq_cont.26632 :
	slli	%r12 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26635 
	neg.s	%f3 %f3
	j	beq_cont.26636 
beq_else.26635 :
beq_cont.26636 :
	sub.s	%f1 %f3 %f3
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	div.s	%f4 %f3 %f3
	slli	%r13 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26637 
	neg.s	%f4 %f4
	j	fbl_cont.26638 
fbl_else.26637 :
fbl_cont.26638 :
	slli	%r13 %r12 2
	add	%r15 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26639 
	addi	%r0 %r12 1
	j	fbl_cont.26640 
fbl_else.26639 :
	addi	%r0 %r12 0
fbl_cont.26640 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26641 
	addi	%r0 %r12 0
	j	beq_cont.26642 
beq_else.26641 :
	slli	%r14 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f5 0
	fbge	%f4 %f5 fbl_else.26643 
	neg.s	%f4 %f4
	j	fbl_cont.26644 
fbl_else.26643 :
fbl_cont.26644 :
	slli	%r14 %r12 2
	add	%r15 %r12 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26645 
	addi	%r0 %r12 1
	j	fbl_cont.26646 
fbl_else.26645 :
	addi	%r0 %r12 0
fbl_cont.26646 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26647 
	addi	%r0 %r12 0
	j	beq_cont.26648 
beq_else.26647 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r12 1
beq_cont.26648 :
beq_cont.26642 :
	j	beq_cont.26628 
beq_else.26627 :
	addi	%r0 %r12 0
beq_cont.26628 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26649 
	addi	%r0 %r12 2
	addi	%r0 %r13 0
	addi	%r0 %r14 1
	slli	%r12 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r15 l.22306
	ilw.s	%r15 %f4 0
	fbne	%f3 %f4 fbeq_else.26651 
	addi	%r0 %r15 1
	j	fbeq_cont.26652 
fbeq_else.26651 :
	addi	%r0 %r15 0
fbeq_cont.26652 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.26653 
	lw	%r11 %r15 16
	lw	%r11 %r11 24
	slli	%r12 %r16 2
	add	%r8 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f4 0
	fbge	%f3 %f4 fbl_else.26655 
	addi	%r0 %r16 1
	j	fbl_cont.26656 
fbl_else.26655 :
	addi	%r0 %r16 0
fbl_cont.26656 :
	addi	%r0 %r17 0
	bne	%r11 %r17 beq_else.26657 
	mov	%r16 %r11
	j	beq_cont.26658 
beq_else.26657 :
	addi	%r0 %r11 0
	bne	%r16 %r11 beq_else.26659 
	addi	%r0 %r11 1
	j	beq_cont.26660 
beq_else.26659 :
	addi	%r0 %r11 0
beq_cont.26660 :
beq_cont.26658 :
	slli	%r12 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 0
	bne	%r11 %r16 beq_else.26661 
	neg.s	%f3 %f3
	j	beq_cont.26662 
beq_else.26661 :
beq_cont.26662 :
	sub.s	%f2 %f3 %f2
	slli	%r12 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r13 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f3 0
	fbge	%f0 %f3 fbl_else.26663 
	neg.s	%f0 %f0
	j	fbl_cont.26664 
fbl_else.26663 :
fbl_cont.26664 :
	slli	%r13 %r11 2
	add	%r15 %r11 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26665 
	addi	%r0 %r11 1
	j	fbl_cont.26666 
fbl_else.26665 :
	addi	%r0 %r11 0
fbl_cont.26666 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26667 
	addi	%r0 %r11 0
	j	beq_cont.26668 
beq_else.26667 :
	slli	%r14 %r11 2
	add	%r8 %r11 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f1 0
	fbge	%f0 %f1 fbl_else.26669 
	neg.s	%f0 %f0
	j	fbl_cont.26670 
fbl_else.26669 :
fbl_cont.26670 :
	slli	%r14 %r11 2
	add	%r15 %r11 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26671 
	addi	%r0 %r11 1
	j	fbl_cont.26672 
fbl_else.26671 :
	addi	%r0 %r11 0
fbl_cont.26672 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26673 
	addi	%r0 %r11 0
	j	beq_cont.26674 
beq_else.26673 :
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r11 1
beq_cont.26674 :
beq_cont.26668 :
	j	beq_cont.26654 
beq_else.26653 :
	addi	%r0 %r11 0
beq_cont.26654 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26675 
	addi	%r0 %r11 0
	j	beq_cont.26676 
beq_else.26675 :
	addi	%r0 %r11 3
beq_cont.26676 :
	j	beq_cont.26650 
beq_else.26649 :
	addi	%r0 %r11 2
beq_cont.26650 :
	j	beq_cont.26624 
beq_else.26623 :
	addi	%r0 %r11 1
beq_cont.26624 :
	j	beq_cont.26598 
beq_else.26597 :
	addi	%r0 %r13 2
	bne	%r12 %r13 beq_else.26677 
	lw	%r11 %r11 16
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbge	%f4 %f3 fbl_else.26679 
	addi	%r0 %r12 1
	j	fbl_cont.26680 
fbl_else.26679 :
	addi	%r0 %r12 0
fbl_cont.26680 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26681 
	addi	%r0 %r11 0
	j	beq_cont.26682 
beq_else.26681 :
	addi	%r0 %r12 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r12 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 1
beq_cont.26682 :
	j	beq_cont.26678 
beq_else.26677 :
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f5 0
	mul.s	%f3 %f3 %f6
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	mul.s	%f4 %f4 %f7
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f5 %f5 %f7
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	lw	%r11 %r12 12
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26683 
	mov.s	%f6 %f3
	j	beq_cont.26684 
beq_else.26683 :
	mul.s	%f5 %f4 %f7
	lw	%r11 %r12 36
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f6 %f6
	mul.s	%f3 %f5 %f5
	lw	%r11 %r12 36
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f6 %f5
	mul.s	%f4 %f3 %f3
	lw	%r11 %r12 36
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f5 %f3
beq_cont.26684 :
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f4 0
	fbne	%f3 %f4 fbeq_else.26685 
	addi	%r0 %r12 1
	j	fbeq_cont.26686 
fbeq_else.26685 :
	addi	%r0 %r12 0
fbeq_cont.26686 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26687 
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f5 0
	addi	%r0 %r12 2
	slli	%r12 %r12 2
	add	%r8 %r12 %r25
	lw.s	%r25 %f6 0
	mul.s	%f0 %f4 %f7
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f7 %f7
	mul.s	%f1 %f5 %f8
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	mul.s	%f2 %f6 %f8
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f7 %f7
	lw	%r11 %r12 12
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26689 
	mov.s	%f7 %f4
	j	beq_cont.26690 
beq_else.26689 :
	mul.s	%f1 %f6 %f8
	mul.s	%f2 %f5 %f9
	add.s	%f9 %f8 %f8
	lw	%r11 %r12 36
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f8 %f8
	mul.s	%f2 %f4 %f9
	mul.s	%f0 %f6 %f6
	add.s	%f6 %f9 %f6
	lw	%r11 %r12 36
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f6 %f6
	add.s	%f6 %f8 %f6
	mul.s	%f1 %f4 %f4
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f4 %f4
	lw	%r11 %r12 36
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	addi	%r0 %r12 l.22504
	ilw.s	%r12 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f7 %f4
beq_cont.26690 :
	mul.s	%f0 %f0 %f5
	lw	%r11 %r12 16
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f5 %f5
	mul.s	%f1 %f1 %f6
	lw	%r11 %r12 16
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f2 %f2 %f6
	lw	%r11 %r12 16
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	lw	%r11 %r12 12
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26691 
	mov.s	%f5 %f0
	j	beq_cont.26692 
beq_else.26691 :
	mul.s	%f2 %f1 %f6
	lw	%r11 %r12 36
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f6 %f6
	add.s	%f6 %f5 %f5
	mul.s	%f0 %f2 %f2
	lw	%r11 %r12 36
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f1 %f0 %f0
	lw	%r11 %r12 36
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
beq_cont.26692 :
	lw	%r11 %r12 4
	addi	%r0 %r13 3
	bne	%r12 %r13 beq_else.26693 
	addi	%r0 %r12 l.22308
	ilw.s	%r12 %f1 0
	sub.s	%f1 %f0 %f0
	j	beq_cont.26694 
beq_else.26693 :
beq_cont.26694 :
	mul.s	%f4 %f4 %f1
	mul.s	%f0 %f3 %f0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f1 %f0 fbl_else.26695 
	addi	%r0 %r12 1
	j	fbl_cont.26696 
fbl_else.26695 :
	addi	%r0 %r12 0
fbl_cont.26696 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26697 
	addi	%r0 %r11 0
	j	beq_cont.26698 
beq_else.26697 :
	sqrt.s	%f0 %f0
	lw	%r11 %r11 24
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26699 
	neg.s	%f0 %f0
	j	beq_cont.26700 
beq_else.26699 :
beq_cont.26700 :
	addi	%r0 %r11 0
	sub.s	%f4 %f0 %f0
	div.s	%f3 %f0 %f0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r11 1
beq_cont.26698 :
	j	beq_cont.26688 
beq_else.26687 :
	addi	%r0 %r11 0
beq_cont.26688 :
beq_cont.26678 :
beq_cont.26598 :
	addi	%r0 %r12 0
	beq	%r11 %r12 bne_else.26701 
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r3 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r5 %r11 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26703 
	addi	%r0 %r11 1
	j	fbl_cont.26704 
fbl_else.26703 :
	addi	%r0 %r11 0
fbl_cont.26704 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26705 
	j	beq_cont.26706 
beq_else.26705 :
	addi	%r0 %r11 1
	mov	%r8 %r4
	mov	%r10 %r3
	mov	%r11 %r2
	mov	%r9 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
beq_cont.26706 :
	j	bne_cont.26702 
bne_else.26701 :
bne_cont.26702 :
beq_cont.26596 :
	addi	%r0 %r1 1
	lw	%r26 %r2 32
	add	%r2 %r1 %r6
	lw	%r26 %r1 24
	lw	%r26 %r2 20
	lw	%r26 %r3 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r7 4
	lw	%r26 %r8 0
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
solve_each_element_fast.2964 :
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	lw	%r3 %r11 0
	slli	%r1 %r12 2
	add	%r2 %r12 %r25
	lw	%r25 %r12 0
	addi	%r0 %r13 -1
	bne	%r12 %r13 beq_else.26707 
	retl
beq_else.26707 :
	slli	%r12 %r13 2
	add	%r7 %r13 %r25
	lw	%r25 %r13 0
	lw	%r13 %r14 40
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r15 4
	slli	%r12 %r16 2
	add	%r15 %r16 %r25
	lw	%r25 %r15 0
	lw	%r13 %r16 4
	addi	%r0 %r17 1
	bne	%r16 %r17 beq_else.26709 
	lw	%r3 %r14 0
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbge	%f4 %f5 fbl_else.26711 
	neg.s	%f4 %f4
	j	fbl_cont.26712 
fbl_else.26711 :
fbl_cont.26712 :
	lw	%r13 %r16 16
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26713 
	addi	%r0 %r16 1
	j	fbl_cont.26714 
fbl_else.26713 :
	addi	%r0 %r16 0
fbl_cont.26714 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26715 
	addi	%r0 %r16 0
	j	beq_cont.26716 
beq_else.26715 :
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbge	%f4 %f5 fbl_else.26717 
	neg.s	%f4 %f4
	j	fbl_cont.26718 
fbl_else.26717 :
fbl_cont.26718 :
	lw	%r13 %r16 16
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26719 
	addi	%r0 %r16 1
	j	fbl_cont.26720 
fbl_else.26719 :
	addi	%r0 %r16 0
fbl_cont.26720 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26721 
	addi	%r0 %r16 0
	j	beq_cont.26722 
beq_else.26721 :
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbne	%f4 %f5 fbeq_else.26723 
	addi	%r0 %r16 1
	j	fbeq_cont.26724 
fbeq_else.26723 :
	addi	%r0 %r16 0
fbeq_cont.26724 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26725 
	addi	%r0 %r16 1
	j	beq_cont.26726 
beq_else.26725 :
	addi	%r0 %r16 0
beq_cont.26726 :
beq_cont.26722 :
beq_cont.26716 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26727 
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r16 3
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbge	%f4 %f5 fbl_else.26729 
	neg.s	%f4 %f4
	j	fbl_cont.26730 
fbl_else.26729 :
fbl_cont.26730 :
	lw	%r13 %r16 16
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26731 
	addi	%r0 %r16 1
	j	fbl_cont.26732 
fbl_else.26731 :
	addi	%r0 %r16 0
fbl_cont.26732 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26733 
	addi	%r0 %r16 0
	j	beq_cont.26734 
beq_else.26733 :
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbge	%f4 %f5 fbl_else.26735 
	neg.s	%f4 %f4
	j	fbl_cont.26736 
fbl_else.26735 :
fbl_cont.26736 :
	lw	%r13 %r16 16
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26737 
	addi	%r0 %r16 1
	j	fbl_cont.26738 
fbl_else.26737 :
	addi	%r0 %r16 0
fbl_cont.26738 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26739 
	addi	%r0 %r16 0
	j	beq_cont.26740 
beq_else.26739 :
	addi	%r0 %r16 3
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f5 0
	fbne	%f4 %f5 fbeq_else.26741 
	addi	%r0 %r16 1
	j	fbeq_cont.26742 
fbeq_else.26741 :
	addi	%r0 %r16 0
fbeq_cont.26742 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26743 
	addi	%r0 %r16 1
	j	beq_cont.26744 
beq_else.26743 :
	addi	%r0 %r16 0
beq_cont.26744 :
beq_cont.26740 :
beq_cont.26734 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26745 
	addi	%r0 %r16 4
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r16 5
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f3 0
	fbge	%f0 %f3 fbl_else.26747 
	neg.s	%f0 %f0
	j	fbl_cont.26748 
fbl_else.26747 :
fbl_cont.26748 :
	lw	%r13 %r16 16
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r16 %r17 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26749 
	addi	%r0 %r16 1
	j	fbl_cont.26750 
fbl_else.26749 :
	addi	%r0 %r16 0
fbl_cont.26750 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26751 
	addi	%r0 %r13 0
	j	beq_cont.26752 
beq_else.26751 :
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f1 0
	fbge	%f0 %f1 fbl_else.26753 
	neg.s	%f0 %f0
	j	fbl_cont.26754 
fbl_else.26753 :
fbl_cont.26754 :
	lw	%r13 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26755 
	addi	%r0 %r13 1
	j	fbl_cont.26756 
fbl_else.26755 :
	addi	%r0 %r13 0
fbl_cont.26756 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26757 
	addi	%r0 %r13 0
	j	beq_cont.26758 
beq_else.26757 :
	addi	%r0 %r13 5
	slli	%r13 %r13 2
	add	%r15 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f1 0
	fbne	%f0 %f1 fbeq_else.26759 
	addi	%r0 %r13 1
	j	fbeq_cont.26760 
fbeq_else.26759 :
	addi	%r0 %r13 0
fbeq_cont.26760 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26761 
	addi	%r0 %r13 1
	j	beq_cont.26762 
beq_else.26761 :
	addi	%r0 %r13 0
beq_cont.26762 :
beq_cont.26758 :
beq_cont.26752 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26763 
	addi	%r0 %r13 0
	j	beq_cont.26764 
beq_else.26763 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r13 3
beq_cont.26764 :
	j	beq_cont.26746 
beq_else.26745 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r13 2
beq_cont.26746 :
	j	beq_cont.26728 
beq_else.26727 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r13 1
beq_cont.26728 :
	j	beq_cont.26710 
beq_else.26709 :
	addi	%r0 %r17 2
	bne	%r16 %r17 beq_else.26765 
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r15 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f1 0
	fbge	%f0 %f1 fbl_else.26767 
	addi	%r0 %r13 1
	j	fbl_cont.26768 
fbl_else.26767 :
	addi	%r0 %r13 0
fbl_cont.26768 :
	addi	%r0 %r16 0
	bne	%r13 %r16 beq_else.26769 
	addi	%r0 %r13 0
	j	beq_cont.26770 
beq_else.26769 :
	addi	%r0 %r13 0
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r15 3
	slli	%r15 %r15 2
	add	%r14 %r15 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r13 1
beq_cont.26770 :
	j	beq_cont.26766 
beq_else.26765 :
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r16 l.22306
	ilw.s	%r16 %f4 0
	fbne	%f3 %f4 fbeq_else.26771 
	addi	%r0 %r16 1
	j	fbeq_cont.26772 
fbeq_else.26771 :
	addi	%r0 %r16 0
fbeq_cont.26772 :
	addi	%r0 %r17 0
	bne	%r16 %r17 beq_else.26773 
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r16 3
	slli	%r16 %r16 2
	add	%r15 %r16 %r25
	lw.s	%r25 %f1 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r16 3
	slli	%r16 %r16 2
	add	%r14 %r16 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r14 l.22306
	ilw.s	%r14 %f2 0
	fbge	%f2 %f1 fbl_else.26775 
	addi	%r0 %r14 1
	j	fbl_cont.26776 
fbl_else.26775 :
	addi	%r0 %r14 0
fbl_cont.26776 :
	addi	%r0 %r16 0
	bne	%r14 %r16 beq_else.26777 
	addi	%r0 %r13 0
	j	beq_cont.26778 
beq_else.26777 :
	lw	%r13 %r13 24
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26779 
	addi	%r0 %r13 0
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r14 4
	slli	%r14 %r14 2
	add	%r15 %r14 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26780 
beq_else.26779 :
	addi	%r0 %r13 0
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r14 4
	slli	%r14 %r14 2
	add	%r15 %r14 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r13 %r13 2
	add	%r6 %r13 %r25
	sw.s	%r25 %f0 0
beq_cont.26780 :
	addi	%r0 %r13 1
beq_cont.26778 :
	j	beq_cont.26774 
beq_else.26773 :
	addi	%r0 %r13 0
beq_cont.26774 :
beq_cont.26766 :
beq_cont.26710 :
	addi	%r0 %r14 0
	beq	%r13 %r14 bne_else.26781 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r6 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbge	%f1 %f0 fbl_else.26782 
	addi	%r0 %r6 1
	j	fbl_cont.26783 
fbl_else.26782 :
	addi	%r0 %r6 0
fbl_cont.26783 :
	addi	%r0 %r14 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
	bne	%r6 %r14 beq_else.26784 
	j	beq_cont.26785 
beq_else.26784 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26786 
	addi	%r0 %r6 1
	j	fbl_cont.26787 
fbl_else.26786 :
	addi	%r0 %r6 0
fbl_cont.26787 :
	addi	%r0 %r14 0
	bne	%r6 %r14 beq_else.26788 
	j	beq_cont.26789 
beq_else.26788 :
	addi	%r0 %r6 l.22734
	ilw.s	%r6 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r11 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f2 0
	add.s	%f2 %f1 %f1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r11 %r6 %r25
	lw.s	%r25 %f2 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f3 0
	add.s	%f3 %f2 %f2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r11 %r6 %r25
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
	mov	%r2 %r3
	mov	%r7 %r1
	mov	%r5 %r2
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	check_all_inside.2935 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26792 
	j	beq_cont.26793 
beq_else.26792 :
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
beq_cont.26793 :
beq_cont.26789 :
beq_cont.26785 :
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	add	%r2 %r1 %r1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
bne_else.26781 :
	slli	%r12 %r4 2
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	lw	%r4 %r4 24
	addi	%r0 %r5 0
	bne	%r4 %r5 beq_else.26794 
	retl
beq_else.26794 :
	addi	%r0 %r4 1
	add	%r1 %r4 %r1
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.2968 :
	lw	%r24 %r5 4
	slli	%r2 %r6 2
	add	%r3 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 -1
	beq	%r6 %r7 bne_else.26796 
	slli	%r6 %r6 2
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 0
	sw	%r26 %r4 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r2 16
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r7 %r1
	mov	%r5 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	add	%r2 %r1 %r2
	lw	%r26 %r1 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
bne_else.26796 :
	retl
trace_or_matrix_fast.2972 :
	lw	%r24 %r8 4
	slli	%r5 %r9 2
	add	%r6 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r11 -1
	bne	%r10 %r11 beq_else.26798 
	retl
beq_else.26798 :
	addi	%r0 %r11 99
	sw	%r26 %r7 0
	sw	%r26 %r6 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r24 24
	sw	%r26 %r5 28
	bne	%r10 %r11 beq_else.26800 
	addi	%r0 %r10 1
	mov	%r7 %r4
	mov	%r9 %r3
	mov	%r10 %r2
	mov	%r8 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	beq_cont.26801 
beq_else.26800 :
	slli	%r10 %r11 2
	add	%r2 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r12 40
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
	lw	%r7 %r13 4
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw	%r25 %r10 0
	lw	%r11 %r13 4
	addi	%r0 %r14 1
	bne	%r13 %r14 beq_else.26802 
	lw	%r7 %r12 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f0 %f3 %f3
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26804 
	neg.s	%f4 %f4
	j	fbl_cont.26805 
fbl_else.26804 :
fbl_cont.26805 :
	lw	%r11 %r13 16
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26806 
	addi	%r0 %r13 1
	j	fbl_cont.26807 
fbl_else.26806 :
	addi	%r0 %r13 0
fbl_cont.26807 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26808 
	addi	%r0 %r13 0
	j	beq_cont.26809 
beq_else.26808 :
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26810 
	neg.s	%f4 %f4
	j	fbl_cont.26811 
fbl_else.26810 :
fbl_cont.26811 :
	lw	%r11 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26812 
	addi	%r0 %r13 1
	j	fbl_cont.26813 
fbl_else.26812 :
	addi	%r0 %r13 0
fbl_cont.26813 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26814 
	addi	%r0 %r13 0
	j	beq_cont.26815 
beq_else.26814 :
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbne	%f4 %f5 fbeq_else.26816 
	addi	%r0 %r13 1
	j	fbeq_cont.26817 
fbeq_else.26816 :
	addi	%r0 %r13 0
fbeq_cont.26817 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26818 
	addi	%r0 %r13 1
	j	beq_cont.26819 
beq_else.26818 :
	addi	%r0 %r13 0
beq_cont.26819 :
beq_cont.26815 :
beq_cont.26809 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26820 
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f1 %f3 %f3
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26822 
	neg.s	%f4 %f4
	j	fbl_cont.26823 
fbl_else.26822 :
fbl_cont.26823 :
	lw	%r11 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26824 
	addi	%r0 %r13 1
	j	fbl_cont.26825 
fbl_else.26824 :
	addi	%r0 %r13 0
fbl_cont.26825 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26826 
	addi	%r0 %r13 0
	j	beq_cont.26827 
beq_else.26826 :
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f2 %f4 %f4
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbge	%f4 %f5 fbl_else.26828 
	neg.s	%f4 %f4
	j	fbl_cont.26829 
fbl_else.26828 :
fbl_cont.26829 :
	lw	%r11 %r13 16
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f5 0
	fbge	%f4 %f5 fbl_else.26830 
	addi	%r0 %r13 1
	j	fbl_cont.26831 
fbl_else.26830 :
	addi	%r0 %r13 0
fbl_cont.26831 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26832 
	addi	%r0 %r13 0
	j	beq_cont.26833 
beq_else.26832 :
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f5 0
	fbne	%f4 %f5 fbeq_else.26834 
	addi	%r0 %r13 1
	j	fbeq_cont.26835 
fbeq_else.26834 :
	addi	%r0 %r13 0
fbeq_cont.26835 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26836 
	addi	%r0 %r13 1
	j	beq_cont.26837 
beq_else.26836 :
	addi	%r0 %r13 0
beq_cont.26837 :
beq_cont.26833 :
beq_cont.26827 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26838 
	addi	%r0 %r13 4
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f3 0
	sub.s	%f2 %f3 %f2
	addi	%r0 %r13 5
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f3
	add.s	%f0 %f3 %f0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f3 0
	fbge	%f0 %f3 fbl_else.26840 
	neg.s	%f0 %f0
	j	fbl_cont.26841 
fbl_else.26840 :
fbl_cont.26841 :
	lw	%r11 %r13 16
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f3 0
	fbge	%f0 %f3 fbl_else.26842 
	addi	%r0 %r13 1
	j	fbl_cont.26843 
fbl_else.26842 :
	addi	%r0 %r13 0
fbl_cont.26843 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26844 
	addi	%r0 %r10 0
	j	beq_cont.26845 
beq_else.26844 :
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r12 %r13 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f1 0
	fbge	%f0 %f1 fbl_else.26846 
	neg.s	%f0 %f0
	j	fbl_cont.26847 
fbl_else.26846 :
fbl_cont.26847 :
	lw	%r11 %r11 16
	addi	%r0 %r12 1
	slli	%r12 %r12 2
	add	%r11 %r12 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26848 
	addi	%r0 %r11 1
	j	fbl_cont.26849 
fbl_else.26848 :
	addi	%r0 %r11 0
fbl_cont.26849 :
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26850 
	addi	%r0 %r10 0
	j	beq_cont.26851 
beq_else.26850 :
	addi	%r0 %r11 5
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f1 0
	fbne	%f0 %f1 fbeq_else.26852 
	addi	%r0 %r10 1
	j	fbeq_cont.26853 
fbeq_else.26852 :
	addi	%r0 %r10 0
fbeq_cont.26853 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26854 
	addi	%r0 %r10 1
	j	beq_cont.26855 
beq_else.26854 :
	addi	%r0 %r10 0
beq_cont.26855 :
beq_cont.26851 :
beq_cont.26845 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26856 
	addi	%r0 %r10 0
	j	beq_cont.26857 
beq_else.26856 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r10 3
beq_cont.26857 :
	j	beq_cont.26839 
beq_else.26838 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 2
beq_cont.26839 :
	j	beq_cont.26821 
beq_else.26820 :
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r10 1
beq_cont.26821 :
	j	beq_cont.26803 
beq_else.26802 :
	addi	%r0 %r14 2
	bne	%r13 %r14 beq_else.26858 
	addi	%r0 %r11 0
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r11 l.22306
	ilw.s	%r11 %f1 0
	fbge	%f0 %f1 fbl_else.26860 
	addi	%r0 %r11 1
	j	fbl_cont.26861 
fbl_else.26860 :
	addi	%r0 %r11 0
fbl_cont.26861 :
	addi	%r0 %r13 0
	bne	%r11 %r13 beq_else.26862 
	addi	%r0 %r10 0
	j	beq_cont.26863 
beq_else.26862 :
	addi	%r0 %r11 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 3
	slli	%r10 %r10 2
	add	%r12 %r10 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
beq_cont.26863 :
	j	beq_cont.26859 
beq_else.26858 :
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r13 l.22306
	ilw.s	%r13 %f4 0
	fbne	%f3 %f4 fbeq_else.26864 
	addi	%r0 %r13 1
	j	fbeq_cont.26865 
fbeq_else.26864 :
	addi	%r0 %r13 0
fbeq_cont.26865 :
	addi	%r0 %r14 0
	bne	%r13 %r14 beq_else.26866 
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f0 %f4 %f0
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
	lw.s	%r25 %f4 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r13 3
	slli	%r13 %r13 2
	add	%r10 %r13 %r25
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
	addi	%r0 %r12 l.22306
	ilw.s	%r12 %f2 0
	fbge	%f2 %f1 fbl_else.26868 
	addi	%r0 %r12 1
	j	fbl_cont.26869 
fbl_else.26868 :
	addi	%r0 %r12 0
fbl_cont.26869 :
	addi	%r0 %r13 0
	bne	%r12 %r13 beq_else.26870 
	addi	%r0 %r10 0
	j	beq_cont.26871 
beq_else.26870 :
	lw	%r11 %r11 24
	addi	%r0 %r12 0
	bne	%r11 %r12 beq_else.26872 
	addi	%r0 %r11 0
	sqrt.s	%f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.26873 
beq_else.26872 :
	addi	%r0 %r11 0
	sqrt.s	%f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r12 4
	slli	%r12 %r12 2
	add	%r10 %r12 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	slli	%r11 %r10 2
	add	%r3 %r10 %r25
	sw.s	%r25 %f0 0
beq_cont.26873 :
	addi	%r0 %r10 1
beq_cont.26871 :
	j	beq_cont.26867 
beq_else.26866 :
	addi	%r0 %r10 0
beq_cont.26867 :
beq_cont.26859 :
beq_cont.26803 :
	addi	%r0 %r11 0
	beq	%r10 %r11 bne_else.26874 
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r3 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r4 %r10 %r25
	lw.s	%r25 %f1 0
	fbge	%f0 %f1 fbl_else.26876 
	addi	%r0 %r10 1
	j	fbl_cont.26877 
fbl_else.26876 :
	addi	%r0 %r10 0
fbl_cont.26877 :
	addi	%r0 %r11 0
	bne	%r10 %r11 beq_else.26878 
	j	beq_cont.26879 
beq_else.26878 :
	addi	%r0 %r10 1
	mov	%r7 %r4
	mov	%r9 %r3
	mov	%r10 %r2
	mov	%r8 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
beq_cont.26879 :
	j	bne_cont.26875 
bne_else.26874 :
bne_cont.26875 :
beq_cont.26801 :
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r5
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	lw	%r26 %r3 12
	lw	%r26 %r4 8
	lw	%r26 %r6 4
	lw	%r26 %r7 0
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
trace_reflections.2994 :
	lw	%r24 %r3 64
	lw	%r24 %r4 60
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
	bg	%r19 %r1 ble_else.26880 
	slli	%r1 %r19 2
	add	%r10 %r19 %r25
	lw	%r25 %r10 0
	lw	%r10 %r19 4
	addi	%r0 %r20 0
	addi	%r0 %r21 l.23143
	ilw.s	%r21 %f2 0
	slli	%r20 %r20 2
	add	%r5 %r20 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r20 0
	addi	%r0 %r21 0
	slli	%r21 %r21 2
	add	%r11 %r21 %r25
	lw	%r25 %r21 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw.s	%r26 %f1 8
	sw	%r26 %r6 16
	sw	%r26 %r9 20
	sw	%r26 %r2 24
	sw.s	%r26 %f0 32
	sw	%r26 %r13 40
	sw	%r26 %r19 44
	sw	%r26 %r3 48
	sw	%r26 %r7 52
	sw	%r26 %r12 56
	sw	%r26 %r15 60
	sw	%r26 %r17 64
	sw	%r26 %r8 68
	sw	%r26 %r11 72
	sw	%r26 %r10 76
	sw	%r26 %r14 80
	sw	%r26 %r16 84
	sw	%r26 %r5 88
	mov	%r21 %r6
	mov	%r7 %r3
	mov	%r12 %r2
	mov	%r18 %r1
	mov	%r4 %r24
	mov	%r19 %r7
	mov	%r5 %r4
	mov	%r20 %r5
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 88
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26882 
	addi	%r0 %r1 1
	j	fbl_cont.26883 
fbl_else.26882 :
	addi	%r0 %r1 0
fbl_cont.26883 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26884 
	addi	%r0 %r1 0
	j	beq_cont.26885 
beq_else.26884 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.26886 
	addi	%r0 %r1 1
	j	fbl_cont.26887 
fbl_else.26886 :
	addi	%r0 %r1 0
fbl_cont.26887 :
beq_cont.26885 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26888 
	j	beq_cont.26889 
beq_else.26888 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 84
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 80
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 76
	lw	%r2 %r3 0
	bne	%r1 %r3 beq_else.26890 
	addi	%r0 %r6 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 72
	add	%r3 %r1 %r25
	lw	%r25 %r7 0
	lw	%r26 %r1 64
	lw	%r26 %r3 60
	lw	%r26 %r4 56
	lw	%r26 %r5 52
	lw	%r26 %r8 48
	lw	%r26 %r24 68
	mov	%r3 %r2
	mov	%r4 %r3
	mov	%r5 %r4
	mov	%r8 %r5
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26892 
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
	lw	%r26 %r2 76
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
	fbge	%f3 %f0 fbl_else.26894 
	addi	%r0 %r1 1
	j	fbl_cont.26895 
fbl_else.26894 :
	addi	%r0 %r1 0
fbl_cont.26895 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26896 
	j	beq_cont.26897 
beq_else.26896 :
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
beq_cont.26897 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	fbge	%f0 %f1 fbl_else.26898 
	addi	%r0 %r1 1
	j	fbl_cont.26899 
fbl_else.26898 :
	addi	%r0 %r1 0
fbl_cont.26899 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26900 
	j	beq_cont.26901 
beq_else.26900 :
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
beq_cont.26901 :
	j	beq_cont.26893 
beq_else.26892 :
beq_cont.26893 :
	j	beq_cont.26891 
beq_else.26890 :
beq_cont.26891 :
beq_cont.26889 :
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r1
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 8
	lw	%r26 %r2 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.26880 :
	retl
trace_ray.2999 :
	lw	%r24 %r4 100
	lw	%r24 %r5 96
	lw	%r24 %r6 92
	lw	%r24 %r7 88
	lw	%r24 %r8 84
	lw	%r24 %r9 80
	lw	%r24 %r10 76
	lw	%r24 %r11 72
	lw	%r24 %r12 68
	lw	%r24 %r13 64
	lw.s	%r24 %f2 56
	lw	%r24 %r14 48
	lw	%r24 %r15 44
	lw	%r24 %r16 40
	lw	%r24 %r17 36
	lw	%r24 %r18 32
	lw	%r24 %r19 28
	lw	%r24 %r20 24
	lw	%r24 %r21 20
	lw	%r24 %r22 16
	lw	%r24 %r23 12
	sw	%r26 %r5 0
	lw	%r24 %r5 8
	sw	%r26 %r24 4
	lw	%r24 %r24 4
	sw	%r26 %r17 8
	addi	%r0 %r17 4
	bg	%r1 %r17 ble_else.26903 
	lw	%r3 %r17 8
	sw	%r26 %r18 12
	addi	%r0 %r18 0
	sw	%r26 %r9 16
	addi	%r0 %r9 l.23143
	ilw.s	%r9 %f3 0
	slli	%r18 %r9 2
	add	%r7 %r9 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r9 0
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r14 %r18 %r25
	lw	%r25 %r18 0
	sw.s	%r26 %f1 24
	sw	%r26 %r4 32
	sw	%r26 %r11 36
	sw	%r26 %r23 40
	sw	%r26 %r12 44
	sw	%r26 %r14 48
	sw	%r26 %r3 52
	sw.s	%r26 %f2 56
	sw	%r26 %r8 64
	sw	%r26 %r10 68
	sw	%r26 %r21 72
	sw	%r26 %r16 76
	sw	%r26 %r20 80
	sw	%r26 %r15 84
	sw	%r26 %r22 88
	sw	%r26 %r13 92
	sw	%r26 %r5 96
	sw.s	%r26 %f0 104
	sw	%r26 %r19 112
	sw	%r26 %r2 116
	sw	%r26 %r17 120
	sw	%r26 %r1 124
	sw	%r26 %r7 128
	mov	%r2 %r8
	mov	%r7 %r5
	mov	%r10 %r4
	mov	%r11 %r3
	mov	%r24 %r1
	mov	%r18 %r7
	mov	%r15 %r2
	mov	%r6 %r24
	mov	%r9 %r6
	sw	%r26 %r28 132
	lw	%r24 %r23 0
	addi	%r26 %r26 136	
	jalr	%r23
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 128
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.26906 
	addi	%r0 %r1 1
	j	fbl_cont.26907 
fbl_else.26906 :
	addi	%r0 %r1 0
fbl_cont.26907 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26908 
	addi	%r0 %r1 0
	j	beq_cont.26909 
beq_else.26908 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.26910 
	addi	%r0 %r1 1
	j	fbl_cont.26911 
fbl_else.26910 :
	addi	%r0 %r1 0
fbl_cont.26911 :
beq_cont.26909 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.26912 
	addi	%r0 %r1 -1
	lw	%r26 %r2 124
	slli	%r2 %r3 2
	lw	%r26 %r4 120
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 0
	beq	%r2 %r1 bne_else.26913 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 116
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 112
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
	fbge	%f1 %f0 fbl_else.26914 
	addi	%r0 %r1 1
	j	fbl_cont.26915 
fbl_else.26914 :
	addi	%r0 %r1 0
fbl_cont.26915 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.26916 
	retl
beq_else.26916 :
	mul.s	%f0 %f0 %f1
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 96
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 92
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
bne_else.26913 :
	retl
beq_else.26912 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 88
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r3 2
	lw	%r26 %r4 84
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r3 %r5 8
	lw	%r3 %r6 28
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	lw.s	%r26 %f1 104
	mul.s	%f1 %f0 %f0
	lw	%r3 %r6 4
	addi	%r0 %r7 1
	bne	%r6 %r7 beq_else.26920 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r7 80
	add	%r7 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f2 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	lw	%r26 %r9 76
	add	%r9 %r8 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r9 %r8 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r8 1
	sub	%r6 %r8 %r8
	addi	%r0 %r10 1
	sub	%r6 %r10 %r6
	slli	%r6 %r6 2
	lw	%r26 %r10 116
	add	%r10 %r6 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f3 0
	fbne	%f2 %f3 fbeq_else.26922 
	addi	%r0 %r6 1
	j	fbeq_cont.26923 
fbeq_else.26922 :
	addi	%r0 %r6 0
fbeq_cont.26923 :
	addi	%r0 %r11 0
	bne	%r6 %r11 beq_else.26924 
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f3 0
	fbge	%f3 %f2 fbl_else.26926 
	addi	%r0 %r6 1
	j	fbl_cont.26927 
fbl_else.26926 :
	addi	%r0 %r6 0
fbl_cont.26927 :
	addi	%r0 %r11 0
	bne	%r6 %r11 beq_else.26928 
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f2 0
	j	beq_cont.26929 
beq_else.26928 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f2 0
beq_cont.26929 :
	j	beq_cont.26925 
beq_else.26924 :
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
beq_cont.26925 :
	neg.s	%f2 %f2
	slli	%r8 %r6 2
	add	%r9 %r6 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26921 
beq_else.26920 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.26930 
	addi	%r0 %r6 0
	lw	%r3 %r7 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r6 %r6 2
	lw	%r26 %r7 76
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 1
	lw	%r3 %r8 16
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 2
	lw	%r3 %r8 16
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	neg.s	%f2 %f2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26931 
beq_else.26930 :
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r7 72
	add	%r7 %r6 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r6 20
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r6 20
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	lw.s	%r25 %f4 0
	lw	%r3 %r6 20
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f4 %f4
	lw	%r3 %r6 16
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r3 %r6 16
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f3 %f6
	lw	%r3 %r6 16
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f4 %f7
	lw	%r3 %r6 12
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.26932 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r8 76
	add	%r8 %r6 %r25
	sw.s	%r25 %f5 0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f6 0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f7 0
	j	beq_cont.26933 
beq_else.26932 :
	addi	%r0 %r6 0
	lw	%r3 %r8 36
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f3 %f8
	lw	%r3 %r8 36
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f9 0
	mul.s	%f9 %f4 %f9
	add.s	%f9 %f8 %f8
	addi	%r0 %r8 l.22504
	ilw.s	%r8 %f9 0
	div.s	%f9 %f8 %f8
	add.s	%f8 %f5 %f5
	slli	%r6 %r6 2
	lw	%r26 %r8 76
	add	%r8 %r6 %r25
	sw.s	%r25 %f5 0
	addi	%r0 %r6 1
	lw	%r3 %r9 36
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r3 %r9 36
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f8 0
	mul.s	%f8 %f4 %f4
	add.s	%f4 %f5 %f4
	addi	%r0 %r9 l.22504
	ilw.s	%r9 %f5 0
	div.s	%f5 %f4 %f4
	add.s	%f4 %f6 %f4
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r6 2
	lw	%r3 %r9 36
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f2 %f2
	lw	%r3 %r9 36
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r9 l.22504
	ilw.s	%r9 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f7 %f2
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f2 0
beq_cont.26933 :
	lw	%r3 %r6 24
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f2 %f2
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r9 l.22306
	ilw.s	%r9 %f3 0
	fbne	%f2 %f3 fbeq_else.26934 
	addi	%r0 %r9 1
	j	fbeq_cont.26935 
fbeq_else.26934 :
	addi	%r0 %r9 0
fbeq_cont.26935 :
	addi	%r0 %r10 0
	bne	%r9 %r10 beq_else.26936 
	addi	%r0 %r9 0
	bne	%r6 %r9 beq_else.26938 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
	j	beq_cont.26939 
beq_else.26938 :
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
beq_cont.26939 :
	j	beq_cont.26937 
beq_else.26936 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f2 0
beq_cont.26937 :
	addi	%r0 %r6 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f3
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r6 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f3
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r6 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f3 0
	mul.s	%f2 %f3 %f2
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	sw.s	%r25 %f2 0
beq_cont.26931 :
beq_cont.26921 :
	addi	%r0 %r6 0
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	lw	%r26 %r8 72
	add	%r8 %r7 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	lw	%r26 %r7 68
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r6 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	lw.s	%r25 %f2 0
	slli	%r6 %r6 2
	add	%r7 %r6 %r25
	sw.s	%r25 %f2 0
	lw	%r3 %r6 0
	addi	%r0 %r7 0
	lw	%r3 %r9 32
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw.s	%r25 %f2 0
	slli	%r7 %r7 2
	lw	%r26 %r9 64
	add	%r9 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 1
	lw	%r3 %r10 32
	addi	%r0 %r11 1
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f2 0
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 2
	lw	%r3 %r10 32
	addi	%r0 %r11 2
	slli	%r11 %r11 2
	add	%r10 %r11 %r25
	lw.s	%r25 %f2 0
	slli	%r7 %r7 2
	add	%r9 %r7 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r7 1
	sw	%r26 %r5 132
	sw.s	%r26 %f0 136
	sw	%r26 %r3 144
	sw	%r26 %r1 148
	bne	%r6 %r7 beq_else.26940 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r6 20
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
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
	fbge	%f2 %f3 fbl_else.26942 
	addi	%r0 %r6 1
	j	fbl_cont.26943 
fbl_else.26942 :
	addi	%r0 %r6 0
fbl_cont.26943 :
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r8 %r7 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r7 20
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r7 l.23444
	ilw.s	%r7 %f3 0
	mul.s	%f3 %f2 %f3
	floor.w.s	%f3 %f3
	addi	%r0 %r7 l.23446
	ilw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r7 l.23426
	ilw.s	%r7 %f3 0
	fbge	%f2 %f3 fbl_else.26944 
	addi	%r0 %r7 1
	j	fbl_cont.26945 
fbl_else.26944 :
	addi	%r0 %r7 0
fbl_cont.26945 :
	addi	%r0 %r10 1
	addi	%r0 %r11 0
	bne	%r6 %r11 beq_else.26946 
	addi	%r0 %r6 0
	bne	%r7 %r6 beq_else.26948 
	addi	%r0 %r6 l.23417
	ilw.s	%r6 %f2 0
	j	beq_cont.26949 
beq_else.26948 :
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
beq_cont.26949 :
	j	beq_cont.26947 
beq_else.26946 :
	addi	%r0 %r6 0
	bne	%r7 %r6 beq_else.26950 
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
	j	beq_cont.26951 
beq_else.26950 :
	addi	%r0 %r6 l.23417
	ilw.s	%r6 %f2 0
beq_cont.26951 :
beq_cont.26947 :
	slli	%r10 %r6 2
	add	%r9 %r6 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26941 
beq_else.26940 :
	addi	%r0 %r7 2
	bne	%r6 %r7 beq_else.26952 
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r6 l.23435
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	lw.s	%r26 %f3 56
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	sin.2619 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.26953 
beq_else.26952 :
	addi	%r0 %r7 3
	bne	%r6 %r7 beq_else.26954 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r6 20
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r6 20
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f2
	mul.s	%f3 %f3 %f3
	add.s	%f3 %f2 %f2
	sqrt.s	%f2 %f2
	addi	%r0 %r6 l.23426
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.23341
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	lw.s	%r26 %f3 56
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	cos.2621 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.26955 
beq_else.26954 :
	addi	%r0 %r7 4
	bne	%r6 %r7 beq_else.26956 
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f2 0
	lw	%r3 %r6 20
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r3 %r6 16
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f2 %f2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r6 20
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	sub.s	%f4 %f3 %f3
	lw	%r3 %r6 16
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f4 0
	sqrt.s	%f4 %f4
	mul.s	%f4 %f3 %f3
	mul.s	%f2 %f2 %f4
	mul.s	%f3 %f3 %f5
	add.s	%f5 %f4 %f4
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	fbge	%f2 %f5 fbl_else.26958 
	neg.s	%f2 %f5
	j	fbl_cont.26959 
fbl_else.26958 :
	mov.s	%f2 %f5
fbl_cont.26959 :
	addi	%r0 %r6 l.23266
	ilw.s	%r6 %f6 0
	fbge	%f5 %f6 fbl_else.26960 
	addi	%r0 %r6 1
	j	fbl_cont.26961 
fbl_else.26960 :
	addi	%r0 %r6 0
fbl_cont.26961 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.26962 
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26964 
	neg.s	%f2 %f2
	j	fbl_cont.26965 
fbl_else.26964 :
fbl_cont.26965 :
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f3 0
	fbg	%f3 %f2 fble_else.26966 
	addi	%r0 %r6 l.23272
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26968 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26969 
fbl_else.26968 :
	addi	%r0 %r6 l.23274
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26970 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.22312
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26971 
fbl_else.26970 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.23278
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.26971 :
fbl_cont.26969 :
	j	fble_cont.26967 
fble_else.26966 :
	neg.s	%f2 %f2
	addi	%r0 %r6 l.23272
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26972 
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26973 
fbl_else.26972 :
	addi	%r0 %r6 l.23274
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26974 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	sub.s	%f3 %f2 %f3
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f5 0
	add.s	%f5 %f2 %f2
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.22312
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
	j	fbl_cont.26975 
fbl_else.26974 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	div.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 l.23278
	ilw.s	%r6 %f5 0
	neg.s	%f2 %f6
	mul.s	%f2 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f2 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f2 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f2 %f2
	add.s	%f2 %f5 %f2
	mul.s	%f3 %f2 %f2
fbl_cont.26975 :
fbl_cont.26973 :
fble_cont.26967 :
	addi	%r0 %r6 l.23339
	ilw.s	%r6 %f3 0
	mul.s	%f3 %f2 %f2
	addi	%r0 %r6 l.23341
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	j	beq_cont.26963 
beq_else.26962 :
	addi	%r0 %r6 l.23268
	ilw.s	%r6 %f2 0
beq_cont.26963 :
	floor.w.s	%f2 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r8 %r6 %r25
	lw.s	%r25 %f3 0
	lw	%r3 %r6 20
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f5 0
	sub.s	%f5 %f3 %f3
	lw	%r3 %r6 16
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f5 0
	sqrt.s	%f5 %f5
	mul.s	%f5 %f3 %f3
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	fbge	%f4 %f5 fbl_else.26976 
	neg.s	%f4 %f5
	j	fbl_cont.26977 
fbl_else.26976 :
	mov.s	%f4 %f5
fbl_cont.26977 :
	addi	%r0 %r6 l.23266
	ilw.s	%r6 %f6 0
	fbge	%f5 %f6 fbl_else.26978 
	addi	%r0 %r6 1
	j	fbl_cont.26979 
fbl_else.26978 :
	addi	%r0 %r6 0
fbl_cont.26979 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.26980 
	div.s	%f4 %f3 %f3
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.26982 
	neg.s	%f3 %f3
	j	fbl_cont.26983 
fbl_else.26982 :
fbl_cont.26983 :
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f4 0
	fbg	%f4 %f3 fble_else.26984 
	addi	%r0 %r6 l.23272
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.26986 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26987 
fbl_else.26986 :
	addi	%r0 %r6 l.23274
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.26988 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.22312
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26989 
fbl_else.26988 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.23278
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.26989 :
fbl_cont.26987 :
	j	fble_cont.26985 
fble_else.26984 :
	neg.s	%f3 %f3
	addi	%r0 %r6 l.23272
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.26990 
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26991 
fbl_else.26990 :
	addi	%r0 %r6 l.23274
	ilw.s	%r6 %f4 0
	fbge	%f3 %f4 fbl_else.26992 
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	sub.s	%f4 %f3 %f4
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f5 0
	add.s	%f5 %f3 %f3
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.22339
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.22312
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
	j	fbl_cont.26993 
fbl_else.26992 :
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	div.s	%f3 %f4 %f3
	addi	%r0 %r6 l.22308
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.23278
	ilw.s	%r6 %f5 0
	neg.s	%f3 %f6
	mul.s	%f3 %f6 %f6
	addi	%r0 %r6 l.23280
	ilw.s	%r6 %f7 0
	mul.s	%f3 %f7 %f7
	addi	%r0 %r6 l.23282
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23284
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23286
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23288
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	addi	%r0 %r6 l.23290
	ilw.s	%r6 %f8 0
	mul.s	%f3 %f8 %f8
	mul.s	%f6 %f7 %f7
	add.s	%f7 %f8 %f7
	mul.s	%f6 %f7 %f6
	add.s	%f6 %f3 %f3
	add.s	%f3 %f5 %f3
	mul.s	%f4 %f3 %f3
fbl_cont.26993 :
fbl_cont.26991 :
fble_cont.26985 :
	addi	%r0 %r6 l.23339
	ilw.s	%r6 %f4 0
	mul.s	%f4 %f3 %f3
	addi	%r0 %r6 l.23341
	ilw.s	%r6 %f4 0
	div.s	%f4 %f3 %f3
	j	beq_cont.26981 
beq_else.26980 :
	addi	%r0 %r6 l.23268
	ilw.s	%r6 %f3 0
beq_cont.26981 :
	floor.w.s	%f3 %f4
	sub.s	%f4 %f3 %f3
	addi	%r0 %r6 l.23411
	ilw.s	%r6 %f4 0
	addi	%r0 %r6 l.22319
	ilw.s	%r6 %f5 0
	sub.s	%f2 %f5 %f2
	mul.s	%f2 %f2 %f2
	sub.s	%f2 %f4 %f2
	addi	%r0 %r6 l.22319
	ilw.s	%r6 %f4 0
	sub.s	%f3 %f4 %f3
	mul.s	%f3 %f3 %f3
	sub.s	%f3 %f2 %f2
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f3 0
	fbge	%f2 %f3 fbl_else.26994 
	addi	%r0 %r6 1
	j	fbl_cont.26995 
fbl_else.26994 :
	addi	%r0 %r6 0
fbl_cont.26995 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.26996 
	j	beq_cont.26997 
beq_else.26996 :
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f2 0
beq_cont.26997 :
	addi	%r0 %r6 2
	addi	%r0 %r7 l.23417
	ilw.s	%r7 %f3 0
	mul.s	%f2 %f3 %f2
	addi	%r0 %r7 l.23419
	ilw.s	%r7 %f3 0
	div.s	%f3 %f2 %f2
	slli	%r6 %r6 2
	add	%r9 %r6 %r25
	sw.s	%r25 %f2 0
	j	beq_cont.26957 
beq_else.26956 :
beq_cont.26957 :
beq_cont.26955 :
beq_cont.26953 :
beq_cont.26941 :
	addi	%r0 %r1 4
	lw	%r26 %r2 148
	mul	%r2 %r1 %r1
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 80
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 124
	slli	%r2 %r3 2
	lw	%r26 %r4 120
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 52
	lw	%r1 %r3 4
	slli	%r2 %r5 2
	add	%r3 %r5 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	lw	%r26 %r7 72
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
	lw	%r26 %r5 144
	lw	%r5 %r6 28
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r6 %r8 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r6 l.22319
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.26998 
	addi	%r0 %r6 1
	j	fbl_cont.26999 
fbl_else.26998 :
	addi	%r0 %r6 0
fbl_cont.26999 :
	addi	%r0 %r8 0
	bne	%r6 %r8 beq_else.27000 
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
	lw	%r26 %r10 64
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
	lw.s	%r26 %f1 136
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
	lw	%r26 %r9 76
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
	j	beq_cont.27001 
beq_else.27000 :
	addi	%r0 %r6 0
	slli	%r2 %r8 2
	add	%r3 %r8 %r25
	sw	%r25 %r6 0
beq_cont.27001 :
	addi	%r0 %r3 l.23495
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r6 116
	add	%r6 %r3 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r8 76
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
	lw.s	%r26 %f1 104
	mul.s	%f0 %f1 %f0
	addi	%r0 %r3 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	lw	%r26 %r10 48
	add	%r10 %r9 %r25
	lw	%r25 %r9 0
	lw	%r26 %r10 40
	lw	%r26 %r11 84
	lw	%r26 %r12 36
	lw	%r26 %r13 32
	lw	%r26 %r24 44
	sw.s	%r26 %f0 152
	mov	%r3 %r6
	mov	%r13 %r5
	mov	%r12 %r4
	mov	%r7 %r2
	mov	%r10 %r1
	mov	%r9 %r7
	mov	%r11 %r3
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27002 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 76
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 112
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
	lw.s	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 116
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
	fbge	%f3 %f0 fbl_else.27004 
	addi	%r0 %r1 1
	j	fbl_cont.27005 
fbl_else.27004 :
	addi	%r0 %r1 0
fbl_cont.27005 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.27006 
	j	beq_cont.27007 
beq_else.27006 :
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 92
	add	%r4 %r3 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r5 64
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
beq_cont.27007 :
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	fbge	%f0 %f2 fbl_else.27008 
	addi	%r0 %r1 1
	j	fbl_cont.27009 
fbl_else.27008 :
	addi	%r0 %r1 0
fbl_cont.27009 :
	addi	%r0 %r3 0
	bne	%r1 %r3 beq_else.27010 
	j	beq_cont.27011 
beq_else.27010 :
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f0 %f0
	lw.s	%r26 %f2 152
	mul.s	%f2 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r4 92
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
beq_cont.27011 :
	j	beq_cont.27003 
beq_else.27002 :
beq_cont.27003 :
	addi	%r0 %r1 0
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r3 72
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	slli	%r1 %r1 2
	lw	%r26 %r2 16
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
	lw	%r26 %r2 12
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	lw	%r26 %r2 84
	mov	%r3 %r23
	mov	%r1 %r3
	mov	%r2 %r1
	mov	%r23 %r2
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 8
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	lw.s	%r26 %f0 136
	lw.s	%r26 %f1 152
	lw	%r26 %r2 116
	lw	%r26 %r24 0
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r1 l.23551
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 104
	fbge	%f0 %f1 fbl_else.27012 
	addi	%r0 %r1 1
	j	fbl_cont.27013 
fbl_else.27012 :
	addi	%r0 %r1 0
fbl_cont.27013 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27014 
	retl
beq_else.27014 :
	addi	%r0 %r1 4
	lw	%r26 %r2 124
	bge	%r2 %r1 bl_else.27016 
	addi	%r0 %r1 1
	add	%r2 %r1 %r1
	addi	%r0 %r3 -1
	slli	%r1 %r1 2
	lw	%r26 %r4 120
	add	%r4 %r1 %r25
	sw	%r25 %r3 0
	j	bl_cont.27017 
bl_else.27016 :
bl_cont.27017 :
	addi	%r0 %r1 2
	lw	%r26 %r3 132
	bne	%r3 %r1 beq_else.27018 
	addi	%r0 %r1 l.22308
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 144
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
	lw	%r26 %r3 128
	add	%r3 %r2 %r25
	lw.s	%r25 %f1 0
	lw.s	%r26 %f2 24
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 116
	lw	%r26 %r3 52
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
beq_else.27018 :
	retl
ble_else.26903 :
	retl
iter_trace_diffuse_rays.3008 :
	lw	%r24 %r5 76
	lw	%r24 %r6 72
	lw	%r24 %r7 68
	lw	%r24 %r8 64
	lw	%r24 %r9 60
	lw	%r24 %r10 56
	lw.s	%r24 %f0 48
	lw	%r24 %r11 40
	lw	%r24 %r12 36
	lw	%r24 %r13 32
	lw	%r24 %r14 28
	lw	%r24 %r15 24
	lw	%r24 %r16 20
	lw	%r24 %r17 16
	lw	%r24 %r18 12
	lw	%r24 %r19 8
	lw	%r24 %r20 4
	addi	%r0 %r21 0
	bg	%r21 %r4 ble_else.27021 
	slli	%r4 %r21 2
	add	%r1 %r21 %r25
	lw	%r25 %r21 0
	lw	%r21 %r21 0
	addi	%r0 %r22 0
	slli	%r22 %r22 2
	add	%r21 %r22 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r22 0
	slli	%r22 %r22 2
	add	%r2 %r22 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r22 1
	slli	%r22 %r22 2
	add	%r21 %r22 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r22 1
	slli	%r22 %r22 2
	add	%r2 %r22 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r22 2
	slli	%r22 %r22 2
	add	%r21 %r22 %r25
	lw.s	%r25 %f2 0
	addi	%r0 %r21 2
	slli	%r21 %r21 2
	add	%r2 %r21 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	addi	%r0 %r21 l.22306
	ilw.s	%r21 %f2 0
	fbge	%f1 %f2 fbl_else.27022 
	addi	%r0 %r21 1
	j	fbl_cont.27023 
fbl_else.27022 :
	addi	%r0 %r21 0
fbl_cont.27023 :
	addi	%r0 %r22 0
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r24 12
	sw	%r26 %r4 16
	bne	%r21 %r22 beq_else.27024 
	slli	%r4 %r21 2
	add	%r1 %r21 %r25
	lw	%r25 %r21 0
	addi	%r0 %r22 l.23852
	ilw.s	%r22 %f2 0
	div.s	%f2 %f1 %f1
	addi	%r0 %r22 0
	addi	%r0 %r23 l.23143
	ilw.s	%r23 %f2 0
	slli	%r22 %r22 2
	add	%r7 %r22 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r22 0
	addi	%r0 %r23 0
	slli	%r23 %r23 2
	add	%r11 %r23 %r25
	lw	%r25 %r23 0
	sw	%r26 %r18 20
	sw.s	%r26 %f1 24
	sw	%r26 %r14 32
	sw	%r26 %r5 36
	sw	%r26 %r9 40
	sw	%r26 %r19 44
	sw	%r26 %r10 48
	sw	%r26 %r11 52
	sw.s	%r26 %f0 56
	sw	%r26 %r8 64
	sw	%r26 %r16 68
	sw	%r26 %r13 72
	sw	%r26 %r15 76
	sw	%r26 %r21 80
	sw	%r26 %r12 84
	sw	%r26 %r17 88
	sw	%r26 %r7 92
	mov	%r22 %r5
	mov	%r7 %r4
	mov	%r9 %r3
	mov	%r12 %r2
	mov	%r20 %r1
	mov	%r6 %r24
	mov	%r21 %r7
	mov	%r23 %r6
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 92
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.27026 
	addi	%r0 %r1 1
	j	fbl_cont.27027 
fbl_else.27026 :
	addi	%r0 %r1 0
fbl_cont.27027 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27028 
	addi	%r0 %r1 0
	j	beq_cont.27029 
beq_else.27028 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.27030 
	addi	%r0 %r1 1
	j	fbl_cont.27031 
fbl_else.27030 :
	addi	%r0 %r1 0
fbl_cont.27031 :
beq_cont.27029 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27032 
	j	beq_cont.27033 
beq_else.27032 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 88
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 84
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 80
	lw	%r2 %r2 0
	lw	%r1 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.27034 
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 76
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 72
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r5
	addi	%r0 %r7 1
	sub	%r4 %r7 %r4
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.27036 
	addi	%r0 %r2 1
	j	fbeq_cont.27037 
fbeq_else.27036 :
	addi	%r0 %r2 0
fbeq_cont.27037 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.27038 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.27040 
	addi	%r0 %r2 1
	j	fbl_cont.27041 
fbl_else.27040 :
	addi	%r0 %r2 0
fbl_cont.27041 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.27042 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f0 0
	j	beq_cont.27043 
beq_else.27042 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27043 :
	j	beq_cont.27039 
beq_else.27038 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27039 :
	neg.s	%f0 %f0
	slli	%r5 %r2 2
	add	%r6 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27035 
beq_else.27034 :
	addi	%r0 %r2 2
	bne	%r4 %r2 beq_else.27044 
	addi	%r0 %r2 0
	lw	%r1 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	lw	%r26 %r4 72
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	lw	%r1 %r5 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	lw	%r1 %r5 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27045 
beq_else.27044 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	lw	%r1 %r2 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.27046 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r5 72
	add	%r5 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f5 0
	j	beq_cont.27047 
beq_else.27046 :
	addi	%r0 %r2 0
	lw	%r1 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r5 l.22504
	ilw.s	%r5 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	slli	%r2 %r2 2
	lw	%r26 %r5 72
	add	%r5 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	lw	%r1 %r6 36
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r6 36
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22504
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 2
	lw	%r1 %r6 36
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r6 36
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 l.22504
	ilw.s	%r6 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.27047 :
	lw	%r1 %r2 24
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbne	%f0 %f1 fbeq_else.27048 
	addi	%r0 %r6 1
	j	fbeq_cont.27049 
fbeq_else.27048 :
	addi	%r0 %r6 0
fbeq_cont.27049 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.27050 
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27052 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.27053 
beq_else.27052 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.27053 :
	j	beq_cont.27051 
beq_else.27050 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27051 :
	addi	%r0 %r2 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.27045 :
beq_cont.27035 :
	lw	%r1 %r2 0
	addi	%r0 %r4 0
	lw	%r1 %r5 32
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 64
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	lw	%r1 %r6 32
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	lw	%r1 %r6 32
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	sw	%r26 %r1 96
	bne	%r2 %r4 beq_else.27054 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
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
	fbge	%f0 %f1 fbl_else.27056 
	addi	%r0 %r2 1
	j	fbl_cont.27057 
fbl_else.27056 :
	addi	%r0 %r2 0
fbl_cont.27057 :
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r6 20
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 l.23444
	ilw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r6 l.23446
	ilw.s	%r6 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 l.23426
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.27058 
	addi	%r0 %r6 1
	j	fbl_cont.27059 
fbl_else.27058 :
	addi	%r0 %r6 0
fbl_cont.27059 :
	addi	%r0 %r7 1
	addi	%r0 %r8 0
	bne	%r2 %r8 beq_else.27060 
	addi	%r0 %r2 0
	bne	%r6 %r2 beq_else.27062 
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
	j	beq_cont.27063 
beq_else.27062 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27063 :
	j	beq_cont.27061 
beq_else.27060 :
	addi	%r0 %r2 0
	bne	%r6 %r2 beq_else.27064 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
	j	beq_cont.27065 
beq_else.27064 :
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
beq_cont.27065 :
beq_cont.27061 :
	slli	%r7 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27055 
beq_else.27054 :
	addi	%r0 %r4 2
	bne	%r2 %r4 beq_else.27066 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.23435
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sin.2619 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.27067 
beq_else.27066 :
	addi	%r0 %r4 3
	bne	%r2 %r4 beq_else.27068 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
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
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	cos.2621 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.27069 
beq_else.27068 :
	addi	%r0 %r4 4
	bne	%r2 %r4 beq_else.27070 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.27072 
	neg.s	%f0 %f3
	j	fbl_cont.27073 
fbl_else.27072 :
	mov.s	%f0 %f3
fbl_cont.27073 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27074 
	addi	%r0 %r2 1
	j	fbl_cont.27075 
fbl_else.27074 :
	addi	%r0 %r2 0
fbl_cont.27075 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27076 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27078 
	neg.s	%f0 %f0
	j	fbl_cont.27079 
fbl_else.27078 :
fbl_cont.27079 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.27080 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27082 
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
	j	fbl_cont.27083 
fbl_else.27082 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27084 
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
	j	fbl_cont.27085 
fbl_else.27084 :
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
fbl_cont.27085 :
fbl_cont.27083 :
	j	fble_cont.27081 
fble_else.27080 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27086 
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
	j	fbl_cont.27087 
fbl_else.27086 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27088 
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
	j	fbl_cont.27089 
fbl_else.27088 :
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
fbl_cont.27089 :
fbl_cont.27087 :
fble_cont.27081 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.27077 
beq_else.27076 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f0 0
beq_cont.27077 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27090 
	neg.s	%f2 %f3
	j	fbl_cont.27091 
fbl_else.27090 :
	mov.s	%f2 %f3
fbl_cont.27091 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27092 
	addi	%r0 %r2 1
	j	fbl_cont.27093 
fbl_else.27092 :
	addi	%r0 %r2 0
fbl_cont.27093 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27094 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27096 
	neg.s	%f1 %f1
	j	fbl_cont.27097 
fbl_else.27096 :
fbl_cont.27097 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.27098 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27100 
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
	j	fbl_cont.27101 
fbl_else.27100 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27102 
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
	j	fbl_cont.27103 
fbl_else.27102 :
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
fbl_cont.27103 :
fbl_cont.27101 :
	j	fble_cont.27099 
fble_else.27098 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27104 
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
	j	fbl_cont.27105 
fbl_else.27104 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27106 
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
	j	fbl_cont.27107 
fbl_else.27106 :
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
fbl_cont.27107 :
fbl_cont.27105 :
fble_cont.27099 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.27095 
beq_else.27094 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f1 0
beq_cont.27095 :
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
	fbge	%f0 %f1 fbl_else.27108 
	addi	%r0 %r2 1
	j	fbl_cont.27109 
fbl_else.27108 :
	addi	%r0 %r2 0
fbl_cont.27109 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27110 
	j	beq_cont.27111 
beq_else.27110 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27111 :
	addi	%r0 %r2 2
	addi	%r0 %r6 l.23417
	ilw.s	%r6 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r6 l.23419
	ilw.s	%r6 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27071 
beq_else.27070 :
beq_cont.27071 :
beq_cont.27069 :
beq_cont.27067 :
beq_cont.27055 :
	addi	%r0 %r6 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	lw	%r25 %r7 0
	lw	%r26 %r1 44
	lw	%r26 %r2 68
	lw	%r26 %r3 84
	lw	%r26 %r4 40
	lw	%r26 %r5 36
	lw	%r26 %r24 48
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27112 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
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
	fbge	%f1 %f0 fbl_else.27114 
	addi	%r0 %r1 1
	j	fbl_cont.27115 
fbl_else.27114 :
	addi	%r0 %r1 0
fbl_cont.27115 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27116 
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	j	beq_cont.27117 
beq_else.27116 :
beq_cont.27117 :
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 96
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
	lw	%r26 %r4 64
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
	j	beq_cont.27113 
beq_else.27112 :
beq_cont.27113 :
beq_cont.27033 :
	j	beq_cont.27025 
beq_else.27024 :
	addi	%r0 %r21 1
	add	%r4 %r21 %r21
	slli	%r21 %r21 2
	add	%r1 %r21 %r25
	lw	%r25 %r21 0
	addi	%r0 %r22 l.23581
	ilw.s	%r22 %f2 0
	div.s	%f2 %f1 %f1
	addi	%r0 %r22 0
	addi	%r0 %r23 l.23143
	ilw.s	%r23 %f2 0
	slli	%r22 %r22 2
	add	%r7 %r22 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r22 0
	addi	%r0 %r23 0
	slli	%r23 %r23 2
	add	%r11 %r23 %r25
	lw	%r25 %r23 0
	sw	%r26 %r18 20
	sw.s	%r26 %f1 104
	sw	%r26 %r14 32
	sw	%r26 %r5 36
	sw	%r26 %r9 40
	sw	%r26 %r19 44
	sw	%r26 %r10 48
	sw	%r26 %r11 52
	sw.s	%r26 %f0 56
	sw	%r26 %r8 64
	sw	%r26 %r16 68
	sw	%r26 %r13 72
	sw	%r26 %r15 76
	sw	%r26 %r21 112
	sw	%r26 %r12 84
	sw	%r26 %r17 88
	sw	%r26 %r7 92
	mov	%r22 %r5
	mov	%r7 %r4
	mov	%r9 %r3
	mov	%r12 %r2
	mov	%r20 %r1
	mov	%r6 %r24
	mov	%r21 %r7
	mov	%r23 %r6
	sw	%r26 %r28 116
	lw	%r24 %r23 0
	addi	%r26 %r26 120	
	jalr	%r23
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 92
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r1 l.22812
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.27119 
	addi	%r0 %r1 1
	j	fbl_cont.27120 
fbl_else.27119 :
	addi	%r0 %r1 0
fbl_cont.27120 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27121 
	addi	%r0 %r1 0
	j	beq_cont.27122 
beq_else.27121 :
	addi	%r0 %r1 l.23149
	ilw.s	%r1 %f1 0
	fbge	%f0 %f1 fbl_else.27123 
	addi	%r0 %r1 1
	j	fbl_cont.27124 
fbl_else.27123 :
	addi	%r0 %r1 0
fbl_cont.27124 :
beq_cont.27122 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27125 
	j	beq_cont.27126 
beq_else.27125 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 88
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 84
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 112
	lw	%r2 %r2 0
	lw	%r1 %r4 4
	addi	%r0 %r5 1
	bne	%r4 %r5 beq_else.27127 
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 76
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 72
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r6 %r5 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r5 1
	sub	%r4 %r5 %r5
	addi	%r0 %r7 1
	sub	%r4 %r7 %r4
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbne	%f0 %f1 fbeq_else.27129 
	addi	%r0 %r2 1
	j	fbeq_cont.27130 
fbeq_else.27129 :
	addi	%r0 %r2 0
fbeq_cont.27130 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.27131 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f1 %f0 fbl_else.27133 
	addi	%r0 %r2 1
	j	fbl_cont.27134 
fbl_else.27133 :
	addi	%r0 %r2 0
fbl_cont.27134 :
	addi	%r0 %r4 0
	bne	%r2 %r4 beq_else.27135 
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f0 0
	j	beq_cont.27136 
beq_else.27135 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27136 :
	j	beq_cont.27132 
beq_else.27131 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27132 :
	neg.s	%f0 %f0
	slli	%r5 %r2 2
	add	%r6 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27128 
beq_else.27127 :
	addi	%r0 %r2 2
	bne	%r4 %r2 beq_else.27137 
	addi	%r0 %r2 0
	lw	%r1 %r4 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r4 %r5 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	lw	%r26 %r4 72
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 1
	lw	%r1 %r5 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r2 2
	lw	%r1 %r5 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	neg.s	%f0 %f0
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27138 
beq_else.27137 :
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f2 0
	lw	%r1 %r2 20
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f2 %f2
	lw	%r1 %r2 16
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r2 16
	addi	%r0 %r5 1
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f1 %f4
	lw	%r1 %r2 16
	addi	%r0 %r5 2
	slli	%r5 %r5 2
	add	%r2 %r5 %r25
	lw.s	%r25 %f5 0
	mul.s	%f5 %f2 %f5
	lw	%r1 %r2 12
	addi	%r0 %r5 0
	bne	%r2 %r5 beq_else.27139 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r5 72
	add	%r5 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f5 0
	j	beq_cont.27140 
beq_else.27139 :
	addi	%r0 %r2 0
	lw	%r1 %r5 36
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f1 %f6
	lw	%r1 %r5 36
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f7 0
	mul.s	%f7 %f2 %f7
	add.s	%f7 %f6 %f6
	addi	%r0 %r5 l.22504
	ilw.s	%r5 %f7 0
	div.s	%f7 %f6 %f6
	add.s	%f6 %f3 %f3
	slli	%r2 %r2 2
	lw	%r26 %r5 72
	add	%r5 %r2 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r2 1
	lw	%r1 %r6 36
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f0 %f3
	lw	%r1 %r6 36
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f6 0
	mul.s	%f6 %f2 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r6 l.22504
	ilw.s	%r6 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f4 %f2
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f2 0
	addi	%r0 %r2 2
	lw	%r1 %r6 36
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f0 %f0
	lw	%r1 %r6 36
	addi	%r0 %r7 0
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 l.22504
	ilw.s	%r6 %f1 0
	div.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.27140 :
	lw	%r1 %r2 24
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	mul.s	%f0 %f0 %f0
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f1 0
	fbne	%f0 %f1 fbeq_else.27141 
	addi	%r0 %r6 1
	j	fbeq_cont.27142 
fbeq_else.27141 :
	addi	%r0 %r6 0
fbeq_cont.27142 :
	addi	%r0 %r7 0
	bne	%r6 %r7 beq_else.27143 
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27145 
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	j	beq_cont.27146 
beq_else.27145 :
	addi	%r0 %r2 l.22339
	ilw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
beq_cont.27146 :
	j	beq_cont.27144 
beq_else.27143 :
	addi	%r0 %r2 l.22308
	ilw.s	%r2 %f0 0
beq_cont.27144 :
	addi	%r0 %r2 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f1 0
	addi	%r0 %r2 2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f1 0
	mul.s	%f0 %f1 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
beq_cont.27138 :
beq_cont.27128 :
	lw	%r1 %r2 0
	addi	%r0 %r4 0
	lw	%r1 %r5 32
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 64
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	lw	%r1 %r6 32
	addi	%r0 %r7 1
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 2
	lw	%r1 %r6 32
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r4 1
	sw	%r26 %r1 116
	bne	%r2 %r4 beq_else.27147 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
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
	fbge	%f0 %f1 fbl_else.27149 
	addi	%r0 %r2 1
	j	fbl_cont.27150 
fbl_else.27149 :
	addi	%r0 %r2 0
fbl_cont.27150 :
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r4 %r6 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r6 20
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r6 %r7 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 l.23444
	ilw.s	%r6 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r6 l.23446
	ilw.s	%r6 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r6 l.23426
	ilw.s	%r6 %f1 0
	fbge	%f0 %f1 fbl_else.27151 
	addi	%r0 %r6 1
	j	fbl_cont.27152 
fbl_else.27151 :
	addi	%r0 %r6 0
fbl_cont.27152 :
	addi	%r0 %r7 1
	addi	%r0 %r8 0
	bne	%r2 %r8 beq_else.27153 
	addi	%r0 %r2 0
	bne	%r6 %r2 beq_else.27155 
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
	j	beq_cont.27156 
beq_else.27155 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27156 :
	j	beq_cont.27154 
beq_else.27153 :
	addi	%r0 %r2 0
	bne	%r6 %r2 beq_else.27157 
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
	j	beq_cont.27158 
beq_else.27157 :
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f0 0
beq_cont.27158 :
beq_cont.27154 :
	slli	%r7 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27148 
beq_else.27147 :
	addi	%r0 %r4 2
	bne	%r2 %r4 beq_else.27159 
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r2 l.23435
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	sin.2619 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 0
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.27160 
beq_else.27159 :
	addi	%r0 %r4 3
	bne	%r2 %r4 beq_else.27161 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
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
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	cos.2621 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 1
	addi	%r0 %r2 l.23417
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	slli	%r1 %r1 2
	lw	%r26 %r2 64
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
	j	beq_cont.27162 
beq_else.27161 :
	addi	%r0 %r4 4
	bne	%r2 %r4 beq_else.27163 
	addi	%r0 %r2 0
	slli	%r2 %r2 2
	lw	%r26 %r4 68
	add	%r4 %r2 %r25
	lw.s	%r25 %f0 0
	lw	%r1 %r2 20
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r1 %r2 16
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f1 0
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 2
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f2 0
	sub.s	%f2 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f2 0
	sqrt.s	%f2 %f2
	mul.s	%f2 %f1 %f1
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f1 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f0 %f3 fbl_else.27165 
	neg.s	%f0 %f3
	j	fbl_cont.27166 
fbl_else.27165 :
	mov.s	%f0 %f3
fbl_cont.27166 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27167 
	addi	%r0 %r2 1
	j	fbl_cont.27168 
fbl_else.27167 :
	addi	%r0 %r2 0
fbl_cont.27168 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27169 
	div.s	%f0 %f1 %f0
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27171 
	neg.s	%f0 %f0
	j	fbl_cont.27172 
fbl_else.27171 :
fbl_cont.27172 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f1 0
	fbg	%f1 %f0 fble_else.27173 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27175 
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
	j	fbl_cont.27176 
fbl_else.27175 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27177 
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
	j	fbl_cont.27178 
fbl_else.27177 :
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
fbl_cont.27178 :
fbl_cont.27176 :
	j	fble_cont.27174 
fble_else.27173 :
	neg.s	%f0 %f0
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27179 
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
	j	fbl_cont.27180 
fbl_else.27179 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f1 0
	fbge	%f0 %f1 fbl_else.27181 
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
	j	fbl_cont.27182 
fbl_else.27181 :
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
fbl_cont.27182 :
fbl_cont.27180 :
fble_cont.27174 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	j	beq_cont.27170 
beq_else.27169 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f0 0
beq_cont.27170 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 1
	slli	%r2 %r2 2
	add	%r4 %r2 %r25
	lw.s	%r25 %f1 0
	lw	%r1 %r2 20
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f3 0
	sub.s	%f3 %f1 %f1
	lw	%r1 %r2 16
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r2 %r6 %r25
	lw.s	%r25 %f3 0
	sqrt.s	%f3 %f3
	mul.s	%f3 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27183 
	neg.s	%f2 %f3
	j	fbl_cont.27184 
fbl_else.27183 :
	mov.s	%f2 %f3
fbl_cont.27184 :
	addi	%r0 %r2 l.23266
	ilw.s	%r2 %f4 0
	fbge	%f3 %f4 fbl_else.27185 
	addi	%r0 %r2 1
	j	fbl_cont.27186 
fbl_else.27185 :
	addi	%r0 %r2 0
fbl_cont.27186 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27187 
	div.s	%f2 %f1 %f1
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27189 
	neg.s	%f1 %f1
	j	fbl_cont.27190 
fbl_else.27189 :
fbl_cont.27190 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f2 0
	fbg	%f2 %f1 fble_else.27191 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27193 
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
	j	fbl_cont.27194 
fbl_else.27193 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27195 
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
	j	fbl_cont.27196 
fbl_else.27195 :
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
fbl_cont.27196 :
fbl_cont.27194 :
	j	fble_cont.27192 
fble_else.27191 :
	neg.s	%f1 %f1
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27197 
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
	j	fbl_cont.27198 
fbl_else.27197 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f2 0
	fbge	%f1 %f2 fbl_else.27199 
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
	j	fbl_cont.27200 
fbl_else.27199 :
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
fbl_cont.27200 :
fbl_cont.27198 :
fble_cont.27192 :
	addi	%r0 %r2 l.23339
	ilw.s	%r2 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r2 l.23341
	ilw.s	%r2 %f2 0
	div.s	%f2 %f1 %f1
	j	beq_cont.27188 
beq_else.27187 :
	addi	%r0 %r2 l.23268
	ilw.s	%r2 %f1 0
beq_cont.27188 :
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
	fbge	%f0 %f1 fbl_else.27201 
	addi	%r0 %r2 1
	j	fbl_cont.27202 
fbl_else.27201 :
	addi	%r0 %r2 0
fbl_cont.27202 :
	addi	%r0 %r6 0
	bne	%r2 %r6 beq_else.27203 
	j	beq_cont.27204 
beq_else.27203 :
	addi	%r0 %r2 l.22306
	ilw.s	%r2 %f0 0
beq_cont.27204 :
	addi	%r0 %r2 2
	addi	%r0 %r6 l.23417
	ilw.s	%r6 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r6 l.23419
	ilw.s	%r6 %f1 0
	div.s	%f1 %f0 %f0
	slli	%r2 %r2 2
	add	%r5 %r2 %r25
	sw.s	%r25 %f0 0
	j	beq_cont.27164 
beq_else.27163 :
beq_cont.27164 :
beq_cont.27162 :
beq_cont.27160 :
beq_cont.27148 :
	addi	%r0 %r6 0
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 52
	add	%r2 %r1 %r25
	lw	%r25 %r7 0
	lw	%r26 %r1 44
	lw	%r26 %r2 68
	lw	%r26 %r3 84
	lw	%r26 %r4 40
	lw	%r26 %r5 36
	lw	%r26 %r24 48
	sw	%r26 %r28 124
	lw	%r24 %r23 0
	addi	%r26 %r26 128	
	jalr	%r23
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27205 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 72
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
	fbge	%f1 %f0 fbl_else.27207 
	addi	%r0 %r1 1
	j	fbl_cont.27208 
fbl_else.27207 :
	addi	%r0 %r1 0
fbl_cont.27208 :
	addi	%r0 %r2 0
	bne	%r1 %r2 beq_else.27209 
	addi	%r0 %r1 l.22306
	ilw.s	%r1 %f0 0
	j	beq_cont.27210 
beq_else.27209 :
beq_cont.27210 :
	lw.s	%r26 %f1 104
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 116
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
	lw	%r26 %r4 64
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
	j	beq_cont.27206 
beq_else.27205 :
beq_cont.27206 :
beq_cont.27126 :
beq_cont.27025 :
	addi	%r0 %r1 2
	lw	%r26 %r2 16
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
ble_else.27021 :
	retl
do_without_neighbors.3030 :
	lw	%r24 %r9 4
	addi	%r0 %r10 4
	bg	%r8 %r10 ble_else.27212 
	lw	%r7 %r10 8
	addi	%r0 %r11 0
	slli	%r8 %r12 2
	add	%r10 %r12 %r25
	lw	%r25 %r10 0
	bg	%r11 %r10 ble_else.27213 
	lw	%r7 %r10 12
	slli	%r8 %r11 2
	add	%r10 %r11 %r25
	lw	%r25 %r10 0
	addi	%r0 %r11 0
	sw	%r26 %r7 0
	sw	%r26 %r6 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r24 24
	sw	%r26 %r8 28
	bne	%r10 %r11 beq_else.27214 
	j	beq_cont.27215 
beq_else.27214 :
	lw	%r7 %r10 20
	lw	%r7 %r11 28
	lw	%r7 %r12 4
	lw	%r7 %r13 16
	slli	%r8 %r14 2
	add	%r10 %r14 %r25
	lw	%r25 %r10 0
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r1 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 1
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r1 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 2
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r10 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r10 2
	add	%r1 %r10 %r25
	sw.s	%r25 %f0 0
	lw	%r7 %r10 24
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r10 %r14 %r25
	lw	%r25 %r10 0
	slli	%r8 %r14 2
	add	%r11 %r14 %r25
	lw	%r25 %r11 0
	slli	%r8 %r14 2
	add	%r12 %r14 %r25
	lw	%r25 %r12 0
	addi	%r0 %r14 0
	sw	%r26 %r5 32
	sw	%r26 %r13 36
	sw	%r26 %r11 40
	sw	%r26 %r9 44
	sw	%r26 %r12 48
	sw	%r26 %r10 52
	beq	%r10 %r14 bne_else.27216 
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r2 %r14 %r25
	lw	%r25 %r14 0
	addi	%r0 %r15 0
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r6 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 1
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r6 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 2
	addi	%r0 %r16 2
	slli	%r16 %r16 2
	add	%r12 %r16 %r25
	lw.s	%r25 %f0 0
	slli	%r15 %r15 2
	add	%r6 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r3 %r15 %r25
	lw	%r25 %r15 0
	addi	%r0 %r16 1
	sub	%r15 %r16 %r15
	sw	%r26 %r14 56
	mov	%r15 %r3
	mov	%r12 %r2
	mov	%r4 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r4 118
	lw	%r26 %r1 56
	lw	%r26 %r2 40
	lw	%r26 %r3 48
	lw	%r26 %r24 44
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	j	bne_cont.27217 
bne_else.27216 :
bne_cont.27217 :
	addi	%r0 %r1 1
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27218 
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	lw	%r26 %r3 16
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 48
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 4
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
	lw	%r26 %r7 12
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r8 8
	sw	%r26 %r1 60
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r8 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 60
	lw	%r26 %r2 40
	lw	%r26 %r3 48
	lw	%r26 %r24 44
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	bne_cont.27219 
bne_else.27218 :
bne_cont.27219 :
	addi	%r0 %r1 2
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27220 
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	lw	%r26 %r3 16
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 48
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 4
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
	lw	%r26 %r7 12
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r8 8
	sw	%r26 %r1 64
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r8 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r4 118
	lw	%r26 %r1 64
	lw	%r26 %r2 40
	lw	%r26 %r3 48
	lw	%r26 %r24 44
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	j	bne_cont.27221 
bne_else.27220 :
bne_cont.27221 :
	addi	%r0 %r1 3
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27222 
	addi	%r0 %r1 3
	slli	%r1 %r1 2
	lw	%r26 %r3 16
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 48
	add	%r6 %r5 %r25
	lw.s	%r25 %f0 0
	slli	%r4 %r4 2
	lw	%r26 %r5 4
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
	lw	%r26 %r7 12
	add	%r7 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r8 1
	sub	%r4 %r8 %r4
	lw	%r26 %r8 8
	sw	%r26 %r1 68
	mov	%r4 %r3
	mov	%r6 %r2
	mov	%r8 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 68
	lw	%r26 %r2 40
	lw	%r26 %r3 48
	lw	%r26 %r24 44
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	bne_cont.27223 
bne_else.27222 :
bne_cont.27223 :
	addi	%r0 %r1 4
	lw	%r26 %r2 52
	beq	%r2 %r1 bne_else.27224 
	addi	%r0 %r1 4
	slli	%r1 %r1 2
	lw	%r26 %r2 16
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 48
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	addi	%r0 %r6 1
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	addi	%r0 %r6 2
	slli	%r6 %r6 2
	add	%r5 %r6 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r4 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 0
	slli	%r3 %r3 2
	lw	%r26 %r6 12
	add	%r6 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r7 1
	sub	%r3 %r7 %r3
	lw	%r26 %r7 8
	sw	%r26 %r1 72
	mov	%r5 %r2
	mov	%r7 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r4 118
	lw	%r26 %r1 72
	lw	%r26 %r2 40
	lw	%r26 %r3 48
	lw	%r26 %r24 44
	sw	%r26 %r28 76
	lw	%r24 %r23 0
	addi	%r26 %r26 80	
	jalr	%r23
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	j	bne_cont.27225 
bne_else.27224 :
bne_cont.27225 :
	lw	%r26 %r1 28
	slli	%r1 %r2 2
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 32
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	add	%r2 %r4 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r6 20
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
beq_cont.27215 :
	addi	%r0 %r1 1
	lw	%r26 %r2 28
	add	%r2 %r1 %r8
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	lw	%r26 %r3 12
	lw	%r26 %r4 8
	lw	%r26 %r6 4
	lw	%r26 %r7 0
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
ble_else.27213 :
	retl
ble_else.27212 :
	retl
try_exploit_neighbors.3046 :
	lw	%r24 %r7 28
	lw	%r24 %r8 24
	lw	%r24 %r9 20
	lw	%r24 %r10 16
	lw	%r24 %r11 12
	lw	%r24 %r12 8
	lw	%r24 %r13 4
	slli	%r1 %r14 2
	add	%r4 %r14 %r25
	lw	%r25 %r14 0
	addi	%r0 %r15 4
	bg	%r6 %r15 ble_else.27228 
	addi	%r0 %r15 0
	lw	%r14 %r16 8
	slli	%r6 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	bg	%r15 %r16 ble_else.27229 
	slli	%r1 %r15 2
	add	%r4 %r15 %r25
	lw	%r25 %r15 0
	lw	%r15 %r15 8
	slli	%r6 %r16 2
	add	%r15 %r16 %r25
	lw	%r25 %r15 0
	slli	%r1 %r16 2
	add	%r3 %r16 %r25
	lw	%r25 %r16 0
	lw	%r16 %r16 8
	slli	%r6 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	bne	%r16 %r15 beq_else.27230 
	slli	%r1 %r16 2
	add	%r5 %r16 %r25
	lw	%r25 %r16 0
	lw	%r16 %r16 8
	slli	%r6 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	bne	%r16 %r15 beq_else.27232 
	addi	%r0 %r16 1
	sub	%r1 %r16 %r16
	slli	%r16 %r16 2
	add	%r4 %r16 %r25
	lw	%r25 %r16 0
	lw	%r16 %r16 8
	slli	%r6 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	bne	%r16 %r15 beq_else.27234 
	addi	%r0 %r16 1
	add	%r1 %r16 %r16
	slli	%r16 %r16 2
	add	%r4 %r16 %r25
	lw	%r25 %r16 0
	lw	%r16 %r16 8
	slli	%r6 %r17 2
	add	%r16 %r17 %r25
	lw	%r25 %r16 0
	bne	%r16 %r15 beq_else.27236 
	addi	%r0 %r15 1
	j	beq_cont.27237 
beq_else.27236 :
	addi	%r0 %r15 0
beq_cont.27237 :
	j	beq_cont.27235 
beq_else.27234 :
	addi	%r0 %r15 0
beq_cont.27235 :
	j	beq_cont.27233 
beq_else.27232 :
	addi	%r0 %r15 0
beq_cont.27233 :
	j	beq_cont.27231 
beq_else.27230 :
	addi	%r0 %r15 0
beq_cont.27231 :
	addi	%r0 %r16 0
	bne	%r15 %r16 beq_else.27238 
	slli	%r1 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	mov	%r8 %r5
	mov	%r9 %r4
	mov	%r10 %r3
	mov	%r12 %r2
	mov	%r11 %r24
	mov	%r6 %r8
	mov	%r7 %r6
	mov	%r1 %r7
	mov	%r13 %r1
	lw	%r24 %r23 0
	jr	%r23
beq_else.27238 :
	lw	%r14 %r7 12
	slli	%r6 %r9 2
	add	%r7 %r9 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	bne	%r7 %r9 beq_else.27239 
	j	beq_cont.27240 
beq_else.27239 :
	slli	%r1 %r7 2
	add	%r3 %r7 %r25
	lw	%r25 %r7 0
	lw	%r7 %r7 20
	addi	%r0 %r9 1
	sub	%r1 %r9 %r9
	slli	%r9 %r9 2
	add	%r4 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r9 20
	slli	%r1 %r10 2
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
	lw	%r10 %r10 20
	addi	%r0 %r11 1
	add	%r1 %r11 %r11
	slli	%r11 %r11 2
	add	%r4 %r11 %r25
	lw	%r25 %r11 0
	lw	%r11 %r11 20
	slli	%r1 %r12 2
	add	%r5 %r12 %r25
	lw	%r25 %r12 0
	lw	%r12 %r12 20
	slli	%r6 %r14 2
	add	%r7 %r14 %r25
	lw	%r25 %r7 0
	addi	%r0 %r14 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r7 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 1
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r7 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r14 2
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r7 %r15 %r25
	lw.s	%r25 %f0 0
	slli	%r14 %r7 2
	add	%r13 %r7 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r7 2
	add	%r9 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 0
	slli	%r14 %r14 2
	add	%r7 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 1
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 1
	slli	%r14 %r14 2
	add	%r7 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 2
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r13 %r14 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r14 2
	slli	%r14 %r14 2
	add	%r7 %r14 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r7 2
	add	%r13 %r7 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r7 2
	add	%r10 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 1
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 2
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r7 2
	add	%r13 %r7 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r7 2
	add	%r11 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 1
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 2
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r7 2
	add	%r13 %r7 %r25
	sw.s	%r25 %f0 0
	slli	%r6 %r7 2
	add	%r12 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 1
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r13 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 2
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	add.s	%f1 %f0 %f0
	slli	%r9 %r7 2
	add	%r13 %r7 %r25
	sw.s	%r25 %f0 0
	slli	%r1 %r7 2
	add	%r4 %r7 %r25
	lw	%r25 %r7 0
	lw	%r7 %r7 16
	slli	%r6 %r9 2
	add	%r7 %r9 %r25
	lw	%r25 %r7 0
	addi	%r0 %r9 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 1
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r13 %r10 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r9 %r9 2
	add	%r8 %r9 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r9 2
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r8 %r10 %r25
	lw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r7 %r10 %r25
	lw.s	%r25 %f1 0
	addi	%r0 %r7 2
	slli	%r7 %r7 2
	add	%r13 %r7 %r25
	lw.s	%r25 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	slli	%r9 %r7 2
	add	%r8 %r7 %r25
	sw.s	%r25 %f0 0
beq_cont.27240 :
	addi	%r0 %r7 1
	add	%r6 %r7 %r6
	lw	%r24 %r23 0
	jr	%r23
ble_else.27229 :
	retl
ble_else.27228 :
	retl
pretrace_diffuse_rays.3059 :
	lw	%r24 %r8 4
	addi	%r0 %r9 4
	bg	%r7 %r9 ble_else.27243 
	lw	%r6 %r9 8
	slli	%r7 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	bg	%r10 %r9 ble_else.27244 
	lw	%r6 %r9 12
	slli	%r7 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	sw	%r26 %r24 20
	sw	%r26 %r7 24
	bne	%r9 %r10 beq_else.27245 
	j	beq_cont.27246 
beq_else.27245 :
	lw	%r6 %r9 24
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r9 %r10 %r25
	lw	%r25 %r9 0
	addi	%r0 %r10 l.22306
	ilw.s	%r10 %f0 0
	addi	%r0 %r10 0
	slli	%r10 %r10 2
	add	%r1 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 1
	slli	%r10 %r10 2
	add	%r1 %r10 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r10 2
	slli	%r10 %r10 2
	add	%r1 %r10 %r25
	sw.s	%r25 %f0 0
	lw	%r6 %r10 28
	lw	%r6 %r11 4
	slli	%r9 %r9 2
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	slli	%r7 %r12 2
	add	%r10 %r12 %r25
	lw	%r25 %r10 0
	slli	%r7 %r12 2
	add	%r11 %r12 %r25
	lw	%r25 %r11 0
	addi	%r0 %r12 0
	addi	%r0 %r13 0
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f0 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r12 1
	addi	%r0 %r13 1
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f0 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r12 2
	addi	%r0 %r13 2
	slli	%r13 %r13 2
	add	%r11 %r13 %r25
	lw.s	%r25 %f0 0
	slli	%r12 %r12 2
	add	%r5 %r12 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r12 0
	slli	%r12 %r12 2
	add	%r3 %r12 %r25
	lw	%r25 %r12 0
	addi	%r0 %r13 1
	sub	%r12 %r13 %r12
	sw	%r26 %r6 28
	sw	%r26 %r11 32
	sw	%r26 %r10 36
	sw	%r26 %r9 40
	sw	%r26 %r8 44
	mov	%r12 %r3
	mov	%r11 %r2
	mov	%r4 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	setup_startp_constants.2910 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r4 118
	lw	%r26 %r1 40
	lw	%r26 %r2 36
	lw	%r26 %r3 32
	lw	%r26 %r24 44
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r6 28
	lw	%r6 %r1 20
	lw	%r26 %r2 24
	slli	%r2 %r3 2
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 0
	addi	%r0 %r4 0
	slli	%r4 %r4 2
	lw	%r26 %r5 16
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 1
	addi	%r0 %r4 1
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r3 2
	addi	%r0 %r4 2
	slli	%r4 %r4 2
	add	%r5 %r4 %r25
	lw.s	%r25 %f0 0
	slli	%r3 %r3 2
	add	%r1 %r3 %r25
	sw.s	%r25 %f0 0
beq_cont.27246 :
	addi	%r0 %r1 1
	lw	%r26 %r2 24
	add	%r2 %r1 %r7
	lw	%r26 %r1 16
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 20
	lw	%r24 %r23 0
	jr	%r23
ble_else.27244 :
	retl
ble_else.27243 :
	retl
pretrace_pixels.3062 :
	lw	%r24 %r4 56
	lw	%r24 %r5 52
	lw	%r24 %r6 48
	lw	%r24 %r7 44
	lw	%r24 %r8 40
	lw	%r24 %r9 36
	lw	%r24 %r10 32
	lw	%r24 %r11 28
	lw	%r24 %r12 24
	lw	%r24 %r13 20
	lw	%r24 %r14 16
	lw	%r24 %r15 12
	lw	%r24 %r16 8
	lw	%r24 %r17 4
	addi	%r0 %r18 0
	bg	%r18 %r2 ble_else.27249 
	addi	%r0 %r18 0
	slli	%r18 %r18 2
	add	%r9 %r18 %r25
	lw.s	%r25 %f3 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r15 %r9 %r25
	lw	%r25 %r9 0
	sub	%r2 %r9 %r9
	mtc1	%r9 %f4
	mul.s	%f4 %f3 %f3
	addi	%r0 %r9 0
	addi	%r0 %r15 0
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r9 1
	addi	%r0 %r15 1
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r9 2
	addi	%r0 %r15 2
	slli	%r15 %r15 2
	add	%r8 %r15 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f3 %f3
	add.s	%f2 %f3 %f3
	slli	%r9 %r8 2
	add	%r11 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	lw.s	%r25 %f3 0
	mul.s	%f3 %f3 %f3
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	lw.s	%r25 %f4 0
	mul.s	%f4 %f4 %f4
	add.s	%f4 %f3 %f3
	sqrt.s	%f3 %f3
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f4 0
	fbne	%f3 %f4 fbeq_else.27250 
	addi	%r0 %r8 1
	j	fbeq_cont.27251 
fbeq_else.27250 :
	addi	%r0 %r8 0
fbeq_cont.27251 :
	addi	%r0 %r9 0
	bne	%r8 %r9 beq_else.27252 
	addi	%r0 %r8 l.22308
	ilw.s	%r8 %f4 0
	div.s	%f3 %f4 %f3
	j	beq_cont.27253 
beq_else.27252 :
	addi	%r0 %r8 l.22308
	ilw.s	%r8 %f3 0
beq_cont.27253 :
	addi	%r0 %r8 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f4
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r8 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f4
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	sw.s	%r25 %f4 0
	addi	%r0 %r8 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r11 %r9 %r25
	lw.s	%r25 %f4 0
	mul.s	%f3 %f4 %f3
	slli	%r8 %r8 2
	add	%r11 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f3 0
	addi	%r0 %r8 0
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 1
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 2
	slli	%r8 %r8 2
	add	%r10 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 0
	addi	%r0 %r9 0
	slli	%r9 %r9 2
	add	%r4 %r9 %r25
	lw.s	%r25 %f3 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 1
	addi	%r0 %r9 1
	slli	%r9 %r9 2
	add	%r4 %r9 %r25
	lw.s	%r25 %f3 0
	slli	%r8 %r8 2
	add	%r7 %r8 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r8 2
	addi	%r0 %r9 2
	slli	%r9 %r9 2
	add	%r4 %r9 %r25
	lw.s	%r25 %f3 0
	slli	%r8 %r4 2
	add	%r7 %r4 %r25
	sw.s	%r25 %f3 0
	addi	%r0 %r4 0
	addi	%r0 %r7 l.22308
	ilw.s	%r7 %f3 0
	slli	%r2 %r7 2
	add	%r1 %r7 %r25
	lw	%r25 %r7 0
	addi	%r0 %r8 l.22306
	ilw.s	%r8 %f4 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r24 24
	sw	%r26 %r6 28
	sw	%r26 %r13 32
	sw	%r26 %r14 36
	sw	%r26 %r16 40
	sw	%r26 %r17 44
	sw	%r26 %r12 48
	sw	%r26 %r3 52
	sw	%r26 %r10 56
	sw	%r26 %r1 60
	sw	%r26 %r2 64
	mov	%r7 %r3
	mov	%r11 %r2
	mov	%r4 %r1
	mov	%r5 %r24
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 64
	slli	%r1 %r2 2
	lw	%r26 %r3 60
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r4 0
	addi	%r0 %r5 0
	slli	%r5 %r5 2
	lw	%r26 %r6 56
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
	lw	%r26 %r5 52
	add	%r2 %r4 %r25
	sw	%r25 %r5 0
	slli	%r1 %r2 2
	add	%r3 %r2 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 0
	lw	%r26 %r2 44
	lw	%r26 %r4 40
	lw	%r26 %r8 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r24 48
	mov	%r10 %r5
	mov	%r8 %r3
	mov	%r2 %r1
	mov	%r4 %r2
	mov	%r9 %r4
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 1
	lw	%r26 %r2 64
	sub	%r2 %r1 %r2
	addi	%r0 %r1 1
	lw	%r26 %r3 52
	add	%r3 %r1 %r1
	addi	%r0 %r3 5
	bg	%r3 %r1 ble_else.27254 
	addi	%r0 %r3 5
	sub	%r1 %r3 %r3
	j	ble_cont.27255 
ble_else.27254 :
	mov	%r1 %r3
ble_cont.27255 :
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 60
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
ble_else.27249 :
	retl
scan_pixel.3073 :
	lw	%r24 %r6 36
	lw	%r24 %r7 32
	lw	%r24 %r8 28
	lw	%r24 %r9 24
	lw	%r24 %r10 20
	lw	%r24 %r11 16
	lw	%r24 %r12 12
	lw	%r24 %r13 8
	lw	%r24 %r14 4
	lw	%r11 %r15 0
	bge	%r1 %r15 bl_else.27257 
	slli	%r1 %r15 2
	add	%r4 %r15 %r25
	lw	%r25 %r15 0
	lw	%r15 %r15 0
	addi	%r0 %r16 0
	addi	%r0 %r17 0
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f0 0
	slli	%r16 %r16 2
	add	%r8 %r16 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r16 1
	addi	%r0 %r17 1
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f0 0
	slli	%r16 %r16 2
	add	%r8 %r16 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r16 2
	addi	%r0 %r17 2
	slli	%r17 %r17 2
	add	%r15 %r17 %r25
	lw.s	%r25 %f0 0
	slli	%r16 %r15 2
	add	%r8 %r15 %r25
	sw.s	%r25 %f0 0
	addi	%r0 %r15 1
	add	%r2 %r15 %r15
	addi	%r0 %r16 1
	slli	%r16 %r16 2
	add	%r11 %r16 %r25
	lw	%r25 %r16 0
	bge	%r15 %r16 bl_else.27258 
	addi	%r0 %r15 0
	bge	%r15 %r2 bl_else.27260 
	addi	%r0 %r15 1
	add	%r1 %r15 %r15
	addi	%r0 %r16 0
	slli	%r16 %r16 2
	add	%r11 %r16 %r25
	lw	%r25 %r11 0
	bge	%r15 %r11 bl_else.27262 
	addi	%r0 %r11 0
	bge	%r11 %r1 bl_else.27264 
	addi	%r0 %r11 1
	j	bl_cont.27265 
bl_else.27264 :
	addi	%r0 %r11 0
bl_cont.27265 :
	j	bl_cont.27263 
bl_else.27262 :
	addi	%r0 %r11 0
bl_cont.27263 :
	j	bl_cont.27261 
bl_else.27260 :
	addi	%r0 %r11 0
bl_cont.27261 :
	j	bl_cont.27259 
bl_else.27258 :
	addi	%r0 %r11 0
bl_cont.27259 :
	addi	%r0 %r15 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r1 20
	sw	%r26 %r8 24
	bne	%r11 %r15 beq_else.27266 
	slli	%r1 %r6 2
	add	%r4 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r11 0
	mov	%r8 %r5
	mov	%r9 %r4
	mov	%r10 %r3
	mov	%r13 %r2
	mov	%r14 %r1
	mov	%r12 %r24
	mov	%r11 %r8
	mov	%r7 %r23
	mov	%r6 %r7
	mov	%r23 %r6
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	j	beq_cont.27267 
beq_else.27266 :
	addi	%r0 %r7 0
	mov	%r6 %r24
	mov	%r7 %r6
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
beq_cont.27267 :
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.27268 
	addi	%r0 %r1 255
	j	bl_cont.27269 
bl_else.27268 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.27270 
	addi	%r0 %r1 0
	j	bl_cont.27271 
bl_else.27270 :
bl_cont.27271 :
bl_cont.27269 :
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
	bge	%r5 %r3 bl_else.27272 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27273 
bl_else.27272 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.27274 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27275 
bl_else.27274 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.27275 :
bl_cont.27273 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bge	%r3 %r1 bl_else.27276 
	addi	%r0 %r1 255
	j	bl_cont.27277 
bl_else.27276 :
	addi	%r0 %r3 0
	bge	%r1 %r3 bl_else.27278 
	addi	%r0 %r1 0
	j	bl_cont.27279 
bl_else.27278 :
bl_cont.27279 :
bl_cont.27277 :
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
	bge	%r5 %r3 bl_else.27280 
	addi	%r0 %r5 48
	add	%r3 %r5 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27281 
bl_else.27280 :
	addi	%r0 %r3 0
	bge	%r3 %r4 bl_else.27282 
	addi	%r0 %r3 48
	add	%r4 %r3 %r3
	out	%r3
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
	j	bl_cont.27283 
bl_else.27282 :
	addi	%r0 %r3 48
	add	%r1 %r3 %r1
	out	%r1
bl_cont.27283 :
bl_cont.27281 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 2
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw.s	%r25 %f0 0
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bge	%r2 %r1 bl_else.27284 
	addi	%r0 %r1 255
	j	bl_cont.27285 
bl_else.27284 :
	addi	%r0 %r2 0
	bge	%r1 %r2 bl_else.27286 
	addi	%r0 %r1 0
	j	bl_cont.27287 
bl_else.27286 :
bl_cont.27287 :
bl_cont.27285 :
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
	bge	%r4 %r2 bl_else.27288 
	addi	%r0 %r4 48
	add	%r2 %r4 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.27289 
bl_else.27288 :
	addi	%r0 %r2 0
	bge	%r2 %r3 bl_else.27290 
	addi	%r0 %r2 48
	add	%r3 %r2 %r2
	out	%r2
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
	j	bl_cont.27291 
bl_else.27290 :
	addi	%r0 %r2 48
	add	%r1 %r2 %r1
	out	%r1
bl_cont.27291 :
bl_cont.27289 :
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
bl_else.27257 :
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
	bge	%r1 %r13 bl_else.27293 
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
	bge	%r1 %r13 bl_else.27294 
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
	j	bl_cont.27295 
bl_else.27294 :
bl_cont.27295 :
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
	bg	%r3 %r2 ble_else.27296 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r5
	j	ble_cont.27297 
ble_else.27296 :
	mov	%r2 %r5
ble_cont.27297 :
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bl_else.27293 :
	retl
init_line_elements.3089 :
	addi	%r0 %r3 0
	bg	%r3 %r2 ble_else.27299 
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
ble_else.27299 :
	retl
calc_dirvec.3099 :
	lw.s	%r24 %f4 8
	lw	%r24 %r4 4
	addi	%r0 %r5 5
	bg	%r5 %r1 ble_else.27300 
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
	add	%r4 %r1 %r25
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
ble_else.27300 :
	mul.s	%f1 %f1 %f0
	addi	%r0 %r4 l.23551
	ilw.s	%r4 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f1 0
	div.s	%f0 %f1 %f1
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f5 0
	fbg	%f5 %f1 fble_else.27302 
	addi	%r0 %r4 l.23272
	ilw.s	%r4 %f5 0
	fbge	%f1 %f5 fbl_else.27304 
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
	j	fbl_cont.27305 
fbl_else.27304 :
	addi	%r0 %r4 l.23274
	ilw.s	%r4 %f5 0
	fbge	%f1 %f5 fbl_else.27306 
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	sub.s	%f5 %f1 %f5
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f6 0
	add.s	%f6 %f1 %f1
	div.s	%f1 %f5 %f1
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.22312
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
	j	fbl_cont.27307 
fbl_else.27306 :
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	div.s	%f1 %f5 %f1
	addi	%r0 %r4 l.22339
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.23278
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
fbl_cont.27307 :
fbl_cont.27305 :
	j	fble_cont.27303 
fble_else.27302 :
	neg.s	%f1 %f1
	addi	%r0 %r4 l.23272
	ilw.s	%r4 %f5 0
	fbge	%f1 %f5 fbl_else.27308 
	addi	%r0 %r4 l.22339
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.22306
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
	j	fbl_cont.27309 
fbl_else.27308 :
	addi	%r0 %r4 l.23274
	ilw.s	%r4 %f5 0
	fbge	%f1 %f5 fbl_else.27310 
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	sub.s	%f5 %f1 %f5
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f6 0
	add.s	%f6 %f1 %f1
	div.s	%f1 %f5 %f1
	addi	%r0 %r4 l.22339
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.22312
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
	j	fbl_cont.27311 
fbl_else.27310 :
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	div.s	%f1 %f5 %f1
	addi	%r0 %r4 l.22308
	ilw.s	%r4 %f5 0
	addi	%r0 %r4 l.23278
	ilw.s	%r4 %f6 0
	neg.s	%f1 %f7
	mul.s	%f1 %f7 %f7
	addi	%r0 %r4 l.23280
	ilw.s	%r4 %f8 0
	mul.s	%f1 %f8 %f8
	addi	%r0 %r4 l.23282
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23284
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23286
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23288
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	addi	%r0 %r4 l.23290
	ilw.s	%r4 %f9 0
	mul.s	%f1 %f9 %f9
	mul.s	%f7 %f8 %f8
	add.s	%f8 %f9 %f8
	mul.s	%f7 %f8 %f7
	add.s	%f7 %f1 %f1
	add.s	%f1 %f6 %f1
	mul.s	%f5 %f1 %f1
fbl_cont.27311 :
fbl_cont.27309 :
fble_cont.27303 :
	mul.s	%f2 %f1 %f1
	sw.s	%r26 %f2 0
	sw	%r26 %r3 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw.s	%r26 %f3 24
	sw	%r26 %r1 32
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw.s	%r26 %f4 56
	mov.s	%f4 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sin.2619 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	cos.2621 
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
	fbg	%f3 %f2 fble_else.27314 
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27316 
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
	j	fbl_cont.27317 
fbl_else.27316 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27318 
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
	j	fbl_cont.27319 
fbl_else.27318 :
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
fbl_cont.27319 :
fbl_cont.27317 :
	j	fble_cont.27315 
fble_else.27314 :
	neg.s	%f2 %f2
	addi	%r0 %r2 l.23272
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27320 
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
	j	fbl_cont.27321 
fbl_else.27320 :
	addi	%r0 %r2 l.23274
	ilw.s	%r2 %f3 0
	fbge	%f2 %f3 fbl_else.27322 
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
	j	fbl_cont.27323 
fbl_else.27322 :
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
fbl_cont.27323 :
fbl_cont.27321 :
fble_cont.27315 :
	lw.s	%r26 %f3 24
	mul.s	%f3 %f2 %f2
	lw.s	%r26 %f4 56
	sw.s	%r26 %f0 72
	sw	%r26 %r1 80
	sw.s	%r26 %f1 88
	sw.s	%r26 %f2 96
	mov.s	%f2 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	sin.2619 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 96
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	cos.2621 
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
	bg	%r5 %r1 ble_else.27325 
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
	bg	%r3 %r2 ble_else.27327 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.27328 
ble_else.27327 :
ble_cont.27328 :
	lw.s	%r26 %f0 8
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27325 :
	retl
calc_dirvec_rows.3112 :
	lw	%r24 %r4 4
	addi	%r0 %r5 0
	bg	%r5 %r1 ble_else.27330 
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
	bg	%r3 %r2 ble_else.27331 
	addi	%r0 %r3 5
	sub	%r2 %r3 %r2
	j	ble_cont.27332 
ble_else.27331 :
ble_cont.27332 :
	addi	%r0 %r3 4
	lw	%r26 %r4 4
	add	%r4 %r3 %r3
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
ble_else.27330 :
	retl
create_dirvec_elements.3118 :
	addi	%r0 %r4 0
	bg	%r4 %r3 ble_else.27334 
	addi	%r0 %r4 3
	addi	%r0 %r5 l.22306
	ilw.s	%r5 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	mov	%r4 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	lw	%r26 %r3 8
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 12
	sw	%r2 %r1 0
	mov	%r2 %r1
	lw	%r26 %r2 4
	slli	%r2 %r3 2
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r3
	lw	%r26 %r1 8
	mov	%r4 %r2
	j	create_dirvec_elements.3118
ble_else.27334 :
	retl
create_dirvecs.3121 :
	addi	%r0 %r4 0
	bg	%r4 %r3 ble_else.27336 
	addi	%r0 %r4 120
	addi	%r0 %r5 3
	addi	%r0 %r6 l.22306
	ilw.s	%r6 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	mov	%r5 %r1
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
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 4
	slli	%r2 %r3 2
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	sw	%r25 %r1 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	lw	%r26 %r5 12
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_dirvec_elements.3118 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 4
	sub	%r2 %r1 %r3
	lw	%r26 %r1 0
	lw	%r26 %r2 12
	j	create_dirvecs.3121
ble_else.27336 :
	retl
init_dirvec_constants.3123 :
	addi	%r0 %r5 0
	bg	%r5 %r4 ble_else.27338 
	slli	%r4 %r5 2
	add	%r3 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 0
	slli	%r6 %r6 2
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r7 1
	sub	%r6 %r7 %r6
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r4 12
	mov	%r6 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	iter_setup_dirvec_constants.2905 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	j	init_dirvec_constants.3123
ble_else.27338 :
	retl
init_vecset_constants.3126 :
	addi	%r0 %r5 0
	bg	%r5 %r4 ble_else.27340 
	slli	%r4 %r5 2
	add	%r1 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r6 119
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r4 12
	mov	%r6 %r4
	mov	%r2 %r1
	mov	%r3 %r2
	mov	%r5 %r3
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	init_dirvec_constants.3123 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	lw	%r26 %r2 12
	sub	%r2 %r1 %r4
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	j	init_vecset_constants.3126
ble_else.27340 :
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
