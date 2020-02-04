#data_section
l.65 :	# 3.141593
	.float	0x40490fdb
l.64 :	# 128.000000
	.float	0x43000000
l.63 :	# 0.900000
	.float	0x3f666666
l.62 :	# 150.000000
	.float	0x43160000
l.61 :	# -150.000000
	.float	0xc3160000
l.60 :	# 0.100000
	.float	0x3dcccccd
l.59 :	# -2.000000
	.float	0xc0000000
l.58 :	# 0.003906
	.float	0x3b800000
l.57 :	# -0.200000
	.float	0xbe4ccccd
l.56 :	# 100000000.000000
	.float	0x4cbebc20
l.55 :	# -0.100000
	.float	0xbdcccccd
l.54 :	# 0.010000
	.float	0x3c23d70a
l.53 :	# 1000000000.000000
	.float	0x4e6e6b28
l.52 :	# 20.000000
	.float	0x41a00000
l.51 :	# 0.050000
	.float	0x3d4ccccd
l.50 :	# 0.250000
	.float	0x3e800000
l.49 :	# 10.000000
	.float	0x41200000
l.48 :	# 0.300000
	.float	0x3e99999a
l.47 :	# 255.000000
	.float	0x437f0000
l.46 :	# 0.150000
	.float	0x3e19999a
l.45 :	# 3.141593
	.float	0x40490fdb
l.44 :	# 30.000000
	.float	0x41f00000
l.43 :	# 15.000000
	.float	0x41700000
l.42 :	# 0.000100
	.float	0x38d1b717
l.41 :	# 2.000000
	.float	0x40000000
l.40 :	# -200.000000
	.float	0xc3480000
l.39 :	# 200.000000
	.float	0x43480000
l.38 :	# 0.017453
	.float	0x3c8efa35
l.37 :	# -1.570796
	.float	0xbfc90fdb
l.36 :	# 2.437500
	.float	0x401c0000
l.35 :	# 0.437500
	.float	0x3ee00000
l.34 :	# 0.333333
	.float	0x3eaaaaaa
l.33 :	# 0.200000
	.float	0x3e4ccccd
l.32 :	# 0.142857
	.float	0x3e124925
l.31 :	# 0.111111
	.float	0x3de38e38
l.30 :	# 0.089764
	.float	0x3db7d66e
l.29 :	# 0.060035
	.float	0x3d75e7c5
l.28 :	# -1.000000
	.float	0xbf800000
l.27 :	# 0.000000
	.float	0x0
l.26 :	# 6.283185
	.float	0x40c90fdb
l.25 :	# 0.500000
	.float	0x3f000000
l.24 :	# 0.041664
	.float	0x3d2aa789
l.23 :	# 0.001370
	.float	0x3ab38106
l.22 :	# 1.570796
	.float	0x3fc90fdb
l.21 :	# 0.785398
	.float	0x3f490fdb
l.20 :	# 1.000000
	.float	0x3f800000
l.19 :	# 0.166667
	.float	0x3e2aaaac
l.18 :	# 0.008333
	.float	0x3c088666
l.17 :	# 0.000196
	.float	0x394d64b6
#text_section
program_start :
	addi	%r0 %r28 return_point.58
tail_b.856 :
	ilw.s	%r0 %f0 l.65
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 0
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 sin.0
	lw	%r26 %r30 0
	sw	%r30 %r1 0
	lw	%r26 %r30 0
	sw.s	%r30 %f0 4
	lw	%r26 %r27 4
	mov	%r27 %r25
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 cos.0
	sw	%r25 %r1 0
	sw.s	%r25 %f0 4
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r25 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r15
	lw	%r26 %r25 8
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 12
	sw	%r26 %r25 8
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_float_array
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r15 12
	lw	%r26 %r25 8
	addi	%r0 %r7 60
	addi	%r0 %r2 0
	addi	%r0 %r8 0
	addi	%r0 %r5 0
	addi	%r0 %r6 0
	addi	%r0 %r4 0
	lw	%r26 %r27 4
	mov	%r27 %r3
	lw	%r26 %r27 4
	addi	%r27 %r27 44
	sw	%r26 %r27 4
	sw	%r3 %r1 40
	sw	%r3 %r1 36
	sw	%r3 %r1 32
	sw	%r3 %r1 28
	sw	%r3 %r4 24
	sw	%r3 %r1 20
	sw	%r3 %r1 16
	sw	%r3 %r6 12
	sw	%r3 %r5 8
	sw	%r3 %r8 4
	sw	%r3 %r2 0
	mov	%r3 %r2
	sw	%r26 %r15 16
	sw	%r26 %r25 12
	mov	%r7 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r1 8
	lw	%r26 %r15 16
	lw	%r26 %r25 12
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 16
	sw	%r26 %r25 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r15 16
	lw	%r26 %r25 12
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 24
	sw	%r26 %r25 20
	sw	%r26 %r2 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	sw	%r26 %r1 12
	lw	%r26 %r15 24
	lw	%r26 %r25 20
	lw	%r26 %r2 16
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 24
	sw	%r26 %r25 20
	sw	%r26 %r2 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r19
	lw	%r26 %r15 24
	lw	%r26 %r25 20
	lw	%r26 %r2 16
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.47
	sw	%r26 %r15 32
	sw	%r26 %r25 28
	sw	%r26 %r19 24
	sw	%r26 %r2 20
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	sw	%r26 %r1 16
	lw	%r26 %r15 32
	lw	%r26 %r25 28
	lw	%r26 %r19 24
	lw	%r26 %r2 20
	addi	%r0 %r1 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r15 36
	sw	%r26 %r25 32
	sw	%r26 %r1 28
	sw	%r26 %r19 24
	sw	%r26 %r2 20
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_array
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov	%r1 %r3
	lw	%r26 %r15 36
	lw	%r26 %r25 32
	lw	%r26 %r1 28
	lw	%r26 %r19 24
	lw	%r26 %r2 20
	sw	%r26 %r15 32
	sw	%r26 %r25 28
	sw	%r26 %r19 24
	sw	%r26 %r2 20
	mov	%r3 %r2
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r4
	lw	%r26 %r15 32
	lw	%r26 %r25 28
	lw	%r26 %r19 24
	lw	%r26 %r2 20
	addi	%r0 %r3 1
	addi	%r0 %r1 1
	lw	%r4 %r5 0
	sw	%r26 %r15 40
	sw	%r26 %r25 36
	sw	%r26 %r3 32
	sw	%r26 %r4 28
	sw	%r26 %r19 24
	sw	%r26 %r2 20
	mov	%r5 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r15 40
	lw	%r26 %r25 36
	lw	%r26 %r3 32
	lw	%r26 %r4 28
	lw	%r26 %r19 24
	lw	%r26 %r2 20
	sw	%r26 %r15 40
	sw	%r26 %r25 36
	sw	%r26 %r4 32
	sw	%r26 %r19 28
	sw	%r26 %r2 24
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw	%r26 %r1 20
	lw	%r26 %r15 40
	lw	%r26 %r25 36
	lw	%r26 %r4 32
	lw	%r26 %r19 28
	lw	%r26 %r2 24
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 44
	sw	%r26 %r25 40
	sw	%r26 %r4 36
	sw	%r26 %r19 32
	sw	%r26 %r2 28
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_float_array
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	sw	%r26 %r1 24
	lw	%r26 %r15 44
	lw	%r26 %r25 40
	lw	%r26 %r4 36
	lw	%r26 %r19 32
	lw	%r26 %r2 28
	addi	%r0 %r1 1
	addi	%r0 %r3 0
	sw	%r26 %r15 44
	sw	%r26 %r25 40
	sw	%r26 %r4 36
	sw	%r26 %r19 32
	sw	%r26 %r2 28
	mov	%r3 %r2
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_array
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r23
	lw	%r26 %r15 44
	lw	%r26 %r25 40
	lw	%r26 %r4 36
	lw	%r26 %r19 32
	lw	%r26 %r2 28
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.53
	sw	%r26 %r15 48
	sw	%r26 %r25 44
	sw	%r26 %r23 40
	sw	%r26 %r4 36
	sw	%r26 %r19 32
	sw	%r26 %r2 28
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r29
	lw	%r26 %r15 48
	lw	%r26 %r25 44
	lw	%r26 %r23 40
	lw	%r26 %r4 36
	lw	%r26 %r19 32
	lw	%r26 %r2 28
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 52
	sw	%r26 %r29 48
	sw	%r26 %r25 44
	sw	%r26 %r23 40
	sw	%r26 %r4 36
	sw	%r26 %r19 32
	sw	%r26 %r2 28
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_float_array
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r10
	lw	%r26 %r15 52
	lw	%r26 %r29 48
	lw	%r26 %r25 44
	lw	%r26 %r23 40
	lw	%r26 %r4 36
	lw	%r26 %r19 32
	lw	%r26 %r2 28
	addi	%r0 %r3 1
	addi	%r0 %r1 0
	sw	%r26 %r15 60
	sw	%r26 %r10 56
	sw	%r26 %r29 52
	sw	%r26 %r25 48
	sw	%r26 %r23 44
	sw	%r26 %r4 40
	sw	%r26 %r19 36
	sw	%r26 %r2 32
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	sw	%r26 %r1 28
	lw	%r26 %r15 60
	lw	%r26 %r10 56
	lw	%r26 %r29 52
	lw	%r26 %r25 48
	lw	%r26 %r23 44
	lw	%r26 %r4 40
	lw	%r26 %r19 36
	lw	%r26 %r2 32
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 64
	sw	%r26 %r10 60
	sw	%r26 %r29 56
	sw	%r26 %r25 52
	sw	%r26 %r23 48
	sw	%r26 %r4 44
	sw	%r26 %r19 40
	sw	%r26 %r2 36
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	sw	%r26 %r1 32
	lw	%r26 %r15 64
	lw	%r26 %r10 60
	lw	%r26 %r29 56
	lw	%r26 %r25 52
	lw	%r26 %r23 48
	lw	%r26 %r4 44
	lw	%r26 %r19 40
	lw	%r26 %r2 36
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 68
	sw	%r26 %r10 64
	sw	%r26 %r29 60
	sw	%r26 %r25 56
	sw	%r26 %r23 52
	sw	%r26 %r4 48
	sw	%r26 %r19 44
	sw	%r26 %r2 40
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	min_caml_create_float_array
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	sw	%r26 %r1 36
	lw	%r26 %r15 68
	lw	%r26 %r10 64
	lw	%r26 %r29 60
	lw	%r26 %r25 56
	lw	%r26 %r23 52
	lw	%r26 %r4 48
	lw	%r26 %r19 44
	lw	%r26 %r2 40
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	sw	%r26 %r1 40
	lw	%r26 %r15 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r11
	lw	%r26 %r15 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r1 2
	addi	%r0 %r3 0
	sw	%r26 %r15 76
	sw	%r26 %r11 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	mov	%r3 %r2
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	min_caml_create_array
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	mov	%r1 %r8
	lw	%r26 %r15 76
	lw	%r26 %r11 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r3 2
	addi	%r0 %r1 0
	sw	%r26 %r15 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r17
	lw	%r26 %r15 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r1 1
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 84
	sw	%r26 %r17 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	min_caml_create_float_array
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	mov	%r1 %r24
	lw	%r26 %r15 84
	lw	%r26 %r17 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 88
	sw	%r26 %r24 84
	sw	%r26 %r17 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r10 68
	sw	%r26 %r29 64
	sw	%r26 %r25 60
	sw	%r26 %r23 56
	sw	%r26 %r4 52
	sw	%r26 %r19 48
	sw	%r26 %r2 44
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov	%r1 %r6
	lw	%r26 %r15 88
	lw	%r26 %r24 84
	lw	%r26 %r17 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r10 68
	lw	%r26 %r29 64
	lw	%r26 %r25 60
	lw	%r26 %r23 56
	lw	%r26 %r4 52
	lw	%r26 %r19 48
	lw	%r26 %r2 44
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 96
	sw	%r26 %r6 92
	sw	%r26 %r24 88
	sw	%r26 %r17 84
	sw	%r26 %r8 80
	sw	%r26 %r11 76
	sw	%r26 %r10 72
	sw	%r26 %r29 68
	sw	%r26 %r25 64
	sw	%r26 %r23 60
	sw	%r26 %r4 56
	sw	%r26 %r19 52
	sw	%r26 %r2 48
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	sw	%r26 %r1 44
	lw	%r26 %r15 96
	lw	%r26 %r6 92
	lw	%r26 %r24 88
	lw	%r26 %r17 84
	lw	%r26 %r8 80
	lw	%r26 %r11 76
	lw	%r26 %r10 72
	lw	%r26 %r29 68
	lw	%r26 %r25 64
	lw	%r26 %r23 60
	lw	%r26 %r4 56
	lw	%r26 %r19 52
	lw	%r26 %r2 48
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 96
	sw	%r26 %r6 92
	sw	%r26 %r24 88
	sw	%r26 %r17 84
	sw	%r26 %r8 80
	sw	%r26 %r11 76
	sw	%r26 %r10 72
	sw	%r26 %r29 68
	sw	%r26 %r25 64
	sw	%r26 %r23 60
	sw	%r26 %r4 56
	sw	%r26 %r19 52
	sw	%r26 %r2 48
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r9
	lw	%r26 %r15 96
	lw	%r26 %r6 92
	lw	%r26 %r24 88
	lw	%r26 %r17 84
	lw	%r26 %r8 80
	lw	%r26 %r11 76
	lw	%r26 %r10 72
	lw	%r26 %r29 68
	lw	%r26 %r25 64
	lw	%r26 %r23 60
	lw	%r26 %r4 56
	lw	%r26 %r19 52
	lw	%r26 %r2 48
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 104
	sw	%r26 %r9 100
	sw	%r26 %r6 96
	sw	%r26 %r24 92
	sw	%r26 %r17 88
	sw	%r26 %r8 84
	sw	%r26 %r11 80
	sw	%r26 %r10 76
	sw	%r26 %r29 72
	sw	%r26 %r25 68
	sw	%r26 %r23 64
	sw	%r26 %r4 60
	sw	%r26 %r19 56
	sw	%r26 %r2 52
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	sw	%r26 %r1 48
	lw	%r26 %r15 104
	lw	%r26 %r9 100
	lw	%r26 %r6 96
	lw	%r26 %r24 92
	lw	%r26 %r17 88
	lw	%r26 %r8 84
	lw	%r26 %r11 80
	lw	%r26 %r10 76
	lw	%r26 %r29 72
	lw	%r26 %r25 68
	lw	%r26 %r23 64
	lw	%r26 %r4 60
	lw	%r26 %r19 56
	lw	%r26 %r2 52
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 104
	sw	%r26 %r9 100
	sw	%r26 %r6 96
	sw	%r26 %r24 92
	sw	%r26 %r17 88
	sw	%r26 %r8 84
	sw	%r26 %r11 80
	sw	%r26 %r10 76
	sw	%r26 %r29 72
	sw	%r26 %r25 68
	sw	%r26 %r23 64
	sw	%r26 %r4 60
	sw	%r26 %r19 56
	sw	%r26 %r2 52
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r18
	lw	%r26 %r15 104
	lw	%r26 %r9 100
	lw	%r26 %r6 96
	lw	%r26 %r24 92
	lw	%r26 %r17 88
	lw	%r26 %r8 84
	lw	%r26 %r11 80
	lw	%r26 %r10 76
	lw	%r26 %r29 72
	lw	%r26 %r25 68
	lw	%r26 %r23 64
	lw	%r26 %r4 60
	lw	%r26 %r19 56
	lw	%r26 %r2 52
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r18 112
	sw	%r26 %r15 108
	sw	%r26 %r9 104
	sw	%r26 %r6 100
	sw	%r26 %r24 96
	sw	%r26 %r17 92
	sw	%r26 %r8 88
	sw	%r26 %r11 84
	sw	%r26 %r10 80
	sw	%r26 %r29 76
	sw	%r26 %r25 72
	sw	%r26 %r23 68
	sw	%r26 %r4 64
	sw	%r26 %r19 60
	sw	%r26 %r2 56
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	sw	%r26 %r1 52
	lw	%r26 %r18 112
	lw	%r26 %r15 108
	lw	%r26 %r9 104
	lw	%r26 %r6 100
	lw	%r26 %r24 96
	lw	%r26 %r17 92
	lw	%r26 %r8 88
	lw	%r26 %r11 84
	lw	%r26 %r10 80
	lw	%r26 %r29 76
	lw	%r26 %r25 72
	lw	%r26 %r23 68
	lw	%r26 %r4 64
	lw	%r26 %r19 60
	lw	%r26 %r2 56
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r18 112
	sw	%r26 %r15 108
	sw	%r26 %r9 104
	sw	%r26 %r6 100
	sw	%r26 %r24 96
	sw	%r26 %r17 92
	sw	%r26 %r8 88
	sw	%r26 %r11 84
	sw	%r26 %r10 80
	sw	%r26 %r29 76
	sw	%r26 %r25 72
	sw	%r26 %r23 68
	sw	%r26 %r4 64
	sw	%r26 %r19 60
	sw	%r26 %r2 56
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r3
	lw	%r26 %r18 112
	lw	%r26 %r15 108
	lw	%r26 %r9 104
	lw	%r26 %r6 100
	lw	%r26 %r24 96
	lw	%r26 %r17 92
	lw	%r26 %r8 88
	lw	%r26 %r11 84
	lw	%r26 %r10 80
	lw	%r26 %r29 76
	lw	%r26 %r25 72
	lw	%r26 %r23 68
	lw	%r26 %r4 64
	lw	%r26 %r19 60
	lw	%r26 %r2 56
	addi	%r0 %r1 0
	sw	%r26 %r18 116
	sw	%r26 %r15 112
	sw	%r26 %r9 108
	sw	%r26 %r6 104
	sw	%r26 %r24 100
	sw	%r26 %r17 96
	sw	%r26 %r8 92
	sw	%r26 %r11 88
	sw	%r26 %r10 84
	sw	%r26 %r29 80
	sw	%r26 %r25 76
	sw	%r26 %r23 72
	sw	%r26 %r4 68
	sw	%r26 %r19 64
	sw	%r26 %r2 60
	sw	%r26 %r3 56
	mov	%r3 %r2
	sw	%r26 %r28 120
	addi	%r26 %r26 124
	jal	min_caml_create_array
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	lw	%r26 %r18 116
	lw	%r26 %r15 112
	lw	%r26 %r9 108
	lw	%r26 %r6 104
	lw	%r26 %r24 100
	lw	%r26 %r17 96
	lw	%r26 %r8 92
	lw	%r26 %r11 88
	lw	%r26 %r10 84
	lw	%r26 %r29 80
	lw	%r26 %r25 76
	lw	%r26 %r23 72
	lw	%r26 %r4 68
	lw	%r26 %r19 64
	lw	%r26 %r2 60
	lw	%r26 %r3 56
	addi	%r0 %r5 0
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 56
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	lw	%r26 %r30 56
	sw	%r30 %r1 4
	lw	%r26 %r30 56
	sw	%r30 %r3 0
	lw	%r26 %r30 56
	mov	%r30 %r1
	sw	%r26 %r18 116
	sw	%r26 %r15 112
	sw	%r26 %r9 108
	sw	%r26 %r6 104
	sw	%r26 %r24 100
	sw	%r26 %r17 96
	sw	%r26 %r8 92
	sw	%r26 %r11 88
	sw	%r26 %r10 84
	sw	%r26 %r29 80
	sw	%r26 %r25 76
	sw	%r26 %r23 72
	sw	%r26 %r4 68
	sw	%r26 %r19 64
	sw	%r26 %r2 60
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 120
	addi	%r26 %r26 124
	jal	min_caml_create_array
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	mov	%r1 %r3
	lw	%r26 %r18 116
	lw	%r26 %r15 112
	lw	%r26 %r9 108
	lw	%r26 %r6 104
	lw	%r26 %r24 100
	lw	%r26 %r17 96
	lw	%r26 %r8 92
	lw	%r26 %r11 88
	lw	%r26 %r10 84
	lw	%r26 %r29 80
	lw	%r26 %r25 76
	lw	%r26 %r23 72
	lw	%r26 %r4 68
	lw	%r26 %r19 64
	lw	%r26 %r2 60
	addi	%r0 %r1 5
	sw	%r26 %r18 116
	sw	%r26 %r15 112
	sw	%r26 %r9 108
	sw	%r26 %r6 104
	sw	%r26 %r24 100
	sw	%r26 %r17 96
	sw	%r26 %r8 92
	sw	%r26 %r11 88
	sw	%r26 %r10 84
	sw	%r26 %r29 80
	sw	%r26 %r25 76
	sw	%r26 %r23 72
	sw	%r26 %r4 68
	sw	%r26 %r19 64
	sw	%r26 %r2 60
	mov	%r3 %r2
	sw	%r26 %r28 120
	addi	%r26 %r26 124
	jal	min_caml_create_array
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	mov	%r1 %r7
	lw	%r26 %r18 116
	lw	%r26 %r15 112
	lw	%r26 %r9 108
	lw	%r26 %r6 104
	lw	%r26 %r24 100
	lw	%r26 %r17 96
	lw	%r26 %r8 92
	lw	%r26 %r11 88
	lw	%r26 %r10 84
	lw	%r26 %r29 80
	lw	%r26 %r25 76
	lw	%r26 %r23 72
	lw	%r26 %r4 68
	lw	%r26 %r19 64
	lw	%r26 %r2 60
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r18 120
	sw	%r26 %r15 116
	sw	%r26 %r9 112
	sw	%r26 %r6 108
	sw	%r26 %r24 104
	sw	%r26 %r17 100
	sw	%r26 %r8 96
	sw	%r26 %r11 92
	sw	%r26 %r10 88
	sw	%r26 %r29 84
	sw	%r26 %r25 80
	sw	%r26 %r23 76
	sw	%r26 %r4 72
	sw	%r26 %r19 68
	sw	%r26 %r2 64
	sw	%r26 %r7 60
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r3
	lw	%r26 %r18 120
	lw	%r26 %r15 116
	lw	%r26 %r9 112
	lw	%r26 %r6 108
	lw	%r26 %r24 104
	lw	%r26 %r17 100
	lw	%r26 %r8 96
	lw	%r26 %r11 92
	lw	%r26 %r10 88
	lw	%r26 %r29 84
	lw	%r26 %r25 80
	lw	%r26 %r23 76
	lw	%r26 %r4 72
	lw	%r26 %r19 68
	lw	%r26 %r2 64
	lw	%r26 %r7 60
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r18 124
	sw	%r26 %r15 120
	sw	%r26 %r9 116
	sw	%r26 %r6 112
	sw	%r26 %r24 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r11 96
	sw	%r26 %r10 92
	sw	%r26 %r29 88
	sw	%r26 %r25 84
	sw	%r26 %r23 80
	sw	%r26 %r4 76
	sw	%r26 %r19 72
	sw	%r26 %r2 68
	sw	%r26 %r3 64
	sw	%r26 %r7 60
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	min_caml_create_float_array
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	mov	%r1 %r14
	lw	%r26 %r18 124
	lw	%r26 %r15 120
	lw	%r26 %r9 116
	lw	%r26 %r6 112
	lw	%r26 %r24 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r11 96
	lw	%r26 %r10 92
	lw	%r26 %r29 88
	lw	%r26 %r25 84
	lw	%r26 %r23 80
	lw	%r26 %r4 76
	lw	%r26 %r19 72
	lw	%r26 %r2 68
	lw	%r26 %r3 64
	lw	%r26 %r7 60
	addi	%r0 %r1 60
	sw	%r26 %r18 124
	sw	%r26 %r15 120
	sw	%r26 %r9 116
	sw	%r26 %r6 112
	sw	%r26 %r24 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r11 96
	sw	%r26 %r10 92
	sw	%r26 %r29 88
	sw	%r26 %r25 84
	sw	%r26 %r23 80
	sw	%r26 %r4 76
	sw	%r26 %r19 72
	sw	%r26 %r2 68
	sw	%r26 %r14 64
	sw	%r26 %r7 60
	mov	%r3 %r2
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	min_caml_create_array
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	mov	%r1 %r3
	lw	%r26 %r18 124
	lw	%r26 %r15 120
	lw	%r26 %r9 116
	lw	%r26 %r6 112
	lw	%r26 %r24 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r11 96
	lw	%r26 %r10 92
	lw	%r26 %r29 88
	lw	%r26 %r25 84
	lw	%r26 %r23 80
	lw	%r26 %r4 76
	lw	%r26 %r19 72
	lw	%r26 %r2 68
	lw	%r26 %r14 64
	lw	%r26 %r7 60
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	sw	%r1 %r3 4
	sw	%r1 %r14 0
	mov	%r1 %r30
	sw	%r26 %r30 60
	addi	%r0 %r1 0
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r18 128
	sw	%r26 %r15 124
	sw	%r26 %r9 120
	sw	%r26 %r6 116
	sw	%r26 %r24 112
	sw	%r26 %r17 108
	sw	%r26 %r8 104
	sw	%r26 %r11 100
	sw	%r26 %r10 96
	sw	%r26 %r29 92
	sw	%r26 %r25 88
	sw	%r26 %r23 84
	sw	%r26 %r4 80
	sw	%r26 %r19 76
	sw	%r26 %r2 72
	sw	%r26 %r14 68
	sw	%r26 %r7 64
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r1 %r5
	lw	%r26 %r18 128
	lw	%r26 %r15 124
	lw	%r26 %r9 120
	lw	%r26 %r6 116
	lw	%r26 %r24 112
	lw	%r26 %r17 108
	lw	%r26 %r8 104
	lw	%r26 %r11 100
	lw	%r26 %r10 96
	lw	%r26 %r29 92
	lw	%r26 %r25 88
	lw	%r26 %r23 84
	lw	%r26 %r4 80
	lw	%r26 %r19 76
	lw	%r26 %r2 72
	lw	%r26 %r14 68
	lw	%r26 %r7 64
	addi	%r0 %r1 0
	sw	%r26 %r18 132
	sw	%r26 %r15 128
	sw	%r26 %r9 124
	sw	%r26 %r6 120
	sw	%r26 %r24 116
	sw	%r26 %r17 112
	sw	%r26 %r8 108
	sw	%r26 %r11 104
	sw	%r26 %r10 100
	sw	%r26 %r29 96
	sw	%r26 %r25 92
	sw	%r26 %r23 88
	sw	%r26 %r4 84
	sw	%r26 %r19 80
	sw	%r26 %r2 76
	sw	%r26 %r5 72
	sw	%r26 %r14 68
	sw	%r26 %r7 64
	mov	%r5 %r2
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	min_caml_create_array
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw	%r26 %r18 132
	lw	%r26 %r15 128
	lw	%r26 %r9 124
	lw	%r26 %r6 120
	lw	%r26 %r24 116
	lw	%r26 %r17 112
	lw	%r26 %r8 108
	lw	%r26 %r11 104
	lw	%r26 %r10 100
	lw	%r26 %r29 96
	lw	%r26 %r25 92
	lw	%r26 %r23 88
	lw	%r26 %r4 84
	lw	%r26 %r19 80
	lw	%r26 %r2 76
	lw	%r26 %r5 72
	lw	%r26 %r14 68
	lw	%r26 %r7 64
	lw	%r26 %r27 4
	mov	%r27 %r3
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	sw	%r3 %r1 4
	sw	%r3 %r5 0
	addi	%r0 %r1 180
	addi	%r0 %r5 0
	ilw.s	%r0 %f0 l.27
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 64
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	lw	%r26 %r30 64
	sw.s	%r30 %f0 8
	lw	%r26 %r30 64
	sw	%r30 %r3 4
	lw	%r26 %r30 64
	sw	%r30 %r5 0
	lw	%r26 %r30 64
	mov	%r30 %r3
	sw	%r26 %r18 132
	sw	%r26 %r15 128
	sw	%r26 %r9 124
	sw	%r26 %r6 120
	sw	%r26 %r24 116
	sw	%r26 %r17 112
	sw	%r26 %r8 108
	sw	%r26 %r11 104
	sw	%r26 %r10 100
	sw	%r26 %r29 96
	sw	%r26 %r25 92
	sw	%r26 %r23 88
	sw	%r26 %r4 84
	sw	%r26 %r19 80
	sw	%r26 %r2 76
	sw	%r26 %r14 72
	sw	%r26 %r7 68
	mov	%r3 %r2
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	min_caml_create_array
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	mov	%r1 %r22
	lw	%r26 %r18 132
	lw	%r26 %r15 128
	lw	%r26 %r9 124
	lw	%r26 %r6 120
	lw	%r26 %r24 116
	lw	%r26 %r17 112
	lw	%r26 %r8 108
	lw	%r26 %r11 104
	lw	%r26 %r10 100
	lw	%r26 %r29 96
	lw	%r26 %r25 92
	lw	%r26 %r23 88
	lw	%r26 %r4 84
	lw	%r26 %r19 80
	lw	%r26 %r2 76
	lw	%r26 %r14 72
	lw	%r26 %r7 68
	addi	%r0 %r1 1
	addi	%r0 %r30 0
	sw	%r26 %r30 68
	sw	%r26 %r18 144
	sw	%r26 %r15 140
	sw	%r26 %r9 136
	sw	%r26 %r6 132
	sw	%r26 %r24 128
	sw	%r26 %r17 124
	sw	%r26 %r8 120
	sw	%r26 %r11 116
	sw	%r26 %r10 112
	sw	%r26 %r29 108
	sw	%r26 %r25 104
	sw	%r26 %r23 100
	sw	%r26 %r4 96
	sw	%r26 %r19 92
	sw	%r26 %r2 88
	sw	%r26 %r22 84
	sw	%r26 %r14 80
	sw	%r26 %r7 76
	lw	%r26 %r2 68
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_array
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	sw	%r26 %r1 72
	lw	%r26 %r18 144
	lw	%r26 %r15 140
	lw	%r26 %r9 136
	lw	%r26 %r6 132
	lw	%r26 %r24 128
	lw	%r26 %r17 124
	lw	%r26 %r8 120
	lw	%r26 %r11 116
	lw	%r26 %r10 112
	lw	%r26 %r29 108
	lw	%r26 %r25 104
	lw	%r26 %r23 100
	lw	%r26 %r4 96
	lw	%r26 %r19 92
	lw	%r26 %r2 88
	lw	%r26 %r22 84
	lw	%r26 %r14 80
	lw	%r26 %r7 76
	lw	%r26 %r27 4
	mov	%r27 %r5
	lw	%r26 %r27 4
	addi	%r27 %r27 32
	sw	%r26 %r27 4
	addi	%r0 %r1 read_screen_settings.0
	sw	%r5 %r1 0
	lw	%r26 %r30 12
	sw	%r5 %r30 28
	lw	%r26 %r30 0
	sw	%r5 %r30 24
	sw	%r5 %r18 20
	lw	%r26 %r30 48
	sw	%r5 %r30 16
	sw	%r5 %r9 12
	sw	%r5 %r2 8
	sw	%r5 %r25 4
	lw	%r26 %r27 4
	mov	%r27 %r13
	lw	%r26 %r27 4
	addi	%r27 %r27 20
	sw	%r26 %r27 4
	addi	%r0 %r30 read_light.0
	sw	%r26 %r30 76
	lw	%r26 %r30 76
	sw	%r13 %r30 0
	lw	%r26 %r30 0
	sw	%r13 %r30 16
	sw	%r13 %r19 12
	sw	%r13 %r25 8
	lw	%r26 %r30 16
	sw	%r13 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r30 rotate_quadratic_matrix.0
	sw	%r26 %r30 80
	lw	%r26 %r30 80
	sw	%r1 %r30 0
	lw	%r26 %r30 0
	sw	%r1 %r30 8
	sw	%r1 %r25 4
	lw	%r26 %r27 4
	mov	%r27 %r3
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r30 read_nth_object.0
	sw	%r26 %r30 84
	lw	%r26 %r30 84
	sw	%r3 %r30 0
	sw	%r3 %r1 8
	lw	%r26 %r30 8
	sw	%r3 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r2
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_rect_surface.0
	sw	%r2 %r1 0
	lw	%r26 %r30 24
	sw	%r2 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 88
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_rect.0
	lw	%r26 %r30 88
	sw	%r30 %r1 0
	lw	%r26 %r30 88
	sw	%r30 %r2 4
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r30 solver_second.0
	sw	%r26 %r30 92
	lw	%r26 %r30 92
	sw	%r1 %r30 0
	lw	%r26 %r30 24
	sw	%r1 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 96
	lw	%r26 %r27 4
	addi	%r27 %r27 20
	sw	%r26 %r27 4
	addi	%r0 %r2 solver.0
	lw	%r26 %r30 96
	sw	%r30 %r2 0
	lw	%r26 %r30 96
	sw	%r30 %r1 16
	lw	%r26 %r30 88
	lw	%r26 %r31 96
	sw	%r31 %r30 12
	lw	%r26 %r30 24
	lw	%r26 %r31 96
	sw	%r31 %r30 8
	lw	%r26 %r30 8
	lw	%r26 %r31 96
	sw	%r31 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r12
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_rect_fast.0
	sw	%r12 %r1 0
	lw	%r26 %r30 24
	sw	%r12 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 100
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_surface_fast.0
	lw	%r26 %r30 100
	sw	%r30 %r1 0
	lw	%r26 %r30 24
	lw	%r26 %r31 100
	sw	%r31 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 104
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_second_fast.0
	lw	%r26 %r30 104
	sw	%r30 %r1 0
	lw	%r26 %r30 24
	lw	%r26 %r31 104
	sw	%r31 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r21
	lw	%r26 %r27 4
	addi	%r27 %r27 20
	sw	%r26 %r27 4
	addi	%r0 %r1 solver_fast.0
	sw	%r21 %r1 0
	lw	%r26 %r30 100
	sw	%r21 %r30 16
	lw	%r26 %r30 104
	sw	%r21 %r30 12
	sw	%r21 %r12 8
	lw	%r26 %r30 8
	sw	%r21 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r30 solver_second_fast2.0
	sw	%r26 %r30 108
	lw	%r26 %r30 108
	sw	%r1 %r30 0
	lw	%r26 %r30 24
	sw	%r1 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 112
	lw	%r26 %r27 4
	addi	%r27 %r27 20
	sw	%r26 %r27 4
	addi	%r0 %r2 solver_fast2.0
	lw	%r26 %r30 112
	sw	%r30 %r2 0
	lw	%r26 %r30 112
	sw	%r30 %r1 16
	lw	%r26 %r30 112
	sw	%r30 %r12 12
	lw	%r26 %r30 24
	lw	%r26 %r31 112
	sw	%r31 %r30 8
	lw	%r26 %r30 8
	lw	%r26 %r31 112
	sw	%r31 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 116
	lw	%r26 %r27 4
	addi	%r27 %r27 16
	sw	%r26 %r27 4
	addi	%r0 %r1 setup_startp.0
	lw	%r26 %r30 116
	sw	%r30 %r1 0
	lw	%r26 %r30 44
	lw	%r26 %r31 116
	sw	%r31 %r30 12
	lw	%r26 %r30 8
	lw	%r26 %r31 116
	sw	%r31 %r30 8
	lw	%r26 %r30 116
	sw	%r30 %r15 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 120
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r1 get_nvector_rect.0
	lw	%r26 %r30 120
	sw	%r30 %r1 0
	lw	%r26 %r30 32
	lw	%r26 %r31 120
	sw	%r31 %r30 8
	lw	%r26 %r30 120
	sw	%r30 %r23 4
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r30 get_nvector_plane.0
	sw	%r26 %r30 124
	lw	%r26 %r30 124
	sw	%r1 %r30 0
	lw	%r26 %r30 32
	sw	%r1 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 128
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r2 get_nvector_second.0
	lw	%r26 %r30 128
	sw	%r30 %r2 0
	lw	%r26 %r30 32
	lw	%r26 %r31 128
	sw	%r31 %r30 8
	lw	%r26 %r30 128
	sw	%r30 %r10 4
	lw	%r26 %r27 4
	mov	%r27 %r20
	lw	%r26 %r27 4
	addi	%r27 %r27 16
	sw	%r26 %r27 4
	addi	%r0 %r2 utexture.0
	sw	%r20 %r2 0
	lw	%r26 %r30 36
	sw	%r20 %r30 12
	lw	%r26 %r30 0
	sw	%r20 %r30 8
	sw	%r20 %r25 4
	lw	%r26 %r27 4
	mov	%r27 %r2
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r12 add_light.0
	sw	%r2 %r12 0
	lw	%r26 %r30 36
	sw	%r2 %r30 8
	sw	%r2 %r11 4
	lw	%r26 %r27 4
	mov	%r27 %r16
	lw	%r26 %r27 4
	addi	%r27 %r27 68
	sw	%r26 %r27 4
	addi	%r0 %r30 trace_reflections.0
	sw	%r26 %r30 132
	lw	%r26 %r30 132
	sw	%r16 %r30 0
	sw	%r16 %r29 64
	lw	%r26 %r30 44
	sw	%r16 %r30 60
	lw	%r26 %r30 112
	sw	%r16 %r30 56
	sw	%r16 %r21 52
	lw	%r26 %r30 24
	sw	%r16 %r30 48
	sw	%r16 %r22 44
	lw	%r26 %r30 20
	sw	%r16 %r30 40
	lw	%r26 %r30 8
	sw	%r16 %r30 36
	lw	%r26 %r30 32
	sw	%r16 %r30 32
	lw	%r26 %r30 60
	sw	%r16 %r30 28
	sw	%r16 %r19 24
	sw	%r16 %r23 20
	sw	%r16 %r10 16
	lw	%r26 %r30 28
	sw	%r16 %r30 12
	sw	%r16 %r4 8
	sw	%r16 %r2 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 136
	lw	%r26 %r27 4
	addi	%r27 %r27 108
	sw	%r26 %r27 4
	addi	%r0 %r12 trace_ray.0
	lw	%r26 %r30 136
	sw	%r30 %r12 0
	lw	%r26 %r30 136
	sw	%r30 %r20 104
	lw	%r26 %r30 136
	sw	%r30 %r16 100
	lw	%r26 %r30 136
	sw	%r30 %r29 96
	lw	%r26 %r30 36
	lw	%r26 %r31 136
	sw	%r31 %r30 92
	lw	%r26 %r30 44
	lw	%r26 %r31 136
	sw	%r31 %r30 88
	lw	%r26 %r30 136
	sw	%r30 %r6 84
	lw	%r26 %r30 136
	sw	%r30 %r21 80
	lw	%r26 %r30 24
	lw	%r26 %r31 136
	sw	%r31 %r30 76
	lw	%r26 %r30 96
	lw	%r26 %r31 136
	sw	%r31 %r30 72
	lw	%r26 %r30 136
	sw	%r30 %r11 68
	lw	%r26 %r30 20
	lw	%r26 %r31 136
	sw	%r31 %r30 64
	lw	%r26 %r30 8
	lw	%r26 %r31 136
	sw	%r31 %r30 60
	lw	%r26 %r30 32
	lw	%r26 %r31 136
	sw	%r31 %r30 56
	lw	%r26 %r30 72
	lw	%r26 %r31 136
	sw	%r31 %r30 52
	lw	%r26 %r30 136
	sw	%r30 %r15 48
	lw	%r26 %r30 60
	lw	%r26 %r31 136
	sw	%r31 %r30 44
	lw	%r26 %r30 136
	sw	%r30 %r19 40
	lw	%r26 %r30 136
	sw	%r30 %r23 36
	lw	%r26 %r30 136
	sw	%r30 %r10 32
	lw	%r26 %r30 28
	lw	%r26 %r31 136
	sw	%r31 %r30 28
	lw	%r26 %r30 128
	lw	%r26 %r31 136
	sw	%r31 %r30 24
	lw	%r26 %r30 120
	lw	%r26 %r31 136
	sw	%r31 %r30 20
	lw	%r26 %r30 136
	sw	%r30 %r1 16
	lw	%r26 %r30 16
	lw	%r26 %r31 136
	sw	%r31 %r30 12
	lw	%r26 %r30 136
	sw	%r30 %r4 8
	lw	%r26 %r30 136
	sw	%r30 %r2 4
	lw	%r26 %r27 4
	mov	%r27 %r2
	lw	%r26 %r27 4
	addi	%r27 %r27 84
	sw	%r26 %r27 4
	addi	%r0 %r12 trace_diffuse_ray.0
	sw	%r2 %r12 0
	sw	%r2 %r20 80
	sw	%r2 %r29 76
	lw	%r26 %r30 36
	sw	%r2 %r30 72
	lw	%r26 %r30 44
	sw	%r2 %r30 68
	lw	%r26 %r30 112
	sw	%r2 %r30 64
	sw	%r2 %r21 60
	lw	%r26 %r30 24
	sw	%r2 %r30 56
	lw	%r26 %r30 20
	sw	%r2 %r30 52
	lw	%r26 %r30 8
	sw	%r2 %r30 48
	lw	%r26 %r30 32
	sw	%r2 %r30 44
	lw	%r26 %r30 60
	sw	%r2 %r30 40
	sw	%r2 %r19 36
	sw	%r2 %r23 32
	sw	%r2 %r10 28
	lw	%r26 %r30 28
	sw	%r2 %r30 24
	lw	%r26 %r30 128
	sw	%r2 %r30 20
	lw	%r26 %r30 120
	sw	%r2 %r30 16
	sw	%r2 %r1 12
	lw	%r26 %r30 40
	sw	%r2 %r30 8
	sw	%r2 %r4 4
	lw	%r26 %r27 4
	mov	%r27 %r1
	lw	%r26 %r27 4
	addi	%r27 %r27 16
	sw	%r26 %r27 4
	addi	%r0 %r10 trace_diffuse_ray_80percent.0
	sw	%r1 %r10 0
	sw	%r1 %r2 12
	lw	%r26 %r30 116
	sw	%r1 %r30 8
	sw	%r1 %r7 4
	lw	%r26 %r27 4
	mov	%r27 %r10
	lw	%r26 %r27 4
	addi	%r27 %r27 12
	sw	%r26 %r27 4
	addi	%r0 %r12 calc_diffuse_using_5points.0
	sw	%r10 %r12 0
	sw	%r10 %r11 8
	lw	%r26 %r30 40
	sw	%r10 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 140
	lw	%r26 %r27 4
	addi	%r27 %r27 8
	sw	%r26 %r27 4
	addi	%r0 %r12 write_ppm_header.0
	lw	%r26 %r30 140
	sw	%r30 %r12 0
	lw	%r26 %r30 140
	sw	%r30 %r8 4
	lw	%r26 %r27 4
	mov	%r27 %r30
	sw	%r26 %r30 144
	lw	%r26 %r27 4
	addi	%r27 %r27 64
	sw	%r26 %r27 4
	addi	%r0 %r12 pretrace_line.0
	lw	%r26 %r30 144
	sw	%r30 %r12 0
	lw	%r26 %r30 12
	lw	%r26 %r31 144
	sw	%r31 %r30 60
	lw	%r26 %r30 136
	lw	%r26 %r31 144
	sw	%r31 %r30 56
	lw	%r26 %r30 144
	sw	%r30 %r2 52
	lw	%r26 %r30 144
	sw	%r30 %r6 48
	lw	%r26 %r30 116
	lw	%r26 %r31 144
	sw	%r31 %r30 44
	lw	%r26 %r30 144
	sw	%r30 %r18 40
	lw	%r26 %r30 48
	lw	%r26 %r31 144
	sw	%r31 %r30 36
	lw	%r26 %r30 144
	sw	%r30 %r9 32
	lw	%r26 %r30 144
	sw	%r30 %r24 28
	lw	%r26 %r30 144
	sw	%r30 %r11 24
	lw	%r26 %r30 52
	lw	%r26 %r31 144
	sw	%r31 %r30 20
	lw	%r26 %r30 144
	sw	%r30 %r8 16
	lw	%r26 %r30 144
	sw	%r30 %r17 12
	lw	%r26 %r30 144
	sw	%r30 %r7 8
	lw	%r26 %r30 40
	lw	%r26 %r31 144
	sw	%r31 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r6
	lw	%r26 %r27 4
	addi	%r27 %r27 16
	sw	%r26 %r27 4
	addi	%r0 %r2 calc_dirvec_rows.0
	sw	%r6 %r2 0
	lw	%r26 %r30 0
	sw	%r6 %r30 12
	sw	%r6 %r7 8
	sw	%r6 %r25 4
	lw	%r26 %r27 4
	mov	%r27 %r9
	lw	%r26 %r27 4
	addi	%r27 %r27 24
	sw	%r26 %r27 4
	addi	%r0 %r2 setup_rect_reflection.0
	sw	%r9 %r2 0
	sw	%r9 %r22 20
	lw	%r26 %r30 8
	sw	%r9 %r30 16
	lw	%r26 %r30 72
	sw	%r9 %r30 12
	sw	%r9 %r15 8
	sw	%r9 %r19 4
	lw	%r26 %r27 4
	mov	%r27 %r2
	lw	%r26 %r27 4
	addi	%r27 %r27 24
	sw	%r26 %r27 4
	addi	%r0 %r12 setup_surface_reflection.0
	sw	%r2 %r12 0
	sw	%r2 %r22 20
	lw	%r26 %r30 8
	sw	%r2 %r30 16
	lw	%r26 %r30 72
	sw	%r2 %r30 12
	sw	%r2 %r15 8
	sw	%r2 %r19 4
	lw	%r26 %r27 4
	mov	%r27 %r12
	lw	%r26 %r27 4
	addi	%r27 %r27 16
	sw	%r26 %r27 4
	addi	%r0 %r16 setup_reflections.0
	sw	%r12 %r16 0
	sw	%r12 %r2 12
	sw	%r12 %r9 8
	lw	%r26 %r30 8
	sw	%r12 %r30 4
	lw	%r26 %r27 4
	mov	%r27 %r29
	lw	%r26 %r27 4
	addi	%r27 %r27 92
	sw	%r26 %r27 4
	addi	%r0 %r2 rt.0
	sw	%r29 %r2 0
	lw	%r26 %r30 140
	sw	%r29 %r30 88
	sw	%r29 %r14 84
	sw	%r29 %r1 80
	sw	%r29 %r12 76
	sw	%r29 %r24 72
	sw	%r29 %r11 68
	sw	%r29 %r5 64
	sw	%r29 %r3 60
	sw	%r29 %r13 56
	lw	%r26 %r30 144
	sw	%r29 %r30 52
	lw	%r26 %r30 20
	sw	%r29 %r30 48
	lw	%r26 %r30 8
	sw	%r29 %r30 44
	sw	%r29 %r15 40
	lw	%r26 %r30 60
	sw	%r29 %r30 36
	sw	%r29 %r19 32
	sw	%r29 %r8 28
	sw	%r29 %r17 24
	sw	%r29 %r7 20
	lw	%r26 %r30 40
	sw	%r29 %r30 16
	sw	%r29 %r6 12
	sw	%r29 %r10 8
	sw	%r29 %r4 4
	addi	%r0 %r1 128
	addi	%r0 %r2 128
	sw	%r26 %r28 148
	lw	%r29 %r30 0
	addi	%r26 %r26 152
	jalr	%r30
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 0
return_point.58 :
	add	%r0 %r0 %r0
	ret
kernel_sin.0 :
	mov.s	%f1 %f4
	mov.s	%f0 %f1
tail_b.0 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.17
	mul.s	%f1 %f0 %f3
	ilw.s	%r0 %f0 l.18
	mul.s	%f1 %f0 %f0
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f0 %f3
	ilw.s	%r0 %f0 l.19
	mul.s	%f1 %f0 %f5
	mul.s	%f2 %f3 %f0
	add.s	%f0 %f5 %f3
	ilw.s	%r0 %f0 l.20
	mul.s	%f1 %f0 %f0
	mul.s	%f2 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f0
return_point.0 :
	retl
sin3.0 :
	mov.s	%f1 %f3
branching_b.0 :
	ilw.s	%r0 %f1 l.21
	fbg	%f0 %f1 tail_b.2
	mov.s	%f3 %f1
	j	kernel_sin.0
tail_b.2 :
	ilw.s	%r0 %f1 l.22
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.23
	ilw.s	%r0 %f2 l.24
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.25
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.20
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
return_point.1 :
	retl
cos3.0 :
	mov.s	%f0 %f2
branching_b.1 :
	ilw.s	%r0 %f0 l.21
	fbg	%f2 %f0 tail_b.4
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.23
	ilw.s	%r0 %f2 l.24
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.25
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.20
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	j	return_point.2
tail_b.4 :
	ilw.s	%r0 %f0 l.22
	sub.s	%f2 %f0 %f0
	j	kernel_sin.0
return_point.2 :
	retl
sin.0 :
	mov.s	%f0 %f1
branching_b.2 :
	lw.s	%r29 %f3 4
	ilw.s	%r0 %f0 l.26
	fbg	%f0 %f1 branching_b.3
	ilw.s	%r0 %f0 l.26
	sub.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.3 :
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 branching_b.4
	ilw.s	%r0 %f0 l.26
	add.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.4 :
	fbg	%f3 %f1 branching_b.6
	sub.s	%f3 %f1 %f0
	ilw.s	%r0 %f1 l.28
	ilw.s	%r0 %f2 l.22
	fbg	%f2 %f0 tail_b.8
	sub.s	%f0 %f3 %f0
	j	sin3.0
tail_b.8 :
	j	sin3.0
branching_b.6 :
	ilw.s	%r0 %f2 l.20
	ilw.s	%r0 %f0 l.22
	fbg	%f0 %f1 tail_b.10
	sub.s	%f1 %f3 %f0
	mov.s	%f2 %f1
	j	sin3.0
tail_b.10 :
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	j	sin3.0
cos.0 :
	mov.s	%f0 %f2
branching_b.7 :
	lw.s	%r29 %f0 4
	ilw.s	%r0 %f1 l.26
	fbg	%f1 %f2 branching_b.8
	ilw.s	%r0 %f0 l.26
	sub.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.8 :
	ilw.s	%r0 %f1 l.27
	fbge	%f2 %f1 branching_b.9
	ilw.s	%r0 %f0 l.26
	add.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.9 :
	fbg	%f0 %f2 branching_b.11
	sub.s	%f0 %f2 %f1
	ilw.s	%r0 %f3 l.28
	ilw.s	%r0 %f2 l.22
	fbg	%f2 %f1 tail_b.14
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.20
	j	cos3.0
tail_b.14 :
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	j	cos3.0
branching_b.11 :
	ilw.s	%r0 %f1 l.20
	ilw.s	%r0 %f3 l.22
	fbg	%f3 %f2 tail_b.16
	sub.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.28
	j	cos3.0
tail_b.16 :
	mov.s	%f2 %f0
	j	cos3.0
kernel_atan.0 :
	mov.s	%f2 %f6
	mov.s	%f0 %f3
tail_b.17 :
	neg.s	%f3 %f0
	mul.s	%f3 %f0 %f5
	ilw.s	%r0 %f0 l.29
	mul.s	%f3 %f0 %f2
	ilw.s	%r0 %f0 l.30
	mul.s	%f3 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.31
	mul.s	%f3 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.32
	mul.s	%f3 %f2 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.33
	mul.s	%f3 %f0 %f0
	mul.s	%f5 %f2 %f2
	add.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.34
	mul.s	%f3 %f0 %f2
	mul.s	%f5 %f4 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f1 %f0 %f0
return_point.5 :
	retl
atan.0 :
	mov.s	%f0 %f2
branching_b.12 :
	ilw.s	%r0 %f0 l.27
	fbg	%f0 %f2 branching_b.15
	ilw.s	%r0 %f0 l.35
	fbge	%f2 %f0 branching_b.14
	ilw.s	%r0 %f1 l.20
	ilw.s	%r0 %f0 l.27
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f30 %f0
	j	kernel_atan.0
branching_b.14 :
	ilw.s	%r0 %f0 l.36
	fbge	%f2 %f0 tail_b.20
	ilw.s	%r0 %f0 l.20
	sub.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.20
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.20
	ilw.s	%r0 %f2 l.21
	j	kernel_atan.0
tail_b.20 :
	ilw.s	%r0 %f0 l.20
	div.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.28
	ilw.s	%r0 %f2 l.37
	j	kernel_atan.0
branching_b.15 :
	neg.s	%f2 %f3
	ilw.s	%r0 %f0 l.35
	fbge	%f3 %f0 branching_b.16
	ilw.s	%r0 %f1 l.28
	ilw.s	%r0 %f2 l.27
	mov.s	%f3 %f0
	j	kernel_atan.0
branching_b.16 :
	ilw.s	%r0 %f0 l.36
	fbge	%f3 %f0 tail_b.23
	ilw.s	%r0 %f0 l.20
	sub.s	%f0 %f3 %f1
	ilw.s	%r0 %f0 l.20
	add.s	%f0 %f3 %f0
	div.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.28
	ilw.s	%r0 %f2 l.21
	j	kernel_atan.0
tail_b.23 :
	ilw.s	%r0 %f0 l.20
	div.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.20
	ilw.s	%r0 %f2 l.37
	j	kernel_atan.0
print_int.0 :
	mov	%r1 %r3
branching_b.17 :
	addi	%r0 %r1 100
	div	%r3 %r1 %r5
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r3 %r1 %r1
	addi	%r0 %r4 10
	div	%r1 %r4 %r4
	addi	%r0 %r1 100
	mul	%r5 %r1 %r1
	sub	%r3 %r1 %r1
	addi	%r0 %r3 10
	mul	%r4 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.24
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.25
	addi	%r3 %r1 48
	out	%r1
	j	return_point.7
tail_b.25 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	j	return_point.7
tail_b.24 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
return_point.7 :
	mov	%r2 %r1
	retl
vecunit_sgn.0 :
	mov	%r1 %r4
branching_b.19 :
	lw.s	%r4 %f0 0
	mul.s	%f0 %f0 %f0
	lw.s	%r4 %f1 4
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r4 %f0 8
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.28
	addi	%r0 %r1 1
	j	branching_b.20
tail_b.28 :
	addi	%r0 %r1 0
branching_b.20 :
	addi	%r0 %r5 0
	beq	%r1 %r5 branching_b.21
	ilw.s	%r0 %f0 l.20
	j	tail_b.32
branching_b.21 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.29
	ilw.s	%r0 %f0 l.28
	div.s	%f1 %f0 %f0
	j	tail_b.32
tail_b.29 :
	ilw.s	%r0 %f0 l.20
	div.s	%f1 %f0 %f0
tail_b.32 :
	lw.s	%r4 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r4 %f1 0
	lw.s	%r4 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r4 %f1 4
	lw.s	%r4 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r4 %f0 8
return_point.8 :
	mov	%r3 %r1
	retl
veciprod.0 :
tail_b.33 :
	lw.s	%r1 %f1 0
	lw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r1 %f2 4
	lw.s	%r2 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f2
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
return_point.9 :
	retl
vecaccum.0 :
	mov	%r1 %r3
	mov.s	%f0 %f2
tail_b.34 :
	lw.s	%r3 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r3 %f0 0
	lw.s	%r3 %f1 4
	lw.s	%r2 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r3 %f0 4
	lw.s	%r3 %f0 8
	lw.s	%r2 %f1 8
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
return_point.10 :
	retl
vecadd.0 :
tail_b.35 :
	lw.s	%r1 %f1 0
	lw.s	%r2 %f0 0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f0 4
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
return_point.11 :
	mov	%r3 %r1
	retl
vecaccumv.0 :
	mov	%r3 %r4
tail_b.36 :
	lw.s	%r1 %f1 0
	lw.s	%r2 %f2 0
	lw.s	%r4 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f2 4
	lw.s	%r2 %f1 4
	lw.s	%r4 %f0 4
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	lw.s	%r4 %f0 8
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
return_point.12 :
	mov	%r3 %r1
	retl
read_screen_settings.0 :
tail_b.37 :
	lw	%r29 %r5 28
	lw	%r29 %r3 24
	lw	%r29 %r2 20
	lw	%r29 %r4 16
	lw	%r29 %r7 12
	lw	%r29 %r1 8
	lw	%r29 %r29 4
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	ilw.s	%r0 %f1 l.38
	mul.s	%f1 %f0 %f0
	sw	%r26 %r6 32
	sw.s	%r26 %f0 28
	sw	%r26 %r29 24
	sw	%r26 %r1 20
	sw	%r26 %r7 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f2
	lw	%r26 %r6 32
	lw.s	%r26 %f0 28
	lw	%r26 %r29 24
	lw	%r26 %r1 20
	lw	%r26 %r7 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	sw	%r26 %r6 32
	sw.s	%r26 %f2 28
	sw	%r26 %r29 24
	sw	%r26 %r1 20
	sw	%r26 %r7 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	mov	%r3 %r29
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f4
	lw	%r26 %r6 32
	lw.s	%r26 %f2 28
	lw	%r26 %r29 24
	lw	%r26 %r1 20
	lw	%r26 %r7 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	fin	%f1
	ilw.s	%r0 %f0 l.38
	mul.s	%f0 %f1 %f0
	sw	%r26 %r6 36
	sw.s	%r26 %f0 32
	sw.s	%r26 %f4 28
	sw.s	%r26 %f2 24
	sw	%r26 %r1 20
	sw	%r26 %r7 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f3
	lw	%r26 %r6 36
	lw.s	%r26 %f0 32
	lw.s	%r26 %f4 28
	lw.s	%r26 %f2 24
	lw	%r26 %r1 20
	lw	%r26 %r7 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	sw	%r26 %r6 32
	sw.s	%r26 %f3 28
	sw.s	%r26 %f4 24
	sw.s	%r26 %f2 20
	sw	%r26 %r1 16
	sw	%r26 %r7 12
	sw	%r26 %r4 8
	sw	%r26 %r2 4
	sw	%r26 %r5 0
	mov	%r3 %r29
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f5
	lw	%r26 %r6 32
	lw.s	%r26 %f3 28
	lw.s	%r26 %f4 24
	lw.s	%r26 %f2 20
	lw	%r26 %r1 16
	lw	%r26 %r7 12
	lw	%r26 %r4 8
	lw	%r26 %r2 4
	lw	%r26 %r5 0
	mul.s	%f5 %f2 %f0
	ilw.s	%r0 %f1 l.39
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	ilw.s	%r0 %f0 l.40
	mul.s	%f0 %f4 %f0
	sw.s	%r2 %f0 4
	mul.s	%f3 %f2 %f1
	ilw.s	%r0 %f0 l.39
	mul.s	%f0 %f1 %f0
	sw.s	%r2 %f0 8
	sw.s	%r7 %f3 0
	ilw.s	%r0 %f0 l.27
	sw.s	%r7 %f0 4
	neg.s	%f5 %f0
	sw.s	%r7 %f0 8
	neg.s	%f4 %f0
	mul.s	%f5 %f0 %f0
	sw.s	%r4 %f0 0
	neg.s	%f2 %f0
	sw.s	%r4 %f0 4
	neg.s	%f4 %f0
	mul.s	%f3 %f0 %f0
	sw.s	%r4 %f0 8
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f0 4
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 4
	lw.s	%r1 %f1 8
	lw.s	%r2 %f0 8
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 8
return_point.13 :
	mov	%r6 %r1
	retl
read_light.0 :
tail_b.38 :
	lw	%r29 %r5 16
	lw	%r29 %r1 12
	lw	%r29 %r2 8
	lw	%r29 %r4 4
	in	%r3
	fin	%f0
	ilw.s	%r0 %f1 l.38
	mul.s	%f1 %f0 %f1
	sw	%r26 %r6 20
	sw.s	%r26 %f1 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r1 4
	sw	%r26 %r5 0
	mov	%r5 %r29
	mov.s	%f1 %f0
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r6 20
	lw.s	%r26 %f1 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r1 4
	lw	%r26 %r5 0
	neg.s	%f0 %f0
	sw.s	%r1 %f0 4
	fin	%f2
	ilw.s	%r0 %f0 l.38
	mul.s	%f0 %f2 %f2
	sw	%r26 %r6 20
	sw.s	%r26 %f2 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r1 4
	sw	%r26 %r5 0
	mov	%r2 %r29
	mov.s	%f1 %f0
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r6 20
	lw.s	%r26 %f2 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r1 4
	lw	%r26 %r5 0
	sw	%r26 %r6 20
	sw.s	%r26 %f0 16
	sw.s	%r26 %f2 12
	sw	%r26 %r4 8
	sw	%r26 %r2 4
	sw	%r26 %r1 0
	mov	%r5 %r29
	mov.s	%f2 %f0
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f1
	lw	%r26 %r6 20
	lw.s	%r26 %f0 16
	lw.s	%r26 %f2 12
	lw	%r26 %r4 8
	lw	%r26 %r2 4
	lw	%r26 %r1 0
	mul.s	%f1 %f0 %f1
	sw.s	%r1 %f1 0
	sw	%r26 %r6 12
	sw.s	%r26 %f0 8
	sw	%r26 %r4 4
	sw	%r26 %r1 0
	mov	%r2 %r29
	mov.s	%f2 %f0
	sw	%r26 %r28 16
	lw	%r29 %r30 0
	addi	%r26 %r26 20
	jalr	%r30
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov.s	%f0 %f1
	lw	%r26 %r6 12
	lw.s	%r26 %f0 8
	lw	%r26 %r4 4
	lw	%r26 %r1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	fin	%f0
	sw.s	%r4 %f0 0
return_point.14 :
	mov	%r6 %r1
	retl
rotate_quadratic_matrix.0 :
	mov	%r2 %r3
tail_b.39 :
	lw	%r29 %r4 8
	lw	%r29 %r29 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	sw	%r26 %r28 20
	lw	%r29 %r30 0
	addi	%r26 %r26 24
	jalr	%r30
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov.s	%f0 %f8
	lw	%r26 %r2 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 0
	sw	%r26 %r2 20
	sw.s	%r26 %f8 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f11
	lw	%r26 %r2 20
	lw.s	%r26 %f8 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 4
	sw	%r26 %r2 24
	sw.s	%r26 %f11 20
	sw.s	%r26 %f8 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f12
	lw	%r26 %r2 24
	lw.s	%r26 %f11 20
	lw.s	%r26 %f8 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 4
	sw	%r26 %r2 28
	sw.s	%r26 %f12 24
	sw.s	%r26 %f11 20
	sw.s	%r26 %f8 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov.s	%f0 %f1
	lw	%r26 %r2 28
	lw.s	%r26 %f12 24
	lw.s	%r26 %f11 20
	lw.s	%r26 %f8 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 8
	sw	%r26 %r2 28
	sw.s	%r26 %f1 24
	sw.s	%r26 %f12 20
	sw.s	%r26 %f11 16
	sw.s	%r26 %f8 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov.s	%f0 %f4
	lw	%r26 %r2 28
	lw.s	%r26 %f1 24
	lw.s	%r26 %f12 20
	lw.s	%r26 %f11 16
	lw.s	%r26 %f8 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 8
	sw	%r26 %r2 28
	sw.s	%r26 %f4 24
	sw.s	%r26 %f1 20
	sw.s	%r26 %f12 16
	sw.s	%r26 %f11 12
	sw.s	%r26 %f8 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov.s	%f0 %f7
	lw	%r26 %r2 28
	lw.s	%r26 %f4 24
	lw.s	%r26 %f1 20
	lw.s	%r26 %f12 16
	lw.s	%r26 %f11 12
	lw.s	%r26 %f8 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	mul.s	%f4 %f12 %f3
	mul.s	%f1 %f11 %f0
	mul.s	%f4 %f0 %f0
	mul.s	%f7 %f8 %f2
	sub.s	%f2 %f0 %f6
	mul.s	%f1 %f8 %f0
	mul.s	%f4 %f0 %f0
	mul.s	%f7 %f11 %f2
	add.s	%f2 %f0 %f10
	mul.s	%f7 %f12 %f2
	mul.s	%f1 %f11 %f0
	mul.s	%f7 %f0 %f5
	mul.s	%f4 %f8 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f1 %f8 %f0
	mul.s	%f7 %f0 %f0
	mul.s	%f4 %f11 %f4
	sub.s	%f4 %f0 %f13
	neg.s	%f1 %f9
	mul.s	%f12 %f11 %f7
	mul.s	%f12 %f8 %f12
	lw.s	%r1 %f11 0
	lw.s	%r1 %f4 4
	lw.s	%r1 %f8 8
	mul.s	%f3 %f3 %f0
	mul.s	%f0 %f11 %f0
	mul.s	%f2 %f2 %f1
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f1
	mul.s	%f9 %f9 %f0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	mul.s	%f6 %f6 %f0
	mul.s	%f0 %f11 %f1
	mul.s	%f5 %f5 %f0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f7 %f7 %f0
	mul.s	%f0 %f8 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f11 %f1
	mul.s	%f13 %f13 %f0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f12 %f12 %f1
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	ilw.s	%r0 %f1 l.41
	mul.s	%f6 %f11 %f0
	mul.s	%f10 %f0 %f14
	mul.s	%f5 %f4 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f14 %f14
	mul.s	%f7 %f8 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f14 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 0
	ilw.s	%r0 %f14 l.41
	mul.s	%f3 %f11 %f0
	mul.s	%f10 %f0 %f1
	mul.s	%f2 %f4 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f9 %f8 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f0 %f14 %f0
	sw.s	%r3 %f0 4
	ilw.s	%r0 %f0 l.41
	mul.s	%f3 %f11 %f1
	mul.s	%f6 %f1 %f3
	mul.s	%f2 %f4 %f1
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f3 %f1
	mul.s	%f9 %f8 %f2
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f1 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
return_point.15 :
	mov	%r2 %r1
	retl
read_nth_object.0 :
	mov	%r1 %r14
branching_b.22 :
	lw	%r29 %r10 8
	lw	%r29 %r8 4
	in	%r6
	addi	%r0 %r1 -1
	bne	%r6 %r1 branching_b.23
	addi	%r0 %r1 0
	j	return_point.16
branching_b.23 :
	in	%r13
	in	%r4
	in	%r2
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_float_array
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r7
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	fin	%f0
	sw.s	%r7 %f0 0
	fin	%f0
	sw.s	%r7 %f0 4
	fin	%f0
	sw.s	%r7 %f0 8
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r7 32
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r12
	lw	%r26 %r7 32
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	fin	%f0
	sw.s	%r12 %f0 0
	fin	%f0
	sw.s	%r12 %f0 4
	fin	%f0
	sw.s	%r12 %f0 8
	fin	%f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.41
	addi	%r0 %r15 1
	j	branching_b.24
tail_b.41 :
	addi	%r0 %r15 0
branching_b.24 :
	addi	%r0 %r1 2
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 40
	sw	%r26 %r12 36
	sw	%r26 %r7 32
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r15 40
	lw	%r26 %r12 36
	lw	%r26 %r7 32
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r1 44
	sw	%r26 %r15 40
	sw	%r26 %r12 36
	sw	%r26 %r7 32
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	mov	%r3 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_float_array
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r3
	lw	%r26 %r1 44
	lw	%r26 %r15 40
	lw	%r26 %r12 36
	lw	%r26 %r7 32
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	fin	%f0
	sw.s	%r3 %f0 0
	fin	%f0
	sw.s	%r3 %f0 4
	fin	%f0
	sw.s	%r3 %f0 8
	addi	%r0 %r5 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	sw	%r26 %r15 40
	sw	%r26 %r12 36
	sw	%r26 %r7 32
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	mov	%r5 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r11
	lw	%r26 %r3 48
	lw	%r26 %r1 44
	lw	%r26 %r15 40
	lw	%r26 %r12 36
	lw	%r26 %r7 32
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	addi	%r0 %r5 0
	bne	%r2 %r5 tail_b.42
	j	branching_b.25
tail_b.42 :
	fin	%f0
	ilw.s	%r0 %f1 l.38
	mul.s	%f1 %f0 %f0
	sw.s	%r11 %f0 0
	fin	%f0
	ilw.s	%r0 %f1 l.38
	mul.s	%f1 %f0 %f0
	sw.s	%r11 %f0 4
	fin	%f1
	ilw.s	%r0 %f0 l.38
	mul.s	%f0 %f1 %f0
	sw.s	%r11 %f0 8
branching_b.25 :
	addi	%r0 %r5 2
	beq	%r13 %r5 tail_b.44
	mov	%r15 %r5
	j	branching_b.26
tail_b.44 :
	addi	%r0 %r5 1
branching_b.26 :
	addi	%r0 %r9 4
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r5 56
	sw	%r26 %r11 52
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	sw	%r26 %r15 40
	sw	%r26 %r12 36
	sw	%r26 %r7 32
	sw	%r26 %r2 28
	sw	%r26 %r4 24
	sw	%r26 %r13 20
	sw	%r26 %r6 16
	sw	%r26 %r8 12
	sw	%r26 %r10 8
	sw	%r26 %r14 4
	sw	%r26 %r27 0
	mov	%r9 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r9
	lw	%r26 %r5 56
	lw	%r26 %r11 52
	lw	%r26 %r3 48
	lw	%r26 %r1 44
	lw	%r26 %r15 40
	lw	%r26 %r12 36
	lw	%r26 %r7 32
	lw	%r26 %r2 28
	lw	%r26 %r4 24
	lw	%r26 %r13 20
	lw	%r26 %r6 16
	lw	%r26 %r8 12
	lw	%r26 %r10 8
	lw	%r26 %r14 4
	lw	%r26 %r27 0
	mov	%r27 %r16
	addi	%r27 %r27 44
	sw	%r16 %r9 40
	sw	%r16 %r11 36
	sw	%r16 %r3 32
	sw	%r16 %r1 28
	sw	%r16 %r5 24
	sw	%r16 %r12 20
	sw	%r16 %r7 16
	sw	%r16 %r2 12
	sw	%r16 %r4 8
	sw	%r16 %r13 4
	sw	%r16 %r6 0
	mov	%r16 %r1
	slli	%r14 %r3 2
	add	%r8 %r3 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 3
	beq	%r13 %r1 branching_b.27
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.46
	j	branching_b.47
branching_b.46 :
	addi	%r0 %r1 0
	beq	%r15 %r1 tail_b.80
	addi	%r0 %r1 0
	j	tail_b.82
tail_b.80 :
	addi	%r0 %r1 1
	j	tail_b.82
branching_b.27 :
	lw.s	%r7 %f1 0
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.47
	addi	%r0 %r1 1
	j	branching_b.28
tail_b.47 :
	addi	%r0 %r1 0
branching_b.28 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.29
	ilw.s	%r0 %f0 l.27
	j	branching_b.33
branching_b.29 :
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.49
	addi	%r0 %r1 1
	j	branching_b.30
tail_b.49 :
	addi	%r0 %r1 0
branching_b.30 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.31
	ilw.s	%r0 %f0 l.27
	j	tail_b.55
branching_b.31 :
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.51
	addi	%r0 %r1 1
	j	branching_b.32
tail_b.51 :
	addi	%r0 %r1 0
branching_b.32 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.52
	ilw.s	%r0 %f0 l.20
	j	tail_b.55
tail_b.52 :
	ilw.s	%r0 %f0 l.28
tail_b.55 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.33 :
	sw.s	%r7 %f0 0
	lw.s	%r7 %f1 4
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.58
	addi	%r0 %r3 1
	j	branching_b.34
tail_b.58 :
	addi	%r0 %r3 0
branching_b.34 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.35
	ilw.s	%r0 %f0 l.27
	j	branching_b.39
branching_b.35 :
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.60
	addi	%r0 %r1 1
	j	branching_b.36
tail_b.60 :
	addi	%r0 %r1 0
branching_b.36 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.37
	ilw.s	%r0 %f0 l.27
	j	tail_b.66
branching_b.37 :
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.62
	addi	%r0 %r3 1
	j	branching_b.38
tail_b.62 :
	addi	%r0 %r3 0
branching_b.38 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.63
	ilw.s	%r0 %f0 l.20
	j	tail_b.66
tail_b.63 :
	ilw.s	%r0 %f0 l.28
tail_b.66 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.39 :
	sw.s	%r7 %f0 4
	lw.s	%r7 %f1 8
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.69
	addi	%r0 %r1 1
	j	branching_b.40
tail_b.69 :
	addi	%r0 %r1 0
branching_b.40 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.41
	ilw.s	%r0 %f0 l.27
	j	tail_b.79
branching_b.41 :
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.71
	addi	%r0 %r3 1
	j	branching_b.42
tail_b.71 :
	addi	%r0 %r3 0
branching_b.42 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.43
	ilw.s	%r0 %f2 l.27
	j	tail_b.77
branching_b.43 :
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.73
	addi	%r0 %r1 1
	j	branching_b.44
tail_b.73 :
	addi	%r0 %r1 0
branching_b.44 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.74
	ilw.s	%r0 %f2 l.20
	j	tail_b.77
tail_b.74 :
	ilw.s	%r0 %f2 l.28
tail_b.77 :
	mul.s	%f1 %f1 %f0
	div.s	%f0 %f2 %f0
tail_b.79 :
	sw.s	%r7 %f0 8
	j	branching_b.47
tail_b.82 :
	sw	%r26 %r11 12
	sw	%r26 %r7 8
	sw	%r26 %r2 4
	sw	%r26 %r10 0
	mov	%r1 %r2
	mov	%r7 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	vecunit_sgn.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r11 12
	lw	%r26 %r7 8
	lw	%r26 %r2 4
	lw	%r26 %r10 0
branching_b.47 :
	addi	%r0 %r1 0
	bne	%r2 %r1 tail_b.84
	j	tail_b.86
tail_b.84 :
	mov	%r10 %r29
	mov	%r11 %r2
	mov	%r7 %r1
	sw	%r26 %r28 0
	lw	%r29 %r30 0
	addi	%r26 %r26 4
	jalr	%r30
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
tail_b.86 :
	addi	%r0 %r1 1
return_point.16 :
	retl
read_net_item.0 :
branching_b.48 :
	in	%r3
	addi	%r0 %r2 -1
	beq	%r3 %r2 tail_b.88
	addi	%r1 %r2 1
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	read_net_item.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r2
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	sw	%r31 %r3 0
	mov	%r2 %r1
	j	return_point.17
tail_b.88 :
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
return_point.17 :
	retl
read_or_network.0 :
	mov	%r1 %r3
branching_b.49 :
	addi	%r0 %r1 0
	sw	%r26 %r3 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r3 0
	lw	%r1 %r4 0
	addi	%r0 %r2 -1
	beq	%r4 %r2 tail_b.90
	addi	%r3 %r2 1
	sw	%r26 %r1 4
	sw	%r26 %r3 0
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	read_or_network.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r2
	lw	%r26 %r1 4
	lw	%r26 %r3 0
	slli	%r3 %r3 2
	add	%r2 %r3 %r31
	sw	%r31 %r1 0
	mov	%r2 %r1
	j	return_point.18
tail_b.90 :
	addi	%r3 %r2 1
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	j	min_caml_create_array
return_point.18 :
	retl
solver_rect_surface.0 :
	mov	%r4 %r6
	mov	%r3 %r8
	mov	%r2 %r9
	mov	%r1 %r2
branching_b.50 :
	lw	%r29 %r7 4
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f3 0
	ilw.s	%r0 %f4 l.27
	fbne	%f3 %f4 tail_b.93
	addi	%r0 %r3 1
	j	branching_b.51
tail_b.93 :
	addi	%r0 %r3 0
branching_b.51 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.52
	addi	%r0 %r1 0
	j	return_point.19
branching_b.52 :
	lw	%r2 %r3 16
	lw	%r2 %r2 24
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f4 0
	ilw.s	%r0 %f3 l.27
	fbge	%f4 %f3 tail_b.95
	addi	%r0 %r4 1
	j	branching_b.53
tail_b.95 :
	addi	%r0 %r4 0
branching_b.53 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.96
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.97
	addi	%r0 %r2 0
	j	branching_b.55
tail_b.97 :
	addi	%r0 %r2 1
	j	branching_b.55
tail_b.96 :
	mov	%r4 %r2
branching_b.55 :
	slli	%r8 %r1 2
	add	%r3 %r1 %r31
	lw.s	%r31 %f3 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.99
	mov.s	%f3 %f3
	j	branching_b.56
tail_b.99 :
	neg.s	%f3 %f3
branching_b.56 :
	sub.s	%f0 %f3 %f0
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f3 0
	div.s	%f3 %f0 %f3
	slli	%r6 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.102
	neg.s	%f1 %f0
	j	branching_b.57
tail_b.102 :
	mov.s	%f1 %f0
branching_b.57 :
	slli	%r6 %r1 2
	add	%r3 %r1 %r31
	lw.s	%r31 %f1 0
	fbge	%f0 %f1 tail_b.104
	addi	%r0 %r2 1
	j	branching_b.58
tail_b.104 :
	addi	%r0 %r2 0
branching_b.58 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.105
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.107
	neg.s	%f1 %f0
	j	branching_b.60
tail_b.107 :
	mov.s	%f1 %f0
	j	branching_b.60
tail_b.105 :
	addi	%r0 %r1 0
	j	return_point.19
branching_b.60 :
	slli	%r5 %r1 2
	add	%r3 %r1 %r31
	lw.s	%r31 %f1 0
	fbge	%f0 %f1 tail_b.109
	addi	%r0 %r2 1
	j	branching_b.61
tail_b.109 :
	addi	%r0 %r2 0
branching_b.61 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.110
	sw.s	%r7 %f3 0
	addi	%r0 %r1 1
	j	return_point.19
tail_b.110 :
	addi	%r0 %r1 0
return_point.19 :
	retl
solver_rect.0 :
	mov	%r1 %r6
branching_b.62 :
	lw	%r29 %r29 4
	addi	%r0 %r3 0
	addi	%r0 %r4 1
	addi	%r0 %r5 2
	sw	%r26 %r29 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f1 12
	sw.s	%r26 %f0 8
	sw	%r26 %r2 4
	sw	%r26 %r6 0
	mov	%r6 %r1
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r29 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f1 12
	lw.s	%r26 %f0 8
	lw	%r26 %r2 4
	lw	%r26 %r6 0
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.63
	addi	%r0 %r1 1
	j	return_point.20
branching_b.63 :
	addi	%r0 %r3 1
	addi	%r0 %r4 2
	addi	%r0 %r5 0
	sw	%r26 %r29 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f1 12
	sw.s	%r26 %f0 8
	sw	%r26 %r2 4
	sw	%r26 %r6 0
	mov	%r6 %r1
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f30 %f1
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r1 %r3
	lw	%r26 %r29 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f1 12
	lw.s	%r26 %f0 8
	lw	%r26 %r2 4
	lw	%r26 %r6 0
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.64
	addi	%r0 %r1 2
	j	return_point.20
branching_b.64 :
	addi	%r0 %r3 2
	addi	%r0 %r4 0
	addi	%r0 %r5 1
	mov	%r6 %r1
	mov.s	%f2 %f30
	mov.s	%f1 %f2
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 0
	lw	%r29 %r30 0
	addi	%r26 %r26 4
	jalr	%r30
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.113
	addi	%r0 %r1 3
	j	return_point.20
tail_b.113 :
	addi	%r0 %r1 0
return_point.20 :
	retl
quadratic.0 :
	mov	%r1 %r3
	mov.s	%f2 %f3
	mov.s	%f0 %f4
	mov.s	%f1 %f2
branching_b.65 :
	mul.s	%f4 %f4 %f0
	lw	%r3 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f2 %f2 %f0
	lw	%r3 %r1 16
	lw.s	%r1 %f5 4
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f3 %f1
	lw	%r3 %r1 16
	lw.s	%r1 %f5 8
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f5
	lw	%r3 %r2 12
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.117
	mul.s	%f3 %f2 %f0
	lw	%r3 %r1 36
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f1
	mul.s	%f4 %f3 %f0
	lw	%r3 %r1 36
	lw.s	%r1 %f3 4
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f2 %f4 %f0
	lw	%r3 %r1 36
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	j	return_point.21
tail_b.117 :
	mov.s	%f5 %f0
return_point.21 :
	retl
bilinear.0 :
	mov	%r1 %r3
	mov.s	%f2 %f8
	mov.s	%f0 %f6
	mov.s	%f1 %f2
branching_b.66 :
	mul.s	%f3 %f6 %f1
	lw	%r3 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f4 %f2 %f0
	lw	%r3 %r1 16
	lw.s	%r1 %f7 4
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f7
	mul.s	%f5 %f8 %f0
	lw	%r3 %r1 16
	lw.s	%r1 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	lw	%r3 %r1 12
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.119
	mul.s	%f4 %f8 %f0
	mul.s	%f5 %f2 %f1
	add.s	%f1 %f0 %f1
	lw	%r3 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f6 %f5
	mul.s	%f3 %f8 %f0
	add.s	%f0 %f5 %f5
	lw	%r3 %r1 36
	lw.s	%r1 %f0 4
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f5
	mul.s	%f4 %f6 %f1
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f1 %f0
	lw	%r3 %r1 36
	lw.s	%r1 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f1 %f0
	add.s	%f0 %f7 %f0
	j	return_point.22
tail_b.119 :
	mov.s	%f7 %f0
return_point.22 :
	retl
solver_second.0 :
	mov	%r2 %r3
	mov	%r1 %r2
	mov.s	%f1 %f4
	mov.s	%f0 %f1
branching_b.67 :
	lw	%r29 %r4 4
	lw.s	%r3 %f0 0
	lw.s	%r3 %f5 4
	lw.s	%r3 %f3 8
	sw	%r26 %r4 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f4 12
	sw.s	%r26 %f1 8
	sw	%r26 %r3 4
	sw	%r26 %r2 0
	mov	%r2 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	quadratic.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f5
	lw	%r26 %r4 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f4 12
	lw.s	%r26 %f1 8
	lw	%r26 %r3 4
	lw	%r26 %r2 0
	ilw.s	%r0 %f0 l.27
	fbne	%f5 %f0 tail_b.122
	addi	%r0 %r1 1
	j	branching_b.68
tail_b.122 :
	addi	%r0 %r1 0
branching_b.68 :
	addi	%r0 %r5 0
	beq	%r1 %r5 branching_b.69
	addi	%r0 %r1 0
	j	return_point.23
branching_b.69 :
	lw.s	%r3 %f3 0
	lw.s	%r3 %f6 4
	lw.s	%r3 %f0 8
	sw.s	%r26 %f5 20
	sw	%r26 %r4 16
	sw.s	%r26 %f2 12
	sw.s	%r26 %f4 8
	sw.s	%r26 %f1 4
	sw	%r26 %r2 0
	mov	%r2 %r1
	mov.s	%f2 %f5
	mov.s	%f0 %f2
	mov.s	%f3 %f0
	mov.s	%f1 %f3
	mov.s	%f6 %f1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	bilinear.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw.s	%r26 %f5 20
	lw	%r26 %r4 16
	lw.s	%r26 %f2 12
	lw.s	%r26 %f4 8
	lw.s	%r26 %f1 4
	lw	%r26 %r2 0
	sw.s	%r26 %f0 12
	sw.s	%r26 %f5 8
	sw	%r26 %r4 4
	sw	%r26 %r2 0
	mov	%r2 %r1
	mov.s	%f1 %f0
	mov.s	%f4 %f1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	quadratic.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov.s	%f0 %f2
	lw.s	%r26 %f0 12
	lw.s	%r26 %f5 8
	lw	%r26 %r4 4
	lw	%r26 %r2 0
	lw	%r2 %r3 4
	addi	%r0 %r1 3
	beq	%r3 %r1 tail_b.123
	mov.s	%f2 %f2
	j	branching_b.70
tail_b.123 :
	ilw.s	%r0 %f1 l.20
	sub.s	%f1 %f2 %f2
branching_b.70 :
	mul.s	%f0 %f0 %f1
	mul.s	%f2 %f5 %f2
	sub.s	%f2 %f1 %f2
	ilw.s	%r0 %f1 l.27
	fbge	%f1 %f2 tail_b.126
	addi	%r0 %r3 1
	j	branching_b.71
tail_b.126 :
	addi	%r0 %r3 0
branching_b.71 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.127
	sqrt.s	%f2 %f1
	lw	%r2 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.128
	mov.s	%f1 %f1
	j	tail_b.130
tail_b.128 :
	neg.s	%f1 %f1
	j	tail_b.130
tail_b.127 :
	addi	%r0 %r1 0
	j	return_point.23
tail_b.130 :
	sub.s	%f0 %f1 %f0
	div.s	%f5 %f0 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r1 1
return_point.23 :
	retl
solver.0 :
	mov	%r29 %r4
	mov	%r2 %r5
branching_b.73 :
	lw	%r4 %r29 16
	lw	%r4 %r6 12
	lw	%r4 %r2 8
	lw	%r4 %r4 4
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r4 0
	lw.s	%r3 %f0 0
	lw	%r4 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r3 %f0 4
	lw	%r4 %r1 20
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f1
	lw.s	%r3 %f0 8
	lw	%r4 %r1 20
	lw.s	%r1 %f2 8
	sub.s	%f2 %f0 %f3
	lw	%r4 %r3 4
	addi	%r0 %r1 1
	beq	%r3 %r1 tail_b.132
	addi	%r0 %r1 2
	beq	%r3 %r1 branching_b.75
	mov	%r5 %r2
	mov	%r4 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.75 :
	lw	%r4 %r4 16
	sw	%r26 %r4 16
	sw.s	%r26 %f3 12
	sw.s	%r26 %f1 8
	sw.s	%r26 %f5 4
	sw	%r26 %r2 0
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	veciprod.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov.s	%f0 %f4
	lw	%r26 %r4 16
	lw.s	%r26 %f3 12
	lw.s	%r26 %f1 8
	lw.s	%r26 %f5 4
	lw	%r26 %r2 0
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f4 tail_b.134
	addi	%r0 %r3 1
	j	branching_b.76
tail_b.134 :
	addi	%r0 %r3 0
	j	branching_b.76
tail_b.132 :
	mov	%r6 %r29
	mov	%r5 %r2
	mov	%r4 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.76 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.135
	lw.s	%r4 %f0 0
	mul.s	%f5 %f0 %f2
	lw.s	%r4 %f0 4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f1
	lw.s	%r4 %f0 8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	neg.s	%f0 %f0
	div.s	%f4 %f0 %f0
	sw.s	%r2 %f0 0
	addi	%r0 %r1 1
	j	return_point.24
tail_b.135 :
	addi	%r0 %r1 0
return_point.24 :
	retl
solver_rect_fast.0 :
	mov	%r3 %r5
	mov	%r2 %r4
	mov	%r1 %r6
	mov.s	%f2 %f5
	mov.s	%f1 %f4
	mov.s	%f0 %f2
branching_b.77 :
	lw	%r29 %r2 4
	lw.s	%r5 %f0 0
	sub.s	%f2 %f0 %f0
	lw.s	%r5 %f1 4
	mul.s	%f1 %f0 %f0
	lw.s	%r4 %f1 4
	mul.s	%f1 %f0 %f1
	add.s	%f4 %f1 %f1
	ilw.s	%r0 %f3 l.27
	fbge	%f1 %f3 tail_b.139
	neg.s	%f1 %f3
	j	branching_b.78
tail_b.139 :
	mov.s	%f1 %f3
branching_b.78 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 4
	fbge	%f3 %f1 tail_b.141
	addi	%r0 %r3 1
	j	branching_b.79
tail_b.141 :
	addi	%r0 %r3 0
branching_b.79 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.142
	lw.s	%r4 %f1 8
	mul.s	%f1 %f0 %f1
	add.s	%f5 %f1 %f1
	ilw.s	%r0 %f3 l.27
	fbge	%f1 %f3 tail_b.144
	neg.s	%f1 %f3
	j	branching_b.81
tail_b.144 :
	mov.s	%f1 %f3
	j	branching_b.81
tail_b.142 :
	addi	%r0 %r3 0
branching_b.85 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.86
	sw.s	%r2 %f0 0
	addi	%r0 %r1 1
	j	return_point.25
branching_b.86 :
	lw.s	%r5 %f0 8
	sub.s	%f4 %f0 %f0
	lw.s	%r5 %f1 12
	mul.s	%f1 %f0 %f3
	lw.s	%r4 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f2 %f0 %f0
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.153
	neg.s	%f0 %f0
	j	branching_b.87
tail_b.153 :
	mov.s	%f0 %f0
branching_b.87 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 0
	fbge	%f0 %f1 tail_b.155
	addi	%r0 %r1 1
	j	branching_b.88
tail_b.155 :
	addi	%r0 %r1 0
branching_b.88 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.156
	lw.s	%r4 %f0 8
	mul.s	%f0 %f3 %f0
	add.s	%f5 %f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.158
	neg.s	%f1 %f0
	j	branching_b.90
tail_b.158 :
	mov.s	%f1 %f0
	j	branching_b.90
tail_b.156 :
	addi	%r0 %r1 0
branching_b.94 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.95
	sw.s	%r2 %f3 0
	addi	%r0 %r1 2
	j	return_point.25
branching_b.95 :
	lw.s	%r5 %f0 16
	sub.s	%f5 %f0 %f0
	lw.s	%r5 %f1 20
	mul.s	%f1 %f0 %f1
	lw.s	%r4 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.27
	fbge	%f2 %f0 tail_b.167
	neg.s	%f2 %f2
	j	branching_b.96
tail_b.167 :
	mov.s	%f2 %f2
branching_b.96 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.169
	addi	%r0 %r1 1
	j	branching_b.97
tail_b.169 :
	addi	%r0 %r1 0
branching_b.97 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.170
	lw.s	%r4 %f0 4
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	ilw.s	%r0 %f2 l.27
	fbge	%f0 %f2 tail_b.172
	neg.s	%f0 %f2
	j	branching_b.99
tail_b.172 :
	mov.s	%f0 %f2
	j	branching_b.99
tail_b.170 :
	addi	%r0 %r3 0
branching_b.103 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.180
	sw.s	%r2 %f1 0
	addi	%r0 %r1 3
	j	return_point.25
tail_b.180 :
	addi	%r0 %r1 0
	j	return_point.25
branching_b.99 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 4
	fbge	%f2 %f0 tail_b.174
	addi	%r0 %r3 1
	j	branching_b.100
tail_b.174 :
	addi	%r0 %r3 0
branching_b.100 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.175
	lw.s	%r5 %f0 20
	ilw.s	%r0 %f2 l.27
	fbne	%f0 %f2 tail_b.177
	addi	%r0 %r1 1
	j	branching_b.102
tail_b.177 :
	addi	%r0 %r1 0
	j	branching_b.102
tail_b.175 :
	addi	%r0 %r3 0
	j	branching_b.103
branching_b.102 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.178
	addi	%r0 %r3 0
	j	branching_b.103
tail_b.178 :
	addi	%r0 %r3 1
	j	branching_b.103
branching_b.90 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 8
	fbge	%f0 %f1 tail_b.160
	addi	%r0 %r1 1
	j	branching_b.91
tail_b.160 :
	addi	%r0 %r1 0
branching_b.91 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.161
	lw.s	%r5 %f1 12
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.163
	addi	%r0 %r1 1
	j	branching_b.93
tail_b.163 :
	addi	%r0 %r1 0
	j	branching_b.93
tail_b.161 :
	addi	%r0 %r1 0
	j	branching_b.94
branching_b.93 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.164
	addi	%r0 %r1 0
	j	branching_b.94
tail_b.164 :
	addi	%r0 %r1 1
	j	branching_b.94
return_point.25 :
	retl
branching_b.81 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 8
	fbge	%f3 %f1 tail_b.146
	addi	%r0 %r1 1
	j	branching_b.82
tail_b.146 :
	addi	%r0 %r1 0
branching_b.82 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.147
	lw.s	%r5 %f1 4
	ilw.s	%r0 %f3 l.27
	fbne	%f1 %f3 tail_b.149
	addi	%r0 %r3 1
	j	branching_b.84
tail_b.149 :
	addi	%r0 %r3 0
	j	branching_b.84
tail_b.147 :
	addi	%r0 %r3 0
	j	branching_b.85
branching_b.84 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.150
	addi	%r0 %r3 0
	j	branching_b.85
tail_b.150 :
	addi	%r0 %r3 1
solver_surface_fast.0 :
	mov.s	%f1 %f4
	mov.s	%f0 %f1
branching_b.104 :
	lw	%r29 %r4 4
	lw.s	%r2 %f3 0
	ilw.s	%r0 %f0 l.27
	fbge	%f3 %f0 tail_b.185
	addi	%r0 %r1 1
	j	branching_b.105
tail_b.185 :
	addi	%r0 %r1 0
branching_b.105 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.186
	lw.s	%r2 %f0 4
	mul.s	%f1 %f0 %f0
	lw.s	%r2 %f1 8
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r2 %f0 12
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r1 1
	j	return_point.26
tail_b.186 :
	addi	%r0 %r1 0
return_point.26 :
	retl
solver_second_fast.0 :
	mov	%r2 %r3
	mov	%r1 %r5
	mov.s	%f1 %f5
	mov.s	%f0 %f4
branching_b.106 :
	lw	%r29 %r2 4
	lw.s	%r3 %f1 0
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.189
	addi	%r0 %r4 1
	j	branching_b.107
tail_b.189 :
	addi	%r0 %r4 0
branching_b.107 :
	addi	%r0 %r1 0
	beq	%r4 %r1 branching_b.108
	addi	%r0 %r1 0
	j	return_point.27
branching_b.108 :
	lw.s	%r3 %f0 4
	mul.s	%f4 %f0 %f3
	lw.s	%r3 %f0 8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f3 %f3
	lw.s	%r3 %f0 12
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f3 %f3
	sw.s	%r26 %f3 16
	sw.s	%r26 %f1 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	mov	%r5 %r1
	mov.s	%f5 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	quadratic.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f3 16
	lw.s	%r26 %f1 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	lw	%r5 %r1 4
	addi	%r0 %r4 3
	beq	%r1 %r4 tail_b.190
	mov.s	%f0 %f0
	j	branching_b.109
tail_b.190 :
	ilw.s	%r0 %f2 l.20
	sub.s	%f2 %f0 %f0
branching_b.109 :
	mul.s	%f3 %f3 %f2
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.193
	addi	%r0 %r4 1
	j	branching_b.110
tail_b.193 :
	addi	%r0 %r4 0
branching_b.110 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.194
	lw	%r5 %r1 24
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.195
	sqrt.s	%f1 %f0
	add.s	%f0 %f3 %f0
	lw.s	%r3 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	j	tail_b.197
tail_b.195 :
	sqrt.s	%f1 %f0
	sub.s	%f0 %f3 %f1
	lw.s	%r3 %f0 16
	mul.s	%f0 %f1 %f0
	sw.s	%r2 %f0 0
	j	tail_b.197
tail_b.194 :
	addi	%r0 %r1 0
	j	return_point.27
tail_b.197 :
	addi	%r0 %r1 1
return_point.27 :
	retl
solver_fast.0 :
	mov	%r2 %r4
	mov	%r1 %r5
	mov	%r29 %r2
branching_b.112 :
	lw	%r2 %r29 16
	lw	%r2 %r7 12
	lw	%r2 %r1 8
	lw	%r2 %r2 4
	slli	%r5 %r6 2
	add	%r2 %r6 %r31
	lw	%r31 %r6 0
	lw.s	%r3 %f1 0
	lw	%r6 %r2 20
	lw.s	%r2 %f0 0
	sub.s	%f0 %f1 %f3
	lw.s	%r3 %f1 4
	lw	%r6 %r2 20
	lw.s	%r2 %f0 4
	sub.s	%f0 %f1 %f1
	lw.s	%r3 %f2 8
	lw	%r6 %r2 20
	lw.s	%r2 %f0 8
	sub.s	%f0 %f2 %f2
	lw	%r4 %r3 4
	slli	%r5 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r3 0
	lw	%r6 %r5 4
	addi	%r0 %r2 1
	beq	%r5 %r2 tail_b.199
	addi	%r0 %r1 2
	beq	%r5 %r1 tail_b.200
	mov	%r7 %r29
	mov	%r3 %r2
	mov	%r6 %r1
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
tail_b.200 :
	mov	%r3 %r2
	mov	%r6 %r1
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
tail_b.199 :
	lw	%r4 %r2 0
	mov	%r1 %r29
	mov	%r6 %r1
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
solver_second_fast2.0 :
	mov	%r2 %r5
	mov	%r1 %r4
	mov.s	%f0 %f4
branching_b.114 :
	lw	%r29 %r6 4
	lw.s	%r5 %f3 0
	ilw.s	%r0 %f0 l.27
	fbne	%f3 %f0 tail_b.203
	addi	%r0 %r1 1
	j	branching_b.115
tail_b.203 :
	addi	%r0 %r1 0
branching_b.115 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.116
	addi	%r0 %r1 0
	j	return_point.29
branching_b.116 :
	lw.s	%r5 %f0 4
	mul.s	%f4 %f0 %f4
	lw.s	%r5 %f0 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r5 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r3 %f1 12
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f3 %f1
	sub.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.27
	fbge	%f1 %f2 tail_b.205
	addi	%r0 %r2 1
	j	branching_b.117
tail_b.205 :
	addi	%r0 %r2 0
branching_b.117 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.206
	lw	%r4 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.207
	sqrt.s	%f2 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r5 %f0 16
	mul.s	%f0 %f1 %f0
	sw.s	%r6 %f0 0
	j	tail_b.209
tail_b.207 :
	sqrt.s	%f2 %f1
	sub.s	%f1 %f0 %f0
	lw.s	%r5 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	j	tail_b.209
tail_b.206 :
	addi	%r0 %r1 0
	j	return_point.29
tail_b.209 :
	addi	%r0 %r1 1
return_point.29 :
	retl
solver_fast2.0 :
	mov	%r2 %r5
	mov	%r1 %r2
	mov	%r29 %r1
branching_b.119 :
	lw	%r1 %r6 16
	lw	%r1 %r29 12
	lw	%r1 %r8 8
	lw	%r1 %r3 4
	slli	%r2 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r4 0
	lw	%r4 %r7 40
	lw.s	%r7 %f0 0
	lw.s	%r7 %f1 4
	lw.s	%r7 %f2 8
	lw	%r5 %r1 4
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r3 0
	lw	%r4 %r2 4
	addi	%r0 %r1 1
	beq	%r2 %r1 tail_b.211
	addi	%r0 %r1 2
	beq	%r2 %r1 branching_b.121
	mov	%r6 %r29
	mov	%r3 %r2
	mov	%r4 %r1
	mov	%r7 %r3
	lw	%r29 %r30 0
	jr	%r30
branching_b.121 :
	lw.s	%r3 %f0 0
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.213
	addi	%r0 %r1 1
	j	branching_b.122
tail_b.213 :
	addi	%r0 %r1 0
	j	branching_b.122
tail_b.211 :
	lw	%r5 %r2 0
	mov	%r4 %r1
	lw	%r29 %r30 0
	jr	%r30
branching_b.122 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.214
	lw.s	%r3 %f0 0
	lw.s	%r7 %f1 12
	mul.s	%f1 %f0 %f0
	sw.s	%r8 %f0 0
	addi	%r0 %r1 1
	j	return_point.30
tail_b.214 :
	addi	%r0 %r1 0
return_point.30 :
	retl
setup_rect_table.0 :
	mov	%r1 %r4
branching_b.123 :
	addi	%r0 %r1 6
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 4
	sw	%r26 %r4 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r5
	lw	%r26 %r2 4
	lw	%r26 %r4 0
	lw.s	%r4 %f1 0
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.218
	addi	%r0 %r3 1
	j	branching_b.124
tail_b.218 :
	addi	%r0 %r3 0
branching_b.124 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.125
	ilw.s	%r0 %f0 l.27
	sw.s	%r5 %f0 4
	j	branching_b.129
branching_b.125 :
	lw	%r2 %r6 24
	lw.s	%r4 %f0 0
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.220
	addi	%r0 %r1 1
	j	branching_b.126
tail_b.220 :
	addi	%r0 %r1 0
branching_b.126 :
	addi	%r0 %r3 0
	beq	%r6 %r3 tail_b.221
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.222
	addi	%r0 %r3 0
	j	branching_b.128
tail_b.222 :
	addi	%r0 %r3 1
	j	branching_b.128
tail_b.221 :
	mov	%r1 %r3
branching_b.128 :
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.224
	mov.s	%f0 %f0
	j	tail_b.226
tail_b.224 :
	neg.s	%f0 %f0
tail_b.226 :
	sw.s	%r5 %f0 0
	ilw.s	%r0 %f0 l.20
	lw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r5 %f0 4
branching_b.129 :
	lw.s	%r4 %f0 4
	ilw.s	%r0 %f1 l.27
	fbne	%f0 %f1 tail_b.229
	addi	%r0 %r3 1
	j	branching_b.130
tail_b.229 :
	addi	%r0 %r3 0
branching_b.130 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.131
	ilw.s	%r0 %f0 l.27
	sw.s	%r5 %f0 12
	j	branching_b.135
branching_b.131 :
	lw	%r2 %r6 24
	lw.s	%r4 %f0 4
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.231
	addi	%r0 %r3 1
	j	branching_b.132
tail_b.231 :
	addi	%r0 %r3 0
branching_b.132 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.232
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.233
	addi	%r0 %r3 0
	j	branching_b.134
tail_b.233 :
	addi	%r0 %r3 1
	j	branching_b.134
tail_b.232 :
branching_b.134 :
	lw	%r2 %r1 16
	lw.s	%r1 %f0 4
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.235
	mov.s	%f0 %f0
	j	tail_b.237
tail_b.235 :
	neg.s	%f0 %f0
tail_b.237 :
	sw.s	%r5 %f0 8
	ilw.s	%r0 %f1 l.20
	lw.s	%r4 %f0 4
	div.s	%f0 %f1 %f0
	sw.s	%r5 %f0 12
branching_b.135 :
	lw.s	%r4 %f1 8
	ilw.s	%r0 %f0 l.27
	fbne	%f1 %f0 tail_b.240
	addi	%r0 %r1 1
	j	branching_b.136
tail_b.240 :
	addi	%r0 %r1 0
branching_b.136 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.137
	ilw.s	%r0 %f0 l.27
	sw.s	%r5 %f0 20
	j	tail_b.250
branching_b.137 :
	lw	%r2 %r1 24
	lw.s	%r4 %f0 8
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.242
	addi	%r0 %r3 1
	j	branching_b.138
tail_b.242 :
	addi	%r0 %r3 0
branching_b.138 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.243
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.244
	addi	%r0 %r1 0
	j	branching_b.140
tail_b.244 :
	addi	%r0 %r1 1
	j	branching_b.140
tail_b.243 :
	mov	%r3 %r1
branching_b.140 :
	lw	%r2 %r2 16
	lw.s	%r2 %f0 8
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.246
	mov.s	%f0 %f0
	j	tail_b.248
tail_b.246 :
	neg.s	%f0 %f0
tail_b.248 :
	sw.s	%r5 %f0 16
	ilw.s	%r0 %f0 l.20
	lw.s	%r4 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r5 %f0 20
tail_b.250 :
	mov	%r5 %r1
return_point.31 :
	retl
setup_surface_table.0 :
	mov	%r1 %r3
branching_b.141 :
	addi	%r0 %r1 4
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 4
	sw	%r26 %r3 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r4
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw.s	%r3 %f0 0
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r3 %f0 4
	lw	%r2 %r1 16
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r3 %f0 8
	lw	%r2 %r1 16
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.252
	addi	%r0 %r3 1
	j	branching_b.142
tail_b.252 :
	addi	%r0 %r3 0
branching_b.142 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.253
	ilw.s	%r0 %f0 l.28
	div.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r4 %f0 4
	lw	%r2 %r1 16
	lw.s	%r1 %f0 4
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r4 %f0 8
	lw	%r2 %r1 16
	lw.s	%r1 %f0 8
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r4 %f0 12
	j	tail_b.255
tail_b.253 :
	ilw.s	%r0 %f0 l.27
	sw.s	%r4 %f0 0
tail_b.255 :
	mov	%r4 %r1
return_point.32 :
	retl
setup_second_table.0 :
	mov	%r2 %r4
	mov	%r1 %r3
branching_b.143 :
	addi	%r0 %r1 5
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r4 4
	sw	%r26 %r3 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r4 4
	lw	%r26 %r3 0
	lw.s	%r3 %f0 0
	lw.s	%r3 %f1 4
	lw.s	%r3 %f2 8
	sw	%r26 %r1 8
	sw	%r26 %r4 4
	sw	%r26 %r3 0
	mov	%r4 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	quadratic.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov.s	%f0 %f3
	lw	%r26 %r1 8
	lw	%r26 %r4 4
	lw	%r26 %r3 0
	lw.s	%r3 %f0 0
	lw	%r4 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f4
	lw.s	%r3 %f0 4
	lw	%r4 %r2 16
	lw.s	%r2 %f1 4
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f1
	lw.s	%r3 %f0 8
	lw	%r4 %r2 16
	lw.s	%r2 %f2 8
	mul.s	%f2 %f0 %f0
	neg.s	%f0 %f5
	sw.s	%r1 %f3 0
	lw	%r4 %r2 12
	addi	%r0 %r5 0
	bne	%r2 %r5 tail_b.256
	sw.s	%r1 %f4 4
	sw.s	%r1 %f1 8
	sw.s	%r1 %f5 12
	j	branching_b.144
tail_b.256 :
	lw.s	%r3 %f2 8
	lw	%r4 %r2 36
	lw.s	%r2 %f0 4
	mul.s	%f0 %f2 %f0
	lw.s	%r3 %f6 4
	lw	%r4 %r2 36
	lw.s	%r2 %f2 8
	mul.s	%f2 %f6 %f2
	add.s	%f2 %f0 %f2
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f2 %f0
	sub.s	%f0 %f4 %f0
	sw.s	%r1 %f0 4
	lw.s	%r3 %f0 8
	lw	%r4 %r2 36
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	lw.s	%r3 %f4 0
	lw	%r4 %r2 36
	lw.s	%r2 %f0 8
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f2 %f0
	sub.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	lw.s	%r3 %f0 4
	lw	%r4 %r2 36
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r3 %f2 0
	lw	%r4 %r2 36
	lw.s	%r2 %f1 4
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.41
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f5 %f0
	sw.s	%r1 %f0 12
branching_b.144 :
	ilw.s	%r0 %f0 l.27
	fbne	%f3 %f0 tail_b.259
	addi	%r0 %r2 1
	j	branching_b.145
tail_b.259 :
	addi	%r0 %r2 0
branching_b.145 :
	addi	%r0 %r3 0
	beq	%r2 %r3 tail_b.260
	j	tail_b.262
tail_b.260 :
	ilw.s	%r0 %f0 l.20
	div.s	%f3 %f0 %f0
	sw.s	%r1 %f0 16
tail_b.262 :
return_point.33 :
	retl
setup_startp.0 :
	mov	%r1 %r5
preloop_b.0 :
	lw	%r29 %r2 12
	lw	%r29 %r8 8
	lw	%r29 %r1 4
	lw.s	%r5 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r5 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r5 %f0 8
	sw.s	%r2 %f0 8
	lw	%r1 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	sw	%r26 %r2 0
setup_startp_constants.2 :
	addi	%r0 %r1 0
	ble	%r1 %r2 branching_b.147
	j	postloop_b.0
branching_b.147 :
	slli	%r2 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r6 0
	lw	%r6 %r7 40
	lw	%r6 %r3 4
	lw.s	%r5 %f0 0
	lw	%r6 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	sw.s	%r7 %f0 0
	lw.s	%r5 %f1 4
	lw	%r6 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f1 %f0
	sw.s	%r7 %f0 4
	lw.s	%r5 %f0 8
	lw	%r6 %r1 20
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r7 %f0 8
	addi	%r0 %r1 2
	beq	%r3 %r1 tail_b.263
	addi	%r0 %r1 2
	bl	%r1 %r3 branching_b.149
	j	tail_b.268
branching_b.149 :
	lw.s	%r7 %f0 0
	lw.s	%r7 %f1 4
	lw.s	%r7 %f2 8
	sw	%r26 %r4 24
	sw	%r26 %r3 20
	sw	%r26 %r7 16
	sw	%r26 %r2 12
	sw	%r26 %r5 8
	sw	%r26 %r8 4
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	quadratic.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f1
	lw	%r26 %r4 24
	lw	%r26 %r3 20
	lw	%r26 %r7 16
	lw	%r26 %r2 12
	lw	%r26 %r5 8
	lw	%r26 %r8 4
	addi	%r0 %r1 3
	beq	%r3 %r1 tail_b.264
	mov.s	%f1 %f0
	j	tail_b.266
tail_b.264 :
	ilw.s	%r0 %f0 l.20
	sub.s	%f0 %f1 %f0
	j	tail_b.266
tail_b.263 :
	lw	%r6 %r1 16
	lw.s	%r7 %f3 0
	lw.s	%r7 %f0 4
	lw.s	%r7 %f2 8
	lw.s	%r1 %f1 0
	mul.s	%f3 %f1 %f1
	lw.s	%r1 %f3 4
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r1 %f0 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r7 %f0 12
	j	tail_b.268
tail_b.266 :
	sw.s	%r7 %f0 12
tail_b.268 :
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	j	setup_startp_constants.2
postloop_b.0 :
	lw	%r26 %r2 0
return_point.34 :
	mov	%r4 %r1
	retl
is_rect_outside.0 :
	mov.s	%f1 %f3
branching_b.150 :
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.271
	neg.s	%f0 %f1
	j	branching_b.151
tail_b.271 :
	mov.s	%f0 %f1
branching_b.151 :
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	fbge	%f1 %f0 tail_b.273
	addi	%r0 %r3 1
	j	branching_b.152
tail_b.273 :
	addi	%r0 %r3 0
branching_b.152 :
	addi	%r0 %r2 0
	beq	%r3 %r2 tail_b.274
	ilw.s	%r0 %f0 l.27
	fbge	%f3 %f0 tail_b.276
	neg.s	%f3 %f1
	j	branching_b.154
tail_b.276 :
	mov.s	%f3 %f1
	j	branching_b.154
tail_b.274 :
	addi	%r0 %r2 0
branching_b.158 :
	addi	%r0 %r3 0
	beq	%r2 %r3 branching_b.159
	lw	%r1 %r1 24
	j	return_point.35
branching_b.159 :
	lw	%r1 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.284
	addi	%r0 %r1 0
	j	return_point.35
tail_b.284 :
	addi	%r0 %r1 1
return_point.35 :
	retl
branching_b.154 :
	lw	%r1 %r2 16
	lw.s	%r2 %f0 4
	fbge	%f1 %f0 tail_b.278
	addi	%r0 %r3 1
	j	branching_b.155
tail_b.278 :
	addi	%r0 %r3 0
branching_b.155 :
	addi	%r0 %r2 0
	beq	%r3 %r2 tail_b.279
	ilw.s	%r0 %f0 l.27
	fbge	%f2 %f0 tail_b.281
	neg.s	%f2 %f1
	j	branching_b.157
tail_b.281 :
	mov.s	%f2 %f1
	j	branching_b.157
tail_b.279 :
	addi	%r0 %r2 0
	j	branching_b.158
branching_b.157 :
	lw	%r1 %r2 16
	lw.s	%r2 %f0 8
	fbge	%f1 %f0 tail_b.283
	addi	%r0 %r2 1
	j	branching_b.158
tail_b.283 :
	addi	%r0 %r2 0
is_plane_outside.0 :
	mov.s	%f2 %f3
	mov.s	%f1 %f2
	mov.s	%f0 %f1
branching_b.160 :
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	mul.s	%f1 %f0 %f1
	lw.s	%r2 %f0 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r2 %f1 8
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r1 %r3 24
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.288
	addi	%r0 %r1 1
	j	branching_b.161
tail_b.288 :
	addi	%r0 %r1 0
branching_b.161 :
	addi	%r0 %r2 0
	beq	%r3 %r2 tail_b.289
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.290
	addi	%r0 %r2 0
	j	branching_b.163
tail_b.290 :
	addi	%r0 %r2 1
	j	branching_b.163
tail_b.289 :
	mov	%r1 %r2
branching_b.163 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.292
	addi	%r0 %r1 0
	j	return_point.36
tail_b.292 :
	addi	%r0 %r1 1
return_point.36 :
	retl
is_second_outside.0 :
	mov	%r1 %r2
branching_b.164 :
	sw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	quadratic.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	lw	%r2 %r1 4
	addi	%r0 %r3 3
	beq	%r1 %r3 tail_b.294
	mov.s	%f0 %f1
	j	branching_b.165
tail_b.294 :
	ilw.s	%r0 %f1 l.20
	sub.s	%f1 %f0 %f1
branching_b.165 :
	lw	%r2 %r3 24
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.297
	addi	%r0 %r2 1
	j	branching_b.166
tail_b.297 :
	addi	%r0 %r2 0
branching_b.166 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.298
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.299
	addi	%r0 %r1 0
	j	branching_b.168
tail_b.299 :
	addi	%r0 %r1 1
	j	branching_b.168
tail_b.298 :
	mov	%r2 %r1
branching_b.168 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.301
	addi	%r0 %r1 0
	j	return_point.37
tail_b.301 :
	addi	%r0 %r1 1
return_point.37 :
	retl
get_nvector_rect.0 :
branching_b.169 :
	lw	%r29 %r4 8
	lw	%r29 %r2 4
	lw	%r2 %r5 0
	ilw.s	%r0 %f0 l.27
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r0 %r2 1
	sub	%r5 %r2 %r3
	addi	%r0 %r2 1
	sub	%r5 %r2 %r2
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	lw.s	%r31 %f0 0
	ilw.s	%r0 %f1 l.27
	fbne	%f0 %f1 tail_b.304
	addi	%r0 %r2 1
	j	branching_b.170
tail_b.304 :
	addi	%r0 %r2 0
branching_b.170 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.171
	ilw.s	%r0 %f0 l.27
	j	tail_b.310
branching_b.171 :
	ilw.s	%r0 %f1 l.27
	fbge	%f1 %f0 tail_b.306
	addi	%r0 %r2 1
	j	branching_b.172
tail_b.306 :
	addi	%r0 %r2 0
branching_b.172 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.307
	ilw.s	%r0 %f0 l.20
	j	tail_b.310
tail_b.307 :
	ilw.s	%r0 %f0 l.28
tail_b.310 :
	neg.s	%f0 %f0
	slli	%r3 %r1 2
	add	%r4 %r1 %r31
	sw.s	%r31 %f0 0
return_point.38 :
	mov	%r6 %r1
	retl
get_nvector_plane.0 :
tail_b.311 :
	lw	%r29 %r2 4
	lw	%r1 %r4 16
	lw.s	%r4 %f0 0
	neg.s	%f0 %f0
	sw.s	%r2 %f0 0
	lw	%r1 %r4 16
	lw.s	%r4 %f0 4
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
return_point.39 :
	mov	%r3 %r1
	retl
get_nvector_second.0 :
	mov	%r1 %r5
branching_b.173 :
	lw	%r29 %r3 8
	lw	%r29 %r1 4
	lw.s	%r1 %f0 0
	lw	%r5 %r2 20
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f4
	lw.s	%r1 %f1 4
	lw	%r5 %r2 20
	lw.s	%r2 %f0 4
	sub.s	%f0 %f1 %f7
	lw.s	%r1 %f0 8
	lw	%r5 %r1 20
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f1
	lw	%r5 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f6
	lw	%r5 %r1 16
	lw.s	%r1 %f0 4
	mul.s	%f0 %f7 %f3
	lw	%r5 %r1 16
	lw.s	%r1 %f0 8
	mul.s	%f0 %f1 %f5
	lw	%r5 %r1 12
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.312
	lw	%r5 %r1 36
	lw.s	%r1 %f0 8
	mul.s	%f0 %f7 %f2
	lw	%r5 %r1 36
	lw.s	%r1 %f0 4
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f2 %f0
	add.s	%f0 %f6 %f0
	sw.s	%r3 %f0 0
	lw	%r5 %r1 36
	lw.s	%r1 %f0 8
	mul.s	%f0 %f4 %f2
	lw	%r5 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f1
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	sw.s	%r3 %f0 4
	lw	%r5 %r1 36
	lw.s	%r1 %f0 4
	mul.s	%f0 %f4 %f1
	lw	%r5 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f7 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.41
	div.s	%f0 %f1 %f0
	add.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
	j	tail_b.314
tail_b.312 :
	sw.s	%r3 %f6 0
	sw.s	%r3 %f3 4
	sw.s	%r3 %f5 8
tail_b.314 :
	lw	%r5 %r2 24
	mov	%r3 %r1
	j	vecunit_sgn.0
utexture.0 :
	mov	%r2 %r5
	mov	%r1 %r6
branching_b.174 :
	lw	%r29 %r4 12
	lw	%r29 %r7 8
	lw	%r29 %r29 4
	lw	%r6 %r2 0
	lw	%r6 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r4 %f0 0
	lw	%r6 %r1 32
	lw.s	%r1 %f0 4
	sw.s	%r4 %f0 4
	lw	%r6 %r1 32
	lw.s	%r1 %f0 8
	sw.s	%r4 %f0 8
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.175
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.324
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.325
	addi	%r0 %r1 4
	beq	%r2 %r1 branching_b.183
	j	return_point.41
branching_b.183 :
	lw.s	%r5 %f0 0
	lw	%r6 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f1
	lw.s	%r5 %f2 8
	lw	%r6 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f2 %f0
	lw	%r6 %r1 16
	lw.s	%r1 %f2 8
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f2
	mul.s	%f1 %f1 %f0
	mul.s	%f2 %f2 %f3
	add.s	%f3 %f0 %f4
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.327
	neg.s	%f1 %f3
	j	branching_b.184
tail_b.327 :
	mov.s	%f1 %f3
	j	branching_b.184
tail_b.325 :
	lw.s	%r5 %f1 0
	lw	%r6 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	lw.s	%r5 %f2 8
	lw	%r6 %r1 20
	lw.s	%r1 %f1 8
	sub.s	%f1 %f2 %f1
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	ilw.s	%r0 %f1 l.49
	div.s	%f1 %f0 %f1
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.45
	mul.s	%f1 %f0 %f0
	sw	%r26 %r3 4
	sw	%r26 %r4 0
	sw	%r26 %r28 8
	lw	%r29 %r30 0
	addi	%r26 %r26 12
	jalr	%r30
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f1
	ilw.s	%r0 %f0 l.47
	mul.s	%f0 %f1 %f0
	sw.s	%r4 %f0 4
	ilw.s	%r0 %f0 l.20
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.47
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
	j	return_point.41
tail_b.324 :
	lw.s	%r5 %f0 4
	ilw.s	%r0 %f1 l.50
	mul.s	%f1 %f0 %f0
	sw	%r26 %r3 4
	sw	%r26 %r4 0
	mov	%r7 %r29
	sw	%r26 %r28 8
	lw	%r29 %r30 0
	addi	%r26 %r26 12
	jalr	%r30
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	mul.s	%f0 %f0 %f2
	ilw.s	%r0 %f0 l.47
	mul.s	%f2 %f0 %f0
	sw.s	%r4 %f0 0
	ilw.s	%r0 %f1 l.47
	ilw.s	%r0 %f0 l.20
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r4 %f0 4
	j	return_point.41
branching_b.175 :
	lw.s	%r5 %f1 0
	lw	%r6 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.51
	mul.s	%f0 %f1 %f0
	floor.w.s	%f0 %f2
	ilw.s	%r0 %f0 l.52
	mul.s	%f0 %f2 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.49
	fbge	%f1 %f0 tail_b.316
	addi	%r0 %r7 1
	j	branching_b.176
tail_b.316 :
	addi	%r0 %r7 0
branching_b.176 :
	lw.s	%r5 %f1 8
	lw	%r6 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.51
	mul.s	%f0 %f1 %f0
	floor.w.s	%f0 %f0
	ilw.s	%r0 %f2 l.52
	mul.s	%f2 %f0 %f0
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.49
	fbge	%f0 %f1 tail_b.318
	addi	%r0 %r1 1
	j	branching_b.177
tail_b.318 :
	addi	%r0 %r1 0
branching_b.177 :
	addi	%r0 %r2 0
	beq	%r7 %r2 branching_b.178
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.321
	ilw.s	%r0 %f0 l.47
	j	tail_b.323
tail_b.321 :
	ilw.s	%r0 %f0 l.27
	j	tail_b.323
branching_b.178 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.319
	ilw.s	%r0 %f0 l.27
	j	tail_b.323
tail_b.319 :
	ilw.s	%r0 %f0 l.47
tail_b.323 :
	sw.s	%r4 %f0 4
	j	return_point.41
branching_b.184 :
	ilw.s	%r0 %f0 l.42
	fbge	%f3 %f0 tail_b.329
	addi	%r0 %r2 1
	j	branching_b.185
tail_b.329 :
	addi	%r0 %r2 0
branching_b.185 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.186
	ilw.s	%r0 %f1 l.43
	j	branching_b.187
branching_b.186 :
	div.s	%f1 %f2 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.331
	neg.s	%f1 %f0
	j	tail_b.332
tail_b.331 :
	mov.s	%f1 %f0
tail_b.332 :
	sw.s	%r26 %f4 16
	sw	%r26 %r3 12
	sw	%r26 %r4 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	atan.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f4 16
	lw	%r26 %r3 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.45
	div.s	%f0 %f1 %f1
branching_b.187 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f3
	lw.s	%r5 %f0 4
	lw	%r6 %r1 20
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f0
	lw	%r6 %r1 16
	lw.s	%r1 %f1 4
	sqrt.s	%f1 %f1
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.27
	fbge	%f4 %f1 tail_b.335
	neg.s	%f4 %f1
	j	branching_b.188
tail_b.335 :
	mov.s	%f4 %f1
branching_b.188 :
	ilw.s	%r0 %f2 l.42
	fbge	%f1 %f2 tail_b.337
	addi	%r0 %r1 1
	j	branching_b.189
tail_b.337 :
	addi	%r0 %r1 0
branching_b.189 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.190
	ilw.s	%r0 %f0 l.43
	j	branching_b.191
branching_b.190 :
	div.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.339
	neg.s	%f1 %f0
	j	tail_b.340
tail_b.339 :
	mov.s	%f1 %f0
tail_b.340 :
	sw.s	%r26 %f3 8
	sw	%r26 %r3 4
	sw	%r26 %r4 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	atan.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f3 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	ilw.s	%r0 %f1 l.44
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.45
	div.s	%f0 %f1 %f0
branching_b.191 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.46
	ilw.s	%r0 %f1 l.25
	sub.s	%f3 %f1 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f2 %f1
	ilw.s	%r0 %f2 l.25
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.343
	addi	%r0 %r2 1
	j	branching_b.192
tail_b.343 :
	addi	%r0 %r2 0
branching_b.192 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.344
	ilw.s	%r0 %f0 l.27
	j	tail_b.346
tail_b.344 :
	mov.s	%f1 %f0
tail_b.346 :
	ilw.s	%r0 %f1 l.47
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.48
	div.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
return_point.41 :
	mov	%r3 %r1
	retl
add_light.0 :
	mov.s	%f1 %f3
branching_b.193 :
	lw	%r29 %r5 8
	lw	%r29 %r1 4
	ilw.s	%r0 %f1 l.27
	fbge	%f1 %f0 tail_b.349
	addi	%r0 %r4 1
	j	branching_b.194
tail_b.349 :
	addi	%r0 %r4 0
branching_b.194 :
	addi	%r0 %r3 0
	beq	%r4 %r3 tail_b.350
	sw	%r26 %r2 12
	sw	%r26 %r1 8
	sw.s	%r26 %f2 4
	sw.s	%r26 %f3 0
	mov	%r5 %r2
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	vecaccum.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov	%r1 %r3
	lw	%r26 %r2 12
	lw	%r26 %r1 8
	lw.s	%r26 %f2 4
	lw.s	%r26 %f3 0
	j	branching_b.195
tail_b.350 :
branching_b.195 :
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f3 tail_b.353
	addi	%r0 %r4 1
	j	branching_b.196
tail_b.353 :
	addi	%r0 %r4 0
branching_b.196 :
	addi	%r0 %r3 0
	beq	%r4 %r3 tail_b.354
	mul.s	%f3 %f3 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f2 %f0 %f1
	lw.s	%r1 %f0 0
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	j	return_point.42
tail_b.354 :
return_point.42 :
	mov	%r2 %r1
	retl
trace_reflections.0 :
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r1 %r4
	mov.s	%f1 %f5
	mov.s	%f0 %f1
branching_b.197 :
	lw	%r26 %r30 4
	lw	%r30 %r1 64
	lw	%r26 %r30 4
	lw	%r30 %r2 60
	lw	%r26 %r30 4
	lw	%r30 %r29 56
	lw	%r26 %r30 4
	lw	%r30 %r18 52
	lw	%r26 %r30 4
	lw	%r30 %r7 48
	lw	%r26 %r30 4
	lw	%r30 %r5 44
	lw	%r26 %r30 4
	lw	%r30 %r30 40
	sw	%r26 %r30 8
	lw	%r26 %r30 4
	lw	%r30 %r20 36
	lw	%r26 %r30 4
	lw	%r30 %r30 32
	sw	%r26 %r30 12
	lw	%r26 %r30 4
	lw	%r30 %r16 28
	lw	%r26 %r30 4
	lw	%r30 %r17 24
	lw	%r26 %r30 4
	lw	%r30 %r12 20
	lw	%r26 %r30 4
	lw	%r30 %r14 16
	lw	%r26 %r30 4
	lw	%r30 %r21 12
	lw	%r26 %r30 4
	lw	%r30 %r8 8
	lw	%r26 %r30 4
	lw	%r30 %r30 4
	sw	%r26 %r30 16
	addi	%r0 %r3 0
	ble	%r3 %r4 preloop_b.1
	j	return_point.43
preloop_b.1 :
	slli	%r4 %r3 2
	add	%r5 %r3 %r31
	lw	%r31 %r30 0
	sw	%r26 %r30 20
	lw	%r26 %r30 20
	lw	%r30 %r10 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r1 %f0 0
	addi	%r0 %r19 0
	lw	%r26 %r30 8
	lw	%r30 %r9 0
	sw	%r26 %r19 24
trace_or_matrix_fast.2 :
	slli	%r19 %r3 2
	add	%r9 %r3 %r31
	lw	%r31 %r5 0
	lw	%r5 %r6 0
	addi	%r0 %r3 -1
	beq	%r6 %r3 tail_b.356
	addi	%r0 %r3 99
	beq	%r6 %r3 preloop_b.2
	sw	%r26 %r5 100
	sw	%r26 %r10 96
	sw	%r26 %r9 92
	sw	%r26 %r19 88
	sw	%r26 %r8 84
	sw	%r26 %r21 80
	sw	%r26 %r14 76
	sw	%r26 %r12 72
	sw	%r26 %r17 68
	sw	%r26 %r16 64
	sw	%r26 %r20 60
	sw	%r26 %r7 56
	sw	%r26 %r18 52
	sw	%r26 %r29 48
	sw	%r26 %r2 44
	sw	%r26 %r1 40
	sw.s	%r26 %f5 36
	sw.s	%r26 %f1 32
	sw	%r26 %r4 28
	mov	%r10 %r2
	mov	%r6 %r1
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r3
	lw	%r26 %r5 100
	lw	%r26 %r10 96
	lw	%r26 %r9 92
	lw	%r26 %r19 88
	lw	%r26 %r8 84
	lw	%r26 %r21 80
	lw	%r26 %r14 76
	lw	%r26 %r12 72
	lw	%r26 %r17 68
	lw	%r26 %r16 64
	lw	%r26 %r20 60
	lw	%r26 %r7 56
	lw	%r26 %r18 52
	lw	%r26 %r29 48
	lw	%r26 %r2 44
	lw	%r26 %r1 40
	lw.s	%r26 %f5 36
	lw.s	%r26 %f1 32
	lw	%r26 %r4 28
	addi	%r0 %r6 0
	bne	%r3 %r6 branching_b.214
	j	tail_b.401
branching_b.214 :
	lw.s	%r7 %f0 0
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.378
	addi	%r0 %r6 1
	j	branching_b.215
tail_b.378 :
	addi	%r0 %r6 0
	j	branching_b.215
preloop_b.2 :
	addi	%r0 %r3 1
	sw	%r26 %r3 28
solve_one_or_network_fast.6 :
	slli	%r3 %r6 2
	add	%r5 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r11 -1
	bne	%r6 %r11 preloop_b.3
	j	postloop_b.3
preloop_b.3 :
	slli	%r6 %r6 2
	add	%r8 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r24 0
	sw	%r26 %r24 32
solve_each_element_fast.7 :
	lw	%r10 %r11 0
	slli	%r24 %r13 2
	add	%r6 %r13 %r31
	lw	%r31 %r13 0
	addi	%r0 %r15 -1
	beq	%r13 %r15 tail_b.357
	sw	%r26 %r13 128
	sw	%r26 %r11 124
	sw	%r26 %r6 120
	sw	%r26 %r24 116
	sw	%r26 %r5 112
	sw	%r26 %r3 108
	sw	%r26 %r10 104
	sw	%r26 %r9 100
	sw	%r26 %r19 96
	sw	%r26 %r8 92
	sw	%r26 %r21 88
	sw	%r26 %r14 84
	sw	%r26 %r12 80
	sw	%r26 %r17 76
	sw	%r26 %r16 72
	sw	%r26 %r20 68
	sw	%r26 %r7 64
	sw	%r26 %r18 60
	sw	%r26 %r29 56
	sw	%r26 %r2 52
	sw	%r26 %r1 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f1 40
	sw	%r26 %r4 36
	mov	%r10 %r2
	mov	%r13 %r1
	sw	%r26 %r28 132
	lw	%r29 %r30 0
	addi	%r26 %r26 136
	jalr	%r30
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r1 %r15
	lw	%r26 %r13 128
	lw	%r26 %r11 124
	lw	%r26 %r6 120
	lw	%r26 %r24 116
	lw	%r26 %r5 112
	lw	%r26 %r3 108
	lw	%r26 %r10 104
	lw	%r26 %r9 100
	lw	%r26 %r19 96
	lw	%r26 %r8 92
	lw	%r26 %r21 88
	lw	%r26 %r14 84
	lw	%r26 %r12 80
	lw	%r26 %r17 76
	lw	%r26 %r16 72
	lw	%r26 %r20 68
	lw	%r26 %r7 64
	lw	%r26 %r18 60
	lw	%r26 %r29 56
	lw	%r26 %r2 52
	lw	%r26 %r1 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f1 40
	lw	%r26 %r4 36
	addi	%r0 %r22 0
	bne	%r15 %r22 branching_b.203
	slli	%r13 %r11 2
	add	%r20 %r11 %r31
	lw	%r31 %r11 0
	lw	%r11 %r13 24
	addi	%r0 %r11 0
	beq	%r13 %r11 tail_b.373
	addi	%r24 %r24 1
	j	solve_each_element_fast.7
tail_b.373 :
	j	postloop_b.2
branching_b.203 :
	lw.s	%r7 %f2 0
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f2 tail_b.359
	addi	%r0 %r22 1
	j	branching_b.204
tail_b.359 :
	addi	%r0 %r22 0
	j	branching_b.204
tail_b.357 :
	j	postloop_b.2
tail_b.356 :
postloop_b.7 :
	lw	%r26 %r19 24
branching_b.229 :
	lw.s	%r1 %f2 0
	ilw.s	%r0 %f0 l.55
	fbge	%f0 %f2 tail_b.403
	addi	%r0 %r2 1
	j	branching_b.230
tail_b.403 :
	addi	%r0 %r2 0
branching_b.230 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.404
	ilw.s	%r0 %f0 l.56
	fbge	%f2 %f0 tail_b.406
	addi	%r0 %r2 1
	j	branching_b.232
tail_b.406 :
	addi	%r0 %r2 0
	j	branching_b.232
tail_b.404 :
	addi	%r0 %r2 0
branching_b.232 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.407
	lw	%r21 %r2 0
	addi	%r0 %r1 4
	mul	%r2 %r1 %r2
	lw	%r12 %r1 0
	add	%r2 %r1 %r2
	lw	%r26 %r30 20
	lw	%r30 %r1 0
	beq	%r2 %r1 preloop_b.8
	j	tail_b.456
preloop_b.8 :
	addi	%r0 %r5 0
	lw	%r26 %r30 8
	lw	%r30 %r6 0
	sw	%r26 %r5 36
shadow_check_one_or_matrix.3 :
	slli	%r5 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r2 0
	lw	%r2 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.408
	addi	%r0 %r1 99
	beq	%r3 %r1 tail_b.409
	sw	%r26 %r2 92
	sw	%r26 %r6 88
	sw	%r26 %r5 84
	sw	%r26 %r10 80
	sw	%r26 %r8 76
	sw	%r26 %r14 72
	sw	%r26 %r17 68
	sw	%r26 %r16 64
	sw	%r26 %r20 60
	sw	%r26 %r7 56
	sw	%r26 %r18 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f1 44
	sw	%r26 %r4 40
	mov	%r18 %r29
	mov	%r16 %r2
	mov	%r3 %r1
	mov	%r14 %r3
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r3
	lw	%r26 %r2 92
	lw	%r26 %r6 88
	lw	%r26 %r5 84
	lw	%r26 %r10 80
	lw	%r26 %r8 76
	lw	%r26 %r14 72
	lw	%r26 %r17 68
	lw	%r26 %r16 64
	lw	%r26 %r20 60
	lw	%r26 %r7 56
	lw	%r26 %r18 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f1 44
	lw	%r26 %r4 40
	addi	%r0 %r1 0
	bne	%r3 %r1 branching_b.237
	addi	%r0 %r1 0
	j	branching_b.252
branching_b.237 :
	lw.s	%r7 %f0 0
	ilw.s	%r0 %f2 l.55
	fbge	%f0 %f2 tail_b.411
	addi	%r0 %r1 1
	j	branching_b.238
tail_b.411 :
	addi	%r0 %r1 0
	j	branching_b.238
tail_b.409 :
	addi	%r0 %r1 1
	j	branching_b.252
tail_b.408 :
	addi	%r0 %r1 0
	j	postloop_b.14
tail_b.407 :
	j	tail_b.456
postloop_b.14 :
	lw	%r26 %r5 36
branching_b.266 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.453
	j	tail_b.456
tail_b.453 :
	lw	%r10 %r2 0
	sw	%r26 %r10 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f1 44
	sw	%r26 %r4 40
	lw	%r26 %r1 12
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	veciprod.0
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov.s	%f0 %f2
	lw	%r26 %r10 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f1 44
	lw	%r26 %r4 40
	lw	%r26 %r30 20
	lw.s	%r30 %f3 8
	mul.s	%f1 %f3 %f0
	mul.s	%f2 %f0 %f2
	lw	%r10 %r2 0
	sw.s	%r26 %f2 56
	sw.s	%r26 %f3 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f1 44
	sw	%r26 %r4 40
	lw	%r26 %r1 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.0
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f2 56
	lw.s	%r26 %f3 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f1 44
	lw	%r26 %r4 40
	mul.s	%f0 %f3 %f0
	sw.s	%r26 %f5 48
	sw.s	%r26 %f1 44
	sw	%r26 %r4 40
	lw	%r26 %r29 16
	mov.s	%f0 %f1
	mov.s	%f2 %f0
	mov.s	%f5 %f2
	sw	%r26 %r28 52
	lw	%r29 %r30 0
	addi	%r26 %r26 56
	jalr	%r30
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f1 44
	lw	%r26 %r4 40
	j	tail_b.456
branching_b.238 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.412
	addi	%r0 %r9 1
	sw	%r26 %r9 40
shadow_check_one_or_group.8 :
	slli	%r9 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.413
	slli	%r3 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r11 0
	addi	%r0 %r3 0
	sw	%r26 %r3 44
shadow_check_and_group.9 :
	slli	%r3 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r12 0
	addi	%r0 %r1 -1
	beq	%r12 %r1 tail_b.414
	slli	%r3 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r13 0
	sw	%r26 %r13 116
	sw	%r26 %r11 112
	sw	%r26 %r3 108
	sw	%r26 %r9 104
	sw	%r26 %r2 100
	sw	%r26 %r6 96
	sw	%r26 %r5 92
	sw	%r26 %r10 88
	sw	%r26 %r8 84
	sw	%r26 %r14 80
	sw	%r26 %r17 76
	sw	%r26 %r16 72
	sw	%r26 %r20 68
	sw	%r26 %r7 64
	sw	%r26 %r18 60
	sw.s	%r26 %f5 56
	sw.s	%r26 %f1 52
	sw	%r26 %r4 48
	mov	%r18 %r29
	mov	%r14 %r3
	mov	%r16 %r2
	mov	%r13 %r1
	sw	%r26 %r28 120
	lw	%r29 %r30 0
	addi	%r26 %r26 124
	jalr	%r30
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	mov	%r1 %r12
	lw	%r26 %r13 116
	lw	%r26 %r11 112
	lw	%r26 %r3 108
	lw	%r26 %r9 104
	lw	%r26 %r2 100
	lw	%r26 %r6 96
	lw	%r26 %r5 92
	lw	%r26 %r10 88
	lw	%r26 %r8 84
	lw	%r26 %r14 80
	lw	%r26 %r17 76
	lw	%r26 %r16 72
	lw	%r26 %r20 68
	lw	%r26 %r7 64
	lw	%r26 %r18 60
	lw.s	%r26 %f5 56
	lw.s	%r26 %f1 52
	lw	%r26 %r4 48
	lw.s	%r7 %f2 0
	addi	%r0 %r1 0
	bne	%r12 %r1 branching_b.242
	addi	%r0 %r1 0
	j	branching_b.243
branching_b.242 :
	ilw.s	%r0 %f0 l.57
	fbge	%f2 %f0 tail_b.416
	addi	%r0 %r1 1
	j	branching_b.243
tail_b.416 :
	addi	%r0 %r1 0
	j	branching_b.243
tail_b.414 :
	addi	%r0 %r11 0
	j	postloop_b.9
tail_b.413 :
	addi	%r0 %r1 0
	j	postloop_b.10
tail_b.412 :
	addi	%r0 %r1 0
	j	branching_b.252
postloop_b.10 :
	lw	%r26 %r9 40
branching_b.251 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.430
	addi	%r0 %r1 1
	j	branching_b.252
tail_b.430 :
	addi	%r0 %r1 0
	j	branching_b.252
postloop_b.9 :
	lw	%r26 %r3 44
branching_b.250 :
	addi	%r0 %r1 0
	beq	%r11 %r1 tail_b.428
	addi	%r0 %r1 1
	j	postloop_b.10
tail_b.428 :
	addi	%r9 %r9 1
	j	shadow_check_one_or_group.8
branching_b.243 :
	addi	%r0 %r12 0
	beq	%r1 %r12 branching_b.244
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f2 %f6
	lw.s	%r17 %f0 0
	mul.s	%f6 %f0 %f2
	lw.s	%r14 %f0 0
	add.s	%f0 %f2 %f3
	lw.s	%r17 %f0 4
	mul.s	%f6 %f0 %f0
	lw.s	%r14 %f2 4
	add.s	%f2 %f0 %f4
	lw.s	%r17 %f0 8
	mul.s	%f6 %f0 %f2
	lw.s	%r14 %f0 8
	add.s	%f0 %f2 %f8
	addi	%r0 %r12 0
	sw	%r26 %r12 48
check_all_inside.12 :
	slli	%r12 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r13 -1
	beq	%r1 %r13 tail_b.420
	slli	%r1 %r1 2
	add	%r20 %r1 %r31
	lw	%r31 %r13 0
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f6
	lw	%r13 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f4 %f7
	lw	%r13 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f8 %f2
	lw	%r13 %r15 4
	addi	%r0 %r1 1
	beq	%r15 %r1 tail_b.421
	addi	%r0 %r1 2
	beq	%r15 %r1 tail_b.422
	sw.s	%r26 %f8 132
	sw.s	%r26 %f4 128
	sw.s	%r26 %f3 124
	sw	%r26 %r12 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r9 108
	sw	%r26 %r2 104
	sw	%r26 %r6 100
	sw	%r26 %r5 96
	sw	%r26 %r10 92
	sw	%r26 %r8 88
	sw	%r26 %r14 84
	sw	%r26 %r17 80
	sw	%r26 %r16 76
	sw	%r26 %r20 72
	sw	%r26 %r7 68
	sw	%r26 %r18 64
	sw.s	%r26 %f5 60
	sw.s	%r26 %f1 56
	sw	%r26 %r4 52
	mov	%r13 %r1
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	is_second_outside.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw.s	%r26 %f8 132
	lw.s	%r26 %f4 128
	lw.s	%r26 %f3 124
	lw	%r26 %r12 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r9 108
	lw	%r26 %r2 104
	lw	%r26 %r6 100
	lw	%r26 %r5 96
	lw	%r26 %r10 92
	lw	%r26 %r8 88
	lw	%r26 %r14 84
	lw	%r26 %r17 80
	lw	%r26 %r16 76
	lw	%r26 %r20 72
	lw	%r26 %r7 68
	lw	%r26 %r18 64
	lw.s	%r26 %f5 60
	lw.s	%r26 %f1 56
	lw	%r26 %r4 52
	j	branching_b.248
tail_b.422 :
	sw.s	%r26 %f8 132
	sw.s	%r26 %f4 128
	sw.s	%r26 %f3 124
	sw	%r26 %r12 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r9 108
	sw	%r26 %r2 104
	sw	%r26 %r6 100
	sw	%r26 %r5 96
	sw	%r26 %r10 92
	sw	%r26 %r8 88
	sw	%r26 %r14 84
	sw	%r26 %r17 80
	sw	%r26 %r16 76
	sw	%r26 %r20 72
	sw	%r26 %r7 68
	sw	%r26 %r18 64
	sw.s	%r26 %f5 60
	sw.s	%r26 %f1 56
	sw	%r26 %r4 52
	mov	%r13 %r1
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	is_plane_outside.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw.s	%r26 %f8 132
	lw.s	%r26 %f4 128
	lw.s	%r26 %f3 124
	lw	%r26 %r12 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r9 108
	lw	%r26 %r2 104
	lw	%r26 %r6 100
	lw	%r26 %r5 96
	lw	%r26 %r10 92
	lw	%r26 %r8 88
	lw	%r26 %r14 84
	lw	%r26 %r17 80
	lw	%r26 %r16 76
	lw	%r26 %r20 72
	lw	%r26 %r7 68
	lw	%r26 %r18 64
	lw.s	%r26 %f5 60
	lw.s	%r26 %f1 56
	lw	%r26 %r4 52
	j	branching_b.248
tail_b.421 :
	sw.s	%r26 %f8 132
	sw.s	%r26 %f4 128
	sw.s	%r26 %f3 124
	sw	%r26 %r12 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r9 108
	sw	%r26 %r2 104
	sw	%r26 %r6 100
	sw	%r26 %r5 96
	sw	%r26 %r10 92
	sw	%r26 %r8 88
	sw	%r26 %r14 84
	sw	%r26 %r17 80
	sw	%r26 %r16 76
	sw	%r26 %r20 72
	sw	%r26 %r7 68
	sw	%r26 %r18 64
	sw.s	%r26 %f5 60
	sw.s	%r26 %f1 56
	sw	%r26 %r4 52
	mov	%r13 %r1
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	is_rect_outside.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw.s	%r26 %f8 132
	lw.s	%r26 %f4 128
	lw.s	%r26 %f3 124
	lw	%r26 %r12 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r9 108
	lw	%r26 %r2 104
	lw	%r26 %r6 100
	lw	%r26 %r5 96
	lw	%r26 %r10 92
	lw	%r26 %r8 88
	lw	%r26 %r14 84
	lw	%r26 %r17 80
	lw	%r26 %r16 76
	lw	%r26 %r20 72
	lw	%r26 %r7 68
	lw	%r26 %r18 64
	lw.s	%r26 %f5 60
	lw.s	%r26 %f1 56
	lw	%r26 %r4 52
	j	branching_b.248
tail_b.420 :
	addi	%r0 %r1 1
	j	postloop_b.8
branching_b.244 :
	slli	%r13 %r1 2
	add	%r20 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r12 0
	beq	%r1 %r12 tail_b.418
	addi	%r3 %r3 1
	j	shadow_check_and_group.9
tail_b.418 :
	addi	%r0 %r11 0
	j	postloop_b.9
postloop_b.8 :
	lw	%r26 %r12 48
branching_b.249 :
	addi	%r0 %r12 0
	beq	%r1 %r12 tail_b.426
	addi	%r0 %r11 1
	j	postloop_b.9
tail_b.426 :
	addi	%r3 %r3 1
	j	shadow_check_and_group.9
branching_b.248 :
	addi	%r0 %r13 0
	beq	%r1 %r13 tail_b.424
	addi	%r0 %r1 0
	j	postloop_b.8
tail_b.424 :
	addi	%r12 %r12 1
	j	check_all_inside.12
branching_b.252 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.433
	addi	%r0 %r9 1
	sw	%r26 %r9 52
shadow_check_one_or_group.7 :
	slli	%r9 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.434
	slli	%r3 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r12 0
	sw	%r26 %r12 56
shadow_check_and_group.8 :
	slli	%r12 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r11 0
	addi	%r0 %r1 -1
	beq	%r11 %r1 tail_b.435
	slli	%r12 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r13 0
	sw	%r26 %r13 128
	sw	%r26 %r3 124
	sw	%r26 %r12 120
	sw	%r26 %r2 116
	sw	%r26 %r9 112
	sw	%r26 %r6 108
	sw	%r26 %r5 104
	sw	%r26 %r10 100
	sw	%r26 %r8 96
	sw	%r26 %r14 92
	sw	%r26 %r17 88
	sw	%r26 %r16 84
	sw	%r26 %r20 80
	sw	%r26 %r7 76
	sw	%r26 %r18 72
	sw.s	%r26 %f5 68
	sw.s	%r26 %f1 64
	sw	%r26 %r4 60
	mov	%r18 %r29
	mov	%r14 %r3
	mov	%r16 %r2
	mov	%r13 %r1
	sw	%r26 %r28 132
	lw	%r29 %r30 0
	addi	%r26 %r26 136
	jalr	%r30
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r1 %r11
	lw	%r26 %r13 128
	lw	%r26 %r3 124
	lw	%r26 %r12 120
	lw	%r26 %r2 116
	lw	%r26 %r9 112
	lw	%r26 %r6 108
	lw	%r26 %r5 104
	lw	%r26 %r10 100
	lw	%r26 %r8 96
	lw	%r26 %r14 92
	lw	%r26 %r17 88
	lw	%r26 %r16 84
	lw	%r26 %r20 80
	lw	%r26 %r7 76
	lw	%r26 %r18 72
	lw.s	%r26 %f5 68
	lw.s	%r26 %f1 64
	lw	%r26 %r4 60
	lw.s	%r7 %f0 0
	addi	%r0 %r1 0
	bne	%r11 %r1 branching_b.256
	addi	%r0 %r11 0
	j	branching_b.257
branching_b.256 :
	ilw.s	%r0 %f2 l.57
	fbge	%f0 %f2 tail_b.437
	addi	%r0 %r11 1
	j	branching_b.257
tail_b.437 :
	addi	%r0 %r11 0
	j	branching_b.257
tail_b.435 :
	addi	%r0 %r3 0
	j	postloop_b.12
tail_b.434 :
	addi	%r0 %r2 0
	j	postloop_b.13
tail_b.433 :
	addi	%r5 %r5 1
	j	shadow_check_one_or_matrix.3
postloop_b.13 :
	lw	%r26 %r9 52
branching_b.265 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.451
	addi	%r0 %r1 1
	j	postloop_b.14
tail_b.451 :
	addi	%r5 %r5 1
	j	shadow_check_one_or_matrix.3
postloop_b.12 :
	lw	%r26 %r12 56
branching_b.264 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.449
	addi	%r0 %r2 1
	j	postloop_b.13
tail_b.449 :
	addi	%r9 %r9 1
	j	shadow_check_one_or_group.7
branching_b.257 :
	addi	%r0 %r1 0
	beq	%r11 %r1 branching_b.258
	ilw.s	%r0 %f2 l.54
	add.s	%f2 %f0 %f2
	lw.s	%r17 %f0 0
	mul.s	%f2 %f0 %f0
	lw.s	%r14 %f3 0
	add.s	%f3 %f0 %f3
	lw.s	%r17 %f0 4
	mul.s	%f2 %f0 %f4
	lw.s	%r14 %f0 4
	add.s	%f0 %f4 %f4
	lw.s	%r17 %f0 8
	mul.s	%f2 %f0 %f0
	lw.s	%r14 %f2 8
	add.s	%f2 %f0 %f2
	addi	%r0 %r11 0
	sw	%r26 %r11 60
check_all_inside.11 :
	slli	%r11 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r13 0
	addi	%r0 %r1 -1
	beq	%r13 %r1 tail_b.441
	slli	%r13 %r1 2
	add	%r20 %r1 %r31
	lw	%r31 %r13 0
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f6
	lw	%r13 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f4 %f7
	lw	%r13 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f2 %f0
	lw	%r13 %r1 4
	addi	%r0 %r15 1
	beq	%r1 %r15 tail_b.442
	addi	%r0 %r15 2
	beq	%r1 %r15 tail_b.443
	sw.s	%r26 %f2 144
	sw.s	%r26 %f4 140
	sw.s	%r26 %f3 136
	sw	%r26 %r11 132
	sw	%r26 %r3 128
	sw	%r26 %r12 124
	sw	%r26 %r2 120
	sw	%r26 %r9 116
	sw	%r26 %r6 112
	sw	%r26 %r5 108
	sw	%r26 %r10 104
	sw	%r26 %r8 100
	sw	%r26 %r14 96
	sw	%r26 %r17 92
	sw	%r26 %r16 88
	sw	%r26 %r20 84
	sw	%r26 %r7 80
	sw	%r26 %r18 76
	sw.s	%r26 %f5 72
	sw.s	%r26 %f1 68
	sw	%r26 %r4 64
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	is_second_outside.0
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f2 144
	lw.s	%r26 %f4 140
	lw.s	%r26 %f3 136
	lw	%r26 %r11 132
	lw	%r26 %r3 128
	lw	%r26 %r12 124
	lw	%r26 %r2 120
	lw	%r26 %r9 116
	lw	%r26 %r6 112
	lw	%r26 %r5 108
	lw	%r26 %r10 104
	lw	%r26 %r8 100
	lw	%r26 %r14 96
	lw	%r26 %r17 92
	lw	%r26 %r16 88
	lw	%r26 %r20 84
	lw	%r26 %r7 80
	lw	%r26 %r18 76
	lw.s	%r26 %f5 72
	lw.s	%r26 %f1 68
	lw	%r26 %r4 64
	j	branching_b.262
tail_b.443 :
	sw.s	%r26 %f2 144
	sw.s	%r26 %f4 140
	sw.s	%r26 %f3 136
	sw	%r26 %r11 132
	sw	%r26 %r3 128
	sw	%r26 %r12 124
	sw	%r26 %r2 120
	sw	%r26 %r9 116
	sw	%r26 %r6 112
	sw	%r26 %r5 108
	sw	%r26 %r10 104
	sw	%r26 %r8 100
	sw	%r26 %r14 96
	sw	%r26 %r17 92
	sw	%r26 %r16 88
	sw	%r26 %r20 84
	sw	%r26 %r7 80
	sw	%r26 %r18 76
	sw.s	%r26 %f5 72
	sw.s	%r26 %f1 68
	sw	%r26 %r4 64
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	is_plane_outside.0
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f2 144
	lw.s	%r26 %f4 140
	lw.s	%r26 %f3 136
	lw	%r26 %r11 132
	lw	%r26 %r3 128
	lw	%r26 %r12 124
	lw	%r26 %r2 120
	lw	%r26 %r9 116
	lw	%r26 %r6 112
	lw	%r26 %r5 108
	lw	%r26 %r10 104
	lw	%r26 %r8 100
	lw	%r26 %r14 96
	lw	%r26 %r17 92
	lw	%r26 %r16 88
	lw	%r26 %r20 84
	lw	%r26 %r7 80
	lw	%r26 %r18 76
	lw.s	%r26 %f5 72
	lw.s	%r26 %f1 68
	lw	%r26 %r4 64
	j	branching_b.262
tail_b.442 :
	sw.s	%r26 %f2 144
	sw.s	%r26 %f4 140
	sw.s	%r26 %f3 136
	sw	%r26 %r11 132
	sw	%r26 %r3 128
	sw	%r26 %r12 124
	sw	%r26 %r2 120
	sw	%r26 %r9 116
	sw	%r26 %r6 112
	sw	%r26 %r5 108
	sw	%r26 %r10 104
	sw	%r26 %r8 100
	sw	%r26 %r14 96
	sw	%r26 %r17 92
	sw	%r26 %r16 88
	sw	%r26 %r20 84
	sw	%r26 %r7 80
	sw	%r26 %r18 76
	sw.s	%r26 %f5 72
	sw.s	%r26 %f1 68
	sw	%r26 %r4 64
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f7 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	is_rect_outside.0
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f2 144
	lw.s	%r26 %f4 140
	lw.s	%r26 %f3 136
	lw	%r26 %r11 132
	lw	%r26 %r3 128
	lw	%r26 %r12 124
	lw	%r26 %r2 120
	lw	%r26 %r9 116
	lw	%r26 %r6 112
	lw	%r26 %r5 108
	lw	%r26 %r10 104
	lw	%r26 %r8 100
	lw	%r26 %r14 96
	lw	%r26 %r17 92
	lw	%r26 %r16 88
	lw	%r26 %r20 84
	lw	%r26 %r7 80
	lw	%r26 %r18 76
	lw.s	%r26 %f5 72
	lw.s	%r26 %f1 68
	lw	%r26 %r4 64
	j	branching_b.262
tail_b.441 :
	addi	%r0 %r13 1
	j	postloop_b.11
branching_b.258 :
	slli	%r13 %r1 2
	add	%r20 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r11 24
	addi	%r0 %r1 0
	beq	%r11 %r1 tail_b.439
	addi	%r12 %r12 1
	j	shadow_check_and_group.8
tail_b.439 :
	addi	%r0 %r3 0
	j	postloop_b.12
postloop_b.11 :
	lw	%r26 %r11 60
branching_b.263 :
	addi	%r0 %r1 0
	beq	%r13 %r1 tail_b.447
	addi	%r0 %r3 1
	j	postloop_b.12
tail_b.447 :
	addi	%r12 %r12 1
	j	shadow_check_and_group.8
branching_b.262 :
	addi	%r0 %r13 0
	beq	%r1 %r13 tail_b.445
	addi	%r0 %r13 0
	j	postloop_b.11
tail_b.445 :
	addi	%r11 %r11 1
	j	check_all_inside.11
tail_b.456 :
	addi	%r0 %r1 1
	sub	%r4 %r1 %r1
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	mov.s	%f1 %f0
	mov.s	%f5 %f1
	lw	%r29 %r30 0
	jr	%r30
branching_b.204 :
	addi	%r0 %r23 0
	beq	%r22 %r23 tail_b.360
	lw.s	%r1 %f0 0
	fbge	%f2 %f0 tail_b.362
	addi	%r0 %r22 1
	j	branching_b.206
tail_b.362 :
	addi	%r0 %r22 0
	j	branching_b.206
tail_b.360 :
tail_b.372 :
	addi	%r24 %r24 1
	j	solve_each_element_fast.7
branching_b.206 :
	addi	%r0 %r23 0
	beq	%r22 %r23 tail_b.363
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f2 %f4
	lw.s	%r11 %f0 0
	mul.s	%f4 %f0 %f0
	lw.s	%r2 %f2 0
	add.s	%f2 %f0 %f6
	lw.s	%r11 %f0 4
	mul.s	%f4 %f0 %f2
	lw.s	%r2 %f0 4
	add.s	%f0 %f2 %f3
	lw.s	%r11 %f0 8
	mul.s	%f4 %f0 %f2
	lw.s	%r2 %f0 8
	add.s	%f0 %f2 %f8
	addi	%r0 %r25 0
	sw	%r26 %r25 64
check_all_inside.24 :
	slli	%r25 %r11 2
	add	%r6 %r11 %r31
	lw	%r31 %r11 0
	addi	%r0 %r22 -1
	beq	%r11 %r22 tail_b.364
	slli	%r11 %r11 2
	add	%r20 %r11 %r31
	lw	%r31 %r22 0
	lw	%r22 %r11 20
	lw.s	%r11 %f0 0
	sub.s	%f0 %f6 %f7
	lw	%r22 %r11 20
	lw.s	%r11 %f0 4
	sub.s	%f0 %f3 %f9
	lw	%r22 %r11 20
	lw.s	%r11 %f0 8
	sub.s	%f0 %f8 %f2
	lw	%r22 %r11 4
	addi	%r0 %r23 1
	beq	%r11 %r23 tail_b.365
	addi	%r0 %r23 2
	beq	%r11 %r23 tail_b.366
	sw.s	%r26 %f8 180
	sw.s	%r26 %f3 176
	sw.s	%r26 %f6 172
	sw	%r26 %r25 168
	sw.s	%r26 %f4 164
	sw	%r26 %r15 160
	sw	%r26 %r13 156
	sw	%r26 %r6 152
	sw	%r26 %r24 148
	sw	%r26 %r5 144
	sw	%r26 %r3 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r19 128
	sw	%r26 %r8 124
	sw	%r26 %r21 120
	sw	%r26 %r14 116
	sw	%r26 %r12 112
	sw	%r26 %r17 108
	sw	%r26 %r16 104
	sw	%r26 %r20 100
	sw	%r26 %r7 96
	sw	%r26 %r18 92
	sw	%r26 %r29 88
	sw	%r26 %r2 84
	sw	%r26 %r1 80
	sw.s	%r26 %f5 76
	sw.s	%r26 %f1 72
	sw	%r26 %r4 68
	mov	%r22 %r1
	mov.s	%f9 %f1
	mov.s	%f7 %f0
	sw	%r26 %r28 184
	addi	%r26 %r26 188
	jal	is_second_outside.0
	addi	%r26 %r26 -188
	lw	%r26 %r28 184
	mov	%r1 %r11
	lw.s	%r26 %f8 180
	lw.s	%r26 %f3 176
	lw.s	%r26 %f6 172
	lw	%r26 %r25 168
	lw.s	%r26 %f4 164
	lw	%r26 %r15 160
	lw	%r26 %r13 156
	lw	%r26 %r6 152
	lw	%r26 %r24 148
	lw	%r26 %r5 144
	lw	%r26 %r3 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r19 128
	lw	%r26 %r8 124
	lw	%r26 %r21 120
	lw	%r26 %r14 116
	lw	%r26 %r12 112
	lw	%r26 %r17 108
	lw	%r26 %r16 104
	lw	%r26 %r20 100
	lw	%r26 %r7 96
	lw	%r26 %r18 92
	lw	%r26 %r29 88
	lw	%r26 %r2 84
	lw	%r26 %r1 80
	lw.s	%r26 %f5 76
	lw.s	%r26 %f1 72
	lw	%r26 %r4 68
	j	branching_b.210
tail_b.366 :
	sw.s	%r26 %f8 180
	sw.s	%r26 %f3 176
	sw.s	%r26 %f6 172
	sw	%r26 %r25 168
	sw.s	%r26 %f4 164
	sw	%r26 %r15 160
	sw	%r26 %r13 156
	sw	%r26 %r6 152
	sw	%r26 %r24 148
	sw	%r26 %r5 144
	sw	%r26 %r3 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r19 128
	sw	%r26 %r8 124
	sw	%r26 %r21 120
	sw	%r26 %r14 116
	sw	%r26 %r12 112
	sw	%r26 %r17 108
	sw	%r26 %r16 104
	sw	%r26 %r20 100
	sw	%r26 %r7 96
	sw	%r26 %r18 92
	sw	%r26 %r29 88
	sw	%r26 %r2 84
	sw	%r26 %r1 80
	sw.s	%r26 %f5 76
	sw.s	%r26 %f1 72
	sw	%r26 %r4 68
	mov	%r22 %r1
	mov.s	%f9 %f1
	mov.s	%f7 %f0
	sw	%r26 %r28 184
	addi	%r26 %r26 188
	jal	is_plane_outside.0
	addi	%r26 %r26 -188
	lw	%r26 %r28 184
	mov	%r1 %r11
	lw.s	%r26 %f8 180
	lw.s	%r26 %f3 176
	lw.s	%r26 %f6 172
	lw	%r26 %r25 168
	lw.s	%r26 %f4 164
	lw	%r26 %r15 160
	lw	%r26 %r13 156
	lw	%r26 %r6 152
	lw	%r26 %r24 148
	lw	%r26 %r5 144
	lw	%r26 %r3 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r19 128
	lw	%r26 %r8 124
	lw	%r26 %r21 120
	lw	%r26 %r14 116
	lw	%r26 %r12 112
	lw	%r26 %r17 108
	lw	%r26 %r16 104
	lw	%r26 %r20 100
	lw	%r26 %r7 96
	lw	%r26 %r18 92
	lw	%r26 %r29 88
	lw	%r26 %r2 84
	lw	%r26 %r1 80
	lw.s	%r26 %f5 76
	lw.s	%r26 %f1 72
	lw	%r26 %r4 68
	j	branching_b.210
tail_b.365 :
	sw.s	%r26 %f8 180
	sw.s	%r26 %f3 176
	sw.s	%r26 %f6 172
	sw	%r26 %r25 168
	sw.s	%r26 %f4 164
	sw	%r26 %r15 160
	sw	%r26 %r13 156
	sw	%r26 %r6 152
	sw	%r26 %r24 148
	sw	%r26 %r5 144
	sw	%r26 %r3 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r19 128
	sw	%r26 %r8 124
	sw	%r26 %r21 120
	sw	%r26 %r14 116
	sw	%r26 %r12 112
	sw	%r26 %r17 108
	sw	%r26 %r16 104
	sw	%r26 %r20 100
	sw	%r26 %r7 96
	sw	%r26 %r18 92
	sw	%r26 %r29 88
	sw	%r26 %r2 84
	sw	%r26 %r1 80
	sw.s	%r26 %f5 76
	sw.s	%r26 %f1 72
	sw	%r26 %r4 68
	mov	%r22 %r1
	mov.s	%f9 %f1
	mov.s	%f7 %f0
	sw	%r26 %r28 184
	addi	%r26 %r26 188
	jal	is_rect_outside.0
	addi	%r26 %r26 -188
	lw	%r26 %r28 184
	mov	%r1 %r11
	lw.s	%r26 %f8 180
	lw.s	%r26 %f3 176
	lw.s	%r26 %f6 172
	lw	%r26 %r25 168
	lw.s	%r26 %f4 164
	lw	%r26 %r15 160
	lw	%r26 %r13 156
	lw	%r26 %r6 152
	lw	%r26 %r24 148
	lw	%r26 %r5 144
	lw	%r26 %r3 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r19 128
	lw	%r26 %r8 124
	lw	%r26 %r21 120
	lw	%r26 %r14 116
	lw	%r26 %r12 112
	lw	%r26 %r17 108
	lw	%r26 %r16 104
	lw	%r26 %r20 100
	lw	%r26 %r7 96
	lw	%r26 %r18 92
	lw	%r26 %r29 88
	lw	%r26 %r2 84
	lw	%r26 %r1 80
	lw.s	%r26 %f5 76
	lw.s	%r26 %f1 72
	lw	%r26 %r4 68
	j	branching_b.210
tail_b.364 :
	addi	%r0 %r11 1
	j	postloop_b.1
tail_b.363 :
	j	tail_b.372
postloop_b.1 :
	lw	%r26 %r25 64
branching_b.211 :
	addi	%r0 %r22 0
	beq	%r11 %r22 tail_b.370
	sw.s	%r1 %f4 0
	sw.s	%r14 %f6 0
	sw.s	%r14 %f3 4
	sw.s	%r14 %f8 8
	sw	%r21 %r13 0
	sw	%r12 %r15 0
	j	tail_b.372
tail_b.370 :
	j	tail_b.372
branching_b.210 :
	addi	%r0 %r22 0
	beq	%r11 %r22 tail_b.368
	addi	%r0 %r11 0
	j	postloop_b.1
tail_b.368 :
	addi	%r25 %r25 1
	j	check_all_inside.24
postloop_b.2 :
	lw	%r26 %r24 32
tail_b.375 :
	addi	%r3 %r3 1
	j	solve_one_or_network_fast.6
postloop_b.3 :
	lw	%r26 %r3 28
	j	tail_b.401
branching_b.215 :
	addi	%r0 %r3 0
	beq	%r6 %r3 tail_b.379
	addi	%r0 %r6 1
	sw	%r26 %r6 68
solve_one_or_network_fast.5 :
	slli	%r6 %r3 2
	add	%r5 %r3 %r31
	lw	%r31 %r11 0
	addi	%r0 %r3 -1
	bne	%r11 %r3 preloop_b.6
	j	postloop_b.6
preloop_b.6 :
	slli	%r11 %r3 2
	add	%r8 %r3 %r31
	lw	%r31 %r15 0
	addi	%r0 %r22 0
	sw	%r26 %r22 72
solve_each_element_fast.6 :
	lw	%r10 %r13 0
	slli	%r22 %r3 2
	add	%r15 %r3 %r31
	lw	%r31 %r25 0
	addi	%r0 %r3 -1
	beq	%r25 %r3 tail_b.380
	sw	%r26 %r25 168
	sw	%r26 %r13 164
	sw	%r26 %r15 160
	sw	%r26 %r22 156
	sw	%r26 %r6 152
	sw	%r26 %r5 148
	sw	%r26 %r10 144
	sw	%r26 %r9 140
	sw	%r26 %r19 136
	sw	%r26 %r8 132
	sw	%r26 %r21 128
	sw	%r26 %r14 124
	sw	%r26 %r12 120
	sw	%r26 %r17 116
	sw	%r26 %r16 112
	sw	%r26 %r20 108
	sw	%r26 %r7 104
	sw	%r26 %r18 100
	sw	%r26 %r29 96
	sw	%r26 %r2 92
	sw	%r26 %r1 88
	sw.s	%r26 %f5 84
	sw.s	%r26 %f1 80
	sw	%r26 %r4 76
	mov	%r10 %r2
	mov	%r25 %r1
	sw	%r26 %r28 172
	lw	%r29 %r30 0
	addi	%r26 %r26 176
	jalr	%r30
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	mov	%r1 %r11
	lw	%r26 %r25 168
	lw	%r26 %r13 164
	lw	%r26 %r15 160
	lw	%r26 %r22 156
	lw	%r26 %r6 152
	lw	%r26 %r5 148
	lw	%r26 %r10 144
	lw	%r26 %r9 140
	lw	%r26 %r19 136
	lw	%r26 %r8 132
	lw	%r26 %r21 128
	lw	%r26 %r14 124
	lw	%r26 %r12 120
	lw	%r26 %r17 116
	lw	%r26 %r16 112
	lw	%r26 %r20 108
	lw	%r26 %r7 104
	lw	%r26 %r18 100
	lw	%r26 %r29 96
	lw	%r26 %r2 92
	lw	%r26 %r1 88
	lw.s	%r26 %f5 84
	lw.s	%r26 %f1 80
	lw	%r26 %r4 76
	addi	%r0 %r3 0
	bne	%r11 %r3 branching_b.219
	slli	%r25 %r3 2
	add	%r20 %r3 %r31
	lw	%r31 %r3 0
	lw	%r3 %r11 24
	addi	%r0 %r3 0
	beq	%r11 %r3 tail_b.396
	addi	%r22 %r22 1
	j	solve_each_element_fast.6
tail_b.396 :
	j	postloop_b.5
branching_b.219 :
	lw.s	%r7 %f0 0
	ilw.s	%r0 %f2 l.27
	fbge	%f2 %f0 tail_b.382
	addi	%r0 %r3 1
	j	branching_b.220
tail_b.382 :
	addi	%r0 %r3 0
	j	branching_b.220
tail_b.380 :
	j	postloop_b.5
tail_b.379 :
	j	tail_b.401
branching_b.220 :
	addi	%r0 %r23 0
	beq	%r3 %r23 tail_b.383
	lw.s	%r1 %f2 0
	fbge	%f0 %f2 tail_b.385
	addi	%r0 %r23 1
	j	branching_b.222
tail_b.385 :
	addi	%r0 %r23 0
	j	branching_b.222
tail_b.383 :
tail_b.395 :
	addi	%r22 %r22 1
	j	solve_each_element_fast.6
branching_b.222 :
	addi	%r0 %r3 0
	beq	%r23 %r3 tail_b.386
	ilw.s	%r0 %f2 l.54
	add.s	%f2 %f0 %f8
	lw.s	%r13 %f0 0
	mul.s	%f8 %f0 %f0
	lw.s	%r2 %f2 0
	add.s	%f2 %f0 %f3
	lw.s	%r13 %f0 4
	mul.s	%f8 %f0 %f0
	lw.s	%r2 %f2 4
	add.s	%f2 %f0 %f4
	lw.s	%r13 %f0 8
	mul.s	%f8 %f0 %f0
	lw.s	%r2 %f2 8
	add.s	%f2 %f0 %f7
	addi	%r0 %r23 0
	sw	%r26 %r23 76
check_all_inside.23 :
	slli	%r23 %r3 2
	add	%r15 %r3 %r31
	lw	%r31 %r13 0
	addi	%r0 %r3 -1
	beq	%r13 %r3 tail_b.387
	slli	%r13 %r3 2
	add	%r20 %r3 %r31
	lw	%r31 %r24 0
	lw	%r24 %r3 20
	lw.s	%r3 %f0 0
	sub.s	%f0 %f3 %f0
	lw	%r24 %r3 20
	lw.s	%r3 %f2 4
	sub.s	%f2 %f4 %f6
	lw	%r24 %r3 20
	lw.s	%r3 %f2 8
	sub.s	%f2 %f7 %f2
	lw	%r24 %r13 4
	addi	%r0 %r3 1
	beq	%r13 %r3 tail_b.388
	addi	%r0 %r3 2
	beq	%r13 %r3 tail_b.389
	sw.s	%r26 %f7 192
	sw.s	%r26 %f4 188
	sw.s	%r26 %f3 184
	sw	%r26 %r23 180
	sw.s	%r26 %f8 176
	sw	%r26 %r11 172
	sw	%r26 %r25 168
	sw	%r26 %r15 164
	sw	%r26 %r22 160
	sw	%r26 %r6 156
	sw	%r26 %r5 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r19 140
	sw	%r26 %r8 136
	sw	%r26 %r21 132
	sw	%r26 %r14 128
	sw	%r26 %r12 124
	sw	%r26 %r17 120
	sw	%r26 %r16 116
	sw	%r26 %r20 112
	sw	%r26 %r7 108
	sw	%r26 %r18 104
	sw	%r26 %r29 100
	sw	%r26 %r2 96
	sw	%r26 %r1 92
	sw.s	%r26 %f5 88
	sw.s	%r26 %f1 84
	sw	%r26 %r4 80
	mov	%r24 %r1
	mov.s	%f6 %f1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	is_second_outside.0
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r13
	lw.s	%r26 %f7 192
	lw.s	%r26 %f4 188
	lw.s	%r26 %f3 184
	lw	%r26 %r23 180
	lw.s	%r26 %f8 176
	lw	%r26 %r11 172
	lw	%r26 %r25 168
	lw	%r26 %r15 164
	lw	%r26 %r22 160
	lw	%r26 %r6 156
	lw	%r26 %r5 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r19 140
	lw	%r26 %r8 136
	lw	%r26 %r21 132
	lw	%r26 %r14 128
	lw	%r26 %r12 124
	lw	%r26 %r17 120
	lw	%r26 %r16 116
	lw	%r26 %r20 112
	lw	%r26 %r7 108
	lw	%r26 %r18 104
	lw	%r26 %r29 100
	lw	%r26 %r2 96
	lw	%r26 %r1 92
	lw.s	%r26 %f5 88
	lw.s	%r26 %f1 84
	lw	%r26 %r4 80
	j	branching_b.226
tail_b.389 :
	sw.s	%r26 %f7 192
	sw.s	%r26 %f4 188
	sw.s	%r26 %f3 184
	sw	%r26 %r23 180
	sw.s	%r26 %f8 176
	sw	%r26 %r11 172
	sw	%r26 %r25 168
	sw	%r26 %r15 164
	sw	%r26 %r22 160
	sw	%r26 %r6 156
	sw	%r26 %r5 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r19 140
	sw	%r26 %r8 136
	sw	%r26 %r21 132
	sw	%r26 %r14 128
	sw	%r26 %r12 124
	sw	%r26 %r17 120
	sw	%r26 %r16 116
	sw	%r26 %r20 112
	sw	%r26 %r7 108
	sw	%r26 %r18 104
	sw	%r26 %r29 100
	sw	%r26 %r2 96
	sw	%r26 %r1 92
	sw.s	%r26 %f5 88
	sw.s	%r26 %f1 84
	sw	%r26 %r4 80
	mov	%r24 %r1
	mov.s	%f6 %f1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	is_plane_outside.0
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r13
	lw.s	%r26 %f7 192
	lw.s	%r26 %f4 188
	lw.s	%r26 %f3 184
	lw	%r26 %r23 180
	lw.s	%r26 %f8 176
	lw	%r26 %r11 172
	lw	%r26 %r25 168
	lw	%r26 %r15 164
	lw	%r26 %r22 160
	lw	%r26 %r6 156
	lw	%r26 %r5 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r19 140
	lw	%r26 %r8 136
	lw	%r26 %r21 132
	lw	%r26 %r14 128
	lw	%r26 %r12 124
	lw	%r26 %r17 120
	lw	%r26 %r16 116
	lw	%r26 %r20 112
	lw	%r26 %r7 108
	lw	%r26 %r18 104
	lw	%r26 %r29 100
	lw	%r26 %r2 96
	lw	%r26 %r1 92
	lw.s	%r26 %f5 88
	lw.s	%r26 %f1 84
	lw	%r26 %r4 80
	j	branching_b.226
tail_b.388 :
	sw.s	%r26 %f7 192
	sw.s	%r26 %f4 188
	sw.s	%r26 %f3 184
	sw	%r26 %r23 180
	sw.s	%r26 %f8 176
	sw	%r26 %r11 172
	sw	%r26 %r25 168
	sw	%r26 %r15 164
	sw	%r26 %r22 160
	sw	%r26 %r6 156
	sw	%r26 %r5 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r19 140
	sw	%r26 %r8 136
	sw	%r26 %r21 132
	sw	%r26 %r14 128
	sw	%r26 %r12 124
	sw	%r26 %r17 120
	sw	%r26 %r16 116
	sw	%r26 %r20 112
	sw	%r26 %r7 108
	sw	%r26 %r18 104
	sw	%r26 %r29 100
	sw	%r26 %r2 96
	sw	%r26 %r1 92
	sw.s	%r26 %f5 88
	sw.s	%r26 %f1 84
	sw	%r26 %r4 80
	mov	%r24 %r1
	mov.s	%f6 %f1
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	is_rect_outside.0
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov	%r1 %r13
	lw.s	%r26 %f7 192
	lw.s	%r26 %f4 188
	lw.s	%r26 %f3 184
	lw	%r26 %r23 180
	lw.s	%r26 %f8 176
	lw	%r26 %r11 172
	lw	%r26 %r25 168
	lw	%r26 %r15 164
	lw	%r26 %r22 160
	lw	%r26 %r6 156
	lw	%r26 %r5 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r19 140
	lw	%r26 %r8 136
	lw	%r26 %r21 132
	lw	%r26 %r14 128
	lw	%r26 %r12 124
	lw	%r26 %r17 120
	lw	%r26 %r16 116
	lw	%r26 %r20 112
	lw	%r26 %r7 108
	lw	%r26 %r18 104
	lw	%r26 %r29 100
	lw	%r26 %r2 96
	lw	%r26 %r1 92
	lw.s	%r26 %f5 88
	lw.s	%r26 %f1 84
	lw	%r26 %r4 80
	j	branching_b.226
tail_b.387 :
	addi	%r0 %r3 1
	j	postloop_b.4
tail_b.386 :
	j	tail_b.395
postloop_b.4 :
	lw	%r26 %r23 76
branching_b.227 :
	addi	%r0 %r13 0
	beq	%r3 %r13 tail_b.393
	sw.s	%r1 %f8 0
	sw.s	%r14 %f3 0
	sw.s	%r14 %f4 4
	sw.s	%r14 %f7 8
	sw	%r21 %r25 0
	sw	%r12 %r11 0
	j	tail_b.395
tail_b.393 :
	j	tail_b.395
branching_b.226 :
	addi	%r0 %r3 0
	beq	%r13 %r3 tail_b.391
	addi	%r0 %r3 0
	j	postloop_b.4
tail_b.391 :
	addi	%r23 %r23 1
	j	check_all_inside.23
postloop_b.5 :
	lw	%r26 %r22 72
tail_b.398 :
	addi	%r6 %r6 1
	j	solve_one_or_network_fast.5
postloop_b.6 :
	lw	%r26 %r6 68
tail_b.401 :
	addi	%r19 %r19 1
	j	trace_or_matrix_fast.2
return_point.43 :
	lw	%r26 %r1 80
	retl
trace_ray.0 :
	sw	%r26 %r29 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r2 %r15
	mov.s	%f1 %f3
	mov.s	%f0 %f5
branching_b.267 :
	lw	%r26 %r30 8
	lw	%r30 %r30 104
	sw	%r26 %r30 12
	lw	%r26 %r30 8
	lw	%r30 %r30 100
	sw	%r26 %r30 16
	lw	%r26 %r30 8
	lw	%r30 %r17 96
	lw	%r26 %r30 8
	lw	%r30 %r30 92
	sw	%r26 %r30 20
	lw	%r26 %r30 8
	lw	%r30 %r30 88
	sw	%r26 %r30 24
	lw	%r26 %r30 8
	lw	%r30 %r13 84
	lw	%r26 %r30 8
	lw	%r30 %r7 80
	lw	%r26 %r30 8
	lw	%r30 %r21 76
	lw	%r26 %r30 8
	lw	%r30 %r8 72
	lw	%r26 %r30 8
	lw	%r30 %r30 68
	sw	%r26 %r30 28
	lw	%r26 %r30 8
	lw	%r30 %r30 64
	sw	%r26 %r30 32
	lw	%r26 %r30 8
	lw	%r30 %r18 60
	lw	%r26 %r30 8
	lw	%r30 %r30 56
	sw	%r26 %r30 36
	lw	%r26 %r30 8
	lw	%r30 %r30 52
	sw	%r26 %r30 40
	lw	%r26 %r30 8
	lw	%r30 %r30 48
	sw	%r26 %r30 44
	lw	%r26 %r30 8
	lw	%r30 %r20 44
	lw	%r26 %r30 8
	lw	%r30 %r19 40
	lw	%r26 %r30 8
	lw	%r30 %r22 36
	lw	%r26 %r30 8
	lw	%r30 %r9 32
	lw	%r26 %r30 8
	lw	%r30 %r16 28
	lw	%r26 %r30 8
	lw	%r30 %r29 24
	lw	%r26 %r30 8
	lw	%r30 %r30 20
	sw	%r26 %r30 48
	lw	%r26 %r30 8
	lw	%r30 %r30 16
	sw	%r26 %r30 52
	lw	%r26 %r30 8
	lw	%r30 %r30 12
	sw	%r26 %r30 56
	lw	%r26 %r30 8
	lw	%r30 %r11 8
	lw	%r26 %r30 8
	lw	%r30 %r30 4
	sw	%r26 %r30 60
	addi	%r0 %r30 4
	sw	%r26 %r30 64
	lw	%r26 %r30 0
	lw	%r26 %r31 64
	ble	%r30 %r31 preloop_b.15
	j	return_point.44
preloop_b.15 :
	lw	%r26 %r30 4
	lw	%r30 %r30 8
	sw	%r26 %r30 68
	ilw.s	%r0 %f0 l.53
	sw.s	%r17 %f0 0
	addi	%r0 %r12 0
	lw	%r26 %r30 32
	lw	%r30 %r10 0
	sw	%r26 %r12 72
trace_or_matrix.1 :
	slli	%r12 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r14 0
	lw	%r14 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.458
	addi	%r0 %r1 99
	beq	%r2 %r1 preloop_b.16
	sw	%r26 %r9 148
	sw	%r26 %r14 144
	sw	%r26 %r15 140
	sw	%r26 %r10 136
	sw	%r26 %r12 132
	sw	%r26 %r11 128
	sw	%r26 %r29 124
	sw	%r26 %r16 120
	sw	%r26 %r22 116
	sw	%r26 %r19 112
	sw	%r26 %r20 108
	sw	%r26 %r18 104
	sw	%r26 %r8 100
	sw	%r26 %r21 96
	sw	%r26 %r7 92
	sw	%r26 %r13 88
	sw	%r26 %r17 84
	sw.s	%r26 %f3 80
	sw.s	%r26 %f5 76
	mov	%r8 %r29
	mov	%r13 %r3
	mov	%r2 %r1
	mov	%r15 %r2
	sw	%r26 %r28 152
	lw	%r29 %r30 0
	addi	%r26 %r26 156
	jalr	%r30
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	lw	%r26 %r9 148
	lw	%r26 %r14 144
	lw	%r26 %r15 140
	lw	%r26 %r10 136
	lw	%r26 %r12 132
	lw	%r26 %r11 128
	lw	%r26 %r29 124
	lw	%r26 %r16 120
	lw	%r26 %r22 116
	lw	%r26 %r19 112
	lw	%r26 %r20 108
	lw	%r26 %r18 104
	lw	%r26 %r8 100
	lw	%r26 %r21 96
	lw	%r26 %r7 92
	lw	%r26 %r13 88
	lw	%r26 %r17 84
	lw.s	%r26 %f3 80
	lw.s	%r26 %f5 76
	addi	%r0 %r2 0
	bne	%r1 %r2 branching_b.284
	j	tail_b.503
branching_b.284 :
	lw.s	%r21 %f0 0
	lw.s	%r17 %f1 0
	fbge	%f0 %f1 tail_b.480
	addi	%r0 %r2 1
	j	branching_b.285
tail_b.480 :
	addi	%r0 %r2 0
	j	branching_b.285
preloop_b.16 :
	addi	%r0 %r24 1
	sw	%r26 %r24 76
solve_one_or_network.4 :
	slli	%r24 %r1 2
	add	%r14 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 -1
	bne	%r1 %r2 preloop_b.17
	j	postloop_b.17
preloop_b.17 :
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r1 0
	sw	%r26 %r1 80
solve_each_element.5 :
	slli	%r1 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r5 0
	addi	%r0 %r2 -1
	beq	%r5 %r2 tail_b.459
	sw	%r26 %r9 172
	sw	%r26 %r5 168
	sw	%r26 %r3 164
	sw	%r26 %r1 160
	sw	%r26 %r14 156
	sw	%r26 %r24 152
	sw	%r26 %r15 148
	sw	%r26 %r10 144
	sw	%r26 %r12 140
	sw	%r26 %r11 136
	sw	%r26 %r29 132
	sw	%r26 %r16 128
	sw	%r26 %r22 124
	sw	%r26 %r19 120
	sw	%r26 %r20 116
	sw	%r26 %r18 112
	sw	%r26 %r8 108
	sw	%r26 %r21 104
	sw	%r26 %r7 100
	sw	%r26 %r13 96
	sw	%r26 %r17 92
	sw.s	%r26 %f3 88
	sw.s	%r26 %f5 84
	mov	%r8 %r29
	mov	%r13 %r3
	mov	%r15 %r2
	mov	%r5 %r1
	sw	%r26 %r28 176
	lw	%r29 %r30 0
	addi	%r26 %r26 180
	jalr	%r30
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	mov	%r1 %r2
	lw	%r26 %r9 172
	lw	%r26 %r5 168
	lw	%r26 %r3 164
	lw	%r26 %r1 160
	lw	%r26 %r14 156
	lw	%r26 %r24 152
	lw	%r26 %r15 148
	lw	%r26 %r10 144
	lw	%r26 %r12 140
	lw	%r26 %r11 136
	lw	%r26 %r29 132
	lw	%r26 %r16 128
	lw	%r26 %r22 124
	lw	%r26 %r19 120
	lw	%r26 %r20 116
	lw	%r26 %r18 112
	lw	%r26 %r8 108
	lw	%r26 %r21 104
	lw	%r26 %r7 100
	lw	%r26 %r13 96
	lw	%r26 %r17 92
	lw.s	%r26 %f3 88
	lw.s	%r26 %f5 84
	addi	%r0 %r4 0
	bne	%r2 %r4 branching_b.273
	slli	%r5 %r2 2
	add	%r18 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 24
	addi	%r0 %r4 0
	beq	%r2 %r4 tail_b.475
	addi	%r1 %r1 1
	j	solve_each_element.5
tail_b.475 :
	j	postloop_b.16
branching_b.273 :
	lw.s	%r21 %f0 0
	ilw.s	%r0 %f1 l.27
	fbge	%f1 %f0 tail_b.461
	addi	%r0 %r6 1
	j	branching_b.274
tail_b.461 :
	addi	%r0 %r6 0
	j	branching_b.274
tail_b.459 :
	j	postloop_b.16
tail_b.458 :
postloop_b.21 :
	lw	%r26 %r12 72
branching_b.299 :
	lw.s	%r17 %f1 0
	ilw.s	%r0 %f0 l.55
	fbge	%f0 %f1 tail_b.505
	addi	%r0 %r1 1
	j	branching_b.300
tail_b.505 :
	addi	%r0 %r1 0
branching_b.300 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.506
	ilw.s	%r0 %f0 l.56
	fbge	%f1 %f0 tail_b.508
	addi	%r0 %r30 1
	sw	%r26 %r30 84
	j	branching_b.302
tail_b.508 :
	addi	%r0 %r30 0
	sw	%r26 %r30 84
	j	branching_b.302
tail_b.506 :
	addi	%r0 %r30 0
	sw	%r26 %r30 84
branching_b.302 :
	addi	%r0 %r1 0
	lw	%r26 %r30 84
	beq	%r30 %r1 branching_b.303
	lw	%r16 %r1 0
	slli	%r1 %r30 2
	sw	%r26 %r30 88
	lw	%r26 %r30 88
	add	%r18 %r30 %r31
	lw	%r31 %r4 0
	lw	%r4 %r3 8
	lw	%r4 %r30 28
	sw	%r26 %r30 92
	lw	%r26 %r30 92
	lw.s	%r30 %f0 0
	mul.s	%f5 %f0 %f6
	lw	%r4 %r2 4
	addi	%r0 %r30 1
	sw	%r26 %r30 96
	lw	%r26 %r30 96
	beq	%r2 %r30 tail_b.514
	addi	%r0 %r30 2
	sw	%r26 %r30 100
	lw	%r26 %r30 100
	beq	%r2 %r30 tail_b.515
	sw	%r26 %r9 172
	sw.s	%r26 %f6 168
	sw	%r26 %r3 164
	sw	%r26 %r4 160
	sw	%r26 %r1 156
	sw	%r26 %r15 152
	sw	%r26 %r11 148
	sw	%r26 %r22 144
	sw	%r26 %r19 140
	sw	%r26 %r20 136
	sw	%r26 %r18 132
	sw	%r26 %r21 128
	sw	%r26 %r7 124
	sw	%r26 %r13 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r4 %r1
	sw	%r26 %r28 176
	lw	%r29 %r30 0
	addi	%r26 %r26 180
	jalr	%r30
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	sw	%r26 %r1 104
	lw	%r26 %r9 172
	lw.s	%r26 %f6 168
	lw	%r26 %r3 164
	lw	%r26 %r4 160
	lw	%r26 %r1 156
	lw	%r26 %r15 152
	lw	%r26 %r11 148
	lw	%r26 %r22 144
	lw	%r26 %r19 140
	lw	%r26 %r20 136
	lw	%r26 %r18 132
	lw	%r26 %r21 128
	lw	%r26 %r7 124
	lw	%r26 %r13 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	j	branching_b.308
tail_b.515 :
	sw	%r26 %r9 172
	sw.s	%r26 %f6 168
	sw	%r26 %r3 164
	sw	%r26 %r4 160
	sw	%r26 %r1 156
	sw	%r26 %r15 152
	sw	%r26 %r11 148
	sw	%r26 %r22 144
	sw	%r26 %r19 140
	sw	%r26 %r20 136
	sw	%r26 %r18 132
	sw	%r26 %r21 128
	sw	%r26 %r7 124
	sw	%r26 %r13 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r4 %r1
	lw	%r26 %r29 52
	sw	%r26 %r28 176
	lw	%r29 %r30 0
	addi	%r26 %r26 180
	jalr	%r30
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	mov	%r1 %r2
	lw	%r26 %r9 172
	lw.s	%r26 %f6 168
	lw	%r26 %r3 164
	lw	%r26 %r4 160
	lw	%r26 %r1 156
	lw	%r26 %r15 152
	lw	%r26 %r11 148
	lw	%r26 %r22 144
	lw	%r26 %r19 140
	lw	%r26 %r20 136
	lw	%r26 %r18 132
	lw	%r26 %r21 128
	lw	%r26 %r7 124
	lw	%r26 %r13 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	j	branching_b.308
tail_b.514 :
	sw	%r26 %r9 172
	sw.s	%r26 %f6 168
	sw	%r26 %r3 164
	sw	%r26 %r4 160
	sw	%r26 %r1 156
	sw	%r26 %r15 152
	sw	%r26 %r11 148
	sw	%r26 %r22 144
	sw	%r26 %r19 140
	sw	%r26 %r20 136
	sw	%r26 %r18 132
	sw	%r26 %r21 128
	sw	%r26 %r7 124
	sw	%r26 %r13 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r15 %r1
	lw	%r26 %r29 48
	sw	%r26 %r28 176
	lw	%r29 %r30 0
	addi	%r26 %r26 180
	jalr	%r30
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	mov	%r1 %r2
	lw	%r26 %r9 172
	lw.s	%r26 %f6 168
	lw	%r26 %r3 164
	lw	%r26 %r4 160
	lw	%r26 %r1 156
	lw	%r26 %r15 152
	lw	%r26 %r11 148
	lw	%r26 %r22 144
	lw	%r26 %r19 140
	lw	%r26 %r20 136
	lw	%r26 %r18 132
	lw	%r26 %r21 128
	lw	%r26 %r7 124
	lw	%r26 %r13 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	j	branching_b.308
branching_b.303 :
	addi	%r0 %r1 -1
	lw	%r26 %r30 0
	slli	%r30 %r2 2
	lw	%r26 %r30 68
	add	%r30 %r2 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 0
	lw	%r26 %r30 0
	bne	%r30 %r1 branching_b.304
	j	return_point.44
branching_b.304 :
	sw.s	%r26 %f5 108
	mov	%r19 %r2
	mov	%r15 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	veciprod.0
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	lw.s	%r26 %f5 108
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.510
	addi	%r0 %r1 1
	j	branching_b.305
tail_b.510 :
	addi	%r0 %r1 0
branching_b.305 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.511
	mul.s	%f1 %f1 %f0
	mul.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f1
	lw	%r26 %r30 56
	lw.s	%r30 %f0 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r30 28
	lw.s	%r30 %f0 0
	add.s	%f1 %f0 %f0
	lw	%r26 %r30 28
	sw.s	%r30 %f0 0
	lw	%r26 %r30 28
	lw.s	%r30 %f0 4
	add.s	%f1 %f0 %f0
	lw	%r26 %r30 28
	sw.s	%r30 %f0 4
	lw	%r26 %r30 28
	lw.s	%r30 %f0 8
	add.s	%f1 %f0 %f0
	lw	%r26 %r30 28
	sw.s	%r30 %f0 8
	j	return_point.44
tail_b.511 :
	j	return_point.44
branching_b.308 :
	lw.s	%r9 %f0 0
	sw.s	%r13 %f0 0
	lw.s	%r9 %f0 4
	sw.s	%r13 %f0 4
	lw.s	%r9 %f0 8
	sw.s	%r13 %f0 8
	sw	%r26 %r9 168
	sw.s	%r26 %f6 164
	sw	%r26 %r3 160
	sw	%r26 %r4 156
	sw	%r26 %r1 152
	sw	%r26 %r15 148
	sw	%r26 %r11 144
	sw	%r26 %r22 140
	sw	%r26 %r19 136
	sw	%r26 %r20 132
	sw	%r26 %r18 128
	sw	%r26 %r21 124
	sw	%r26 %r7 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r9 %r2
	mov	%r4 %r1
	lw	%r26 %r29 12
	sw	%r26 %r28 172
	lw	%r29 %r30 0
	addi	%r26 %r26 176
	jalr	%r30
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	mov	%r1 %r2
	lw	%r26 %r9 168
	lw.s	%r26 %f6 164
	lw	%r26 %r3 160
	lw	%r26 %r4 156
	lw	%r26 %r1 152
	lw	%r26 %r15 148
	lw	%r26 %r11 144
	lw	%r26 %r22 140
	lw	%r26 %r19 136
	lw	%r26 %r20 132
	lw	%r26 %r18 128
	lw	%r26 %r21 124
	lw	%r26 %r7 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r22 %r2 0
	add	%r1 %r2 %r2
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	lw	%r26 %r30 68
	add	%r30 %r1 %r31
	sw	%r31 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r1 4
	lw	%r26 %r30 0
	slli	%r30 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	lw.s	%r9 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r9 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r9 %f0 8
	sw.s	%r1 %f0 8
	lw	%r26 %r30 4
	lw	%r30 %r5 12
	lw	%r4 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.25
	fbge	%f0 %f1 tail_b.518
	addi	%r0 %r2 1
	j	branching_b.309
tail_b.518 :
	addi	%r0 %r2 0
branching_b.309 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.519
	addi	%r0 %r1 0
	lw	%r26 %r30 0
	slli	%r30 %r2 2
	add	%r5 %r2 %r31
	sw	%r31 %r1 0
	j	preloop_b.22
tail_b.519 :
	addi	%r0 %r2 1
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	add	%r5 %r1 %r31
	sw	%r31 %r2 0
	lw	%r26 %r30 4
	lw	%r30 %r2 16
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r26 %r30 20
	lw.s	%r30 %f0 0
	sw.s	%r1 %f0 0
	lw	%r26 %r30 20
	lw.s	%r30 %f0 4
	sw.s	%r1 %f0 4
	lw	%r26 %r30 20
	lw.s	%r30 %f0 8
	sw.s	%r1 %f0 8
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.58
	mul.s	%f6 %f0 %f0
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	lw	%r26 %r30 4
	lw	%r30 %r1 28
	lw	%r26 %r30 0
	slli	%r30 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	lw	%r26 %r30 36
	lw.s	%r30 %f0 0
	sw.s	%r1 %f0 0
	lw	%r26 %r30 36
	lw.s	%r30 %f0 4
	sw.s	%r1 %f0 4
	lw	%r26 %r30 36
	lw.s	%r30 %f0 8
	sw.s	%r1 %f0 8
preloop_b.22 :
	ilw.s	%r0 %f1 l.59
	sw	%r26 %r9 164
	sw.s	%r26 %f1 160
	sw.s	%r26 %f6 156
	sw	%r26 %r3 152
	sw	%r26 %r4 148
	sw	%r26 %r15 144
	sw	%r26 %r11 140
	sw	%r26 %r19 136
	sw	%r26 %r20 132
	sw	%r26 %r18 128
	sw	%r26 %r21 124
	sw	%r26 %r7 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r15 %r1
	lw	%r26 %r2 36
	sw	%r26 %r28 168
	addi	%r26 %r26 172
	jal	veciprod.0
	addi	%r26 %r26 -172
	lw	%r26 %r28 168
	lw	%r26 %r9 164
	lw.s	%r26 %f1 160
	lw.s	%r26 %f6 156
	lw	%r26 %r3 152
	lw	%r26 %r4 148
	lw	%r26 %r15 144
	lw	%r26 %r11 140
	lw	%r26 %r19 136
	lw	%r26 %r20 132
	lw	%r26 %r18 128
	lw	%r26 %r21 124
	lw	%r26 %r7 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	mul.s	%f0 %f1 %f0
	sw	%r26 %r9 160
	sw.s	%r26 %f6 156
	sw	%r26 %r3 152
	sw	%r26 %r4 148
	sw	%r26 %r15 144
	sw	%r26 %r11 140
	sw	%r26 %r19 136
	sw	%r26 %r20 132
	sw	%r26 %r18 128
	sw	%r26 %r21 124
	sw	%r26 %r7 120
	sw	%r26 %r17 116
	sw.s	%r26 %f3 112
	sw.s	%r26 %f5 108
	mov	%r15 %r1
	lw	%r26 %r2 36
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	vecaccum.0
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r9 160
	lw.s	%r26 %f6 156
	lw	%r26 %r3 152
	lw	%r26 %r4 148
	lw	%r26 %r15 144
	lw	%r26 %r11 140
	lw	%r26 %r19 136
	lw	%r26 %r20 132
	lw	%r26 %r18 128
	lw	%r26 %r21 124
	lw	%r26 %r7 120
	lw	%r26 %r17 116
	lw.s	%r26 %f3 112
	lw.s	%r26 %f5 108
	lw	%r4 %r1 28
	lw.s	%r1 %f0 4
	mul.s	%f0 %f5 %f8
	addi	%r0 %r10 0
	lw	%r26 %r30 32
	lw	%r30 %r6 0
	sw	%r26 %r10 108
shadow_check_one_or_matrix.2 :
	slli	%r10 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r12 0
	lw	%r12 %r1 0
	addi	%r0 %r2 -1
	beq	%r1 %r2 tail_b.521
	addi	%r0 %r2 99
	beq	%r1 %r2 tail_b.522
	sw	%r26 %r9 180
	sw	%r26 %r12 176
	sw	%r26 %r6 172
	sw	%r26 %r10 168
	sw.s	%r26 %f8 164
	sw.s	%r26 %f6 160
	sw	%r26 %r3 156
	sw	%r26 %r4 152
	sw	%r26 %r15 148
	sw	%r26 %r11 144
	sw	%r26 %r19 140
	sw	%r26 %r20 136
	sw	%r26 %r18 132
	sw	%r26 %r21 128
	sw	%r26 %r7 124
	sw	%r26 %r17 120
	sw.s	%r26 %f3 116
	sw.s	%r26 %f5 112
	mov	%r7 %r29
	mov	%r9 %r3
	mov	%r20 %r2
	sw	%r26 %r28 184
	lw	%r29 %r30 0
	addi	%r26 %r26 188
	jalr	%r30
	addi	%r26 %r26 -188
	lw	%r26 %r28 184
	mov	%r1 %r2
	lw	%r26 %r9 180
	lw	%r26 %r12 176
	lw	%r26 %r6 172
	lw	%r26 %r10 168
	lw.s	%r26 %f8 164
	lw.s	%r26 %f6 160
	lw	%r26 %r3 156
	lw	%r26 %r4 152
	lw	%r26 %r15 148
	lw	%r26 %r11 144
	lw	%r26 %r19 140
	lw	%r26 %r20 136
	lw	%r26 %r18 132
	lw	%r26 %r21 128
	lw	%r26 %r7 124
	lw	%r26 %r17 120
	lw.s	%r26 %f3 116
	lw.s	%r26 %f5 112
	addi	%r0 %r1 0
	bne	%r2 %r1 branching_b.313
	addi	%r0 %r1 0
	j	branching_b.328
branching_b.313 :
	lw.s	%r21 %f0 0
	ilw.s	%r0 %f1 l.55
	fbge	%f0 %f1 tail_b.524
	addi	%r0 %r2 1
	j	branching_b.314
tail_b.524 :
	addi	%r0 %r2 0
	j	branching_b.314
tail_b.522 :
	addi	%r0 %r1 1
	j	branching_b.328
tail_b.521 :
	addi	%r0 %r2 0
postloop_b.28 :
	lw	%r26 %r10 108
branching_b.342 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.566
	j	preloop_b.29
tail_b.566 :
	sw	%r26 %r9 152
	sw.s	%r26 %f8 148
	sw.s	%r26 %f6 144
	sw	%r26 %r3 140
	sw	%r26 %r4 136
	sw	%r26 %r15 132
	sw	%r26 %r19 128
	sw	%r26 %r18 124
	sw	%r26 %r17 120
	sw.s	%r26 %f3 116
	sw.s	%r26 %f5 112
	mov	%r19 %r2
	lw	%r26 %r1 36
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	veciprod.0
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	lw	%r26 %r9 152
	lw.s	%r26 %f8 148
	lw.s	%r26 %f6 144
	lw	%r26 %r3 140
	lw	%r26 %r4 136
	lw	%r26 %r15 132
	lw	%r26 %r19 128
	lw	%r26 %r18 124
	lw	%r26 %r17 120
	lw.s	%r26 %f3 116
	lw.s	%r26 %f5 112
	neg.s	%f0 %f0
	mul.s	%f6 %f0 %f1
	sw	%r26 %r9 152
	sw.s	%r26 %f1 148
	sw.s	%r26 %f8 144
	sw.s	%r26 %f6 140
	sw	%r26 %r3 136
	sw	%r26 %r4 132
	sw	%r26 %r15 128
	sw	%r26 %r18 124
	sw	%r26 %r17 120
	sw.s	%r26 %f3 116
	sw.s	%r26 %f5 112
	mov	%r19 %r2
	mov	%r15 %r1
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	veciprod.0
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	lw	%r26 %r9 152
	lw.s	%r26 %f1 148
	lw.s	%r26 %f8 144
	lw.s	%r26 %f6 140
	lw	%r26 %r3 136
	lw	%r26 %r4 132
	lw	%r26 %r15 128
	lw	%r26 %r18 124
	lw	%r26 %r17 120
	lw.s	%r26 %f3 116
	lw.s	%r26 %f5 112
	neg.s	%f0 %f0
	sw	%r26 %r9 148
	sw.s	%r26 %f8 144
	sw.s	%r26 %f6 140
	sw	%r26 %r3 136
	sw	%r26 %r4 132
	sw	%r26 %r15 128
	sw	%r26 %r18 124
	sw	%r26 %r17 120
	sw.s	%r26 %f3 116
	sw.s	%r26 %f5 112
	lw	%r26 %r29 60
	mov.s	%f8 %f2
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 152
	lw	%r29 %r30 0
	addi	%r26 %r26 156
	jalr	%r30
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	lw	%r26 %r9 148
	lw.s	%r26 %f8 144
	lw.s	%r26 %f6 140
	lw	%r26 %r3 136
	lw	%r26 %r4 132
	lw	%r26 %r15 128
	lw	%r26 %r18 124
	lw	%r26 %r17 120
	lw.s	%r26 %f3 116
	lw.s	%r26 %f5 112
preloop_b.29 :
	lw.s	%r9 %f0 0
	lw	%r26 %r30 24
	sw.s	%r30 %f0 0
	lw.s	%r9 %f0 4
	lw	%r26 %r30 24
	sw.s	%r30 %f0 4
	lw.s	%r9 %f0 8
	lw	%r26 %r30 24
	sw.s	%r30 %f0 8
	lw	%r26 %r30 44
	lw	%r30 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r6
	sw	%r26 %r6 112
setup_startp_constants.1 :
	addi	%r0 %r1 0
	ble	%r1 %r6 branching_b.344
	j	postloop_b.29
branching_b.344 :
	slli	%r6 %r1 2
	add	%r18 %r1 %r31
	lw	%r31 %r7 0
	lw	%r7 %r2 40
	lw	%r7 %r1 4
	lw.s	%r9 %f0 0
	lw	%r7 %r5 20
	lw.s	%r5 %f1 0
	sub.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	lw.s	%r9 %f0 4
	lw	%r7 %r5 20
	lw.s	%r5 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r2 %f0 4
	lw.s	%r9 %f1 8
	lw	%r7 %r5 20
	lw.s	%r5 %f0 8
	sub.s	%f0 %f1 %f0
	sw.s	%r2 %f0 8
	addi	%r0 %r5 2
	beq	%r1 %r5 tail_b.568
	addi	%r0 %r5 2
	bl	%r5 %r1 branching_b.346
	j	tail_b.573
branching_b.346 :
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	sw	%r26 %r1 164
	sw	%r26 %r2 160
	sw	%r26 %r6 156
	sw	%r26 %r9 152
	sw.s	%r26 %f8 148
	sw.s	%r26 %f6 144
	sw	%r26 %r3 140
	sw	%r26 %r4 136
	sw	%r26 %r15 132
	sw	%r26 %r18 128
	sw	%r26 %r17 124
	sw.s	%r26 %f3 120
	sw.s	%r26 %f5 116
	mov	%r7 %r1
	sw	%r26 %r28 168
	addi	%r26 %r26 172
	jal	quadratic.0
	addi	%r26 %r26 -172
	lw	%r26 %r28 168
	mov.s	%f0 %f1
	lw	%r26 %r1 164
	lw	%r26 %r2 160
	lw	%r26 %r6 156
	lw	%r26 %r9 152
	lw.s	%r26 %f8 148
	lw.s	%r26 %f6 144
	lw	%r26 %r3 140
	lw	%r26 %r4 136
	lw	%r26 %r15 132
	lw	%r26 %r18 128
	lw	%r26 %r17 124
	lw.s	%r26 %f3 120
	lw.s	%r26 %f5 116
	addi	%r0 %r5 3
	beq	%r1 %r5 tail_b.569
	mov.s	%f1 %f0
	j	tail_b.571
tail_b.569 :
	ilw.s	%r0 %f0 l.20
	sub.s	%f0 %f1 %f0
	j	tail_b.571
tail_b.568 :
	lw	%r7 %r1 16
	lw.s	%r2 %f0 0
	lw.s	%r2 %f2 4
	lw.s	%r2 %f1 8
	lw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	lw.s	%r1 %f0 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f0
	lw.s	%r1 %f2 8
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r2 %f0 12
	j	tail_b.573
tail_b.571 :
	sw.s	%r2 %f0 12
tail_b.573 :
	addi	%r0 %r1 1
	sub	%r6 %r1 %r6
	j	setup_startp_constants.1
postloop_b.29 :
	lw	%r26 %r6 112
branching_b.347 :
	lw	%r26 %r30 40
	lw	%r30 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	sw	%r26 %r3 136
	sw	%r26 %r4 132
	sw	%r26 %r15 128
	sw	%r26 %r17 124
	sw.s	%r26 %f3 120
	sw.s	%r26 %f5 116
	mov	%r15 %r2
	lw	%r26 %r29 16
	mov.s	%f8 %f1
	mov.s	%f6 %f0
	sw	%r26 %r28 140
	lw	%r29 %r30 0
	addi	%r26 %r26 144
	jalr	%r30
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw	%r26 %r3 136
	lw	%r26 %r4 132
	lw	%r26 %r15 128
	lw	%r26 %r17 124
	lw.s	%r26 %f3 120
	lw.s	%r26 %f5 116
	ilw.s	%r0 %f0 l.60
	fbge	%f0 %f5 tail_b.576
	addi	%r0 %r2 1
	j	branching_b.348
tail_b.576 :
	addi	%r0 %r2 0
branching_b.348 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.577
	addi	%r0 %r1 4
	lw	%r26 %r30 0
	bl	%r30 %r1 tail_b.578
	j	branching_b.350
tail_b.578 :
	lw	%r26 %r30 0
	addi	%r30 %r2 1
	addi	%r0 %r1 -1
	slli	%r2 %r2 2
	lw	%r26 %r30 68
	add	%r30 %r2 %r31
	sw	%r31 %r1 0
	j	branching_b.350
tail_b.577 :
	j	return_point.44
branching_b.350 :
	addi	%r0 %r1 2
	beq	%r3 %r1 tail_b.580
	j	return_point.44
tail_b.580 :
	ilw.s	%r0 %f1 l.20
	lw	%r4 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f5 %f1
	lw	%r26 %r30 0
	addi	%r30 %r1 1
	lw.s	%r17 %f0 0
	add.s	%f0 %f3 %f0
	mov	%r15 %r2
	lw	%r26 %r29 8
	lw	%r26 %r3 4
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.314 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.525
	addi	%r0 %r14 1
	sw	%r26 %r14 116
shadow_check_one_or_group.6 :
	slli	%r14 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.526
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r13 0
	sw	%r26 %r13 120
shadow_check_and_group.7 :
	slli	%r13 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 -1
	beq	%r1 %r2 tail_b.527
	slli	%r13 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r2 0
	sw	%r26 %r2 208
	sw	%r26 %r5 204
	sw	%r26 %r13 200
	sw	%r26 %r14 196
	sw	%r26 %r9 192
	sw	%r26 %r12 188
	sw	%r26 %r6 184
	sw	%r26 %r10 180
	sw.s	%r26 %f8 176
	sw.s	%r26 %f6 172
	sw	%r26 %r3 168
	sw	%r26 %r4 164
	sw	%r26 %r15 160
	sw	%r26 %r11 156
	sw	%r26 %r19 152
	sw	%r26 %r20 148
	sw	%r26 %r18 144
	sw	%r26 %r21 140
	sw	%r26 %r7 136
	sw	%r26 %r17 132
	sw.s	%r26 %f3 128
	sw.s	%r26 %f5 124
	mov	%r7 %r29
	mov	%r9 %r3
	mov	%r2 %r1
	mov	%r20 %r2
	sw	%r26 %r28 212
	lw	%r29 %r30 0
	addi	%r26 %r26 216
	jalr	%r30
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
	mov	%r1 %r8
	lw	%r26 %r2 208
	lw	%r26 %r5 204
	lw	%r26 %r13 200
	lw	%r26 %r14 196
	lw	%r26 %r9 192
	lw	%r26 %r12 188
	lw	%r26 %r6 184
	lw	%r26 %r10 180
	lw.s	%r26 %f8 176
	lw.s	%r26 %f6 172
	lw	%r26 %r3 168
	lw	%r26 %r4 164
	lw	%r26 %r15 160
	lw	%r26 %r11 156
	lw	%r26 %r19 152
	lw	%r26 %r20 148
	lw	%r26 %r18 144
	lw	%r26 %r21 140
	lw	%r26 %r7 136
	lw	%r26 %r17 132
	lw.s	%r26 %f3 128
	lw.s	%r26 %f5 124
	lw.s	%r21 %f1 0
	addi	%r0 %r1 0
	bne	%r8 %r1 branching_b.318
	addi	%r0 %r1 0
	j	branching_b.319
branching_b.318 :
	ilw.s	%r0 %f0 l.57
	fbge	%f1 %f0 tail_b.529
	addi	%r0 %r1 1
	j	branching_b.319
tail_b.529 :
	addi	%r0 %r1 0
	j	branching_b.319
tail_b.527 :
	addi	%r0 %r1 0
	j	postloop_b.23
tail_b.526 :
	addi	%r0 %r1 0
	j	postloop_b.24
tail_b.525 :
	addi	%r0 %r1 0
	j	branching_b.328
postloop_b.24 :
	lw	%r26 %r14 116
branching_b.327 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.543
	addi	%r0 %r1 1
	j	branching_b.328
tail_b.543 :
	addi	%r0 %r1 0
	j	branching_b.328
postloop_b.23 :
	lw	%r26 %r13 120
branching_b.326 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.541
	addi	%r0 %r1 1
	j	postloop_b.24
tail_b.541 :
	addi	%r14 %r14 1
	j	shadow_check_one_or_group.6
branching_b.319 :
	addi	%r0 %r8 0
	beq	%r1 %r8 branching_b.320
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f2
	lw.s	%r19 %f0 0
	mul.s	%f2 %f0 %f1
	lw.s	%r9 %f0 0
	add.s	%f0 %f1 %f4
	lw.s	%r19 %f0 4
	mul.s	%f2 %f0 %f0
	lw.s	%r9 %f1 4
	add.s	%f1 %f0 %f0
	lw.s	%r19 %f1 8
	mul.s	%f2 %f1 %f1
	lw.s	%r9 %f2 8
	add.s	%f2 %f1 %f9
	addi	%r0 %r16 0
	sw	%r26 %r16 124
check_all_inside.10 :
	slli	%r16 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.533
	slli	%r2 %r1 2
	add	%r18 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 20
	lw.s	%r2 %f1 0
	sub.s	%f1 %f4 %f7
	lw	%r1 %r2 20
	lw.s	%r2 %f1 4
	sub.s	%f1 %f0 %f2
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f9 %f1
	lw	%r1 %r2 4
	addi	%r0 %r8 1
	beq	%r2 %r8 tail_b.534
	addi	%r0 %r8 2
	beq	%r2 %r8 tail_b.535
	sw.s	%r26 %f9 224
	sw.s	%r26 %f0 220
	sw.s	%r26 %f4 216
	sw	%r26 %r16 212
	sw	%r26 %r5 208
	sw	%r26 %r13 204
	sw	%r26 %r14 200
	sw	%r26 %r9 196
	sw	%r26 %r12 192
	sw	%r26 %r6 188
	sw	%r26 %r10 184
	sw.s	%r26 %f8 180
	sw.s	%r26 %f6 176
	sw	%r26 %r3 172
	sw	%r26 %r4 168
	sw	%r26 %r15 164
	sw	%r26 %r11 160
	sw	%r26 %r19 156
	sw	%r26 %r20 152
	sw	%r26 %r18 148
	sw	%r26 %r21 144
	sw	%r26 %r7 140
	sw	%r26 %r17 136
	sw.s	%r26 %f3 132
	sw.s	%r26 %f5 128
	mov.s	%f7 %f0
	mov.s	%f2 %f30
	mov.s	%f1 %f2
	mov.s	%f30 %f1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	is_second_outside.0
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw.s	%r26 %f9 224
	lw.s	%r26 %f0 220
	lw.s	%r26 %f4 216
	lw	%r26 %r16 212
	lw	%r26 %r5 208
	lw	%r26 %r13 204
	lw	%r26 %r14 200
	lw	%r26 %r9 196
	lw	%r26 %r12 192
	lw	%r26 %r6 188
	lw	%r26 %r10 184
	lw.s	%r26 %f8 180
	lw.s	%r26 %f6 176
	lw	%r26 %r3 172
	lw	%r26 %r4 168
	lw	%r26 %r15 164
	lw	%r26 %r11 160
	lw	%r26 %r19 156
	lw	%r26 %r20 152
	lw	%r26 %r18 148
	lw	%r26 %r21 144
	lw	%r26 %r7 140
	lw	%r26 %r17 136
	lw.s	%r26 %f3 132
	lw.s	%r26 %f5 128
	j	branching_b.324
tail_b.535 :
	sw.s	%r26 %f9 224
	sw.s	%r26 %f0 220
	sw.s	%r26 %f4 216
	sw	%r26 %r16 212
	sw	%r26 %r5 208
	sw	%r26 %r13 204
	sw	%r26 %r14 200
	sw	%r26 %r9 196
	sw	%r26 %r12 192
	sw	%r26 %r6 188
	sw	%r26 %r10 184
	sw.s	%r26 %f8 180
	sw.s	%r26 %f6 176
	sw	%r26 %r3 172
	sw	%r26 %r4 168
	sw	%r26 %r15 164
	sw	%r26 %r11 160
	sw	%r26 %r19 156
	sw	%r26 %r20 152
	sw	%r26 %r18 148
	sw	%r26 %r21 144
	sw	%r26 %r7 140
	sw	%r26 %r17 136
	sw.s	%r26 %f3 132
	sw.s	%r26 %f5 128
	mov.s	%f7 %f0
	mov.s	%f2 %f30
	mov.s	%f1 %f2
	mov.s	%f30 %f1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	is_plane_outside.0
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw.s	%r26 %f9 224
	lw.s	%r26 %f0 220
	lw.s	%r26 %f4 216
	lw	%r26 %r16 212
	lw	%r26 %r5 208
	lw	%r26 %r13 204
	lw	%r26 %r14 200
	lw	%r26 %r9 196
	lw	%r26 %r12 192
	lw	%r26 %r6 188
	lw	%r26 %r10 184
	lw.s	%r26 %f8 180
	lw.s	%r26 %f6 176
	lw	%r26 %r3 172
	lw	%r26 %r4 168
	lw	%r26 %r15 164
	lw	%r26 %r11 160
	lw	%r26 %r19 156
	lw	%r26 %r20 152
	lw	%r26 %r18 148
	lw	%r26 %r21 144
	lw	%r26 %r7 140
	lw	%r26 %r17 136
	lw.s	%r26 %f3 132
	lw.s	%r26 %f5 128
	j	branching_b.324
tail_b.534 :
	sw.s	%r26 %f9 224
	sw.s	%r26 %f0 220
	sw.s	%r26 %f4 216
	sw	%r26 %r16 212
	sw	%r26 %r5 208
	sw	%r26 %r13 204
	sw	%r26 %r14 200
	sw	%r26 %r9 196
	sw	%r26 %r12 192
	sw	%r26 %r6 188
	sw	%r26 %r10 184
	sw.s	%r26 %f8 180
	sw.s	%r26 %f6 176
	sw	%r26 %r3 172
	sw	%r26 %r4 168
	sw	%r26 %r15 164
	sw	%r26 %r11 160
	sw	%r26 %r19 156
	sw	%r26 %r20 152
	sw	%r26 %r18 148
	sw	%r26 %r21 144
	sw	%r26 %r7 140
	sw	%r26 %r17 136
	sw.s	%r26 %f3 132
	sw.s	%r26 %f5 128
	mov.s	%f7 %f0
	mov.s	%f2 %f30
	mov.s	%f1 %f2
	mov.s	%f30 %f1
	sw	%r26 %r28 228
	addi	%r26 %r26 232
	jal	is_rect_outside.0
	addi	%r26 %r26 -232
	lw	%r26 %r28 228
	lw.s	%r26 %f9 224
	lw.s	%r26 %f0 220
	lw.s	%r26 %f4 216
	lw	%r26 %r16 212
	lw	%r26 %r5 208
	lw	%r26 %r13 204
	lw	%r26 %r14 200
	lw	%r26 %r9 196
	lw	%r26 %r12 192
	lw	%r26 %r6 188
	lw	%r26 %r10 184
	lw.s	%r26 %f8 180
	lw.s	%r26 %f6 176
	lw	%r26 %r3 172
	lw	%r26 %r4 168
	lw	%r26 %r15 164
	lw	%r26 %r11 160
	lw	%r26 %r19 156
	lw	%r26 %r20 152
	lw	%r26 %r18 148
	lw	%r26 %r21 144
	lw	%r26 %r7 140
	lw	%r26 %r17 136
	lw.s	%r26 %f3 132
	lw.s	%r26 %f5 128
	j	branching_b.324
tail_b.533 :
	addi	%r0 %r1 1
	j	postloop_b.22
branching_b.320 :
	slli	%r2 %r1 2
	add	%r18 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.531
	addi	%r13 %r13 1
	j	shadow_check_and_group.7
tail_b.531 :
	addi	%r0 %r1 0
	j	postloop_b.23
postloop_b.22 :
	lw	%r26 %r16 124
branching_b.325 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.539
	addi	%r0 %r1 1
	j	postloop_b.23
tail_b.539 :
	addi	%r13 %r13 1
	j	shadow_check_and_group.7
branching_b.324 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.537
	addi	%r0 %r1 0
	j	postloop_b.22
tail_b.537 :
	addi	%r16 %r16 1
	j	check_all_inside.10
branching_b.328 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.546
	addi	%r0 %r2 1
	sw	%r26 %r2 128
shadow_check_one_or_group.5 :
	slli	%r2 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.547
	slli	%r5 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r13 0
	addi	%r0 %r5 0
	sw	%r26 %r5 132
shadow_check_and_group.6 :
	slli	%r5 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r8 0
	addi	%r0 %r1 -1
	beq	%r8 %r1 tail_b.548
	slli	%r5 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r8 0
	sw	%r26 %r8 220
	sw	%r26 %r13 216
	sw	%r26 %r5 212
	sw	%r26 %r9 208
	sw	%r26 %r12 204
	sw	%r26 %r2 200
	sw	%r26 %r6 196
	sw	%r26 %r10 192
	sw.s	%r26 %f8 188
	sw.s	%r26 %f6 184
	sw	%r26 %r3 180
	sw	%r26 %r4 176
	sw	%r26 %r15 172
	sw	%r26 %r11 168
	sw	%r26 %r19 164
	sw	%r26 %r20 160
	sw	%r26 %r18 156
	sw	%r26 %r21 152
	sw	%r26 %r7 148
	sw	%r26 %r17 144
	sw.s	%r26 %f3 140
	sw.s	%r26 %f5 136
	mov	%r7 %r29
	mov	%r9 %r3
	mov	%r20 %r2
	mov	%r8 %r1
	sw	%r26 %r28 224
	lw	%r29 %r30 0
	addi	%r26 %r26 228
	jalr	%r30
	addi	%r26 %r26 -228
	lw	%r26 %r28 224
	lw	%r26 %r8 220
	lw	%r26 %r13 216
	lw	%r26 %r5 212
	lw	%r26 %r9 208
	lw	%r26 %r12 204
	lw	%r26 %r2 200
	lw	%r26 %r6 196
	lw	%r26 %r10 192
	lw.s	%r26 %f8 188
	lw.s	%r26 %f6 184
	lw	%r26 %r3 180
	lw	%r26 %r4 176
	lw	%r26 %r15 172
	lw	%r26 %r11 168
	lw	%r26 %r19 164
	lw	%r26 %r20 160
	lw	%r26 %r18 156
	lw	%r26 %r21 152
	lw	%r26 %r7 148
	lw	%r26 %r17 144
	lw.s	%r26 %f3 140
	lw.s	%r26 %f5 136
	lw.s	%r21 %f1 0
	addi	%r0 %r14 0
	bne	%r1 %r14 branching_b.332
	addi	%r0 %r14 0
	j	branching_b.333
branching_b.332 :
	ilw.s	%r0 %f0 l.57
	fbge	%f1 %f0 tail_b.550
	addi	%r0 %r14 1
	j	branching_b.333
tail_b.550 :
	addi	%r0 %r14 0
	j	branching_b.333
tail_b.548 :
	addi	%r0 %r1 0
	j	postloop_b.26
tail_b.547 :
	addi	%r0 %r1 0
	j	postloop_b.27
tail_b.546 :
	addi	%r10 %r10 1
	j	shadow_check_one_or_matrix.2
postloop_b.27 :
	lw	%r26 %r2 128
branching_b.341 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.564
	addi	%r0 %r2 1
	j	postloop_b.28
tail_b.564 :
	addi	%r10 %r10 1
	j	shadow_check_one_or_matrix.2
postloop_b.26 :
	lw	%r26 %r5 132
branching_b.340 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.562
	addi	%r0 %r1 1
	j	postloop_b.27
tail_b.562 :
	addi	%r2 %r2 1
	j	shadow_check_one_or_group.5
branching_b.333 :
	addi	%r0 %r1 0
	beq	%r14 %r1 branching_b.334
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f0
	lw.s	%r19 %f1 0
	mul.s	%f0 %f1 %f2
	lw.s	%r9 %f1 0
	add.s	%f1 %f2 %f1
	lw.s	%r19 %f2 4
	mul.s	%f0 %f2 %f4
	lw.s	%r9 %f2 4
	add.s	%f2 %f4 %f7
	lw.s	%r19 %f2 8
	mul.s	%f0 %f2 %f0
	lw.s	%r9 %f2 8
	add.s	%f2 %f0 %f9
	addi	%r0 %r16 0
	sw	%r26 %r16 136
check_all_inside.9 :
	slli	%r16 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r8 -1
	beq	%r1 %r8 tail_b.554
	slli	%r1 %r1 2
	add	%r18 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r8 20
	lw.s	%r8 %f0 0
	sub.s	%f0 %f1 %f0
	lw	%r1 %r8 20
	lw.s	%r8 %f2 4
	sub.s	%f2 %f7 %f4
	lw	%r1 %r8 20
	lw.s	%r8 %f2 8
	sub.s	%f2 %f9 %f2
	lw	%r1 %r14 4
	addi	%r0 %r8 1
	beq	%r14 %r8 tail_b.555
	addi	%r0 %r8 2
	beq	%r14 %r8 tail_b.556
	sw.s	%r26 %f9 236
	sw.s	%r26 %f7 232
	sw.s	%r26 %f1 228
	sw	%r26 %r16 224
	sw	%r26 %r13 220
	sw	%r26 %r5 216
	sw	%r26 %r9 212
	sw	%r26 %r12 208
	sw	%r26 %r2 204
	sw	%r26 %r6 200
	sw	%r26 %r10 196
	sw.s	%r26 %f8 192
	sw.s	%r26 %f6 188
	sw	%r26 %r3 184
	sw	%r26 %r4 180
	sw	%r26 %r15 176
	sw	%r26 %r11 172
	sw	%r26 %r19 168
	sw	%r26 %r20 164
	sw	%r26 %r18 160
	sw	%r26 %r21 156
	sw	%r26 %r7 152
	sw	%r26 %r17 148
	sw.s	%r26 %f3 144
	sw.s	%r26 %f5 140
	mov.s	%f4 %f1
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	is_second_outside.0
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw.s	%r26 %f9 236
	lw.s	%r26 %f7 232
	lw.s	%r26 %f1 228
	lw	%r26 %r16 224
	lw	%r26 %r13 220
	lw	%r26 %r5 216
	lw	%r26 %r9 212
	lw	%r26 %r12 208
	lw	%r26 %r2 204
	lw	%r26 %r6 200
	lw	%r26 %r10 196
	lw.s	%r26 %f8 192
	lw.s	%r26 %f6 188
	lw	%r26 %r3 184
	lw	%r26 %r4 180
	lw	%r26 %r15 176
	lw	%r26 %r11 172
	lw	%r26 %r19 168
	lw	%r26 %r20 164
	lw	%r26 %r18 160
	lw	%r26 %r21 156
	lw	%r26 %r7 152
	lw	%r26 %r17 148
	lw.s	%r26 %f3 144
	lw.s	%r26 %f5 140
	j	branching_b.338
tail_b.556 :
	sw.s	%r26 %f9 236
	sw.s	%r26 %f7 232
	sw.s	%r26 %f1 228
	sw	%r26 %r16 224
	sw	%r26 %r13 220
	sw	%r26 %r5 216
	sw	%r26 %r9 212
	sw	%r26 %r12 208
	sw	%r26 %r2 204
	sw	%r26 %r6 200
	sw	%r26 %r10 196
	sw.s	%r26 %f8 192
	sw.s	%r26 %f6 188
	sw	%r26 %r3 184
	sw	%r26 %r4 180
	sw	%r26 %r15 176
	sw	%r26 %r11 172
	sw	%r26 %r19 168
	sw	%r26 %r20 164
	sw	%r26 %r18 160
	sw	%r26 %r21 156
	sw	%r26 %r7 152
	sw	%r26 %r17 148
	sw.s	%r26 %f3 144
	sw.s	%r26 %f5 140
	mov.s	%f4 %f1
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	is_plane_outside.0
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw.s	%r26 %f9 236
	lw.s	%r26 %f7 232
	lw.s	%r26 %f1 228
	lw	%r26 %r16 224
	lw	%r26 %r13 220
	lw	%r26 %r5 216
	lw	%r26 %r9 212
	lw	%r26 %r12 208
	lw	%r26 %r2 204
	lw	%r26 %r6 200
	lw	%r26 %r10 196
	lw.s	%r26 %f8 192
	lw.s	%r26 %f6 188
	lw	%r26 %r3 184
	lw	%r26 %r4 180
	lw	%r26 %r15 176
	lw	%r26 %r11 172
	lw	%r26 %r19 168
	lw	%r26 %r20 164
	lw	%r26 %r18 160
	lw	%r26 %r21 156
	lw	%r26 %r7 152
	lw	%r26 %r17 148
	lw.s	%r26 %f3 144
	lw.s	%r26 %f5 140
	j	branching_b.338
tail_b.555 :
	sw.s	%r26 %f9 236
	sw.s	%r26 %f7 232
	sw.s	%r26 %f1 228
	sw	%r26 %r16 224
	sw	%r26 %r13 220
	sw	%r26 %r5 216
	sw	%r26 %r9 212
	sw	%r26 %r12 208
	sw	%r26 %r2 204
	sw	%r26 %r6 200
	sw	%r26 %r10 196
	sw.s	%r26 %f8 192
	sw.s	%r26 %f6 188
	sw	%r26 %r3 184
	sw	%r26 %r4 180
	sw	%r26 %r15 176
	sw	%r26 %r11 172
	sw	%r26 %r19 168
	sw	%r26 %r20 164
	sw	%r26 %r18 160
	sw	%r26 %r21 156
	sw	%r26 %r7 152
	sw	%r26 %r17 148
	sw.s	%r26 %f3 144
	sw.s	%r26 %f5 140
	mov.s	%f4 %f1
	sw	%r26 %r28 240
	addi	%r26 %r26 244
	jal	is_rect_outside.0
	addi	%r26 %r26 -244
	lw	%r26 %r28 240
	lw.s	%r26 %f9 236
	lw.s	%r26 %f7 232
	lw.s	%r26 %f1 228
	lw	%r26 %r16 224
	lw	%r26 %r13 220
	lw	%r26 %r5 216
	lw	%r26 %r9 212
	lw	%r26 %r12 208
	lw	%r26 %r2 204
	lw	%r26 %r6 200
	lw	%r26 %r10 196
	lw.s	%r26 %f8 192
	lw.s	%r26 %f6 188
	lw	%r26 %r3 184
	lw	%r26 %r4 180
	lw	%r26 %r15 176
	lw	%r26 %r11 172
	lw	%r26 %r19 168
	lw	%r26 %r20 164
	lw	%r26 %r18 160
	lw	%r26 %r21 156
	lw	%r26 %r7 152
	lw	%r26 %r17 148
	lw.s	%r26 %f3 144
	lw.s	%r26 %f5 140
	j	branching_b.338
tail_b.554 :
	addi	%r0 %r1 1
	j	postloop_b.25
branching_b.334 :
	slli	%r8 %r1 2
	add	%r18 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.552
	addi	%r5 %r5 1
	j	shadow_check_and_group.6
tail_b.552 :
	addi	%r0 %r1 0
	j	postloop_b.26
postloop_b.25 :
	lw	%r26 %r16 136
branching_b.339 :
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.560
	addi	%r0 %r1 1
	j	postloop_b.26
tail_b.560 :
	addi	%r5 %r5 1
	j	shadow_check_and_group.6
branching_b.338 :
	addi	%r0 %r8 0
	beq	%r1 %r8 tail_b.558
	addi	%r0 %r1 0
	j	postloop_b.25
tail_b.558 :
	addi	%r16 %r16 1
	j	check_all_inside.9
branching_b.274 :
	addi	%r0 %r4 0
	beq	%r6 %r4 tail_b.462
	lw.s	%r17 %f1 0
	fbge	%f0 %f1 tail_b.464
	addi	%r0 %r4 1
	j	branching_b.276
tail_b.464 :
	addi	%r0 %r4 0
	j	branching_b.276
tail_b.462 :
tail_b.474 :
	addi	%r1 %r1 1
	j	solve_each_element.5
branching_b.276 :
	addi	%r0 %r6 0
	beq	%r4 %r6 tail_b.465
	ilw.s	%r0 %f1 l.54
	add.s	%f1 %f0 %f6
	lw.s	%r15 %f0 0
	mul.s	%f6 %f0 %f1
	lw.s	%r13 %f0 0
	add.s	%f0 %f1 %f8
	lw.s	%r15 %f0 4
	mul.s	%f6 %f0 %f1
	lw.s	%r13 %f0 4
	add.s	%f0 %f1 %f0
	lw.s	%r15 %f1 8
	mul.s	%f6 %f1 %f1
	lw.s	%r13 %f2 8
	add.s	%f2 %f1 %f4
	addi	%r0 %r25 0
	sw	%r26 %r25 140
check_all_inside.17 :
	slli	%r25 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r4 0
	addi	%r0 %r6 -1
	beq	%r4 %r6 tail_b.466
	slli	%r4 %r4 2
	add	%r18 %r4 %r31
	lw	%r31 %r23 0
	lw	%r23 %r4 20
	lw.s	%r4 %f1 0
	sub.s	%f1 %f8 %f7
	lw	%r23 %r4 20
	lw.s	%r4 %f1 4
	sub.s	%f1 %f0 %f1
	lw	%r23 %r4 20
	lw.s	%r4 %f2 8
	sub.s	%f2 %f4 %f2
	lw	%r23 %r6 4
	addi	%r0 %r4 1
	beq	%r6 %r4 tail_b.467
	addi	%r0 %r4 2
	beq	%r6 %r4 tail_b.468
	sw	%r26 %r9 256
	sw.s	%r26 %f4 252
	sw.s	%r26 %f0 248
	sw.s	%r26 %f8 244
	sw	%r26 %r25 240
	sw.s	%r26 %f6 236
	sw	%r26 %r2 232
	sw	%r26 %r5 228
	sw	%r26 %r3 224
	sw	%r26 %r1 220
	sw	%r26 %r14 216
	sw	%r26 %r24 212
	sw	%r26 %r15 208
	sw	%r26 %r10 204
	sw	%r26 %r12 200
	sw	%r26 %r11 196
	sw	%r26 %r29 192
	sw	%r26 %r16 188
	sw	%r26 %r22 184
	sw	%r26 %r19 180
	sw	%r26 %r20 176
	sw	%r26 %r18 172
	sw	%r26 %r8 168
	sw	%r26 %r21 164
	sw	%r26 %r7 160
	sw	%r26 %r13 156
	sw	%r26 %r17 152
	sw.s	%r26 %f3 148
	sw.s	%r26 %f5 144
	mov	%r23 %r1
	mov.s	%f7 %f0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	is_second_outside.0
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r6
	lw	%r26 %r9 256
	lw.s	%r26 %f4 252
	lw.s	%r26 %f0 248
	lw.s	%r26 %f8 244
	lw	%r26 %r25 240
	lw.s	%r26 %f6 236
	lw	%r26 %r2 232
	lw	%r26 %r5 228
	lw	%r26 %r3 224
	lw	%r26 %r1 220
	lw	%r26 %r14 216
	lw	%r26 %r24 212
	lw	%r26 %r15 208
	lw	%r26 %r10 204
	lw	%r26 %r12 200
	lw	%r26 %r11 196
	lw	%r26 %r29 192
	lw	%r26 %r16 188
	lw	%r26 %r22 184
	lw	%r26 %r19 180
	lw	%r26 %r20 176
	lw	%r26 %r18 172
	lw	%r26 %r8 168
	lw	%r26 %r21 164
	lw	%r26 %r7 160
	lw	%r26 %r13 156
	lw	%r26 %r17 152
	lw.s	%r26 %f3 148
	lw.s	%r26 %f5 144
	j	branching_b.280
tail_b.468 :
	sw	%r26 %r9 256
	sw.s	%r26 %f4 252
	sw.s	%r26 %f0 248
	sw.s	%r26 %f8 244
	sw	%r26 %r25 240
	sw.s	%r26 %f6 236
	sw	%r26 %r2 232
	sw	%r26 %r5 228
	sw	%r26 %r3 224
	sw	%r26 %r1 220
	sw	%r26 %r14 216
	sw	%r26 %r24 212
	sw	%r26 %r15 208
	sw	%r26 %r10 204
	sw	%r26 %r12 200
	sw	%r26 %r11 196
	sw	%r26 %r29 192
	sw	%r26 %r16 188
	sw	%r26 %r22 184
	sw	%r26 %r19 180
	sw	%r26 %r20 176
	sw	%r26 %r18 172
	sw	%r26 %r8 168
	sw	%r26 %r21 164
	sw	%r26 %r7 160
	sw	%r26 %r13 156
	sw	%r26 %r17 152
	sw.s	%r26 %f3 148
	sw.s	%r26 %f5 144
	mov	%r23 %r1
	mov.s	%f7 %f0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	is_plane_outside.0
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r6
	lw	%r26 %r9 256
	lw.s	%r26 %f4 252
	lw.s	%r26 %f0 248
	lw.s	%r26 %f8 244
	lw	%r26 %r25 240
	lw.s	%r26 %f6 236
	lw	%r26 %r2 232
	lw	%r26 %r5 228
	lw	%r26 %r3 224
	lw	%r26 %r1 220
	lw	%r26 %r14 216
	lw	%r26 %r24 212
	lw	%r26 %r15 208
	lw	%r26 %r10 204
	lw	%r26 %r12 200
	lw	%r26 %r11 196
	lw	%r26 %r29 192
	lw	%r26 %r16 188
	lw	%r26 %r22 184
	lw	%r26 %r19 180
	lw	%r26 %r20 176
	lw	%r26 %r18 172
	lw	%r26 %r8 168
	lw	%r26 %r21 164
	lw	%r26 %r7 160
	lw	%r26 %r13 156
	lw	%r26 %r17 152
	lw.s	%r26 %f3 148
	lw.s	%r26 %f5 144
	j	branching_b.280
tail_b.467 :
	sw	%r26 %r9 256
	sw.s	%r26 %f4 252
	sw.s	%r26 %f0 248
	sw.s	%r26 %f8 244
	sw	%r26 %r25 240
	sw.s	%r26 %f6 236
	sw	%r26 %r2 232
	sw	%r26 %r5 228
	sw	%r26 %r3 224
	sw	%r26 %r1 220
	sw	%r26 %r14 216
	sw	%r26 %r24 212
	sw	%r26 %r15 208
	sw	%r26 %r10 204
	sw	%r26 %r12 200
	sw	%r26 %r11 196
	sw	%r26 %r29 192
	sw	%r26 %r16 188
	sw	%r26 %r22 184
	sw	%r26 %r19 180
	sw	%r26 %r20 176
	sw	%r26 %r18 172
	sw	%r26 %r8 168
	sw	%r26 %r21 164
	sw	%r26 %r7 160
	sw	%r26 %r13 156
	sw	%r26 %r17 152
	sw.s	%r26 %f3 148
	sw.s	%r26 %f5 144
	mov	%r23 %r1
	mov.s	%f7 %f0
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	is_rect_outside.0
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r6
	lw	%r26 %r9 256
	lw.s	%r26 %f4 252
	lw.s	%r26 %f0 248
	lw.s	%r26 %f8 244
	lw	%r26 %r25 240
	lw.s	%r26 %f6 236
	lw	%r26 %r2 232
	lw	%r26 %r5 228
	lw	%r26 %r3 224
	lw	%r26 %r1 220
	lw	%r26 %r14 216
	lw	%r26 %r24 212
	lw	%r26 %r15 208
	lw	%r26 %r10 204
	lw	%r26 %r12 200
	lw	%r26 %r11 196
	lw	%r26 %r29 192
	lw	%r26 %r16 188
	lw	%r26 %r22 184
	lw	%r26 %r19 180
	lw	%r26 %r20 176
	lw	%r26 %r18 172
	lw	%r26 %r8 168
	lw	%r26 %r21 164
	lw	%r26 %r7 160
	lw	%r26 %r13 156
	lw	%r26 %r17 152
	lw.s	%r26 %f3 148
	lw.s	%r26 %f5 144
	j	branching_b.280
tail_b.466 :
	addi	%r0 %r4 1
	j	postloop_b.15
tail_b.465 :
	j	tail_b.474
postloop_b.15 :
	lw	%r26 %r25 140
branching_b.281 :
	addi	%r0 %r6 0
	beq	%r4 %r6 tail_b.472
	sw.s	%r17 %f6 0
	sw.s	%r9 %f8 0
	sw.s	%r9 %f0 4
	sw.s	%r9 %f4 8
	sw	%r16 %r5 0
	sw	%r22 %r2 0
	j	tail_b.474
tail_b.472 :
	j	tail_b.474
branching_b.280 :
	addi	%r0 %r4 0
	beq	%r6 %r4 tail_b.470
	addi	%r0 %r4 0
	j	postloop_b.15
tail_b.470 :
	addi	%r25 %r25 1
	j	check_all_inside.17
postloop_b.16 :
	lw	%r26 %r1 80
tail_b.477 :
	addi	%r24 %r24 1
	j	solve_one_or_network.4
postloop_b.17 :
	lw	%r26 %r24 76
	j	tail_b.503
branching_b.285 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.481
	addi	%r0 %r1 1
	sw	%r26 %r1 144
solve_one_or_network.3 :
	slli	%r1 %r2 2
	add	%r14 %r2 %r31
	lw	%r31 %r3 0
	addi	%r0 %r2 -1
	bne	%r3 %r2 preloop_b.20
	j	postloop_b.20
preloop_b.20 :
	slli	%r3 %r2 2
	add	%r11 %r2 %r31
	lw	%r31 %r24 0
	addi	%r0 %r25 0
	sw	%r26 %r25 148
solve_each_element.4 :
	slli	%r25 %r2 2
	add	%r24 %r2 %r31
	lw	%r31 %r23 0
	addi	%r0 %r2 -1
	beq	%r23 %r2 tail_b.482
	sw	%r26 %r9 240
	sw	%r26 %r23 236
	sw	%r26 %r24 232
	sw	%r26 %r25 228
	sw	%r26 %r1 224
	sw	%r26 %r14 220
	sw	%r26 %r15 216
	sw	%r26 %r10 212
	sw	%r26 %r12 208
	sw	%r26 %r11 204
	sw	%r26 %r29 200
	sw	%r26 %r16 196
	sw	%r26 %r22 192
	sw	%r26 %r19 188
	sw	%r26 %r20 184
	sw	%r26 %r18 180
	sw	%r26 %r8 176
	sw	%r26 %r21 172
	sw	%r26 %r7 168
	sw	%r26 %r13 164
	sw	%r26 %r17 160
	sw.s	%r26 %f3 156
	sw.s	%r26 %f5 152
	mov	%r8 %r29
	mov	%r13 %r3
	mov	%r15 %r2
	mov	%r23 %r1
	sw	%r26 %r28 244
	lw	%r29 %r30 0
	addi	%r26 %r26 248
	jalr	%r30
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	mov	%r1 %r6
	lw	%r26 %r9 240
	lw	%r26 %r23 236
	lw	%r26 %r24 232
	lw	%r26 %r25 228
	lw	%r26 %r1 224
	lw	%r26 %r14 220
	lw	%r26 %r15 216
	lw	%r26 %r10 212
	lw	%r26 %r12 208
	lw	%r26 %r11 204
	lw	%r26 %r29 200
	lw	%r26 %r16 196
	lw	%r26 %r22 192
	lw	%r26 %r19 188
	lw	%r26 %r20 184
	lw	%r26 %r18 180
	lw	%r26 %r8 176
	lw	%r26 %r21 172
	lw	%r26 %r7 168
	lw	%r26 %r13 164
	lw	%r26 %r17 160
	lw.s	%r26 %f3 156
	lw.s	%r26 %f5 152
	addi	%r0 %r2 0
	bne	%r6 %r2 branching_b.289
	slli	%r23 %r2 2
	add	%r18 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 24
	addi	%r0 %r3 0
	beq	%r2 %r3 tail_b.498
	addi	%r25 %r25 1
	j	solve_each_element.4
tail_b.498 :
	j	postloop_b.19
branching_b.289 :
	lw.s	%r21 %f1 0
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.484
	addi	%r0 %r2 1
	j	branching_b.290
tail_b.484 :
	addi	%r0 %r2 0
	j	branching_b.290
tail_b.482 :
	j	postloop_b.19
tail_b.481 :
	j	tail_b.503
branching_b.290 :
	addi	%r0 %r3 0
	beq	%r2 %r3 tail_b.485
	lw.s	%r17 %f0 0
	fbge	%f1 %f0 tail_b.487
	addi	%r0 %r2 1
	j	branching_b.292
tail_b.487 :
	addi	%r0 %r2 0
	j	branching_b.292
tail_b.485 :
tail_b.497 :
	addi	%r25 %r25 1
	j	solve_each_element.4
branching_b.292 :
	addi	%r0 %r3 0
	beq	%r2 %r3 tail_b.488
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f2
	lw.s	%r15 %f0 0
	mul.s	%f2 %f0 %f0
	lw.s	%r13 %f1 0
	add.s	%f1 %f0 %f6
	lw.s	%r15 %f0 4
	mul.s	%f2 %f0 %f1
	lw.s	%r13 %f0 4
	add.s	%f0 %f1 %f1
	lw.s	%r15 %f0 8
	mul.s	%f2 %f0 %f0
	lw.s	%r13 %f4 8
	add.s	%f4 %f0 %f8
	addi	%r0 %r2 0
	sw	%r26 %r2 152
check_all_inside.16 :
	slli	%r2 %r3 2
	add	%r24 %r3 %r31
	lw	%r31 %r4 0
	addi	%r0 %r3 -1
	beq	%r4 %r3 tail_b.489
	slli	%r4 %r3 2
	add	%r18 %r3 %r31
	lw	%r31 %r5 0
	lw	%r5 %r3 20
	lw.s	%r3 %f0 0
	sub.s	%f0 %f6 %f0
	lw	%r5 %r3 20
	lw.s	%r3 %f4 4
	sub.s	%f4 %f1 %f7
	lw	%r5 %r3 20
	lw.s	%r3 %f4 8
	sub.s	%f4 %f8 %f4
	lw	%r5 %r4 4
	addi	%r0 %r3 1
	beq	%r4 %r3 tail_b.490
	addi	%r0 %r3 2
	beq	%r4 %r3 tail_b.491
	sw	%r26 %r9 268
	sw.s	%r26 %f8 264
	sw.s	%r26 %f1 260
	sw.s	%r26 %f6 256
	sw	%r26 %r2 252
	sw.s	%r26 %f2 248
	sw	%r26 %r6 244
	sw	%r26 %r23 240
	sw	%r26 %r24 236
	sw	%r26 %r25 232
	sw	%r26 %r1 228
	sw	%r26 %r14 224
	sw	%r26 %r15 220
	sw	%r26 %r10 216
	sw	%r26 %r12 212
	sw	%r26 %r11 208
	sw	%r26 %r29 204
	sw	%r26 %r16 200
	sw	%r26 %r22 196
	sw	%r26 %r19 192
	sw	%r26 %r20 188
	sw	%r26 %r18 184
	sw	%r26 %r8 180
	sw	%r26 %r21 176
	sw	%r26 %r7 172
	sw	%r26 %r13 168
	sw	%r26 %r17 164
	sw.s	%r26 %f3 160
	sw.s	%r26 %f5 156
	mov	%r5 %r1
	mov.s	%f4 %f2
	mov.s	%f7 %f1
	sw	%r26 %r28 272
	addi	%r26 %r26 276
	jal	is_second_outside.0
	addi	%r26 %r26 -276
	lw	%r26 %r28 272
	mov	%r1 %r4
	lw	%r26 %r9 268
	lw.s	%r26 %f8 264
	lw.s	%r26 %f1 260
	lw.s	%r26 %f6 256
	lw	%r26 %r2 252
	lw.s	%r26 %f2 248
	lw	%r26 %r6 244
	lw	%r26 %r23 240
	lw	%r26 %r24 236
	lw	%r26 %r25 232
	lw	%r26 %r1 228
	lw	%r26 %r14 224
	lw	%r26 %r15 220
	lw	%r26 %r10 216
	lw	%r26 %r12 212
	lw	%r26 %r11 208
	lw	%r26 %r29 204
	lw	%r26 %r16 200
	lw	%r26 %r22 196
	lw	%r26 %r19 192
	lw	%r26 %r20 188
	lw	%r26 %r18 184
	lw	%r26 %r8 180
	lw	%r26 %r21 176
	lw	%r26 %r7 172
	lw	%r26 %r13 168
	lw	%r26 %r17 164
	lw.s	%r26 %f3 160
	lw.s	%r26 %f5 156
	j	branching_b.296
tail_b.491 :
	sw	%r26 %r9 268
	sw.s	%r26 %f8 264
	sw.s	%r26 %f1 260
	sw.s	%r26 %f6 256
	sw	%r26 %r2 252
	sw.s	%r26 %f2 248
	sw	%r26 %r6 244
	sw	%r26 %r23 240
	sw	%r26 %r24 236
	sw	%r26 %r25 232
	sw	%r26 %r1 228
	sw	%r26 %r14 224
	sw	%r26 %r15 220
	sw	%r26 %r10 216
	sw	%r26 %r12 212
	sw	%r26 %r11 208
	sw	%r26 %r29 204
	sw	%r26 %r16 200
	sw	%r26 %r22 196
	sw	%r26 %r19 192
	sw	%r26 %r20 188
	sw	%r26 %r18 184
	sw	%r26 %r8 180
	sw	%r26 %r21 176
	sw	%r26 %r7 172
	sw	%r26 %r13 168
	sw	%r26 %r17 164
	sw.s	%r26 %f3 160
	sw.s	%r26 %f5 156
	mov	%r5 %r1
	mov.s	%f4 %f2
	mov.s	%f7 %f1
	sw	%r26 %r28 272
	addi	%r26 %r26 276
	jal	is_plane_outside.0
	addi	%r26 %r26 -276
	lw	%r26 %r28 272
	mov	%r1 %r4
	lw	%r26 %r9 268
	lw.s	%r26 %f8 264
	lw.s	%r26 %f1 260
	lw.s	%r26 %f6 256
	lw	%r26 %r2 252
	lw.s	%r26 %f2 248
	lw	%r26 %r6 244
	lw	%r26 %r23 240
	lw	%r26 %r24 236
	lw	%r26 %r25 232
	lw	%r26 %r1 228
	lw	%r26 %r14 224
	lw	%r26 %r15 220
	lw	%r26 %r10 216
	lw	%r26 %r12 212
	lw	%r26 %r11 208
	lw	%r26 %r29 204
	lw	%r26 %r16 200
	lw	%r26 %r22 196
	lw	%r26 %r19 192
	lw	%r26 %r20 188
	lw	%r26 %r18 184
	lw	%r26 %r8 180
	lw	%r26 %r21 176
	lw	%r26 %r7 172
	lw	%r26 %r13 168
	lw	%r26 %r17 164
	lw.s	%r26 %f3 160
	lw.s	%r26 %f5 156
	j	branching_b.296
tail_b.490 :
	sw	%r26 %r9 268
	sw.s	%r26 %f8 264
	sw.s	%r26 %f1 260
	sw.s	%r26 %f6 256
	sw	%r26 %r2 252
	sw.s	%r26 %f2 248
	sw	%r26 %r6 244
	sw	%r26 %r23 240
	sw	%r26 %r24 236
	sw	%r26 %r25 232
	sw	%r26 %r1 228
	sw	%r26 %r14 224
	sw	%r26 %r15 220
	sw	%r26 %r10 216
	sw	%r26 %r12 212
	sw	%r26 %r11 208
	sw	%r26 %r29 204
	sw	%r26 %r16 200
	sw	%r26 %r22 196
	sw	%r26 %r19 192
	sw	%r26 %r20 188
	sw	%r26 %r18 184
	sw	%r26 %r8 180
	sw	%r26 %r21 176
	sw	%r26 %r7 172
	sw	%r26 %r13 168
	sw	%r26 %r17 164
	sw.s	%r26 %f3 160
	sw.s	%r26 %f5 156
	mov	%r5 %r1
	mov.s	%f4 %f2
	mov.s	%f7 %f1
	sw	%r26 %r28 272
	addi	%r26 %r26 276
	jal	is_rect_outside.0
	addi	%r26 %r26 -276
	lw	%r26 %r28 272
	mov	%r1 %r4
	lw	%r26 %r9 268
	lw.s	%r26 %f8 264
	lw.s	%r26 %f1 260
	lw.s	%r26 %f6 256
	lw	%r26 %r2 252
	lw.s	%r26 %f2 248
	lw	%r26 %r6 244
	lw	%r26 %r23 240
	lw	%r26 %r24 236
	lw	%r26 %r25 232
	lw	%r26 %r1 228
	lw	%r26 %r14 224
	lw	%r26 %r15 220
	lw	%r26 %r10 216
	lw	%r26 %r12 212
	lw	%r26 %r11 208
	lw	%r26 %r29 204
	lw	%r26 %r16 200
	lw	%r26 %r22 196
	lw	%r26 %r19 192
	lw	%r26 %r20 188
	lw	%r26 %r18 184
	lw	%r26 %r8 180
	lw	%r26 %r21 176
	lw	%r26 %r7 172
	lw	%r26 %r13 168
	lw	%r26 %r17 164
	lw.s	%r26 %f3 160
	lw.s	%r26 %f5 156
	j	branching_b.296
tail_b.489 :
	addi	%r0 %r3 1
	j	postloop_b.18
tail_b.488 :
	j	tail_b.497
postloop_b.18 :
	lw	%r26 %r2 152
branching_b.297 :
	addi	%r0 %r2 0
	beq	%r3 %r2 tail_b.495
	sw.s	%r17 %f2 0
	sw.s	%r9 %f6 0
	sw.s	%r9 %f1 4
	sw.s	%r9 %f8 8
	sw	%r16 %r23 0
	sw	%r22 %r6 0
	j	tail_b.497
tail_b.495 :
	j	tail_b.497
branching_b.296 :
	addi	%r0 %r3 0
	beq	%r4 %r3 tail_b.493
	addi	%r0 %r3 0
	j	postloop_b.18
tail_b.493 :
	addi	%r2 %r2 1
	j	check_all_inside.16
postloop_b.19 :
	lw	%r26 %r25 148
tail_b.500 :
	addi	%r1 %r1 1
	j	solve_one_or_network.3
postloop_b.20 :
	lw	%r26 %r1 144
tail_b.503 :
	addi	%r12 %r12 1
	j	trace_or_matrix.1
return_point.44 :
	lw	%r26 %r1 156
	retl
trace_diffuse_ray.0 :
	mov	%r1 %r20
	mov	%r29 %r1
	mov.s	%f0 %f3
preloop_b.30 :
	lw	%r1 %r30 80
	sw	%r26 %r30 0
	lw	%r1 %r6 76
	lw	%r1 %r2 72
	lw	%r1 %r16 68
	lw	%r1 %r29 64
	lw	%r1 %r11 60
	lw	%r1 %r19 56
	lw	%r1 %r30 52
	sw	%r26 %r30 4
	lw	%r1 %r22 48
	lw	%r1 %r30 44
	sw	%r26 %r30 8
	lw	%r1 %r15 40
	lw	%r1 %r3 36
	lw	%r1 %r4 32
	lw	%r1 %r18 28
	lw	%r1 %r17 24
	lw	%r1 %r30 20
	sw	%r26 %r30 12
	lw	%r1 %r30 16
	sw	%r26 %r30 16
	lw	%r1 %r30 12
	sw	%r26 %r30 20
	lw	%r1 %r30 8
	sw	%r26 %r30 24
	lw	%r1 %r21 4
	ilw.s	%r0 %f0 l.53
	sw.s	%r6 %f0 0
	addi	%r0 %r9 0
	lw	%r26 %r30 4
	lw	%r30 %r10 0
	sw	%r26 %r9 28
trace_or_matrix_fast.1 :
	slli	%r9 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r8 0
	lw	%r8 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.583
	addi	%r0 %r1 99
	beq	%r5 %r1 preloop_b.31
	sw	%r26 %r8 100
	sw	%r26 %r20 96
	sw	%r26 %r10 92
	sw	%r26 %r9 88
	sw	%r26 %r21 84
	sw	%r26 %r17 80
	sw	%r26 %r18 76
	sw	%r26 %r4 72
	sw	%r26 %r3 68
	sw	%r26 %r15 64
	sw	%r26 %r22 60
	sw	%r26 %r19 56
	sw	%r26 %r11 52
	sw	%r26 %r29 48
	sw	%r26 %r16 44
	sw	%r26 %r2 40
	sw	%r26 %r6 36
	sw.s	%r26 %f3 32
	mov	%r20 %r2
	mov	%r5 %r1
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r5
	lw	%r26 %r8 100
	lw	%r26 %r20 96
	lw	%r26 %r10 92
	lw	%r26 %r9 88
	lw	%r26 %r21 84
	lw	%r26 %r17 80
	lw	%r26 %r18 76
	lw	%r26 %r4 72
	lw	%r26 %r3 68
	lw	%r26 %r15 64
	lw	%r26 %r22 60
	lw	%r26 %r19 56
	lw	%r26 %r11 52
	lw	%r26 %r29 48
	lw	%r26 %r16 44
	lw	%r26 %r2 40
	lw	%r26 %r6 36
	lw.s	%r26 %f3 32
	addi	%r0 %r1 0
	bne	%r5 %r1 branching_b.367
	j	tail_b.628
branching_b.367 :
	lw.s	%r19 %f1 0
	lw.s	%r6 %f0 0
	fbge	%f1 %f0 tail_b.605
	addi	%r0 %r1 1
	j	branching_b.368
tail_b.605 :
	addi	%r0 %r1 0
	j	branching_b.368
preloop_b.31 :
	addi	%r0 %r25 1
	sw	%r26 %r25 32
solve_one_or_network_fast.4 :
	slli	%r25 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	bne	%r5 %r1 preloop_b.32
	j	postloop_b.32
preloop_b.32 :
	slli	%r5 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r23 0
	addi	%r0 %r12 0
	sw	%r26 %r12 36
solve_each_element_fast.5 :
	lw	%r20 %r5 0
	slli	%r12 %r1 2
	add	%r23 %r1 %r31
	lw	%r31 %r13 0
	addi	%r0 %r1 -1
	beq	%r13 %r1 tail_b.584
	sw	%r26 %r13 128
	sw	%r26 %r5 124
	sw	%r26 %r23 120
	sw	%r26 %r12 116
	sw	%r26 %r8 112
	sw	%r26 %r25 108
	sw	%r26 %r20 104
	sw	%r26 %r10 100
	sw	%r26 %r9 96
	sw	%r26 %r21 92
	sw	%r26 %r17 88
	sw	%r26 %r18 84
	sw	%r26 %r4 80
	sw	%r26 %r3 76
	sw	%r26 %r15 72
	sw	%r26 %r22 68
	sw	%r26 %r19 64
	sw	%r26 %r11 60
	sw	%r26 %r29 56
	sw	%r26 %r16 52
	sw	%r26 %r2 48
	sw	%r26 %r6 44
	sw.s	%r26 %f3 40
	mov	%r20 %r2
	mov	%r13 %r1
	sw	%r26 %r28 132
	lw	%r29 %r30 0
	addi	%r26 %r26 136
	jalr	%r30
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov	%r1 %r7
	lw	%r26 %r13 128
	lw	%r26 %r5 124
	lw	%r26 %r23 120
	lw	%r26 %r12 116
	lw	%r26 %r8 112
	lw	%r26 %r25 108
	lw	%r26 %r20 104
	lw	%r26 %r10 100
	lw	%r26 %r9 96
	lw	%r26 %r21 92
	lw	%r26 %r17 88
	lw	%r26 %r18 84
	lw	%r26 %r4 80
	lw	%r26 %r3 76
	lw	%r26 %r15 72
	lw	%r26 %r22 68
	lw	%r26 %r19 64
	lw	%r26 %r11 60
	lw	%r26 %r29 56
	lw	%r26 %r16 52
	lw	%r26 %r2 48
	lw	%r26 %r6 44
	lw.s	%r26 %f3 40
	addi	%r0 %r1 0
	bne	%r7 %r1 branching_b.356
	slli	%r13 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.600
	addi	%r12 %r12 1
	j	solve_each_element_fast.5
tail_b.600 :
	j	postloop_b.31
branching_b.356 :
	lw.s	%r19 %f1 0
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.586
	addi	%r0 %r14 1
	j	branching_b.357
tail_b.586 :
	addi	%r0 %r14 0
	j	branching_b.357
tail_b.584 :
	j	postloop_b.31
tail_b.583 :
postloop_b.36 :
	lw	%r26 %r9 28
branching_b.382 :
	lw.s	%r6 %f1 0
	ilw.s	%r0 %f0 l.55
	fbge	%f0 %f1 tail_b.630
	addi	%r0 %r4 1
	j	branching_b.383
tail_b.630 :
	addi	%r0 %r4 0
branching_b.383 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.631
	ilw.s	%r0 %f0 l.56
	fbge	%f1 %f0 tail_b.633
	addi	%r0 %r4 1
	j	branching_b.385
tail_b.633 :
	addi	%r0 %r4 0
	j	branching_b.385
tail_b.631 :
	addi	%r0 %r4 0
branching_b.385 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.634
	lw	%r17 %r1 0
	slli	%r1 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r4 0
	lw	%r20 %r6 0
	lw	%r4 %r5 4
	addi	%r0 %r1 1
	beq	%r5 %r1 tail_b.635
	addi	%r0 %r1 2
	beq	%r5 %r1 tail_b.636
	sw	%r26 %r4 76
	sw	%r26 %r21 72
	sw	%r26 %r18 68
	sw	%r26 %r3 64
	sw	%r26 %r15 60
	sw	%r26 %r22 56
	sw	%r26 %r19 52
	sw	%r26 %r11 48
	sw	%r26 %r2 44
	sw.s	%r26 %f3 40
	mov	%r4 %r1
	lw	%r26 %r29 12
	sw	%r26 %r28 80
	lw	%r29 %r30 0
	addi	%r26 %r26 84
	jalr	%r30
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r4 76
	lw	%r26 %r21 72
	lw	%r26 %r18 68
	lw	%r26 %r3 64
	lw	%r26 %r15 60
	lw	%r26 %r22 56
	lw	%r26 %r19 52
	lw	%r26 %r11 48
	lw	%r26 %r2 44
	lw.s	%r26 %f3 40
	j	preloop_b.37
tail_b.636 :
	sw	%r26 %r4 76
	sw	%r26 %r21 72
	sw	%r26 %r18 68
	sw	%r26 %r3 64
	sw	%r26 %r15 60
	sw	%r26 %r22 56
	sw	%r26 %r19 52
	sw	%r26 %r11 48
	sw	%r26 %r2 44
	sw.s	%r26 %f3 40
	mov	%r4 %r1
	lw	%r26 %r29 20
	sw	%r26 %r28 80
	lw	%r29 %r30 0
	addi	%r26 %r26 84
	jalr	%r30
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r4 76
	lw	%r26 %r21 72
	lw	%r26 %r18 68
	lw	%r26 %r3 64
	lw	%r26 %r15 60
	lw	%r26 %r22 56
	lw	%r26 %r19 52
	lw	%r26 %r11 48
	lw	%r26 %r2 44
	lw.s	%r26 %f3 40
	j	preloop_b.37
tail_b.635 :
	sw	%r26 %r4 76
	sw	%r26 %r21 72
	sw	%r26 %r18 68
	sw	%r26 %r3 64
	sw	%r26 %r15 60
	sw	%r26 %r22 56
	sw	%r26 %r19 52
	sw	%r26 %r11 48
	sw	%r26 %r2 44
	sw.s	%r26 %f3 40
	mov	%r6 %r1
	lw	%r26 %r29 16
	sw	%r26 %r28 80
	lw	%r29 %r30 0
	addi	%r26 %r26 84
	jalr	%r30
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r4 76
	lw	%r26 %r21 72
	lw	%r26 %r18 68
	lw	%r26 %r3 64
	lw	%r26 %r15 60
	lw	%r26 %r22 56
	lw	%r26 %r19 52
	lw	%r26 %r11 48
	lw	%r26 %r2 44
	lw.s	%r26 %f3 40
	j	preloop_b.37
tail_b.634 :
return_point.45 :
	lw	%r26 %r1 40
	retl
preloop_b.37 :
	sw	%r26 %r4 80
	sw	%r26 %r21 76
	sw	%r26 %r18 72
	sw	%r26 %r3 68
	sw	%r26 %r15 64
	sw	%r26 %r22 60
	sw	%r26 %r19 56
	sw	%r26 %r11 52
	sw	%r26 %r2 48
	sw.s	%r26 %f3 44
	mov	%r18 %r2
	mov	%r4 %r1
	lw	%r26 %r29 0
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r4 80
	lw	%r26 %r21 76
	lw	%r26 %r18 72
	lw	%r26 %r3 68
	lw	%r26 %r15 64
	lw	%r26 %r22 60
	lw	%r26 %r19 56
	lw	%r26 %r11 52
	lw	%r26 %r2 48
	lw.s	%r26 %f3 44
	addi	%r0 %r7 0
	lw	%r26 %r30 4
	lw	%r30 %r8 0
	sw	%r26 %r7 44
shadow_check_one_or_matrix.1 :
	slli	%r7 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r6 0
	lw	%r6 %r1 0
	addi	%r0 %r5 -1
	beq	%r1 %r5 tail_b.638
	addi	%r0 %r5 99
	beq	%r1 %r5 tail_b.639
	sw	%r26 %r6 96
	sw	%r26 %r8 92
	sw	%r26 %r7 88
	sw	%r26 %r4 84
	sw	%r26 %r21 80
	sw	%r26 %r18 76
	sw	%r26 %r3 72
	sw	%r26 %r15 68
	sw	%r26 %r22 64
	sw	%r26 %r19 60
	sw	%r26 %r11 56
	sw	%r26 %r2 52
	sw.s	%r26 %f3 48
	mov	%r11 %r29
	mov	%r18 %r3
	mov	%r15 %r2
	sw	%r26 %r28 100
	lw	%r29 %r30 0
	addi	%r26 %r26 104
	jalr	%r30
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r5
	lw	%r26 %r6 96
	lw	%r26 %r8 92
	lw	%r26 %r7 88
	lw	%r26 %r4 84
	lw	%r26 %r21 80
	lw	%r26 %r18 76
	lw	%r26 %r3 72
	lw	%r26 %r15 68
	lw	%r26 %r22 64
	lw	%r26 %r19 60
	lw	%r26 %r11 56
	lw	%r26 %r2 52
	lw.s	%r26 %f3 48
	addi	%r0 %r1 0
	bne	%r5 %r1 branching_b.391
	addi	%r0 %r1 0
	j	branching_b.406
branching_b.391 :
	lw.s	%r19 %f0 0
	ilw.s	%r0 %f1 l.55
	fbge	%f0 %f1 tail_b.641
	addi	%r0 %r1 1
	j	branching_b.392
tail_b.641 :
	addi	%r0 %r1 0
	j	branching_b.392
tail_b.639 :
	addi	%r0 %r1 1
	j	branching_b.406
tail_b.638 :
	addi	%r0 %r5 0
postloop_b.43 :
	lw	%r26 %r7 44
branching_b.420 :
	addi	%r0 %r1 0
	beq	%r5 %r1 branching_b.421
	j	return_point.45
branching_b.421 :
	sw	%r26 %r4 56
	sw	%r26 %r2 52
	sw.s	%r26 %f3 48
	mov	%r3 %r2
	lw	%r26 %r1 8
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.0
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r4 56
	lw	%r26 %r2 52
	lw.s	%r26 %f3 48
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.684
	addi	%r0 %r3 1
	j	branching_b.422
tail_b.684 :
	addi	%r0 %r3 0
branching_b.422 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.685
	mov.s	%f1 %f0
	j	tail_b.687
tail_b.685 :
	ilw.s	%r0 %f0 l.27
tail_b.687 :
	mul.s	%f0 %f3 %f1
	lw	%r4 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	j	vecaccum.0
branching_b.392 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.642
	addi	%r0 %r12 1
	sw	%r26 %r12 48
shadow_check_one_or_group.4 :
	slli	%r12 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.643
	slli	%r5 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r9 0
	addi	%r0 %r10 0
	sw	%r26 %r10 52
shadow_check_and_group.5 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.644
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	sw	%r26 %r1 120
	sw	%r26 %r9 116
	sw	%r26 %r10 112
	sw	%r26 %r12 108
	sw	%r26 %r6 104
	sw	%r26 %r8 100
	sw	%r26 %r7 96
	sw	%r26 %r4 92
	sw	%r26 %r21 88
	sw	%r26 %r18 84
	sw	%r26 %r3 80
	sw	%r26 %r15 76
	sw	%r26 %r22 72
	sw	%r26 %r19 68
	sw	%r26 %r11 64
	sw	%r26 %r2 60
	sw.s	%r26 %f3 56
	mov	%r11 %r29
	mov	%r18 %r3
	mov	%r15 %r2
	sw	%r26 %r28 124
	lw	%r29 %r30 0
	addi	%r26 %r26 128
	jalr	%r30
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov	%r1 %r5
	lw	%r26 %r1 120
	lw	%r26 %r9 116
	lw	%r26 %r10 112
	lw	%r26 %r12 108
	lw	%r26 %r6 104
	lw	%r26 %r8 100
	lw	%r26 %r7 96
	lw	%r26 %r4 92
	lw	%r26 %r21 88
	lw	%r26 %r18 84
	lw	%r26 %r3 80
	lw	%r26 %r15 76
	lw	%r26 %r22 72
	lw	%r26 %r19 68
	lw	%r26 %r11 64
	lw	%r26 %r2 60
	lw.s	%r26 %f3 56
	lw.s	%r19 %f1 0
	addi	%r0 %r13 0
	bne	%r5 %r13 branching_b.396
	addi	%r0 %r13 0
	j	branching_b.397
branching_b.396 :
	ilw.s	%r0 %f0 l.57
	fbge	%f1 %f0 tail_b.646
	addi	%r0 %r13 1
	j	branching_b.397
tail_b.646 :
	addi	%r0 %r13 0
	j	branching_b.397
tail_b.644 :
	addi	%r0 %r5 0
	j	postloop_b.38
tail_b.643 :
	addi	%r0 %r5 0
	j	postloop_b.39
tail_b.642 :
	addi	%r0 %r1 0
	j	branching_b.406
postloop_b.39 :
	lw	%r26 %r12 48
branching_b.405 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.660
	addi	%r0 %r1 1
	j	branching_b.406
tail_b.660 :
	addi	%r0 %r1 0
	j	branching_b.406
postloop_b.38 :
	lw	%r26 %r10 52
branching_b.404 :
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.658
	addi	%r0 %r5 1
	j	postloop_b.39
tail_b.658 :
	addi	%r12 %r12 1
	j	shadow_check_one_or_group.4
branching_b.397 :
	addi	%r0 %r5 0
	beq	%r13 %r5 branching_b.398
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f2
	lw.s	%r3 %f0 0
	mul.s	%f2 %f0 %f1
	lw.s	%r18 %f0 0
	add.s	%f0 %f1 %f4
	lw.s	%r3 %f0 4
	mul.s	%f2 %f0 %f1
	lw.s	%r18 %f0 4
	add.s	%f0 %f1 %f5
	lw.s	%r3 %f0 8
	mul.s	%f2 %f0 %f0
	lw.s	%r18 %f1 8
	add.s	%f1 %f0 %f2
	addi	%r0 %r5 0
	sw	%r26 %r5 56
check_all_inside.8 :
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r13 0
	addi	%r0 %r1 -1
	beq	%r13 %r1 tail_b.650
	slli	%r13 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r13 0
	lw	%r13 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f4 %f1
	lw	%r13 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f5 %f6
	lw	%r13 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f2 %f0
	lw	%r13 %r14 4
	addi	%r0 %r1 1
	beq	%r14 %r1 tail_b.651
	addi	%r0 %r1 2
	beq	%r14 %r1 tail_b.652
	sw.s	%r26 %f2 136
	sw.s	%r26 %f5 132
	sw.s	%r26 %f4 128
	sw	%r26 %r5 124
	sw	%r26 %r9 120
	sw	%r26 %r10 116
	sw	%r26 %r12 112
	sw	%r26 %r6 108
	sw	%r26 %r8 104
	sw	%r26 %r7 100
	sw	%r26 %r4 96
	sw	%r26 %r21 92
	sw	%r26 %r18 88
	sw	%r26 %r3 84
	sw	%r26 %r15 80
	sw	%r26 %r22 76
	sw	%r26 %r19 72
	sw	%r26 %r11 68
	sw	%r26 %r2 64
	sw.s	%r26 %f3 60
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f6 %f1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	is_second_outside.0
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f2 136
	lw.s	%r26 %f5 132
	lw.s	%r26 %f4 128
	lw	%r26 %r5 124
	lw	%r26 %r9 120
	lw	%r26 %r10 116
	lw	%r26 %r12 112
	lw	%r26 %r6 108
	lw	%r26 %r8 104
	lw	%r26 %r7 100
	lw	%r26 %r4 96
	lw	%r26 %r21 92
	lw	%r26 %r18 88
	lw	%r26 %r3 84
	lw	%r26 %r15 80
	lw	%r26 %r22 76
	lw	%r26 %r19 72
	lw	%r26 %r11 68
	lw	%r26 %r2 64
	lw.s	%r26 %f3 60
	j	branching_b.402
tail_b.652 :
	sw.s	%r26 %f2 136
	sw.s	%r26 %f5 132
	sw.s	%r26 %f4 128
	sw	%r26 %r5 124
	sw	%r26 %r9 120
	sw	%r26 %r10 116
	sw	%r26 %r12 112
	sw	%r26 %r6 108
	sw	%r26 %r8 104
	sw	%r26 %r7 100
	sw	%r26 %r4 96
	sw	%r26 %r21 92
	sw	%r26 %r18 88
	sw	%r26 %r3 84
	sw	%r26 %r15 80
	sw	%r26 %r22 76
	sw	%r26 %r19 72
	sw	%r26 %r11 68
	sw	%r26 %r2 64
	sw.s	%r26 %f3 60
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f6 %f1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	is_plane_outside.0
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f2 136
	lw.s	%r26 %f5 132
	lw.s	%r26 %f4 128
	lw	%r26 %r5 124
	lw	%r26 %r9 120
	lw	%r26 %r10 116
	lw	%r26 %r12 112
	lw	%r26 %r6 108
	lw	%r26 %r8 104
	lw	%r26 %r7 100
	lw	%r26 %r4 96
	lw	%r26 %r21 92
	lw	%r26 %r18 88
	lw	%r26 %r3 84
	lw	%r26 %r15 80
	lw	%r26 %r22 76
	lw	%r26 %r19 72
	lw	%r26 %r11 68
	lw	%r26 %r2 64
	lw.s	%r26 %f3 60
	j	branching_b.402
tail_b.651 :
	sw.s	%r26 %f2 136
	sw.s	%r26 %f5 132
	sw.s	%r26 %f4 128
	sw	%r26 %r5 124
	sw	%r26 %r9 120
	sw	%r26 %r10 116
	sw	%r26 %r12 112
	sw	%r26 %r6 108
	sw	%r26 %r8 104
	sw	%r26 %r7 100
	sw	%r26 %r4 96
	sw	%r26 %r21 92
	sw	%r26 %r18 88
	sw	%r26 %r3 84
	sw	%r26 %r15 80
	sw	%r26 %r22 76
	sw	%r26 %r19 72
	sw	%r26 %r11 68
	sw	%r26 %r2 64
	sw.s	%r26 %f3 60
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f6 %f1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	is_rect_outside.0
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f2 136
	lw.s	%r26 %f5 132
	lw.s	%r26 %f4 128
	lw	%r26 %r5 124
	lw	%r26 %r9 120
	lw	%r26 %r10 116
	lw	%r26 %r12 112
	lw	%r26 %r6 108
	lw	%r26 %r8 104
	lw	%r26 %r7 100
	lw	%r26 %r4 96
	lw	%r26 %r21 92
	lw	%r26 %r18 88
	lw	%r26 %r3 84
	lw	%r26 %r15 80
	lw	%r26 %r22 76
	lw	%r26 %r19 72
	lw	%r26 %r11 68
	lw	%r26 %r2 64
	lw.s	%r26 %f3 60
	j	branching_b.402
tail_b.650 :
	addi	%r0 %r13 1
	j	postloop_b.37
branching_b.398 :
	slli	%r1 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.648
	addi	%r10 %r10 1
	j	shadow_check_and_group.5
tail_b.648 :
	addi	%r0 %r5 0
	j	postloop_b.38
postloop_b.37 :
	lw	%r26 %r5 56
branching_b.403 :
	addi	%r0 %r1 0
	beq	%r13 %r1 tail_b.656
	addi	%r0 %r5 1
	j	postloop_b.38
tail_b.656 :
	addi	%r10 %r10 1
	j	shadow_check_and_group.5
branching_b.402 :
	addi	%r0 %r13 0
	beq	%r1 %r13 tail_b.654
	addi	%r0 %r13 0
	j	postloop_b.37
tail_b.654 :
	addi	%r5 %r5 1
	j	check_all_inside.8
branching_b.406 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.663
	addi	%r0 %r10 1
	sw	%r26 %r10 60
shadow_check_one_or_group.3 :
	slli	%r10 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r5 -1
	beq	%r1 %r5 tail_b.664
	slli	%r1 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r12 0
	addi	%r0 %r5 0
	sw	%r26 %r5 64
shadow_check_and_group.4 :
	slli	%r5 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r9 -1
	beq	%r1 %r9 tail_b.665
	slli	%r5 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r9 0
	sw	%r26 %r9 132
	sw	%r26 %r12 128
	sw	%r26 %r5 124
	sw	%r26 %r6 120
	sw	%r26 %r10 116
	sw	%r26 %r8 112
	sw	%r26 %r7 108
	sw	%r26 %r4 104
	sw	%r26 %r21 100
	sw	%r26 %r18 96
	sw	%r26 %r3 92
	sw	%r26 %r15 88
	sw	%r26 %r22 84
	sw	%r26 %r19 80
	sw	%r26 %r11 76
	sw	%r26 %r2 72
	sw.s	%r26 %f3 68
	mov	%r11 %r29
	mov	%r18 %r3
	mov	%r15 %r2
	mov	%r9 %r1
	sw	%r26 %r28 136
	lw	%r29 %r30 0
	addi	%r26 %r26 140
	jalr	%r30
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw	%r26 %r9 132
	lw	%r26 %r12 128
	lw	%r26 %r5 124
	lw	%r26 %r6 120
	lw	%r26 %r10 116
	lw	%r26 %r8 112
	lw	%r26 %r7 108
	lw	%r26 %r4 104
	lw	%r26 %r21 100
	lw	%r26 %r18 96
	lw	%r26 %r3 92
	lw	%r26 %r15 88
	lw	%r26 %r22 84
	lw	%r26 %r19 80
	lw	%r26 %r11 76
	lw	%r26 %r2 72
	lw.s	%r26 %f3 68
	lw.s	%r19 %f0 0
	addi	%r0 %r13 0
	bne	%r1 %r13 branching_b.410
	addi	%r0 %r13 0
	j	branching_b.411
branching_b.410 :
	ilw.s	%r0 %f1 l.57
	fbge	%f0 %f1 tail_b.667
	addi	%r0 %r13 1
	j	branching_b.411
tail_b.667 :
	addi	%r0 %r13 0
	j	branching_b.411
tail_b.665 :
	addi	%r0 %r9 0
	j	postloop_b.41
tail_b.664 :
	addi	%r0 %r1 0
	j	postloop_b.42
tail_b.663 :
	addi	%r7 %r7 1
	j	shadow_check_one_or_matrix.1
postloop_b.42 :
	lw	%r26 %r10 60
branching_b.419 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.681
	addi	%r0 %r5 1
	j	postloop_b.43
tail_b.681 :
	addi	%r7 %r7 1
	j	shadow_check_one_or_matrix.1
postloop_b.41 :
	lw	%r26 %r5 64
branching_b.418 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.679
	addi	%r0 %r1 1
	j	postloop_b.42
tail_b.679 :
	addi	%r10 %r10 1
	j	shadow_check_one_or_group.3
branching_b.411 :
	addi	%r0 %r1 0
	beq	%r13 %r1 branching_b.412
	ilw.s	%r0 %f1 l.54
	add.s	%f1 %f0 %f2
	lw.s	%r3 %f0 0
	mul.s	%f2 %f0 %f1
	lw.s	%r18 %f0 0
	add.s	%f0 %f1 %f6
	lw.s	%r3 %f0 4
	mul.s	%f2 %f0 %f1
	lw.s	%r18 %f0 4
	add.s	%f0 %f1 %f1
	lw.s	%r3 %f0 8
	mul.s	%f2 %f0 %f2
	lw.s	%r18 %f0 8
	add.s	%f0 %f2 %f5
	addi	%r0 %r13 0
	sw	%r26 %r13 68
check_all_inside.7 :
	slli	%r13 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r9 0
	addi	%r0 %r1 -1
	beq	%r9 %r1 tail_b.671
	slli	%r9 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r9 20
	lw.s	%r9 %f0 0
	sub.s	%f0 %f6 %f2
	lw	%r1 %r9 20
	lw.s	%r9 %f0 4
	sub.s	%f0 %f1 %f0
	lw	%r1 %r9 20
	lw.s	%r9 %f4 8
	sub.s	%f4 %f5 %f4
	lw	%r1 %r14 4
	addi	%r0 %r9 1
	beq	%r14 %r9 tail_b.672
	addi	%r0 %r9 2
	beq	%r14 %r9 tail_b.673
	sw.s	%r26 %f5 148
	sw.s	%r26 %f1 144
	sw.s	%r26 %f6 140
	sw	%r26 %r13 136
	sw	%r26 %r12 132
	sw	%r26 %r5 128
	sw	%r26 %r6 124
	sw	%r26 %r10 120
	sw	%r26 %r8 116
	sw	%r26 %r7 112
	sw	%r26 %r4 108
	sw	%r26 %r21 104
	sw	%r26 %r18 100
	sw	%r26 %r3 96
	sw	%r26 %r15 92
	sw	%r26 %r22 88
	sw	%r26 %r19 84
	sw	%r26 %r11 80
	sw	%r26 %r2 76
	sw.s	%r26 %f3 72
	mov.s	%f0 %f1
	mov.s	%f2 %f0
	mov.s	%f4 %f2
	sw	%r26 %r28 152
	addi	%r26 %r26 156
	jal	is_second_outside.0
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	mov	%r1 %r9
	lw.s	%r26 %f5 148
	lw.s	%r26 %f1 144
	lw.s	%r26 %f6 140
	lw	%r26 %r13 136
	lw	%r26 %r12 132
	lw	%r26 %r5 128
	lw	%r26 %r6 124
	lw	%r26 %r10 120
	lw	%r26 %r8 116
	lw	%r26 %r7 112
	lw	%r26 %r4 108
	lw	%r26 %r21 104
	lw	%r26 %r18 100
	lw	%r26 %r3 96
	lw	%r26 %r15 92
	lw	%r26 %r22 88
	lw	%r26 %r19 84
	lw	%r26 %r11 80
	lw	%r26 %r2 76
	lw.s	%r26 %f3 72
	j	branching_b.416
tail_b.673 :
	sw.s	%r26 %f5 148
	sw.s	%r26 %f1 144
	sw.s	%r26 %f6 140
	sw	%r26 %r13 136
	sw	%r26 %r12 132
	sw	%r26 %r5 128
	sw	%r26 %r6 124
	sw	%r26 %r10 120
	sw	%r26 %r8 116
	sw	%r26 %r7 112
	sw	%r26 %r4 108
	sw	%r26 %r21 104
	sw	%r26 %r18 100
	sw	%r26 %r3 96
	sw	%r26 %r15 92
	sw	%r26 %r22 88
	sw	%r26 %r19 84
	sw	%r26 %r11 80
	sw	%r26 %r2 76
	sw.s	%r26 %f3 72
	mov.s	%f0 %f1
	mov.s	%f2 %f0
	mov.s	%f4 %f2
	sw	%r26 %r28 152
	addi	%r26 %r26 156
	jal	is_plane_outside.0
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	mov	%r1 %r9
	lw.s	%r26 %f5 148
	lw.s	%r26 %f1 144
	lw.s	%r26 %f6 140
	lw	%r26 %r13 136
	lw	%r26 %r12 132
	lw	%r26 %r5 128
	lw	%r26 %r6 124
	lw	%r26 %r10 120
	lw	%r26 %r8 116
	lw	%r26 %r7 112
	lw	%r26 %r4 108
	lw	%r26 %r21 104
	lw	%r26 %r18 100
	lw	%r26 %r3 96
	lw	%r26 %r15 92
	lw	%r26 %r22 88
	lw	%r26 %r19 84
	lw	%r26 %r11 80
	lw	%r26 %r2 76
	lw.s	%r26 %f3 72
	j	branching_b.416
tail_b.672 :
	sw.s	%r26 %f5 148
	sw.s	%r26 %f1 144
	sw.s	%r26 %f6 140
	sw	%r26 %r13 136
	sw	%r26 %r12 132
	sw	%r26 %r5 128
	sw	%r26 %r6 124
	sw	%r26 %r10 120
	sw	%r26 %r8 116
	sw	%r26 %r7 112
	sw	%r26 %r4 108
	sw	%r26 %r21 104
	sw	%r26 %r18 100
	sw	%r26 %r3 96
	sw	%r26 %r15 92
	sw	%r26 %r22 88
	sw	%r26 %r19 84
	sw	%r26 %r11 80
	sw	%r26 %r2 76
	sw.s	%r26 %f3 72
	mov.s	%f0 %f1
	mov.s	%f2 %f0
	mov.s	%f4 %f2
	sw	%r26 %r28 152
	addi	%r26 %r26 156
	jal	is_rect_outside.0
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	mov	%r1 %r9
	lw.s	%r26 %f5 148
	lw.s	%r26 %f1 144
	lw.s	%r26 %f6 140
	lw	%r26 %r13 136
	lw	%r26 %r12 132
	lw	%r26 %r5 128
	lw	%r26 %r6 124
	lw	%r26 %r10 120
	lw	%r26 %r8 116
	lw	%r26 %r7 112
	lw	%r26 %r4 108
	lw	%r26 %r21 104
	lw	%r26 %r18 100
	lw	%r26 %r3 96
	lw	%r26 %r15 92
	lw	%r26 %r22 88
	lw	%r26 %r19 84
	lw	%r26 %r11 80
	lw	%r26 %r2 76
	lw.s	%r26 %f3 72
	j	branching_b.416
tail_b.671 :
	addi	%r0 %r9 1
	j	postloop_b.40
branching_b.412 :
	slli	%r9 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r9 24
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.669
	addi	%r5 %r5 1
	j	shadow_check_and_group.4
tail_b.669 :
	addi	%r0 %r9 0
	j	postloop_b.41
postloop_b.40 :
	lw	%r26 %r13 68
branching_b.417 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.677
	addi	%r0 %r9 1
	j	postloop_b.41
tail_b.677 :
	addi	%r5 %r5 1
	j	shadow_check_and_group.4
branching_b.416 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.675
	addi	%r0 %r9 0
	j	postloop_b.40
tail_b.675 :
	addi	%r13 %r13 1
	j	check_all_inside.7
branching_b.357 :
	addi	%r0 %r1 0
	beq	%r14 %r1 tail_b.587
	lw.s	%r6 %f0 0
	fbge	%f1 %f0 tail_b.589
	addi	%r0 %r14 1
	j	branching_b.359
tail_b.589 :
	addi	%r0 %r14 0
	j	branching_b.359
tail_b.587 :
tail_b.599 :
	addi	%r12 %r12 1
	j	solve_each_element_fast.5
branching_b.359 :
	addi	%r0 %r1 0
	beq	%r14 %r1 tail_b.590
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f4
	lw.s	%r5 %f0 0
	mul.s	%f4 %f0 %f0
	lw.s	%r16 %f1 0
	add.s	%f1 %f0 %f7
	lw.s	%r5 %f0 4
	mul.s	%f4 %f0 %f1
	lw.s	%r16 %f0 4
	add.s	%f0 %f1 %f2
	lw.s	%r5 %f0 8
	mul.s	%f4 %f0 %f0
	lw.s	%r16 %f1 8
	add.s	%f1 %f0 %f5
	addi	%r0 %r24 0
	sw	%r26 %r24 72
check_all_inside.22 :
	slli	%r24 %r1 2
	add	%r23 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.591
	slli	%r5 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r14 0
	lw	%r14 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f7 %f1
	lw	%r14 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f2 %f0
	lw	%r14 %r1 20
	lw.s	%r1 %f6 8
	sub.s	%f6 %f5 %f6
	lw	%r14 %r1 4
	addi	%r0 %r5 1
	beq	%r1 %r5 tail_b.592
	addi	%r0 %r5 2
	beq	%r1 %r5 tail_b.593
	sw.s	%r26 %f5 184
	sw.s	%r26 %f2 180
	sw.s	%r26 %f7 176
	sw	%r26 %r24 172
	sw.s	%r26 %f4 168
	sw	%r26 %r7 164
	sw	%r26 %r13 160
	sw	%r26 %r23 156
	sw	%r26 %r12 152
	sw	%r26 %r8 148
	sw	%r26 %r25 144
	sw	%r26 %r20 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r21 128
	sw	%r26 %r17 124
	sw	%r26 %r18 120
	sw	%r26 %r4 116
	sw	%r26 %r3 112
	sw	%r26 %r15 108
	sw	%r26 %r22 104
	sw	%r26 %r19 100
	sw	%r26 %r11 96
	sw	%r26 %r29 92
	sw	%r26 %r16 88
	sw	%r26 %r2 84
	sw	%r26 %r6 80
	sw.s	%r26 %f3 76
	mov	%r14 %r1
	mov.s	%f6 %f2
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	is_second_outside.0
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f5 184
	lw.s	%r26 %f2 180
	lw.s	%r26 %f7 176
	lw	%r26 %r24 172
	lw.s	%r26 %f4 168
	lw	%r26 %r7 164
	lw	%r26 %r13 160
	lw	%r26 %r23 156
	lw	%r26 %r12 152
	lw	%r26 %r8 148
	lw	%r26 %r25 144
	lw	%r26 %r20 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r21 128
	lw	%r26 %r17 124
	lw	%r26 %r18 120
	lw	%r26 %r4 116
	lw	%r26 %r3 112
	lw	%r26 %r15 108
	lw	%r26 %r22 104
	lw	%r26 %r19 100
	lw	%r26 %r11 96
	lw	%r26 %r29 92
	lw	%r26 %r16 88
	lw	%r26 %r2 84
	lw	%r26 %r6 80
	lw.s	%r26 %f3 76
	j	branching_b.363
tail_b.593 :
	sw.s	%r26 %f5 184
	sw.s	%r26 %f2 180
	sw.s	%r26 %f7 176
	sw	%r26 %r24 172
	sw.s	%r26 %f4 168
	sw	%r26 %r7 164
	sw	%r26 %r13 160
	sw	%r26 %r23 156
	sw	%r26 %r12 152
	sw	%r26 %r8 148
	sw	%r26 %r25 144
	sw	%r26 %r20 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r21 128
	sw	%r26 %r17 124
	sw	%r26 %r18 120
	sw	%r26 %r4 116
	sw	%r26 %r3 112
	sw	%r26 %r15 108
	sw	%r26 %r22 104
	sw	%r26 %r19 100
	sw	%r26 %r11 96
	sw	%r26 %r29 92
	sw	%r26 %r16 88
	sw	%r26 %r2 84
	sw	%r26 %r6 80
	sw.s	%r26 %f3 76
	mov	%r14 %r1
	mov.s	%f6 %f2
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	is_plane_outside.0
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f5 184
	lw.s	%r26 %f2 180
	lw.s	%r26 %f7 176
	lw	%r26 %r24 172
	lw.s	%r26 %f4 168
	lw	%r26 %r7 164
	lw	%r26 %r13 160
	lw	%r26 %r23 156
	lw	%r26 %r12 152
	lw	%r26 %r8 148
	lw	%r26 %r25 144
	lw	%r26 %r20 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r21 128
	lw	%r26 %r17 124
	lw	%r26 %r18 120
	lw	%r26 %r4 116
	lw	%r26 %r3 112
	lw	%r26 %r15 108
	lw	%r26 %r22 104
	lw	%r26 %r19 100
	lw	%r26 %r11 96
	lw	%r26 %r29 92
	lw	%r26 %r16 88
	lw	%r26 %r2 84
	lw	%r26 %r6 80
	lw.s	%r26 %f3 76
	j	branching_b.363
tail_b.592 :
	sw.s	%r26 %f5 184
	sw.s	%r26 %f2 180
	sw.s	%r26 %f7 176
	sw	%r26 %r24 172
	sw.s	%r26 %f4 168
	sw	%r26 %r7 164
	sw	%r26 %r13 160
	sw	%r26 %r23 156
	sw	%r26 %r12 152
	sw	%r26 %r8 148
	sw	%r26 %r25 144
	sw	%r26 %r20 140
	sw	%r26 %r10 136
	sw	%r26 %r9 132
	sw	%r26 %r21 128
	sw	%r26 %r17 124
	sw	%r26 %r18 120
	sw	%r26 %r4 116
	sw	%r26 %r3 112
	sw	%r26 %r15 108
	sw	%r26 %r22 104
	sw	%r26 %r19 100
	sw	%r26 %r11 96
	sw	%r26 %r29 92
	sw	%r26 %r16 88
	sw	%r26 %r2 84
	sw	%r26 %r6 80
	sw.s	%r26 %f3 76
	mov	%r14 %r1
	mov.s	%f6 %f2
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	is_rect_outside.0
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f5 184
	lw.s	%r26 %f2 180
	lw.s	%r26 %f7 176
	lw	%r26 %r24 172
	lw.s	%r26 %f4 168
	lw	%r26 %r7 164
	lw	%r26 %r13 160
	lw	%r26 %r23 156
	lw	%r26 %r12 152
	lw	%r26 %r8 148
	lw	%r26 %r25 144
	lw	%r26 %r20 140
	lw	%r26 %r10 136
	lw	%r26 %r9 132
	lw	%r26 %r21 128
	lw	%r26 %r17 124
	lw	%r26 %r18 120
	lw	%r26 %r4 116
	lw	%r26 %r3 112
	lw	%r26 %r15 108
	lw	%r26 %r22 104
	lw	%r26 %r19 100
	lw	%r26 %r11 96
	lw	%r26 %r29 92
	lw	%r26 %r16 88
	lw	%r26 %r2 84
	lw	%r26 %r6 80
	lw.s	%r26 %f3 76
	j	branching_b.363
tail_b.591 :
	addi	%r0 %r1 1
	j	postloop_b.30
tail_b.590 :
	j	tail_b.599
postloop_b.30 :
	lw	%r26 %r24 72
branching_b.364 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.597
	sw.s	%r6 %f4 0
	sw.s	%r18 %f7 0
	sw.s	%r18 %f2 4
	sw.s	%r18 %f5 8
	sw	%r17 %r13 0
	sw	%r4 %r7 0
	j	tail_b.599
tail_b.597 :
	j	tail_b.599
branching_b.363 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.595
	addi	%r0 %r1 0
	j	postloop_b.30
tail_b.595 :
	addi	%r24 %r24 1
	j	check_all_inside.22
postloop_b.31 :
	lw	%r26 %r12 36
tail_b.602 :
	addi	%r25 %r25 1
	j	solve_one_or_network_fast.4
postloop_b.32 :
	lw	%r26 %r25 32
	j	tail_b.628
branching_b.368 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.606
	addi	%r0 %r12 1
	sw	%r26 %r12 76
solve_one_or_network_fast.3 :
	slli	%r12 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	bne	%r5 %r1 preloop_b.35
	j	postloop_b.35
preloop_b.35 :
	slli	%r5 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r25 0
	addi	%r0 %r24 0
	sw	%r26 %r24 80
solve_each_element_fast.4 :
	lw	%r20 %r7 0
	slli	%r24 %r1 2
	add	%r25 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r5 -1
	beq	%r1 %r5 tail_b.607
	sw	%r26 %r1 172
	sw	%r26 %r7 168
	sw	%r26 %r25 164
	sw	%r26 %r24 160
	sw	%r26 %r12 156
	sw	%r26 %r8 152
	sw	%r26 %r20 148
	sw	%r26 %r10 144
	sw	%r26 %r9 140
	sw	%r26 %r21 136
	sw	%r26 %r17 132
	sw	%r26 %r18 128
	sw	%r26 %r4 124
	sw	%r26 %r3 120
	sw	%r26 %r15 116
	sw	%r26 %r22 112
	sw	%r26 %r19 108
	sw	%r26 %r11 104
	sw	%r26 %r29 100
	sw	%r26 %r16 96
	sw	%r26 %r2 92
	sw	%r26 %r6 88
	sw.s	%r26 %f3 84
	mov	%r20 %r2
	sw	%r26 %r28 176
	lw	%r29 %r30 0
	addi	%r26 %r26 180
	jalr	%r30
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	mov	%r1 %r14
	lw	%r26 %r1 172
	lw	%r26 %r7 168
	lw	%r26 %r25 164
	lw	%r26 %r24 160
	lw	%r26 %r12 156
	lw	%r26 %r8 152
	lw	%r26 %r20 148
	lw	%r26 %r10 144
	lw	%r26 %r9 140
	lw	%r26 %r21 136
	lw	%r26 %r17 132
	lw	%r26 %r18 128
	lw	%r26 %r4 124
	lw	%r26 %r3 120
	lw	%r26 %r15 116
	lw	%r26 %r22 112
	lw	%r26 %r19 108
	lw	%r26 %r11 104
	lw	%r26 %r29 100
	lw	%r26 %r16 96
	lw	%r26 %r2 92
	lw	%r26 %r6 88
	lw.s	%r26 %f3 84
	addi	%r0 %r5 0
	bne	%r14 %r5 branching_b.372
	slli	%r1 %r1 2
	add	%r22 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r5 24
	addi	%r0 %r1 0
	beq	%r5 %r1 tail_b.623
	addi	%r24 %r24 1
	j	solve_each_element_fast.4
tail_b.623 :
	j	postloop_b.34
branching_b.372 :
	lw.s	%r19 %f1 0
	ilw.s	%r0 %f0 l.27
	fbge	%f0 %f1 tail_b.609
	addi	%r0 %r5 1
	j	branching_b.373
tail_b.609 :
	addi	%r0 %r5 0
	j	branching_b.373
tail_b.607 :
	j	postloop_b.34
tail_b.606 :
	j	tail_b.628
branching_b.373 :
	addi	%r0 %r13 0
	beq	%r5 %r13 tail_b.610
	lw.s	%r6 %f0 0
	fbge	%f1 %f0 tail_b.612
	addi	%r0 %r13 1
	j	branching_b.375
tail_b.612 :
	addi	%r0 %r13 0
	j	branching_b.375
tail_b.610 :
tail_b.622 :
	addi	%r24 %r24 1
	j	solve_each_element_fast.4
branching_b.375 :
	addi	%r0 %r5 0
	beq	%r13 %r5 tail_b.613
	ilw.s	%r0 %f0 l.54
	add.s	%f0 %f1 %f5
	lw.s	%r7 %f0 0
	mul.s	%f5 %f0 %f1
	lw.s	%r16 %f0 0
	add.s	%f0 %f1 %f1
	lw.s	%r7 %f0 4
	mul.s	%f5 %f0 %f0
	lw.s	%r16 %f2 4
	add.s	%f2 %f0 %f7
	lw.s	%r7 %f0 8
	mul.s	%f5 %f0 %f0
	lw.s	%r16 %f2 8
	add.s	%f2 %f0 %f2
	addi	%r0 %r5 0
	sw	%r26 %r5 84
check_all_inside.21 :
	slli	%r5 %r7 2
	add	%r25 %r7 %r31
	lw	%r31 %r7 0
	addi	%r0 %r13 -1
	beq	%r7 %r13 tail_b.614
	slli	%r7 %r7 2
	add	%r22 %r7 %r31
	lw	%r31 %r13 0
	lw	%r13 %r7 20
	lw.s	%r7 %f0 0
	sub.s	%f0 %f1 %f4
	lw	%r13 %r7 20
	lw.s	%r7 %f0 4
	sub.s	%f0 %f7 %f6
	lw	%r13 %r7 20
	lw.s	%r7 %f0 8
	sub.s	%f0 %f2 %f0
	lw	%r13 %r23 4
	addi	%r0 %r7 1
	beq	%r23 %r7 tail_b.615
	addi	%r0 %r7 2
	beq	%r23 %r7 tail_b.616
	sw.s	%r26 %f2 196
	sw.s	%r26 %f7 192
	sw.s	%r26 %f1 188
	sw	%r26 %r5 184
	sw.s	%r26 %f5 180
	sw	%r26 %r14 176
	sw	%r26 %r1 172
	sw	%r26 %r25 168
	sw	%r26 %r24 164
	sw	%r26 %r12 160
	sw	%r26 %r8 156
	sw	%r26 %r20 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r21 140
	sw	%r26 %r17 136
	sw	%r26 %r18 132
	sw	%r26 %r4 128
	sw	%r26 %r3 124
	sw	%r26 %r15 120
	sw	%r26 %r22 116
	sw	%r26 %r19 112
	sw	%r26 %r11 108
	sw	%r26 %r29 104
	sw	%r26 %r16 100
	sw	%r26 %r2 96
	sw	%r26 %r6 92
	sw.s	%r26 %f3 88
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f6 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	is_second_outside.0
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	mov	%r1 %r13
	lw.s	%r26 %f2 196
	lw.s	%r26 %f7 192
	lw.s	%r26 %f1 188
	lw	%r26 %r5 184
	lw.s	%r26 %f5 180
	lw	%r26 %r14 176
	lw	%r26 %r1 172
	lw	%r26 %r25 168
	lw	%r26 %r24 164
	lw	%r26 %r12 160
	lw	%r26 %r8 156
	lw	%r26 %r20 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r21 140
	lw	%r26 %r17 136
	lw	%r26 %r18 132
	lw	%r26 %r4 128
	lw	%r26 %r3 124
	lw	%r26 %r15 120
	lw	%r26 %r22 116
	lw	%r26 %r19 112
	lw	%r26 %r11 108
	lw	%r26 %r29 104
	lw	%r26 %r16 100
	lw	%r26 %r2 96
	lw	%r26 %r6 92
	lw.s	%r26 %f3 88
	j	branching_b.379
tail_b.616 :
	sw.s	%r26 %f2 196
	sw.s	%r26 %f7 192
	sw.s	%r26 %f1 188
	sw	%r26 %r5 184
	sw.s	%r26 %f5 180
	sw	%r26 %r14 176
	sw	%r26 %r1 172
	sw	%r26 %r25 168
	sw	%r26 %r24 164
	sw	%r26 %r12 160
	sw	%r26 %r8 156
	sw	%r26 %r20 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r21 140
	sw	%r26 %r17 136
	sw	%r26 %r18 132
	sw	%r26 %r4 128
	sw	%r26 %r3 124
	sw	%r26 %r15 120
	sw	%r26 %r22 116
	sw	%r26 %r19 112
	sw	%r26 %r11 108
	sw	%r26 %r29 104
	sw	%r26 %r16 100
	sw	%r26 %r2 96
	sw	%r26 %r6 92
	sw.s	%r26 %f3 88
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f6 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	is_plane_outside.0
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	mov	%r1 %r13
	lw.s	%r26 %f2 196
	lw.s	%r26 %f7 192
	lw.s	%r26 %f1 188
	lw	%r26 %r5 184
	lw.s	%r26 %f5 180
	lw	%r26 %r14 176
	lw	%r26 %r1 172
	lw	%r26 %r25 168
	lw	%r26 %r24 164
	lw	%r26 %r12 160
	lw	%r26 %r8 156
	lw	%r26 %r20 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r21 140
	lw	%r26 %r17 136
	lw	%r26 %r18 132
	lw	%r26 %r4 128
	lw	%r26 %r3 124
	lw	%r26 %r15 120
	lw	%r26 %r22 116
	lw	%r26 %r19 112
	lw	%r26 %r11 108
	lw	%r26 %r29 104
	lw	%r26 %r16 100
	lw	%r26 %r2 96
	lw	%r26 %r6 92
	lw.s	%r26 %f3 88
	j	branching_b.379
tail_b.615 :
	sw.s	%r26 %f2 196
	sw.s	%r26 %f7 192
	sw.s	%r26 %f1 188
	sw	%r26 %r5 184
	sw.s	%r26 %f5 180
	sw	%r26 %r14 176
	sw	%r26 %r1 172
	sw	%r26 %r25 168
	sw	%r26 %r24 164
	sw	%r26 %r12 160
	sw	%r26 %r8 156
	sw	%r26 %r20 152
	sw	%r26 %r10 148
	sw	%r26 %r9 144
	sw	%r26 %r21 140
	sw	%r26 %r17 136
	sw	%r26 %r18 132
	sw	%r26 %r4 128
	sw	%r26 %r3 124
	sw	%r26 %r15 120
	sw	%r26 %r22 116
	sw	%r26 %r19 112
	sw	%r26 %r11 108
	sw	%r26 %r29 104
	sw	%r26 %r16 100
	sw	%r26 %r2 96
	sw	%r26 %r6 92
	sw.s	%r26 %f3 88
	mov	%r13 %r1
	mov.s	%f0 %f2
	mov.s	%f6 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	is_rect_outside.0
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	mov	%r1 %r13
	lw.s	%r26 %f2 196
	lw.s	%r26 %f7 192
	lw.s	%r26 %f1 188
	lw	%r26 %r5 184
	lw.s	%r26 %f5 180
	lw	%r26 %r14 176
	lw	%r26 %r1 172
	lw	%r26 %r25 168
	lw	%r26 %r24 164
	lw	%r26 %r12 160
	lw	%r26 %r8 156
	lw	%r26 %r20 152
	lw	%r26 %r10 148
	lw	%r26 %r9 144
	lw	%r26 %r21 140
	lw	%r26 %r17 136
	lw	%r26 %r18 132
	lw	%r26 %r4 128
	lw	%r26 %r3 124
	lw	%r26 %r15 120
	lw	%r26 %r22 116
	lw	%r26 %r19 112
	lw	%r26 %r11 108
	lw	%r26 %r29 104
	lw	%r26 %r16 100
	lw	%r26 %r2 96
	lw	%r26 %r6 92
	lw.s	%r26 %f3 88
	j	branching_b.379
tail_b.614 :
	addi	%r0 %r7 1
	j	postloop_b.33
tail_b.613 :
	j	tail_b.622
postloop_b.33 :
	lw	%r26 %r5 84
branching_b.380 :
	addi	%r0 %r5 0
	beq	%r7 %r5 tail_b.620
	sw.s	%r6 %f5 0
	sw.s	%r18 %f1 0
	sw.s	%r18 %f7 4
	sw.s	%r18 %f2 8
	sw	%r17 %r1 0
	sw	%r4 %r14 0
	j	tail_b.622
tail_b.620 :
	j	tail_b.622
branching_b.379 :
	addi	%r0 %r7 0
	beq	%r13 %r7 tail_b.618
	addi	%r0 %r7 0
	j	postloop_b.33
tail_b.618 :
	addi	%r5 %r5 1
	j	check_all_inside.21
postloop_b.34 :
	lw	%r26 %r24 80
tail_b.625 :
	addi	%r12 %r12 1
	j	solve_one_or_network_fast.3
postloop_b.35 :
	lw	%r26 %r12 76
tail_b.628 :
	addi	%r9 %r9 1
	j	trace_or_matrix_fast.1
trace_diffuse_ray_80percent.0 :
	mov	%r2 %r5
	mov	%r1 %r9
branching_b.423 :
	lw	%r29 %r6 12
	lw	%r29 %r8 8
	lw	%r29 %r10 4
	addi	%r0 %r1 0
	bne	%r9 %r1 preloop_b.44
	j	branching_b.427
preloop_b.44 :
	lw	%r10 %r11 0
	sw	%r26 %r7 28
	sw	%r26 %r3 24
	sw	%r26 %r5 20
	sw	%r26 %r11 16
	sw	%r26 %r10 12
	sw	%r26 %r8 8
	sw	%r26 %r6 4
	sw	%r26 %r9 0
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r7 28
	lw	%r26 %r3 24
	lw	%r26 %r5 20
	lw	%r26 %r11 16
	lw	%r26 %r10 12
	lw	%r26 %r8 8
	lw	%r26 %r6 4
	lw	%r26 %r9 0
	addi	%r0 %r2 118
	sw	%r26 %r2 0
iter_trace_diffuse_rays.6 :
	addi	%r0 %r1 0
	ble	%r1 %r2 branching_b.425
	j	postloop_b.44
branching_b.425 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r7 36
	sw	%r26 %r2 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r11 20
	sw	%r26 %r10 16
	sw	%r26 %r8 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	mov	%r5 %r2
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	veciprod.0
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r7 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r11 20
	lw	%r26 %r10 16
	lw	%r26 %r8 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.690
	addi	%r0 %r1 1
	j	branching_b.426
tail_b.690 :
	addi	%r0 %r1 0
branching_b.426 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.691
	addi	%r2 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.61
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 36
	sw	%r26 %r2 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r11 20
	sw	%r26 %r10 16
	sw	%r26 %r8 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	mov	%r6 %r29
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r7 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r11 20
	lw	%r26 %r10 16
	lw	%r26 %r8 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
	j	tail_b.693
tail_b.691 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.62
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 36
	sw	%r26 %r2 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r11 20
	sw	%r26 %r10 16
	sw	%r26 %r8 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	mov	%r6 %r29
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r7 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r11 20
	lw	%r26 %r10 16
	lw	%r26 %r8 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
tail_b.693 :
	addi	%r0 %r1 2
	sub	%r2 %r1 %r2
	j	iter_trace_diffuse_rays.6
postloop_b.44 :
	lw	%r26 %r2 0
branching_b.427 :
	addi	%r0 %r1 1
	bne	%r9 %r1 preloop_b.45
	j	branching_b.431
preloop_b.45 :
	lw	%r10 %r4 4
	sw	%r26 %r7 32
	sw	%r26 %r4 28
	sw	%r26 %r3 24
	sw	%r26 %r5 20
	sw	%r26 %r10 16
	sw	%r26 %r8 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r7 32
	lw	%r26 %r4 28
	lw	%r26 %r3 24
	lw	%r26 %r5 20
	lw	%r26 %r10 16
	lw	%r26 %r8 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
	addi	%r0 %r11 118
	sw	%r26 %r11 4
iter_trace_diffuse_rays.5 :
	addi	%r0 %r1 0
	ble	%r1 %r11 branching_b.429
	j	postloop_b.45
branching_b.429 :
	slli	%r11 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r7 40
	sw	%r26 %r11 36
	sw	%r26 %r4 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r10 20
	sw	%r26 %r8 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	mov	%r5 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r11 36
	lw	%r26 %r4 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r10 20
	lw	%r26 %r8 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.697
	addi	%r0 %r1 1
	j	branching_b.430
tail_b.697 :
	addi	%r0 %r1 0
branching_b.430 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.698
	addi	%r11 %r1 1
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f1 l.61
	div.s	%f1 %f0 %f0
	sw	%r26 %r7 40
	sw	%r26 %r11 36
	sw	%r26 %r4 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r10 20
	sw	%r26 %r8 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	mov	%r6 %r29
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r11 36
	lw	%r26 %r4 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r10 20
	lw	%r26 %r8 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	j	tail_b.700
tail_b.698 :
	slli	%r11 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f1 l.62
	div.s	%f1 %f0 %f0
	sw	%r26 %r7 40
	sw	%r26 %r11 36
	sw	%r26 %r4 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r10 20
	sw	%r26 %r8 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	mov	%r6 %r29
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r11 36
	lw	%r26 %r4 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r10 20
	lw	%r26 %r8 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
tail_b.700 :
	addi	%r0 %r1 2
	sub	%r11 %r1 %r11
	j	iter_trace_diffuse_rays.5
postloop_b.45 :
	lw	%r26 %r11 4
branching_b.431 :
	addi	%r0 %r1 2
	bne	%r9 %r1 preloop_b.46
	j	branching_b.435
preloop_b.46 :
	lw	%r10 %r11 8
	sw	%r26 %r7 36
	sw	%r26 %r11 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r10 20
	sw	%r26 %r8 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r7 36
	lw	%r26 %r11 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r10 20
	lw	%r26 %r8 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	addi	%r0 %r2 118
	sw	%r26 %r2 8
iter_trace_diffuse_rays.4 :
	addi	%r0 %r1 0
	ble	%r1 %r2 branching_b.433
	j	postloop_b.46
branching_b.433 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r7 44
	sw	%r26 %r2 40
	sw	%r26 %r11 36
	sw	%r26 %r3 32
	sw	%r26 %r5 28
	sw	%r26 %r10 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	mov	%r5 %r2
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	veciprod.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov.s	%f0 %f1
	lw	%r26 %r7 44
	lw	%r26 %r2 40
	lw	%r26 %r11 36
	lw	%r26 %r3 32
	lw	%r26 %r5 28
	lw	%r26 %r10 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.704
	addi	%r0 %r1 1
	j	branching_b.434
tail_b.704 :
	addi	%r0 %r1 0
branching_b.434 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.705
	addi	%r2 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.61
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 44
	sw	%r26 %r2 40
	sw	%r26 %r11 36
	sw	%r26 %r3 32
	sw	%r26 %r5 28
	sw	%r26 %r10 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	mov	%r6 %r29
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r7 44
	lw	%r26 %r2 40
	lw	%r26 %r11 36
	lw	%r26 %r3 32
	lw	%r26 %r5 28
	lw	%r26 %r10 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	j	tail_b.707
tail_b.705 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.62
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 44
	sw	%r26 %r2 40
	sw	%r26 %r11 36
	sw	%r26 %r3 32
	sw	%r26 %r5 28
	sw	%r26 %r10 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	mov	%r6 %r29
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r7 44
	lw	%r26 %r2 40
	lw	%r26 %r11 36
	lw	%r26 %r3 32
	lw	%r26 %r5 28
	lw	%r26 %r10 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
tail_b.707 :
	addi	%r0 %r1 2
	sub	%r2 %r1 %r2
	j	iter_trace_diffuse_rays.4
postloop_b.46 :
	lw	%r26 %r2 8
branching_b.435 :
	addi	%r0 %r1 3
	bne	%r9 %r1 preloop_b.47
	j	branching_b.439
preloop_b.47 :
	lw	%r10 %r11 12
	sw	%r26 %r7 40
	sw	%r26 %r11 36
	sw	%r26 %r3 32
	sw	%r26 %r5 28
	sw	%r26 %r10 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r11 36
	lw	%r26 %r3 32
	lw	%r26 %r5 28
	lw	%r26 %r10 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	addi	%r0 %r2 118
	sw	%r26 %r2 12
iter_trace_diffuse_rays.3 :
	addi	%r0 %r1 0
	ble	%r1 %r2 branching_b.437
	j	postloop_b.47
branching_b.437 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r7 48
	sw	%r26 %r2 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r10 28
	sw	%r26 %r8 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	mov	%r5 %r2
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod.0
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r7 48
	lw	%r26 %r2 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r10 28
	lw	%r26 %r8 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	ilw.s	%r0 %f1 l.27
	fbge	%f0 %f1 tail_b.711
	addi	%r0 %r4 1
	j	branching_b.438
tail_b.711 :
	addi	%r0 %r4 0
branching_b.438 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.712
	addi	%r2 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f1 l.61
	div.s	%f1 %f0 %f0
	sw	%r26 %r7 48
	sw	%r26 %r2 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r10 28
	sw	%r26 %r8 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	mov	%r6 %r29
	sw	%r26 %r28 52
	lw	%r29 %r30 0
	addi	%r26 %r26 56
	jalr	%r30
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r7 48
	lw	%r26 %r2 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r10 28
	lw	%r26 %r8 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	j	tail_b.714
tail_b.712 :
	slli	%r2 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f1 l.62
	div.s	%f1 %f0 %f0
	sw	%r26 %r7 48
	sw	%r26 %r2 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r10 28
	sw	%r26 %r8 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	mov	%r6 %r29
	sw	%r26 %r28 52
	lw	%r29 %r30 0
	addi	%r26 %r26 56
	jalr	%r30
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r7 48
	lw	%r26 %r2 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r10 28
	lw	%r26 %r8 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
tail_b.714 :
	addi	%r0 %r1 2
	sub	%r2 %r1 %r2
	j	iter_trace_diffuse_rays.3
postloop_b.47 :
	lw	%r26 %r2 12
branching_b.439 :
	addi	%r0 %r1 4
	bne	%r9 %r1 preloop_b.48
	j	return_point.46
preloop_b.48 :
	lw	%r10 %r9 16
	sw	%r26 %r7 32
	sw	%r26 %r9 28
	sw	%r26 %r3 24
	sw	%r26 %r5 20
	sw	%r26 %r6 16
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r7 32
	lw	%r26 %r9 28
	lw	%r26 %r3 24
	lw	%r26 %r5 20
	lw	%r26 %r6 16
	addi	%r0 %r4 118
	sw	%r26 %r4 16
iter_trace_diffuse_rays.2 :
	addi	%r0 %r1 0
	ble	%r1 %r4 branching_b.441
	j	postloop_b.48
branching_b.441 :
	slli	%r4 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r7 40
	sw	%r26 %r4 36
	sw	%r26 %r9 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r6 20
	mov	%r5 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw	%r26 %r7 40
	lw	%r26 %r4 36
	lw	%r26 %r9 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r6 20
	ilw.s	%r0 %f0 l.27
	fbge	%f1 %f0 tail_b.718
	addi	%r0 %r2 1
	j	branching_b.442
tail_b.718 :
	addi	%r0 %r2 0
branching_b.442 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.719
	addi	%r4 %r1 1
	slli	%r1 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.61
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 40
	sw	%r26 %r4 36
	sw	%r26 %r9 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r6 20
	mov	%r6 %r29
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r4 36
	lw	%r26 %r9 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r6 20
	j	tail_b.721
tail_b.719 :
	slli	%r4 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	ilw.s	%r0 %f0 l.62
	div.s	%f0 %f1 %f0
	sw	%r26 %r7 40
	sw	%r26 %r4 36
	sw	%r26 %r9 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r6 20
	mov	%r6 %r29
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r7 40
	lw	%r26 %r4 36
	lw	%r26 %r9 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r6 20
tail_b.721 :
	addi	%r0 %r1 2
	sub	%r4 %r1 %r4
	j	iter_trace_diffuse_rays.2
postloop_b.48 :
	lw	%r26 %r4 16
return_point.46 :
	mov	%r7 %r1
	retl
calc_diffuse_using_5points.0 :
	mov	%r5 %r10
	mov	%r3 %r11
	mov	%r1 %r6
	mov	%r2 %r3
tail_b.724 :
	lw	%r29 %r2 8
	lw	%r29 %r8 4
	slli	%r6 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r12 20
	addi	%r0 %r1 1
	sub	%r6 %r1 %r1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r3 20
	slli	%r6 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r7 20
	addi	%r6 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r9 20
	slli	%r6 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 20
	slli	%r10 %r4 2
	add	%r12 %r4 %r31
	lw	%r31 %r4 0
	lw.s	%r4 %f0 0
	sw.s	%r8 %f0 0
	lw.s	%r4 %f0 4
	sw.s	%r8 %f0 4
	lw.s	%r4 %f0 8
	sw.s	%r8 %f0 8
	slli	%r10 %r4 2
	add	%r3 %r4 %r31
	lw	%r31 %r3 0
	sw	%r26 %r5 32
	sw	%r26 %r1 28
	sw	%r26 %r9 24
	sw	%r26 %r7 20
	sw	%r26 %r8 16
	sw	%r26 %r2 12
	sw	%r26 %r10 8
	sw	%r26 %r11 4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r8 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecadd.0
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r3
	lw	%r26 %r5 32
	lw	%r26 %r1 28
	lw	%r26 %r9 24
	lw	%r26 %r7 20
	lw	%r26 %r8 16
	lw	%r26 %r2 12
	lw	%r26 %r10 8
	lw	%r26 %r11 4
	lw	%r26 %r6 0
	slli	%r10 %r3 2
	add	%r7 %r3 %r31
	lw	%r31 %r3 0
	sw	%r26 %r5 28
	sw	%r26 %r1 24
	sw	%r26 %r9 20
	sw	%r26 %r8 16
	sw	%r26 %r2 12
	sw	%r26 %r10 8
	sw	%r26 %r11 4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r8 %r1
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	vecadd.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r3
	lw	%r26 %r5 28
	lw	%r26 %r1 24
	lw	%r26 %r9 20
	lw	%r26 %r8 16
	lw	%r26 %r2 12
	lw	%r26 %r10 8
	lw	%r26 %r11 4
	lw	%r26 %r6 0
	slli	%r10 %r3 2
	add	%r9 %r3 %r31
	lw	%r31 %r3 0
	sw	%r26 %r5 24
	sw	%r26 %r1 20
	sw	%r26 %r8 16
	sw	%r26 %r2 12
	sw	%r26 %r10 8
	sw	%r26 %r11 4
	sw	%r26 %r6 0
	mov	%r3 %r2
	mov	%r8 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecadd.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r3
	lw	%r26 %r5 24
	lw	%r26 %r1 20
	lw	%r26 %r8 16
	lw	%r26 %r2 12
	lw	%r26 %r10 8
	lw	%r26 %r11 4
	lw	%r26 %r6 0
	slli	%r10 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r1 0
	sw	%r26 %r5 20
	sw	%r26 %r8 16
	sw	%r26 %r2 12
	sw	%r26 %r10 8
	sw	%r26 %r11 4
	sw	%r26 %r6 0
	mov	%r1 %r2
	mov	%r8 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	vecadd.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r5 20
	lw	%r26 %r8 16
	lw	%r26 %r2 12
	lw	%r26 %r10 8
	lw	%r26 %r11 4
	lw	%r26 %r6 0
	slli	%r6 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r3 16
	slli	%r10 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	mov	%r8 %r3
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	j	vecaccumv.0
neighbors_are_available.0 :
	mov	%r5 %r6
	mov	%r3 %r7
	mov	%r2 %r3
	mov	%r1 %r5
branching_b.443 :
	slli	%r5 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 8
	slli	%r6 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r2 0
	slli	%r5 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r1 0
	beq	%r1 %r2 branching_b.444
	addi	%r0 %r1 0
	j	return_point.48
branching_b.444 :
	slli	%r5 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r3 8
	slli	%r6 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	beq	%r1 %r2 branching_b.445
	addi	%r0 %r1 0
	j	return_point.48
branching_b.445 :
	addi	%r0 %r1 1
	sub	%r5 %r1 %r1
	slli	%r1 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r3 8
	slli	%r6 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	beq	%r1 %r2 branching_b.446
	addi	%r0 %r1 0
	j	return_point.48
branching_b.446 :
	addi	%r5 %r1 1
	slli	%r1 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r3 8
	slli	%r6 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	beq	%r1 %r2 tail_b.725
	addi	%r0 %r1 0
	j	return_point.48
tail_b.725 :
	addi	%r0 %r1 1
return_point.48 :
	retl
write_ppm_header.0 :
tail_b.730 :
	lw	%r29 %r3 4
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r3 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r3 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	print_int.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	addi	%r0 %r1 32
	out	%r1
	lw	%r3 %r1 4
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 255
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r1 10
	out	%r1
return_point.49 :
	mov	%r2 %r1
	retl
pretrace_line.0 :
	mov	%r29 %r6
	mov	%r3 %r12
	mov	%r2 %r4
	mov	%r1 %r13
preloop_b.49 :
	lw	%r6 %r8 60
	lw	%r6 %r29 56
	lw	%r6 %r15 52
	lw	%r6 %r3 48
	lw	%r6 %r16 44
	lw	%r6 %r2 40
	lw	%r6 %r18 36
	lw	%r6 %r14 32
	lw	%r6 %r10 28
	lw	%r6 %r17 24
	lw	%r6 %r5 20
	lw	%r6 %r19 16
	lw	%r6 %r1 12
	lw	%r6 %r11 8
	lw	%r6 %r7 4
	lw.s	%r10 %f0 0
	lw	%r1 %r6 4
	sub	%r4 %r6 %r4
	mtc1	%r4 %f1
	mul.s	%f1 %f0 %f0
	lw.s	%r18 %f1 0
	mul.s	%f1 %f0 %f2
	lw.s	%r2 %f1 0
	add.s	%f1 %f2 %f4
	lw.s	%r18 %f1 4
	mul.s	%f1 %f0 %f1
	lw.s	%r2 %f2 4
	add.s	%f2 %f1 %f1
	lw.s	%r18 %f2 8
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f0 8
	add.s	%f0 %f2 %f3
	lw	%r19 %r2 0
	addi	%r0 %r4 1
	sub	%r2 %r4 %r18
	sw	%r26 %r18 0
	sw	%r26 %r12 4
pretrace_pixels.1 :
	addi	%r0 %r2 0
	ble	%r2 %r18 preloop_b.50
	j	postloop_b.51
preloop_b.50 :
	lw.s	%r10 %f2 0
	lw	%r1 %r2 0
	sub	%r18 %r2 %r2
	mtc1	%r2 %f0
	mul.s	%f0 %f2 %f2
	lw.s	%r14 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r5 %f0 0
	lw.s	%r14 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	sw.s	%r5 %f0 4
	lw.s	%r14 %f0 8
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	sw.s	%r5 %f0 8
	addi	%r0 %r2 0
	sw	%r26 %r9 80
	sw.s	%r26 %f3 76
	sw.s	%r26 %f1 72
	sw.s	%r26 %f4 68
	sw	%r26 %r12 64
	sw	%r26 %r18 60
	sw	%r26 %r13 56
	sw	%r26 %r7 52
	sw	%r26 %r11 48
	sw	%r26 %r1 44
	sw	%r26 %r5 40
	sw	%r26 %r17 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r16 24
	sw	%r26 %r3 20
	sw	%r26 %r15 16
	sw	%r26 %r29 12
	sw	%r26 %r8 8
	mov	%r5 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	vecunit_sgn.0
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r2
	lw	%r26 %r9 80
	lw.s	%r26 %f3 76
	lw.s	%r26 %f1 72
	lw.s	%r26 %f4 68
	lw	%r26 %r12 64
	lw	%r26 %r18 60
	lw	%r26 %r13 56
	lw	%r26 %r7 52
	lw	%r26 %r11 48
	lw	%r26 %r1 44
	lw	%r26 %r5 40
	lw	%r26 %r17 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r16 24
	lw	%r26 %r3 20
	lw	%r26 %r15 16
	lw	%r26 %r29 12
	lw	%r26 %r8 8
	ilw.s	%r0 %f0 l.27
	sw.s	%r17 %f0 0
	sw.s	%r17 %f0 4
	sw.s	%r17 %f0 8
	lw.s	%r8 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r3 %f0 8
	addi	%r0 %r2 0
	ilw.s	%r0 %f2 l.20
	slli	%r18 %r4 2
	add	%r13 %r4 %r31
	lw	%r31 %r4 0
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r9 80
	sw.s	%r26 %f3 76
	sw.s	%r26 %f1 72
	sw.s	%r26 %f4 68
	sw	%r26 %r12 64
	sw	%r26 %r18 60
	sw	%r26 %r13 56
	sw	%r26 %r7 52
	sw	%r26 %r11 48
	sw	%r26 %r1 44
	sw	%r26 %r5 40
	sw	%r26 %r17 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r16 24
	sw	%r26 %r3 20
	sw	%r26 %r15 16
	sw	%r26 %r29 12
	sw	%r26 %r8 8
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	mov.s	%f0 %f1
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r2
	lw	%r26 %r9 80
	lw.s	%r26 %f3 76
	lw.s	%r26 %f1 72
	lw.s	%r26 %f4 68
	lw	%r26 %r12 64
	lw	%r26 %r18 60
	lw	%r26 %r13 56
	lw	%r26 %r7 52
	lw	%r26 %r11 48
	lw	%r26 %r1 44
	lw	%r26 %r5 40
	lw	%r26 %r17 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r16 24
	lw	%r26 %r3 20
	lw	%r26 %r15 16
	lw	%r26 %r29 12
	lw	%r26 %r8 8
	slli	%r18 %r2 2
	add	%r13 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	lw.s	%r17 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r17 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r17 %f0 8
	sw.s	%r2 %f0 8
	slli	%r18 %r2 2
	add	%r13 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 24
	sw	%r2 %r12 0
	slli	%r18 %r2 2
	add	%r13 %r2 %r31
	lw	%r31 %r6 0
	addi	%r0 %r20 0
	sw	%r26 %r20 8
pretrace_diffuse_rays.2 :
	addi	%r0 %r2 4
	ble	%r20 %r2 branching_b.449
	j	postloop_b.50
branching_b.449 :
	lw	%r6 %r4 8
	slli	%r20 %r2 2
	add	%r4 %r2 %r31
	lw	%r31 %r4 0
	addi	%r0 %r2 0
	ble	%r2 %r4 branching_b.450
	j	postloop_b.50
branching_b.450 :
	lw	%r6 %r2 12
	slli	%r20 %r4 2
	add	%r2 %r4 %r31
	lw	%r31 %r4 0
	addi	%r0 %r2 0
	beq	%r4 %r2 tail_b.731
	lw	%r6 %r2 24
	lw	%r2 %r2 0
	ilw.s	%r0 %f0 l.27
	sw.s	%r7 %f0 0
	sw.s	%r7 %f0 4
	sw.s	%r7 %f0 8
	lw	%r6 %r4 28
	lw	%r6 %r22 4
	slli	%r2 %r2 2
	add	%r11 %r2 %r31
	lw	%r31 %r19 0
	slli	%r20 %r2 2
	add	%r4 %r2 %r31
	lw	%r31 %r21 0
	slli	%r20 %r2 2
	add	%r22 %r2 %r31
	lw	%r31 %r22 0
	sw	%r26 %r22 104
	sw	%r26 %r21 100
	sw	%r26 %r19 96
	sw	%r26 %r9 92
	sw	%r26 %r20 88
	sw	%r26 %r6 84
	sw.s	%r26 %f3 80
	sw.s	%r26 %f1 76
	sw.s	%r26 %f4 72
	sw	%r26 %r12 68
	sw	%r26 %r18 64
	sw	%r26 %r13 60
	sw	%r26 %r7 56
	sw	%r26 %r11 52
	sw	%r26 %r1 48
	sw	%r26 %r5 44
	sw	%r26 %r17 40
	sw	%r26 %r10 36
	sw	%r26 %r14 32
	sw	%r26 %r16 28
	sw	%r26 %r3 24
	sw	%r26 %r15 20
	sw	%r26 %r29 16
	sw	%r26 %r8 12
	mov	%r16 %r29
	mov	%r22 %r1
	sw	%r26 %r28 108
	lw	%r29 %r30 0
	addi	%r26 %r26 112
	jalr	%r30
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r2
	lw	%r26 %r22 104
	lw	%r26 %r21 100
	lw	%r26 %r19 96
	lw	%r26 %r9 92
	lw	%r26 %r20 88
	lw	%r26 %r6 84
	lw.s	%r26 %f3 80
	lw.s	%r26 %f1 76
	lw.s	%r26 %f4 72
	lw	%r26 %r12 68
	lw	%r26 %r18 64
	lw	%r26 %r13 60
	lw	%r26 %r7 56
	lw	%r26 %r11 52
	lw	%r26 %r1 48
	lw	%r26 %r5 44
	lw	%r26 %r17 40
	lw	%r26 %r10 36
	lw	%r26 %r14 32
	lw	%r26 %r16 28
	lw	%r26 %r3 24
	lw	%r26 %r15 20
	lw	%r26 %r29 16
	lw	%r26 %r8 12
	addi	%r0 %r4 118
	sw	%r26 %r4 12
iter_trace_diffuse_rays.8 :
	addi	%r0 %r2 0
	ble	%r2 %r4 branching_b.452
	j	postloop_b.49
branching_b.452 :
	slli	%r4 %r2 2
	add	%r19 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	sw	%r26 %r4 112
	sw	%r26 %r22 108
	sw	%r26 %r21 104
	sw	%r26 %r19 100
	sw	%r26 %r9 96
	sw	%r26 %r20 92
	sw	%r26 %r6 88
	sw.s	%r26 %f3 84
	sw.s	%r26 %f1 80
	sw.s	%r26 %f4 76
	sw	%r26 %r12 72
	sw	%r26 %r18 68
	sw	%r26 %r13 64
	sw	%r26 %r7 60
	sw	%r26 %r11 56
	sw	%r26 %r1 52
	sw	%r26 %r5 48
	sw	%r26 %r17 44
	sw	%r26 %r10 40
	sw	%r26 %r14 36
	sw	%r26 %r16 32
	sw	%r26 %r3 28
	sw	%r26 %r15 24
	sw	%r26 %r29 20
	sw	%r26 %r8 16
	mov	%r2 %r1
	mov	%r21 %r2
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	veciprod.0
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r4 112
	lw	%r26 %r22 108
	lw	%r26 %r21 104
	lw	%r26 %r19 100
	lw	%r26 %r9 96
	lw	%r26 %r20 92
	lw	%r26 %r6 88
	lw.s	%r26 %f3 84
	lw.s	%r26 %f1 80
	lw.s	%r26 %f4 76
	lw	%r26 %r12 72
	lw	%r26 %r18 68
	lw	%r26 %r13 64
	lw	%r26 %r7 60
	lw	%r26 %r11 56
	lw	%r26 %r1 52
	lw	%r26 %r5 48
	lw	%r26 %r17 44
	lw	%r26 %r10 40
	lw	%r26 %r14 36
	lw	%r26 %r16 32
	lw	%r26 %r3 28
	lw	%r26 %r15 24
	lw	%r26 %r29 20
	lw	%r26 %r8 16
	ilw.s	%r0 %f2 l.27
	fbge	%f0 %f2 tail_b.733
	addi	%r0 %r2 1
	j	branching_b.453
tail_b.733 :
	addi	%r0 %r2 0
	j	branching_b.453
tail_b.731 :
tail_b.739 :
	addi	%r20 %r20 1
	j	pretrace_diffuse_rays.2
branching_b.453 :
	addi	%r0 %r23 0
	beq	%r2 %r23 tail_b.734
	addi	%r4 %r2 1
	slli	%r2 %r2 2
	add	%r19 %r2 %r31
	lw	%r31 %r2 0
	ilw.s	%r0 %f2 l.61
	div.s	%f2 %f0 %f0
	sw	%r26 %r4 112
	sw	%r26 %r22 108
	sw	%r26 %r21 104
	sw	%r26 %r19 100
	sw	%r26 %r9 96
	sw	%r26 %r20 92
	sw	%r26 %r6 88
	sw.s	%r26 %f3 84
	sw.s	%r26 %f1 80
	sw.s	%r26 %f4 76
	sw	%r26 %r12 72
	sw	%r26 %r18 68
	sw	%r26 %r13 64
	sw	%r26 %r7 60
	sw	%r26 %r11 56
	sw	%r26 %r1 52
	sw	%r26 %r5 48
	sw	%r26 %r17 44
	sw	%r26 %r10 40
	sw	%r26 %r14 36
	sw	%r26 %r16 32
	sw	%r26 %r3 28
	sw	%r26 %r15 24
	sw	%r26 %r29 20
	sw	%r26 %r8 16
	mov	%r15 %r29
	mov	%r2 %r1
	sw	%r26 %r28 116
	lw	%r29 %r30 0
	addi	%r26 %r26 120
	jalr	%r30
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r4 112
	lw	%r26 %r22 108
	lw	%r26 %r21 104
	lw	%r26 %r19 100
	lw	%r26 %r9 96
	lw	%r26 %r20 92
	lw	%r26 %r6 88
	lw.s	%r26 %f3 84
	lw.s	%r26 %f1 80
	lw.s	%r26 %f4 76
	lw	%r26 %r12 72
	lw	%r26 %r18 68
	lw	%r26 %r13 64
	lw	%r26 %r7 60
	lw	%r26 %r11 56
	lw	%r26 %r1 52
	lw	%r26 %r5 48
	lw	%r26 %r17 44
	lw	%r26 %r10 40
	lw	%r26 %r14 36
	lw	%r26 %r16 32
	lw	%r26 %r3 28
	lw	%r26 %r15 24
	lw	%r26 %r29 20
	lw	%r26 %r8 16
	j	tail_b.736
tail_b.734 :
	slli	%r4 %r2 2
	add	%r19 %r2 %r31
	lw	%r31 %r2 0
	ilw.s	%r0 %f2 l.62
	div.s	%f2 %f0 %f0
	sw	%r26 %r4 112
	sw	%r26 %r22 108
	sw	%r26 %r21 104
	sw	%r26 %r19 100
	sw	%r26 %r9 96
	sw	%r26 %r20 92
	sw	%r26 %r6 88
	sw.s	%r26 %f3 84
	sw.s	%r26 %f1 80
	sw.s	%r26 %f4 76
	sw	%r26 %r12 72
	sw	%r26 %r18 68
	sw	%r26 %r13 64
	sw	%r26 %r7 60
	sw	%r26 %r11 56
	sw	%r26 %r1 52
	sw	%r26 %r5 48
	sw	%r26 %r17 44
	sw	%r26 %r10 40
	sw	%r26 %r14 36
	sw	%r26 %r16 32
	sw	%r26 %r3 28
	sw	%r26 %r15 24
	sw	%r26 %r29 20
	sw	%r26 %r8 16
	mov	%r15 %r29
	mov	%r2 %r1
	sw	%r26 %r28 116
	lw	%r29 %r30 0
	addi	%r26 %r26 120
	jalr	%r30
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r4 112
	lw	%r26 %r22 108
	lw	%r26 %r21 104
	lw	%r26 %r19 100
	lw	%r26 %r9 96
	lw	%r26 %r20 92
	lw	%r26 %r6 88
	lw.s	%r26 %f3 84
	lw.s	%r26 %f1 80
	lw.s	%r26 %f4 76
	lw	%r26 %r12 72
	lw	%r26 %r18 68
	lw	%r26 %r13 64
	lw	%r26 %r7 60
	lw	%r26 %r11 56
	lw	%r26 %r1 52
	lw	%r26 %r5 48
	lw	%r26 %r17 44
	lw	%r26 %r10 40
	lw	%r26 %r14 36
	lw	%r26 %r16 32
	lw	%r26 %r3 28
	lw	%r26 %r15 24
	lw	%r26 %r29 20
	lw	%r26 %r8 16
tail_b.736 :
	addi	%r0 %r2 2
	sub	%r4 %r2 %r4
	j	iter_trace_diffuse_rays.8
postloop_b.49 :
	lw	%r26 %r4 12
tail_b.738 :
	lw	%r6 %r4 20
	slli	%r20 %r2 2
	add	%r4 %r2 %r31
	lw	%r31 %r2 0
	lw.s	%r7 %f0 0
	sw.s	%r2 %f0 0
	lw.s	%r7 %f0 4
	sw.s	%r2 %f0 4
	lw.s	%r7 %f0 8
	sw.s	%r2 %f0 8
	j	tail_b.739
postloop_b.50 :
	lw	%r26 %r20 8
branching_b.454 :
	addi	%r0 %r2 1
	sub	%r18 %r2 %r18
	addi	%r12 %r4 1
	addi	%r0 %r2 5
	ble	%r2 %r4 tail_b.742
	mov	%r4 %r12
	j	tail_b.744
tail_b.742 :
	addi	%r0 %r2 5
	sub	%r4 %r2 %r12
tail_b.744 :
	j	pretrace_pixels.1
postloop_b.51 :
	lw	%r26 %r18 0
	lw	%r26 %r12 4
return_point.50 :
	mov	%r9 %r1
	retl
create_float5x3array.0 :
tail_b.746 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	min_caml_create_float_array
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 0
	addi	%r26 %r26 4
	jal	min_caml_create_array
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	mov	%r1 %r2
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 16
	mov	%r2 %r1
return_point.51 :
	retl
create_pixel.0 :
tail_b.747 :
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r27 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r9
	lw	%r26 %r27 0
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	create_float5x3array.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r5
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r7
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov	%r1 %r6
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	sw	%r26 %r6 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r8
	lw	%r26 %r6 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	create_float5x3array.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	addi	%r0 %r3 1
	addi	%r0 %r2 0
	sw	%r26 %r1 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r3
	lw	%r26 %r1 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	sw	%r26 %r3 28
	sw	%r26 %r1 24
	sw	%r26 %r8 20
	sw	%r26 %r6 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r27 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	create_float5x3array.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r2
	lw	%r26 %r3 28
	lw	%r26 %r1 24
	lw	%r26 %r8 20
	lw	%r26 %r6 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r27 0
	mov	%r27 %r4
	addi	%r27 %r27 32
	sw	%r4 %r2 28
	sw	%r4 %r3 24
	sw	%r4 %r1 20
	sw	%r4 %r8 16
	sw	%r4 %r6 12
	sw	%r4 %r7 8
	sw	%r4 %r5 4
	sw	%r4 %r9 0
	mov	%r4 %r1
return_point.52 :
	retl
calc_dirvec_rows.0 :
	mov	%r3 %r6
	mov	%r1 %r9
branching_b.455 :
	lw	%r29 %r8 12
	lw	%r29 %r5 8
	lw	%r29 %r3 4
	addi	%r0 %r1 0
	ble	%r1 %r9 preloop_b.52
	j	return_point.53
preloop_b.52 :
	mtc1	%r9 %f0
	ilw.s	%r0 %f1 l.33
	mul.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.63
	sub.s	%f0 %f1 %f4
	addi	%r0 %r10 4
	sw	%r26 %r10 0
	sw	%r26 %r2 4
calc_dirvecs.1 :
	addi	%r0 %r1 0
	ble	%r1 %r10 preloop_b.53
	j	postloop_b.54
preloop_b.53 :
	mtc1	%r10 %f0
	ilw.s	%r0 %f1 l.33
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.63
	sub.s	%f1 %f0 %f3
	addi	%r0 %r4 0
	ilw.s	%r0 %f1 l.27
	ilw.s	%r0 %f7 l.27
	sw	%r26 %r4 8
	sw.s	%r26 %f1 12
	sw.s	%r26 %f7 16
calc_dirvec.4 :
	addi	%r0 %r1 5
	ble	%r1 %r4 tail_b.748
	mul.s	%f7 %f7 %f0
	ilw.s	%r0 %f1 l.60
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.20
	div.s	%f1 %f0 %f0
	sw.s	%r26 %f1 68
	sw.s	%r26 %f3 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	atan.0
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	lw.s	%r26 %f1 68
	lw.s	%r26 %f3 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	mul.s	%f3 %f0 %f2
	sw.s	%r26 %f2 72
	sw.s	%r26 %f1 68
	sw.s	%r26 %f3 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	mov	%r8 %r29
	mov.s	%f2 %f0
	sw	%r26 %r28 76
	lw	%r29 %r30 0
	addi	%r26 %r26 80
	jalr	%r30
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f2 72
	lw.s	%r26 %f1 68
	lw.s	%r26 %f3 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	sw.s	%r26 %f0 72
	sw.s	%r26 %f1 68
	sw.s	%r26 %f3 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	mov	%r3 %r29
	mov.s	%f2 %f0
	sw	%r26 %r28 76
	lw	%r29 %r30 0
	addi	%r26 %r26 80
	jalr	%r30
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f2
	lw.s	%r26 %f0 72
	lw.s	%r26 %f1 68
	lw.s	%r26 %f3 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	div.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f1
	addi	%r4 %r4 1
	mul.s	%f1 %f1 %f0
	ilw.s	%r0 %f2 l.60
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.20
	div.s	%f2 %f0 %f0
	sw.s	%r26 %f2 72
	sw.s	%r26 %f3 68
	sw.s	%r26 %f1 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	atan.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f2 72
	lw.s	%r26 %f3 68
	lw.s	%r26 %f1 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	mul.s	%f4 %f0 %f5
	sw.s	%r26 %f5 76
	sw.s	%r26 %f2 72
	sw.s	%r26 %f3 68
	sw.s	%r26 %f1 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	mov	%r8 %r29
	mov.s	%f5 %f0
	sw	%r26 %r28 80
	lw	%r29 %r30 0
	addi	%r26 %r26 84
	jalr	%r30
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw.s	%r26 %f5 76
	lw.s	%r26 %f2 72
	lw.s	%r26 %f3 68
	lw.s	%r26 %f1 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	sw.s	%r26 %f0 76
	sw.s	%r26 %f2 72
	sw.s	%r26 %f3 68
	sw.s	%r26 %f1 64
	sw	%r26 %r4 60
	sw	%r26 %r7 56
	sw	%r26 %r6 52
	sw	%r26 %r2 48
	sw.s	%r26 %f4 44
	sw	%r26 %r10 40
	sw	%r26 %r3 36
	sw	%r26 %r5 32
	sw	%r26 %r8 28
	sw	%r26 %r9 24
	sw	%r26 %r29 20
	mov	%r3 %r29
	mov.s	%f5 %f0
	sw	%r26 %r28 80
	lw	%r29 %r30 0
	addi	%r26 %r26 84
	jalr	%r30
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	mov.s	%f0 %f5
	lw.s	%r26 %f0 76
	lw.s	%r26 %f2 72
	lw.s	%r26 %f3 68
	lw.s	%r26 %f1 64
	lw	%r26 %r4 60
	lw	%r26 %r7 56
	lw	%r26 %r6 52
	lw	%r26 %r2 48
	lw.s	%r26 %f4 44
	lw	%r26 %r10 40
	lw	%r26 %r3 36
	lw	%r26 %r5 32
	lw	%r26 %r8 28
	lw	%r26 %r9 24
	lw	%r26 %r29 20
	div.s	%f5 %f0 %f0
	mul.s	%f2 %f0 %f7
	j	calc_dirvec.4
tail_b.748 :
	mul.s	%f1 %f1 %f2
	mul.s	%f7 %f7 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.20
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f2
	div.s	%f2 %f1 %f8
	div.s	%f2 %f7 %f5
	ilw.s	%r0 %f0 l.20
	div.s	%f2 %f0 %f2
	slli	%r2 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r11 0
	slli	%r6 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw.s	%r1 %f8 0
	sw.s	%r1 %f5 4
	sw.s	%r1 %f2 8
	addi	%r6 %r1 40
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f5 %f0
	sw.s	%r1 %f8 0
	sw.s	%r1 %f2 4
	sw.s	%r1 %f0 8
	addi	%r6 %r1 80
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f8 %f0
	neg.s	%f5 %f3
	sw.s	%r1 %f2 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f3 8
	addi	%r6 %r1 1
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f8 %f0
	neg.s	%f5 %f3
	neg.s	%f2 %f6
	sw.s	%r1 %f0 0
	sw.s	%r1 %f3 4
	sw.s	%r1 %f6 8
	addi	%r6 %r1 41
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f8 %f3
	neg.s	%f2 %f0
	sw.s	%r1 %f3 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f5 8
	addi	%r6 %r1 81
	slli	%r1 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f0
	sw.s	%r1 %f0 0
	sw.s	%r1 %f8 4
	sw.s	%r1 %f5 8
postloop_b.52 :
	lw	%r26 %r4 8
	lw.s	%r26 %f1 12
	lw.s	%r26 %f7 16
preloop_b.54 :
	mtc1	%r10 %f1
	ilw.s	%r0 %f0 l.33
	mul.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.60
	add.s	%f1 %f0 %f3
	addi	%r0 %r11 0
	ilw.s	%r0 %f8 l.27
	ilw.s	%r0 %f6 l.27
	addi	%r6 %r4 2
	sw	%r26 %r11 20
	sw.s	%r26 %f8 24
	sw.s	%r26 %f6 28
calc_dirvec.3 :
	addi	%r0 %r1 5
	ble	%r1 %r11 tail_b.750
	mul.s	%f6 %f6 %f1
	ilw.s	%r0 %f0 l.60
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f2
	ilw.s	%r0 %f0 l.20
	div.s	%f2 %f0 %f0
	sw.s	%r26 %f2 84
	sw	%r26 %r4 80
	sw.s	%r26 %f3 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	atan.0
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw.s	%r26 %f2 84
	lw	%r26 %r4 80
	lw.s	%r26 %f3 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	mul.s	%f3 %f0 %f0
	sw.s	%r26 %f0 88
	sw.s	%r26 %f2 84
	sw	%r26 %r4 80
	sw.s	%r26 %f3 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	mov	%r8 %r29
	sw	%r26 %r28 92
	lw	%r29 %r30 0
	addi	%r26 %r26 96
	jalr	%r30
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f1
	lw.s	%r26 %f0 88
	lw.s	%r26 %f2 84
	lw	%r26 %r4 80
	lw.s	%r26 %f3 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	sw.s	%r26 %f1 88
	sw.s	%r26 %f2 84
	sw	%r26 %r4 80
	sw.s	%r26 %f3 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	mov	%r3 %r29
	sw	%r26 %r28 92
	lw	%r29 %r30 0
	addi	%r26 %r26 96
	jalr	%r30
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 88
	lw.s	%r26 %f2 84
	lw	%r26 %r4 80
	lw.s	%r26 %f3 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	div.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f8
	addi	%r11 %r11 1
	mul.s	%f8 %f8 %f0
	ilw.s	%r0 %f1 l.60
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f1
	ilw.s	%r0 %f0 l.20
	div.s	%f1 %f0 %f0
	sw.s	%r26 %f1 88
	sw	%r26 %r4 84
	sw.s	%r26 %f3 80
	sw.s	%r26 %f8 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	atan.0
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 88
	lw	%r26 %r4 84
	lw.s	%r26 %f3 80
	lw.s	%r26 %f8 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	mul.s	%f4 %f0 %f0
	sw.s	%r26 %f0 92
	sw.s	%r26 %f1 88
	sw	%r26 %r4 84
	sw.s	%r26 %f3 80
	sw.s	%r26 %f8 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	mov	%r8 %r29
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov.s	%f0 %f2
	lw.s	%r26 %f0 92
	lw.s	%r26 %f1 88
	lw	%r26 %r4 84
	lw.s	%r26 %f3 80
	lw.s	%r26 %f8 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	sw.s	%r26 %f2 92
	sw.s	%r26 %f1 88
	sw	%r26 %r4 84
	sw.s	%r26 %f3 80
	sw.s	%r26 %f8 76
	sw	%r26 %r11 72
	sw	%r26 %r7 68
	sw	%r26 %r6 64
	sw	%r26 %r2 60
	sw.s	%r26 %f4 56
	sw	%r26 %r10 52
	sw	%r26 %r3 48
	sw	%r26 %r5 44
	sw	%r26 %r8 40
	sw	%r26 %r9 36
	sw	%r26 %r29 32
	mov	%r3 %r29
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw.s	%r26 %f2 92
	lw.s	%r26 %f1 88
	lw	%r26 %r4 84
	lw.s	%r26 %f3 80
	lw.s	%r26 %f8 76
	lw	%r26 %r11 72
	lw	%r26 %r7 68
	lw	%r26 %r6 64
	lw	%r26 %r2 60
	lw.s	%r26 %f4 56
	lw	%r26 %r10 52
	lw	%r26 %r3 48
	lw	%r26 %r5 44
	lw	%r26 %r8 40
	lw	%r26 %r9 36
	lw	%r26 %r29 32
	div.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f6
	j	calc_dirvec.3
tail_b.750 :
	mul.s	%f8 %f8 %f0
	mul.s	%f6 %f6 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.20
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	div.s	%f1 %f8 %f2
	div.s	%f1 %f6 %f3
	ilw.s	%r0 %f0 l.20
	div.s	%f1 %f0 %f5
	slli	%r2 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r12 0
	slli	%r4 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw.s	%r1 %f2 0
	sw.s	%r1 %f3 4
	sw.s	%r1 %f5 8
	addi	%r4 %r1 40
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f3 %f0
	sw.s	%r1 %f2 0
	sw.s	%r1 %f5 4
	sw.s	%r1 %f0 8
	addi	%r4 %r1 80
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f1
	neg.s	%f3 %f0
	sw.s	%r1 %f5 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f0 8
	addi	%r4 %r1 1
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f1
	neg.s	%f3 %f7
	neg.s	%f5 %f0
	sw.s	%r1 %f1 0
	sw.s	%r1 %f7 4
	sw.s	%r1 %f0 8
	addi	%r4 %r1 41
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f2 %f0
	neg.s	%f5 %f1
	sw.s	%r1 %f0 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f3 8
	addi	%r4 %r1 81
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f5 %f0
	sw.s	%r1 %f0 0
	sw.s	%r1 %f2 4
	sw.s	%r1 %f3 8
postloop_b.53 :
	lw	%r26 %r11 20
	lw.s	%r26 %f8 24
	lw.s	%r26 %f6 28
branching_b.459 :
	addi	%r0 %r1 1
	sub	%r10 %r1 %r10
	addi	%r2 %r1 1
	addi	%r0 %r2 5
	ble	%r2 %r1 tail_b.752
	mov	%r1 %r2
	j	tail_b.754
tail_b.752 :
	addi	%r0 %r2 5
	sub	%r1 %r2 %r2
tail_b.754 :
	j	calc_dirvecs.1
postloop_b.54 :
	lw	%r26 %r10 0
	lw	%r26 %r2 4
branching_b.460 :
	addi	%r0 %r1 1
	sub	%r9 %r1 %r3
	addi	%r2 %r2 2
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.756
	j	tail_b.758
tail_b.756 :
	addi	%r0 %r1 5
	sub	%r2 %r1 %r2
tail_b.758 :
	addi	%r6 %r1 4
	mov	%r3 %r31
	mov	%r1 %r3
	mov	%r31 %r1
	lw	%r29 %r30 0
	jr	%r30
return_point.53 :
	mov	%r7 %r1
	retl
setup_rect_reflection.0 :
preloop_b.55 :
	lw	%r29 %r6 20
	lw	%r29 %r5 16
	lw	%r29 %r7 12
	lw	%r29 %r11 8
	lw	%r29 %r12 4
	addi	%r0 %r3 4
	mul	%r1 %r3 %r10
	lw	%r7 %r9 0
	ilw.s	%r0 %f1 l.20
	lw	%r2 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw.s	%r12 %f0 0
	neg.s	%f0 %f2
	lw.s	%r12 %f0 4
	neg.s	%f0 %f5
	lw.s	%r12 %f0 8
	neg.s	%f0 %f3
	addi	%r10 %r13 1
	lw.s	%r12 %f4 0
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r8 56
	sw.s	%r26 %f4 52
	sw	%r26 %r13 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f5 40
	sw.s	%r26 %f2 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r10 24
	sw	%r26 %r12 20
	sw	%r26 %r11 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r6 4
	sw	%r26 %r27 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r8 56
	lw.s	%r26 %f4 52
	lw	%r26 %r13 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f5 40
	lw.s	%r26 %f2 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r10 24
	lw	%r26 %r12 20
	lw	%r26 %r11 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r6 4
	lw	%r26 %r27 0
	lw	%r11 %r1 0
	sw	%r26 %r8 60
	sw	%r26 %r2 56
	sw.s	%r26 %f4 52
	sw	%r26 %r13 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f5 40
	sw.s	%r26 %f2 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r10 24
	sw	%r26 %r12 20
	sw	%r26 %r11 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r6 4
	sw	%r26 %r27 0
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	lw	%r26 %r8 60
	lw	%r26 %r2 56
	lw.s	%r26 %f4 52
	lw	%r26 %r13 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f5 40
	lw.s	%r26 %f2 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r10 24
	lw	%r26 %r12 20
	lw	%r26 %r11 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r6 4
	lw	%r26 %r27 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	sw	%r3 %r2 0
	mov	%r3 %r1
	sw.s	%r2 %f4 0
	sw.s	%r2 %f5 4
	sw.s	%r2 %f3 8
	lw	%r11 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r16
	sw	%r26 %r16 0
iter_setup_dirvec_constants.5 :
	addi	%r0 %r2 0
	ble	%r2 %r16 branching_b.462
	j	postloop_b.55
branching_b.462 :
	slli	%r16 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r4 0
	lw	%r1 %r3 4
	lw	%r1 %r14 0
	lw	%r4 %r15 4
	addi	%r0 %r2 1
	beq	%r15 %r2 tail_b.760
	addi	%r0 %r2 2
	beq	%r15 %r2 tail_b.761
	sw	%r26 %r8 68
	sw	%r26 %r3 64
	sw	%r26 %r16 60
	sw	%r26 %r1 56
	sw	%r26 %r13 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 36
	sw	%r26 %r9 32
	sw	%r26 %r10 28
	sw	%r26 %r12 24
	sw	%r26 %r11 20
	sw	%r26 %r7 16
	sw	%r26 %r5 12
	sw	%r26 %r6 8
	sw	%r26 %r27 4
	mov	%r4 %r2
	mov	%r14 %r1
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	setup_second_table.0
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	mov	%r1 %r4
	lw	%r26 %r8 68
	lw	%r26 %r3 64
	lw	%r26 %r16 60
	lw	%r26 %r1 56
	lw	%r26 %r13 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f2 40
	lw.s	%r26 %f1 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r12 24
	lw	%r26 %r11 20
	lw	%r26 %r7 16
	lw	%r26 %r5 12
	lw	%r26 %r6 8
	lw	%r26 %r27 4
	slli	%r16 %r2 2
	add	%r3 %r2 %r31
	sw	%r31 %r4 0
	j	tail_b.763
tail_b.761 :
	sw	%r26 %r8 68
	sw	%r26 %r3 64
	sw	%r26 %r16 60
	sw	%r26 %r1 56
	sw	%r26 %r13 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 36
	sw	%r26 %r9 32
	sw	%r26 %r10 28
	sw	%r26 %r12 24
	sw	%r26 %r11 20
	sw	%r26 %r7 16
	sw	%r26 %r5 12
	sw	%r26 %r6 8
	sw	%r26 %r27 4
	mov	%r4 %r2
	mov	%r14 %r1
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	setup_surface_table.0
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	mov	%r1 %r2
	lw	%r26 %r8 68
	lw	%r26 %r3 64
	lw	%r26 %r16 60
	lw	%r26 %r1 56
	lw	%r26 %r13 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f2 40
	lw.s	%r26 %f1 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r12 24
	lw	%r26 %r11 20
	lw	%r26 %r7 16
	lw	%r26 %r5 12
	lw	%r26 %r6 8
	lw	%r26 %r27 4
	slli	%r16 %r4 2
	add	%r3 %r4 %r31
	sw	%r31 %r2 0
	j	tail_b.763
tail_b.760 :
	sw	%r26 %r8 68
	sw	%r26 %r3 64
	sw	%r26 %r16 60
	sw	%r26 %r1 56
	sw	%r26 %r13 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 36
	sw	%r26 %r9 32
	sw	%r26 %r10 28
	sw	%r26 %r12 24
	sw	%r26 %r11 20
	sw	%r26 %r7 16
	sw	%r26 %r5 12
	sw	%r26 %r6 8
	sw	%r26 %r27 4
	mov	%r4 %r2
	mov	%r14 %r1
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	setup_rect_table.0
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	mov	%r1 %r2
	lw	%r26 %r8 68
	lw	%r26 %r3 64
	lw	%r26 %r16 60
	lw	%r26 %r1 56
	lw	%r26 %r13 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f2 40
	lw.s	%r26 %f1 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r12 24
	lw	%r26 %r11 20
	lw	%r26 %r7 16
	lw	%r26 %r5 12
	lw	%r26 %r6 8
	lw	%r26 %r27 4
	slli	%r16 %r4 2
	add	%r3 %r4 %r31
	sw	%r31 %r2 0
tail_b.763 :
	addi	%r0 %r2 1
	sub	%r16 %r2 %r16
	j	iter_setup_dirvec_constants.5
postloop_b.55 :
	lw	%r26 %r16 0
preloop_b.56 :
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f1 8
	sw	%r2 %r1 4
	sw	%r2 %r13 0
	slli	%r9 %r1 2
	add	%r6 %r1 %r31
	sw	%r31 %r2 0
	addi	%r9 %r13 1
	addi	%r10 %r15 2
	lw.s	%r12 %f4 4
	addi	%r0 %r1 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r8 64
	sw.s	%r26 %f4 60
	sw	%r26 %r15 56
	sw	%r26 %r13 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 36
	sw	%r26 %r9 32
	sw	%r26 %r10 28
	sw	%r26 %r12 24
	sw	%r26 %r11 20
	sw	%r26 %r7 16
	sw	%r26 %r5 12
	sw	%r26 %r6 8
	sw	%r26 %r27 4
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r3
	lw	%r26 %r8 64
	lw.s	%r26 %f4 60
	lw	%r26 %r15 56
	lw	%r26 %r13 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f2 40
	lw.s	%r26 %f1 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r12 24
	lw	%r26 %r11 20
	lw	%r26 %r7 16
	lw	%r26 %r5 12
	lw	%r26 %r6 8
	lw	%r26 %r27 4
	lw	%r11 %r1 0
	sw	%r26 %r8 68
	sw	%r26 %r3 64
	sw.s	%r26 %f4 60
	sw	%r26 %r15 56
	sw	%r26 %r13 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f5 44
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 36
	sw	%r26 %r9 32
	sw	%r26 %r10 28
	sw	%r26 %r12 24
	sw	%r26 %r11 20
	sw	%r26 %r7 16
	sw	%r26 %r5 12
	sw	%r26 %r6 8
	sw	%r26 %r27 4
	mov	%r3 %r2
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	min_caml_create_array
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	lw	%r26 %r8 68
	lw	%r26 %r3 64
	lw.s	%r26 %f4 60
	lw	%r26 %r15 56
	lw	%r26 %r13 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f5 44
	lw.s	%r26 %f2 40
	lw.s	%r26 %f1 36
	lw	%r26 %r9 32
	lw	%r26 %r10 28
	lw	%r26 %r12 24
	lw	%r26 %r11 20
	lw	%r26 %r7 16
	lw	%r26 %r5 12
	lw	%r26 %r6 8
	lw	%r26 %r27 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	sw	%r2 %r3 0
	mov	%r2 %r4
	sw.s	%r3 %f2 0
	sw.s	%r3 %f4 4
	sw.s	%r3 %f3 8
	lw	%r11 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r3
	sw	%r26 %r3 4
iter_setup_dirvec_constants.4 :
	addi	%r0 %r1 0
	ble	%r1 %r3 branching_b.465
	j	postloop_b.56
branching_b.465 :
	slli	%r3 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r16 0
	lw	%r4 %r14 4
	lw	%r4 %r2 0
	lw	%r16 %r17 4
	addi	%r0 %r1 1
	beq	%r17 %r1 tail_b.765
	addi	%r0 %r1 2
	beq	%r17 %r1 tail_b.766
	sw	%r26 %r8 72
	sw	%r26 %r14 68
	sw	%r26 %r3 64
	sw	%r26 %r4 60
	sw	%r26 %r15 56
	sw	%r26 %r13 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f2 44
	sw.s	%r26 %f1 40
	sw	%r26 %r9 36
	sw	%r26 %r10 32
	sw	%r26 %r12 28
	sw	%r26 %r11 24
	sw	%r26 %r7 20
	sw	%r26 %r5 16
	sw	%r26 %r6 12
	sw	%r26 %r27 8
	mov	%r2 %r1
	mov	%r16 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_second_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r8 72
	lw	%r26 %r14 68
	lw	%r26 %r3 64
	lw	%r26 %r4 60
	lw	%r26 %r15 56
	lw	%r26 %r13 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f2 44
	lw.s	%r26 %f1 40
	lw	%r26 %r9 36
	lw	%r26 %r10 32
	lw	%r26 %r12 28
	lw	%r26 %r11 24
	lw	%r26 %r7 20
	lw	%r26 %r5 16
	lw	%r26 %r6 12
	lw	%r26 %r27 8
	slli	%r3 %r2 2
	add	%r14 %r2 %r31
	sw	%r31 %r1 0
	j	tail_b.768
tail_b.766 :
	sw	%r26 %r8 72
	sw	%r26 %r14 68
	sw	%r26 %r3 64
	sw	%r26 %r4 60
	sw	%r26 %r15 56
	sw	%r26 %r13 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f2 44
	sw.s	%r26 %f1 40
	sw	%r26 %r9 36
	sw	%r26 %r10 32
	sw	%r26 %r12 28
	sw	%r26 %r11 24
	sw	%r26 %r7 20
	sw	%r26 %r5 16
	sw	%r26 %r6 12
	sw	%r26 %r27 8
	mov	%r2 %r1
	mov	%r16 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_surface_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r8 72
	lw	%r26 %r14 68
	lw	%r26 %r3 64
	lw	%r26 %r4 60
	lw	%r26 %r15 56
	lw	%r26 %r13 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f2 44
	lw.s	%r26 %f1 40
	lw	%r26 %r9 36
	lw	%r26 %r10 32
	lw	%r26 %r12 28
	lw	%r26 %r11 24
	lw	%r26 %r7 20
	lw	%r26 %r5 16
	lw	%r26 %r6 12
	lw	%r26 %r27 8
	slli	%r3 %r2 2
	add	%r14 %r2 %r31
	sw	%r31 %r1 0
	j	tail_b.768
tail_b.765 :
	sw	%r26 %r8 72
	sw	%r26 %r14 68
	sw	%r26 %r3 64
	sw	%r26 %r4 60
	sw	%r26 %r15 56
	sw	%r26 %r13 52
	sw.s	%r26 %f5 48
	sw.s	%r26 %f2 44
	sw.s	%r26 %f1 40
	sw	%r26 %r9 36
	sw	%r26 %r10 32
	sw	%r26 %r12 28
	sw	%r26 %r11 24
	sw	%r26 %r7 20
	sw	%r26 %r5 16
	sw	%r26 %r6 12
	sw	%r26 %r27 8
	mov	%r2 %r1
	mov	%r16 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_rect_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r8 72
	lw	%r26 %r14 68
	lw	%r26 %r3 64
	lw	%r26 %r4 60
	lw	%r26 %r15 56
	lw	%r26 %r13 52
	lw.s	%r26 %f5 48
	lw.s	%r26 %f2 44
	lw.s	%r26 %f1 40
	lw	%r26 %r9 36
	lw	%r26 %r10 32
	lw	%r26 %r12 28
	lw	%r26 %r11 24
	lw	%r26 %r7 20
	lw	%r26 %r5 16
	lw	%r26 %r6 12
	lw	%r26 %r27 8
	slli	%r3 %r2 2
	add	%r14 %r2 %r31
	sw	%r31 %r1 0
tail_b.768 :
	addi	%r0 %r1 1
	sub	%r3 %r1 %r3
	j	iter_setup_dirvec_constants.4
postloop_b.56 :
	lw	%r26 %r3 4
preloop_b.57 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f1 8
	sw	%r1 %r4 4
	sw	%r1 %r15 0
	slli	%r13 %r2 2
	add	%r6 %r2 %r31
	sw	%r31 %r1 0
	addi	%r9 %r4 2
	addi	%r10 %r13 3
	lw.s	%r12 %f0 8
	addi	%r0 %r1 3
	ilw.s	%r0 %f3 l.27
	sw	%r26 %r8 56
	sw.s	%r26 %f0 52
	sw	%r26 %r13 48
	sw	%r26 %r4 44
	sw.s	%r26 %f5 40
	sw.s	%r26 %f2 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r11 24
	sw	%r26 %r7 20
	sw	%r26 %r5 16
	sw	%r26 %r6 12
	sw	%r26 %r27 8
	mov.s	%f3 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r8 56
	lw.s	%r26 %f0 52
	lw	%r26 %r13 48
	lw	%r26 %r4 44
	lw.s	%r26 %f5 40
	lw.s	%r26 %f2 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r11 24
	lw	%r26 %r7 20
	lw	%r26 %r5 16
	lw	%r26 %r6 12
	lw	%r26 %r27 8
	lw	%r11 %r1 0
	sw	%r26 %r8 60
	sw	%r26 %r2 56
	sw.s	%r26 %f0 52
	sw	%r26 %r13 48
	sw	%r26 %r4 44
	sw.s	%r26 %f5 40
	sw.s	%r26 %f2 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r11 24
	sw	%r26 %r7 20
	sw	%r26 %r5 16
	sw	%r26 %r6 12
	sw	%r26 %r27 8
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r3
	lw	%r26 %r8 60
	lw	%r26 %r2 56
	lw.s	%r26 %f0 52
	lw	%r26 %r13 48
	lw	%r26 %r4 44
	lw.s	%r26 %f5 40
	lw.s	%r26 %f2 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r11 24
	lw	%r26 %r7 20
	lw	%r26 %r5 16
	lw	%r26 %r6 12
	lw	%r26 %r27 8
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r3 4
	sw	%r1 %r2 0
	sw.s	%r2 %f2 0
	sw.s	%r2 %f5 4
	sw.s	%r2 %f0 8
	lw	%r11 %r2 0
	addi	%r0 %r3 1
	sub	%r2 %r3 %r3
	sw	%r26 %r3 8
iter_setup_dirvec_constants.3 :
	addi	%r0 %r2 0
	ble	%r2 %r3 branching_b.468
	j	postloop_b.57
branching_b.468 :
	slli	%r3 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r10 0
	lw	%r1 %r14 4
	lw	%r1 %r11 0
	lw	%r10 %r12 4
	addi	%r0 %r2 1
	beq	%r12 %r2 tail_b.770
	addi	%r0 %r2 2
	beq	%r12 %r2 tail_b.771
	sw	%r26 %r8 56
	sw	%r26 %r14 52
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	sw	%r26 %r13 40
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r7 24
	sw	%r26 %r5 20
	sw	%r26 %r6 16
	sw	%r26 %r27 12
	mov	%r10 %r2
	mov	%r11 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	setup_second_table.0
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r10
	lw	%r26 %r8 56
	lw	%r26 %r14 52
	lw	%r26 %r3 48
	lw	%r26 %r1 44
	lw	%r26 %r13 40
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r7 24
	lw	%r26 %r5 20
	lw	%r26 %r6 16
	lw	%r26 %r27 12
	slli	%r3 %r2 2
	add	%r14 %r2 %r31
	sw	%r31 %r10 0
	j	tail_b.773
tail_b.771 :
	sw	%r26 %r8 56
	sw	%r26 %r14 52
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	sw	%r26 %r13 40
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r7 24
	sw	%r26 %r5 20
	sw	%r26 %r6 16
	sw	%r26 %r27 12
	mov	%r10 %r2
	mov	%r11 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	setup_surface_table.0
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r8 56
	lw	%r26 %r14 52
	lw	%r26 %r3 48
	lw	%r26 %r1 44
	lw	%r26 %r13 40
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r7 24
	lw	%r26 %r5 20
	lw	%r26 %r6 16
	lw	%r26 %r27 12
	slli	%r3 %r10 2
	add	%r14 %r10 %r31
	sw	%r31 %r2 0
	j	tail_b.773
tail_b.770 :
	sw	%r26 %r8 56
	sw	%r26 %r14 52
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	sw	%r26 %r13 40
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r9 28
	sw	%r26 %r7 24
	sw	%r26 %r5 20
	sw	%r26 %r6 16
	sw	%r26 %r27 12
	mov	%r10 %r2
	mov	%r11 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	setup_rect_table.0
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r8 56
	lw	%r26 %r14 52
	lw	%r26 %r3 48
	lw	%r26 %r1 44
	lw	%r26 %r13 40
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r9 28
	lw	%r26 %r7 24
	lw	%r26 %r5 20
	lw	%r26 %r6 16
	lw	%r26 %r27 12
	slli	%r3 %r10 2
	add	%r14 %r10 %r31
	sw	%r31 %r2 0
tail_b.773 :
	addi	%r0 %r2 1
	sub	%r3 %r2 %r3
	j	iter_setup_dirvec_constants.3
postloop_b.57 :
	lw	%r26 %r3 8
tail_b.775 :
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f1 8
	sw	%r2 %r1 4
	sw	%r2 %r13 0
	mov	%r2 %r1
	slli	%r4 %r2 2
	add	%r6 %r2 %r31
	sw	%r31 %r1 0
	addi	%r9 %r1 3
	sw	%r7 %r1 0
return_point.54 :
	mov	%r8 %r1
	retl
setup_surface_reflection.0 :
	mov	%r2 %r5
	mov	%r1 %r7
preloop_b.58 :
	lw	%r29 %r2 20
	lw	%r29 %r4 16
	lw	%r29 %r9 12
	lw	%r29 %r6 8
	lw	%r29 %r10 4
	addi	%r0 %r1 4
	mul	%r7 %r1 %r1
	addi	%r1 %r11 1
	lw	%r9 %r8 0
	ilw.s	%r0 %f1 l.20
	lw	%r5 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f3
	lw	%r5 %r1 16
	sw	%r26 %r3 40
	sw.s	%r26 %f3 36
	sw	%r26 %r8 32
	sw	%r26 %r11 28
	sw	%r26 %r10 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r5 4
	sw	%r26 %r27 0
	mov	%r1 %r2
	mov	%r10 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw	%r26 %r3 40
	lw.s	%r26 %f3 36
	lw	%r26 %r8 32
	lw	%r26 %r11 28
	lw	%r26 %r10 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r5 4
	lw	%r26 %r27 0
	ilw.s	%r0 %f2 l.41
	lw	%r5 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	lw.s	%r10 %f2 0
	sub.s	%f2 %f0 %f4
	ilw.s	%r0 %f2 l.41
	lw	%r5 %r1 16
	lw.s	%r1 %f0 4
	mul.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
	lw.s	%r10 %f2 4
	sub.s	%f2 %f0 %f5
	ilw.s	%r0 %f0 l.41
	lw	%r5 %r1 16
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	lw.s	%r10 %f1 8
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 3
	ilw.s	%r0 %f1 l.27
	sw	%r26 %r3 44
	sw.s	%r26 %f0 40
	sw.s	%r26 %f5 36
	sw.s	%r26 %f4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r8 24
	sw	%r26 %r11 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	sw	%r26 %r2 4
	sw	%r26 %r27 0
	mov.s	%f1 %f0
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_float_array
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r7
	lw	%r26 %r3 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f5 36
	lw.s	%r26 %f4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r8 24
	lw	%r26 %r11 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	lw	%r26 %r2 4
	lw	%r26 %r27 0
	lw	%r6 %r1 0
	sw	%r26 %r3 48
	sw	%r26 %r7 44
	sw.s	%r26 %f0 40
	sw.s	%r26 %f5 36
	sw.s	%r26 %f4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r8 24
	sw	%r26 %r11 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	sw	%r26 %r2 4
	sw	%r26 %r27 0
	mov	%r7 %r2
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r3 48
	lw	%r26 %r7 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f5 36
	lw.s	%r26 %f4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r8 24
	lw	%r26 %r11 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	lw	%r26 %r2 4
	lw	%r26 %r27 0
	mov	%r27 %r5
	addi	%r27 %r27 8
	sw	%r5 %r1 4
	sw	%r5 %r7 0
	sw.s	%r7 %f4 0
	sw.s	%r7 %f5 4
	sw.s	%r7 %f0 8
	lw	%r6 %r6 0
	addi	%r0 %r1 1
	sub	%r6 %r1 %r13
	sw	%r26 %r13 0
iter_setup_dirvec_constants.2 :
	addi	%r0 %r1 0
	ble	%r1 %r13 branching_b.471
	j	postloop_b.58
branching_b.471 :
	slli	%r13 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r12 0
	lw	%r5 %r6 4
	lw	%r5 %r10 0
	lw	%r12 %r1 4
	addi	%r0 %r7 1
	beq	%r1 %r7 tail_b.776
	addi	%r0 %r7 2
	beq	%r1 %r7 tail_b.777
	sw	%r26 %r3 44
	sw	%r26 %r6 40
	sw	%r26 %r13 36
	sw	%r26 %r5 32
	sw.s	%r26 %f3 28
	sw	%r26 %r8 24
	sw	%r26 %r11 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r27 4
	mov	%r12 %r2
	mov	%r10 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	setup_second_table.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r3 44
	lw	%r26 %r6 40
	lw	%r26 %r13 36
	lw	%r26 %r5 32
	lw.s	%r26 %f3 28
	lw	%r26 %r8 24
	lw	%r26 %r11 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r27 4
	slli	%r13 %r7 2
	add	%r6 %r7 %r31
	sw	%r31 %r1 0
	j	tail_b.779
tail_b.777 :
	sw	%r26 %r3 44
	sw	%r26 %r6 40
	sw	%r26 %r13 36
	sw	%r26 %r5 32
	sw.s	%r26 %f3 28
	sw	%r26 %r8 24
	sw	%r26 %r11 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r27 4
	mov	%r12 %r2
	mov	%r10 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	setup_surface_table.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r7
	lw	%r26 %r3 44
	lw	%r26 %r6 40
	lw	%r26 %r13 36
	lw	%r26 %r5 32
	lw.s	%r26 %f3 28
	lw	%r26 %r8 24
	lw	%r26 %r11 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r27 4
	slli	%r13 %r1 2
	add	%r6 %r1 %r31
	sw	%r31 %r7 0
	j	tail_b.779
tail_b.776 :
	sw	%r26 %r3 44
	sw	%r26 %r6 40
	sw	%r26 %r13 36
	sw	%r26 %r5 32
	sw.s	%r26 %f3 28
	sw	%r26 %r8 24
	sw	%r26 %r11 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	sw	%r26 %r2 8
	sw	%r26 %r27 4
	mov	%r12 %r2
	mov	%r10 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	setup_rect_table.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r3 44
	lw	%r26 %r6 40
	lw	%r26 %r13 36
	lw	%r26 %r5 32
	lw.s	%r26 %f3 28
	lw	%r26 %r8 24
	lw	%r26 %r11 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	lw	%r26 %r2 8
	lw	%r26 %r27 4
	slli	%r13 %r7 2
	add	%r6 %r7 %r31
	sw	%r31 %r1 0
tail_b.779 :
	addi	%r0 %r1 1
	sub	%r13 %r1 %r13
	j	iter_setup_dirvec_constants.2
postloop_b.58 :
	lw	%r26 %r13 0
tail_b.781 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f3 8
	sw	%r1 %r5 4
	sw	%r1 %r11 0
	mov	%r1 %r4
	slli	%r8 %r1 2
	add	%r2 %r1 %r31
	sw	%r31 %r4 0
	addi	%r8 %r1 1
	sw	%r9 %r1 0
return_point.55 :
	mov	%r3 %r1
	retl
setup_reflections.0 :
	mov	%r1 %r3
	mov	%r29 %r1
branching_b.473 :
	lw	%r1 %r29 12
	lw	%r1 %r6 8
	lw	%r1 %r1 4
	addi	%r0 %r4 0
	ble	%r4 %r3 branching_b.474
	j	return_point.56
branching_b.474 :
	slli	%r3 %r4 2
	add	%r1 %r4 %r31
	lw	%r31 %r5 0
	lw	%r5 %r1 8
	addi	%r0 %r4 2
	beq	%r1 %r4 branching_b.475
	j	return_point.56
branching_b.475 :
	lw	%r5 %r1 28
	lw.s	%r1 %f0 0
	ilw.s	%r0 %f1 l.20
	fbge	%f0 %f1 tail_b.783
	addi	%r0 %r4 1
	j	branching_b.476
tail_b.783 :
	addi	%r0 %r4 0
branching_b.476 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.784
	lw	%r5 %r4 4
	addi	%r0 %r1 1
	beq	%r4 %r1 tail_b.785
	addi	%r0 %r1 2
	beq	%r4 %r1 tail_b.786
	j	return_point.56
tail_b.786 :
	mov	%r5 %r2
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.785 :
	mov	%r6 %r29
	mov	%r5 %r2
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.784 :
return_point.56 :
	mov	%r2 %r1
	retl
rt.0 :
	mov	%r29 %r14
	mov	%r2 %r10
	mov	%r1 %r5
preloop_b.59 :
	lw	%r14 %r7 88
	lw	%r14 %r4 84
	lw	%r14 %r21 80
	lw	%r14 %r20 76
	lw	%r14 %r3 72
	lw	%r14 %r6 68
	lw	%r14 %r19 64
	lw	%r14 %r9 60
	lw	%r14 %r29 56
	lw	%r14 %r18 52
	lw	%r14 %r23 48
	lw	%r14 %r22 44
	lw	%r14 %r1 40
	lw	%r14 %r11 36
	lw	%r14 %r30 32
	sw	%r26 %r30 0
	lw	%r14 %r8 28
	lw	%r14 %r16 24
	lw	%r14 %r2 20
	lw	%r14 %r17 16
	lw	%r14 %r13 12
	lw	%r14 %r12 8
	lw	%r14 %r14 4
	sw	%r8 %r5 0
	sw	%r8 %r10 4
	addi	%r0 %r30 2
	sw	%r26 %r30 4
	lw	%r26 %r30 4
	div	%r5 %r30 %r24
	sw	%r16 %r24 0
	addi	%r0 %r24 2
	div	%r10 %r24 %r10
	sw	%r16 %r10 4
	ilw.s	%r0 %f0 l.64
	mtc1	%r5 %f1
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 0
	lw	%r8 %r5 0
	sw	%r26 %r15 92
	sw	%r26 %r11 88
	sw	%r26 %r5 84
	sw	%r26 %r14 80
	sw	%r26 %r12 76
	sw	%r26 %r13 72
	sw	%r26 %r17 68
	sw	%r26 %r2 64
	sw	%r26 %r8 60
	sw	%r26 %r1 56
	sw	%r26 %r22 52
	sw	%r26 %r23 48
	sw	%r26 %r18 44
	sw	%r26 %r29 40
	sw	%r26 %r9 36
	sw	%r26 %r19 32
	sw	%r26 %r6 28
	sw	%r26 %r20 24
	sw	%r26 %r21 20
	sw	%r26 %r4 16
	sw	%r26 %r7 12
	sw	%r26 %r27 8
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	create_pixel.0
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r3
	lw	%r26 %r15 92
	lw	%r26 %r11 88
	lw	%r26 %r5 84
	lw	%r26 %r14 80
	lw	%r26 %r12 76
	lw	%r26 %r13 72
	lw	%r26 %r17 68
	lw	%r26 %r2 64
	lw	%r26 %r8 60
	lw	%r26 %r1 56
	lw	%r26 %r22 52
	lw	%r26 %r23 48
	lw	%r26 %r18 44
	lw	%r26 %r29 40
	lw	%r26 %r9 36
	lw	%r26 %r19 32
	lw	%r26 %r6 28
	lw	%r26 %r20 24
	lw	%r26 %r21 20
	lw	%r26 %r4 16
	lw	%r26 %r7 12
	lw	%r26 %r27 8
	sw	%r26 %r15 88
	sw	%r26 %r11 84
	sw	%r26 %r14 80
	sw	%r26 %r12 76
	sw	%r26 %r13 72
	sw	%r26 %r17 68
	sw	%r26 %r2 64
	sw	%r26 %r8 60
	sw	%r26 %r1 56
	sw	%r26 %r22 52
	sw	%r26 %r23 48
	sw	%r26 %r18 44
	sw	%r26 %r29 40
	sw	%r26 %r9 36
	sw	%r26 %r19 32
	sw	%r26 %r6 28
	sw	%r26 %r20 24
	sw	%r26 %r21 20
	sw	%r26 %r4 16
	sw	%r26 %r7 12
	sw	%r26 %r27 8
	mov	%r3 %r2
	mov	%r5 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov	%r1 %r3
	lw	%r26 %r15 88
	lw	%r26 %r11 84
	lw	%r26 %r14 80
	lw	%r26 %r12 76
	lw	%r26 %r13 72
	lw	%r26 %r17 68
	lw	%r26 %r2 64
	lw	%r26 %r8 60
	lw	%r26 %r1 56
	lw	%r26 %r22 52
	lw	%r26 %r23 48
	lw	%r26 %r18 44
	lw	%r26 %r29 40
	lw	%r26 %r9 36
	lw	%r26 %r19 32
	lw	%r26 %r6 28
	lw	%r26 %r20 24
	lw	%r26 %r21 20
	lw	%r26 %r4 16
	lw	%r26 %r7 12
	lw	%r26 %r27 8
	lw	%r8 %r10 0
	addi	%r0 %r5 2
	sub	%r10 %r5 %r10
	sw	%r26 %r10 8
init_line_elements.3 :
	addi	%r0 %r5 0
	ble	%r5 %r10 tail_b.790
	mov	%r3 %r5
	j	postloop_b.59
tail_b.790 :
	sw	%r26 %r15 100
	sw	%r26 %r11 96
	sw	%r26 %r10 92
	sw	%r26 %r3 88
	sw	%r26 %r14 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r23 52
	sw	%r26 %r18 48
	sw	%r26 %r29 44
	sw	%r26 %r9 40
	sw	%r26 %r19 36
	sw	%r26 %r6 32
	sw	%r26 %r20 28
	sw	%r26 %r21 24
	sw	%r26 %r4 20
	sw	%r26 %r7 16
	sw	%r26 %r27 12
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	create_pixel.0
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r16
	lw	%r26 %r15 100
	lw	%r26 %r11 96
	lw	%r26 %r10 92
	lw	%r26 %r3 88
	lw	%r26 %r14 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r23 52
	lw	%r26 %r18 48
	lw	%r26 %r29 44
	lw	%r26 %r9 40
	lw	%r26 %r19 36
	lw	%r26 %r6 32
	lw	%r26 %r20 28
	lw	%r26 %r21 24
	lw	%r26 %r4 20
	lw	%r26 %r7 16
	lw	%r26 %r27 12
	slli	%r10 %r5 2
	add	%r3 %r5 %r31
	sw	%r31 %r16 0
	addi	%r0 %r5 1
	sub	%r10 %r5 %r10
	j	init_line_elements.3
postloop_b.59 :
	lw	%r26 %r10 8
preloop_b.60 :
	lw	%r8 %r3 0
	sw	%r26 %r15 96
	sw	%r26 %r11 92
	sw	%r26 %r3 88
	sw	%r26 %r14 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r23 52
	sw	%r26 %r18 48
	sw	%r26 %r29 44
	sw	%r26 %r9 40
	sw	%r26 %r19 36
	sw	%r26 %r6 32
	sw	%r26 %r20 28
	sw	%r26 %r21 24
	sw	%r26 %r4 20
	sw	%r26 %r7 16
	sw	%r26 %r27 12
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	create_pixel.0
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r5
	lw	%r26 %r15 96
	lw	%r26 %r11 92
	lw	%r26 %r3 88
	lw	%r26 %r14 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r23 52
	lw	%r26 %r18 48
	lw	%r26 %r29 44
	lw	%r26 %r9 40
	lw	%r26 %r19 36
	lw	%r26 %r6 32
	lw	%r26 %r20 28
	lw	%r26 %r21 24
	lw	%r26 %r4 20
	lw	%r26 %r7 16
	lw	%r26 %r27 12
	sw	%r26 %r15 92
	sw	%r26 %r11 88
	sw	%r26 %r14 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r23 52
	sw	%r26 %r18 48
	sw	%r26 %r29 44
	sw	%r26 %r9 40
	sw	%r26 %r19 36
	sw	%r26 %r6 32
	sw	%r26 %r20 28
	sw	%r26 %r21 24
	sw	%r26 %r4 20
	sw	%r26 %r7 16
	sw	%r26 %r27 12
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	min_caml_create_array
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r5
	lw	%r26 %r15 92
	lw	%r26 %r11 88
	lw	%r26 %r14 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r23 52
	lw	%r26 %r18 48
	lw	%r26 %r29 44
	lw	%r26 %r9 40
	lw	%r26 %r19 36
	lw	%r26 %r6 32
	lw	%r26 %r20 28
	lw	%r26 %r21 24
	lw	%r26 %r4 20
	lw	%r26 %r7 16
	lw	%r26 %r27 12
	lw	%r8 %r10 0
	addi	%r0 %r3 2
	sub	%r10 %r3 %r10
	sw	%r26 %r10 12
init_line_elements.2 :
	addi	%r0 %r3 0
	ble	%r3 %r10 tail_b.792
	j	postloop_b.60
tail_b.792 :
	sw	%r26 %r15 104
	sw	%r26 %r11 100
	sw	%r26 %r10 96
	sw	%r26 %r5 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r29 48
	sw	%r26 %r9 44
	sw	%r26 %r19 40
	sw	%r26 %r6 36
	sw	%r26 %r20 32
	sw	%r26 %r21 28
	sw	%r26 %r4 24
	sw	%r26 %r7 20
	sw	%r26 %r27 16
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	create_pixel.0
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r16
	lw	%r26 %r15 104
	lw	%r26 %r11 100
	lw	%r26 %r10 96
	lw	%r26 %r5 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r29 48
	lw	%r26 %r9 44
	lw	%r26 %r19 40
	lw	%r26 %r6 36
	lw	%r26 %r20 32
	lw	%r26 %r21 28
	lw	%r26 %r4 24
	lw	%r26 %r7 20
	lw	%r26 %r27 16
	slli	%r10 %r3 2
	add	%r5 %r3 %r31
	sw	%r31 %r16 0
	addi	%r0 %r3 1
	sub	%r10 %r3 %r10
	j	init_line_elements.2
postloop_b.60 :
	lw	%r26 %r10 12
preloop_b.61 :
	lw	%r8 %r5 0
	sw	%r26 %r15 100
	sw	%r26 %r11 96
	sw	%r26 %r5 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r29 48
	sw	%r26 %r9 44
	sw	%r26 %r19 40
	sw	%r26 %r6 36
	sw	%r26 %r20 32
	sw	%r26 %r21 28
	sw	%r26 %r4 24
	sw	%r26 %r7 20
	sw	%r26 %r27 16
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	create_pixel.0
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r3
	lw	%r26 %r15 100
	lw	%r26 %r11 96
	lw	%r26 %r5 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r29 48
	lw	%r26 %r9 44
	lw	%r26 %r19 40
	lw	%r26 %r6 36
	lw	%r26 %r20 32
	lw	%r26 %r21 28
	lw	%r26 %r4 24
	lw	%r26 %r7 20
	lw	%r26 %r27 16
	sw	%r26 %r15 96
	sw	%r26 %r11 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r29 48
	sw	%r26 %r9 44
	sw	%r26 %r19 40
	sw	%r26 %r6 36
	sw	%r26 %r20 32
	sw	%r26 %r21 28
	sw	%r26 %r4 24
	sw	%r26 %r7 20
	sw	%r26 %r27 16
	mov	%r3 %r2
	mov	%r5 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r5
	lw	%r26 %r15 96
	lw	%r26 %r11 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r29 48
	lw	%r26 %r9 44
	lw	%r26 %r19 40
	lw	%r26 %r6 36
	lw	%r26 %r20 32
	lw	%r26 %r21 28
	lw	%r26 %r4 24
	lw	%r26 %r7 20
	lw	%r26 %r27 16
	lw	%r8 %r3 0
	addi	%r0 %r10 2
	sub	%r3 %r10 %r10
	sw	%r26 %r10 16
init_line_elements.1 :
	addi	%r0 %r3 0
	ble	%r3 %r10 tail_b.794
	j	postloop_b.61
tail_b.794 :
	sw	%r26 %r15 108
	sw	%r26 %r11 104
	sw	%r26 %r10 100
	sw	%r26 %r5 96
	sw	%r26 %r14 92
	sw	%r26 %r12 88
	sw	%r26 %r13 84
	sw	%r26 %r17 80
	sw	%r26 %r2 76
	sw	%r26 %r8 72
	sw	%r26 %r1 68
	sw	%r26 %r22 64
	sw	%r26 %r23 60
	sw	%r26 %r18 56
	sw	%r26 %r29 52
	sw	%r26 %r9 48
	sw	%r26 %r19 44
	sw	%r26 %r6 40
	sw	%r26 %r20 36
	sw	%r26 %r21 32
	sw	%r26 %r4 28
	sw	%r26 %r7 24
	sw	%r26 %r27 20
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	create_pixel.0
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	mov	%r1 %r16
	lw	%r26 %r15 108
	lw	%r26 %r11 104
	lw	%r26 %r10 100
	lw	%r26 %r5 96
	lw	%r26 %r14 92
	lw	%r26 %r12 88
	lw	%r26 %r13 84
	lw	%r26 %r17 80
	lw	%r26 %r2 76
	lw	%r26 %r8 72
	lw	%r26 %r1 68
	lw	%r26 %r22 64
	lw	%r26 %r23 60
	lw	%r26 %r18 56
	lw	%r26 %r29 52
	lw	%r26 %r9 48
	lw	%r26 %r19 44
	lw	%r26 %r6 40
	lw	%r26 %r20 36
	lw	%r26 %r21 32
	lw	%r26 %r4 28
	lw	%r26 %r7 24
	lw	%r26 %r27 20
	slli	%r10 %r3 2
	add	%r5 %r3 %r31
	sw	%r31 %r16 0
	addi	%r0 %r3 1
	sub	%r10 %r3 %r10
	j	init_line_elements.1
postloop_b.61 :
	lw	%r26 %r10 16
preloop_b.62 :
	sw	%r26 %r15 100
	sw	%r26 %r11 96
	sw	%r26 %r5 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r29 48
	sw	%r26 %r9 44
	sw	%r26 %r6 40
	sw	%r26 %r20 36
	sw	%r26 %r21 32
	sw	%r26 %r4 28
	sw	%r26 %r7 24
	sw	%r26 %r27 20
	mov	%r19 %r29
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r3
	lw	%r26 %r15 100
	lw	%r26 %r11 96
	lw	%r26 %r5 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r29 48
	lw	%r26 %r9 44
	lw	%r26 %r6 40
	lw	%r26 %r20 36
	lw	%r26 %r21 32
	lw	%r26 %r4 28
	lw	%r26 %r7 24
	lw	%r26 %r27 20
	sw	%r26 %r15 96
	sw	%r26 %r11 92
	sw	%r26 %r5 88
	sw	%r26 %r14 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r23 52
	sw	%r26 %r18 48
	sw	%r26 %r9 44
	sw	%r26 %r6 40
	sw	%r26 %r20 36
	sw	%r26 %r21 32
	sw	%r26 %r4 28
	sw	%r26 %r7 24
	sw	%r26 %r27 20
	sw	%r26 %r28 100
	lw	%r29 %r30 0
	addi	%r26 %r26 104
	jalr	%r30
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r3
	lw	%r26 %r15 96
	lw	%r26 %r11 92
	lw	%r26 %r5 88
	lw	%r26 %r14 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r23 52
	lw	%r26 %r18 48
	lw	%r26 %r9 44
	lw	%r26 %r6 40
	lw	%r26 %r20 36
	lw	%r26 %r21 32
	lw	%r26 %r4 28
	lw	%r26 %r7 24
	lw	%r26 %r27 20
	addi	%r0 %r10 0
	sw	%r26 %r10 20
read_object.1 :
	addi	%r0 %r3 60
	bl	%r10 %r3 branching_b.483
	j	postloop_b.62
branching_b.483 :
	sw	%r26 %r15 104
	sw	%r26 %r11 100
	sw	%r26 %r10 96
	sw	%r26 %r5 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r9 48
	sw	%r26 %r6 44
	sw	%r26 %r20 40
	sw	%r26 %r21 36
	sw	%r26 %r4 32
	sw	%r26 %r7 28
	sw	%r26 %r27 24
	mov	%r9 %r29
	mov	%r10 %r1
	sw	%r26 %r28 108
	lw	%r29 %r30 0
	addi	%r26 %r26 112
	jalr	%r30
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r3
	lw	%r26 %r15 104
	lw	%r26 %r11 100
	lw	%r26 %r10 96
	lw	%r26 %r5 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r9 48
	lw	%r26 %r6 44
	lw	%r26 %r20 40
	lw	%r26 %r21 36
	lw	%r26 %r4 32
	lw	%r26 %r7 28
	lw	%r26 %r27 24
	addi	%r0 %r16 0
	beq	%r3 %r16 tail_b.796
	addi	%r10 %r10 1
	j	read_object.1
tail_b.796 :
	sw	%r1 %r10 0
postloop_b.62 :
	lw	%r26 %r10 20
preloop_b.63 :
	addi	%r0 %r10 0
	sw	%r26 %r10 24
read_and_network.1 :
	addi	%r0 %r3 0
	sw	%r26 %r15 104
	sw	%r26 %r11 100
	sw	%r26 %r10 96
	sw	%r26 %r5 92
	sw	%r26 %r14 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	sw	%r26 %r7 32
	sw	%r26 %r27 28
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	read_net_item.0
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r9
	lw	%r26 %r15 104
	lw	%r26 %r11 100
	lw	%r26 %r10 96
	lw	%r26 %r5 92
	lw	%r26 %r14 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	lw	%r26 %r7 32
	lw	%r26 %r27 28
	lw	%r9 %r16 0
	addi	%r0 %r3 -1
	beq	%r16 %r3 tail_b.799
	slli	%r10 %r3 2
	add	%r14 %r3 %r31
	sw	%r31 %r9 0
	addi	%r10 %r10 1
	j	read_and_network.1
tail_b.799 :
postloop_b.63 :
	lw	%r26 %r10 24
preloop_b.64 :
	addi	%r0 %r3 0
	sw	%r26 %r15 96
	sw	%r26 %r11 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r23 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	sw	%r26 %r7 32
	sw	%r26 %r27 28
	mov	%r3 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	read_or_network.0
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r3
	lw	%r26 %r15 96
	lw	%r26 %r11 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r23 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	lw	%r26 %r7 32
	lw	%r26 %r27 28
	sw	%r23 %r3 0
	sw	%r26 %r15 88
	sw	%r26 %r11 84
	sw	%r26 %r5 80
	sw	%r26 %r12 76
	sw	%r26 %r13 72
	sw	%r26 %r17 68
	sw	%r26 %r2 64
	sw	%r26 %r8 60
	sw	%r26 %r1 56
	sw	%r26 %r22 52
	sw	%r26 %r18 48
	sw	%r26 %r6 44
	sw	%r26 %r20 40
	sw	%r26 %r21 36
	sw	%r26 %r4 32
	sw	%r26 %r27 28
	mov	%r7 %r29
	sw	%r26 %r28 92
	lw	%r29 %r30 0
	addi	%r26 %r26 96
	jalr	%r30
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov	%r1 %r3
	lw	%r26 %r15 88
	lw	%r26 %r11 84
	lw	%r26 %r5 80
	lw	%r26 %r12 76
	lw	%r26 %r13 72
	lw	%r26 %r17 68
	lw	%r26 %r2 64
	lw	%r26 %r8 60
	lw	%r26 %r1 56
	lw	%r26 %r22 52
	lw	%r26 %r18 48
	lw	%r26 %r6 44
	lw	%r26 %r20 40
	lw	%r26 %r21 36
	lw	%r26 %r4 32
	lw	%r26 %r27 28
	addi	%r0 %r7 4
	sw	%r26 %r7 28
create_dirvecs.1 :
	addi	%r0 %r3 0
	ble	%r3 %r7 preloop_b.65
	j	postloop_b.65
preloop_b.65 :
	addi	%r0 %r9 120
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 100
	sw	%r26 %r11 96
	sw	%r26 %r9 92
	sw	%r26 %r7 88
	sw	%r26 %r5 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	sw	%r26 %r27 32
	mov	%r3 %r1
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	min_caml_create_float_array
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r10
	lw	%r26 %r15 100
	lw	%r26 %r11 96
	lw	%r26 %r9 92
	lw	%r26 %r7 88
	lw	%r26 %r5 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	lw	%r26 %r27 32
	lw	%r1 %r3 0
	sw	%r26 %r15 104
	sw	%r26 %r11 100
	sw	%r26 %r10 96
	sw	%r26 %r9 92
	sw	%r26 %r7 88
	sw	%r26 %r5 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	sw	%r26 %r27 32
	mov	%r10 %r2
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r14
	lw	%r26 %r15 104
	lw	%r26 %r11 100
	lw	%r26 %r10 96
	lw	%r26 %r9 92
	lw	%r26 %r7 88
	lw	%r26 %r5 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	lw	%r26 %r27 32
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r14 4
	sw	%r3 %r10 0
	sw	%r26 %r15 96
	sw	%r26 %r11 92
	sw	%r26 %r7 88
	sw	%r26 %r5 84
	sw	%r26 %r12 80
	sw	%r26 %r13 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	sw	%r26 %r27 32
	mov	%r3 %r2
	mov	%r9 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r9
	lw	%r26 %r15 96
	lw	%r26 %r11 92
	lw	%r26 %r7 88
	lw	%r26 %r5 84
	lw	%r26 %r12 80
	lw	%r26 %r13 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	lw	%r26 %r27 32
	slli	%r7 %r3 2
	add	%r2 %r3 %r31
	sw	%r31 %r9 0
	slli	%r7 %r3 2
	add	%r2 %r3 %r31
	lw	%r31 %r16 0
	addi	%r0 %r10 118
	sw	%r26 %r10 32
create_dirvec_elements.2 :
	addi	%r0 %r3 0
	ble	%r3 %r10 tail_b.801
	j	postloop_b.64
tail_b.801 :
	addi	%r0 %r3 3
	ilw.s	%r0 %f0 l.27
	sw	%r26 %r15 108
	sw	%r26 %r11 104
	sw	%r26 %r10 100
	sw	%r26 %r16 96
	sw	%r26 %r7 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r18 56
	sw	%r26 %r6 52
	sw	%r26 %r20 48
	sw	%r26 %r21 44
	sw	%r26 %r4 40
	sw	%r26 %r27 36
	mov	%r3 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	min_caml_create_float_array
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	mov	%r1 %r3
	lw	%r26 %r15 108
	lw	%r26 %r11 104
	lw	%r26 %r10 100
	lw	%r26 %r16 96
	lw	%r26 %r7 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r18 56
	lw	%r26 %r6 52
	lw	%r26 %r20 48
	lw	%r26 %r21 44
	lw	%r26 %r4 40
	lw	%r26 %r27 36
	lw	%r1 %r9 0
	sw	%r26 %r15 112
	sw	%r26 %r11 108
	sw	%r26 %r3 104
	sw	%r26 %r10 100
	sw	%r26 %r16 96
	sw	%r26 %r7 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r13 80
	sw	%r26 %r17 76
	sw	%r26 %r2 72
	sw	%r26 %r8 68
	sw	%r26 %r1 64
	sw	%r26 %r22 60
	sw	%r26 %r18 56
	sw	%r26 %r6 52
	sw	%r26 %r20 48
	sw	%r26 %r21 44
	sw	%r26 %r4 40
	sw	%r26 %r27 36
	mov	%r3 %r2
	mov	%r9 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r14
	lw	%r26 %r15 112
	lw	%r26 %r11 108
	lw	%r26 %r3 104
	lw	%r26 %r10 100
	lw	%r26 %r16 96
	lw	%r26 %r7 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r13 80
	lw	%r26 %r17 76
	lw	%r26 %r2 72
	lw	%r26 %r8 68
	lw	%r26 %r1 64
	lw	%r26 %r22 60
	lw	%r26 %r18 56
	lw	%r26 %r6 52
	lw	%r26 %r20 48
	lw	%r26 %r21 44
	lw	%r26 %r4 40
	lw	%r26 %r27 36
	mov	%r27 %r9
	addi	%r27 %r27 8
	sw	%r9 %r14 4
	sw	%r9 %r3 0
	slli	%r10 %r3 2
	add	%r16 %r3 %r31
	sw	%r31 %r9 0
	addi	%r0 %r3 1
	sub	%r10 %r3 %r10
	j	create_dirvec_elements.2
postloop_b.64 :
	lw	%r26 %r10 32
tail_b.803 :
	addi	%r0 %r3 1
	sub	%r7 %r3 %r7
	j	create_dirvecs.1
postloop_b.65 :
	lw	%r26 %r7 28
preloop_b.66 :
	addi	%r0 %r7 9
	addi	%r0 %r3 0
	addi	%r0 %r9 0
	sw	%r26 %r15 88
	sw	%r26 %r11 84
	sw	%r26 %r5 80
	sw	%r26 %r12 76
	sw	%r26 %r17 72
	sw	%r26 %r2 68
	sw	%r26 %r8 64
	sw	%r26 %r1 60
	sw	%r26 %r22 56
	sw	%r26 %r18 52
	sw	%r26 %r6 48
	sw	%r26 %r20 44
	sw	%r26 %r21 40
	sw	%r26 %r4 36
	mov	%r13 %r29
	mov	%r3 %r2
	mov	%r7 %r1
	mov	%r9 %r3
	sw	%r26 %r28 92
	lw	%r29 %r30 0
	addi	%r26 %r26 96
	jalr	%r30
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov	%r1 %r3
	lw	%r26 %r15 88
	lw	%r26 %r11 84
	lw	%r26 %r5 80
	lw	%r26 %r12 76
	lw	%r26 %r17 72
	lw	%r26 %r2 68
	lw	%r26 %r8 64
	lw	%r26 %r1 60
	lw	%r26 %r22 56
	lw	%r26 %r18 52
	lw	%r26 %r6 48
	lw	%r26 %r20 44
	lw	%r26 %r21 40
	lw	%r26 %r4 36
	addi	%r0 %r7 4
	sw	%r26 %r7 36
init_vecset_constants.1 :
	addi	%r0 %r3 0
	ble	%r3 %r7 preloop_b.67
	j	postloop_b.68
preloop_b.67 :
	slli	%r7 %r3 2
	add	%r2 %r3 %r31
	lw	%r31 %r14 0
	addi	%r0 %r16 119
	sw	%r26 %r16 40
init_dirvec_constants.2 :
	addi	%r0 %r3 0
	ble	%r3 %r16 preloop_b.68
	j	postloop_b.67
preloop_b.68 :
	slli	%r16 %r3 2
	add	%r14 %r3 %r31
	lw	%r31 %r13 0
	lw	%r1 %r3 0
	addi	%r0 %r9 1
	sub	%r3 %r9 %r3
	sw	%r26 %r3 44
iter_setup_dirvec_constants.8 :
	addi	%r0 %r9 0
	ble	%r9 %r3 branching_b.490
	j	postloop_b.66
branching_b.490 :
	slli	%r3 %r9 2
	add	%r22 %r9 %r31
	lw	%r31 %r24 0
	lw	%r13 %r19 4
	lw	%r13 %r23 0
	lw	%r24 %r10 4
	addi	%r0 %r9 1
	beq	%r10 %r9 tail_b.805
	addi	%r0 %r9 2
	beq	%r10 %r9 tail_b.806
	sw	%r26 %r15 124
	sw	%r26 %r19 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r13 108
	sw	%r26 %r16 104
	sw	%r26 %r14 100
	sw	%r26 %r7 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r17 84
	sw	%r26 %r2 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	sw	%r26 %r4 48
	mov	%r24 %r2
	mov	%r23 %r1
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	setup_second_table.0
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	mov	%r1 %r9
	lw	%r26 %r15 124
	lw	%r26 %r19 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r13 108
	lw	%r26 %r16 104
	lw	%r26 %r14 100
	lw	%r26 %r7 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r17 84
	lw	%r26 %r2 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	lw	%r26 %r4 48
	slli	%r3 %r10 2
	add	%r19 %r10 %r31
	sw	%r31 %r9 0
	j	tail_b.808
tail_b.806 :
	sw	%r26 %r15 124
	sw	%r26 %r19 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r13 108
	sw	%r26 %r16 104
	sw	%r26 %r14 100
	sw	%r26 %r7 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r17 84
	sw	%r26 %r2 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	sw	%r26 %r4 48
	mov	%r24 %r2
	mov	%r23 %r1
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	setup_surface_table.0
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	mov	%r1 %r9
	lw	%r26 %r15 124
	lw	%r26 %r19 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r13 108
	lw	%r26 %r16 104
	lw	%r26 %r14 100
	lw	%r26 %r7 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r17 84
	lw	%r26 %r2 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	lw	%r26 %r4 48
	slli	%r3 %r10 2
	add	%r19 %r10 %r31
	sw	%r31 %r9 0
	j	tail_b.808
tail_b.805 :
	sw	%r26 %r15 124
	sw	%r26 %r19 120
	sw	%r26 %r11 116
	sw	%r26 %r3 112
	sw	%r26 %r13 108
	sw	%r26 %r16 104
	sw	%r26 %r14 100
	sw	%r26 %r7 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r17 84
	sw	%r26 %r2 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	sw	%r26 %r4 48
	mov	%r24 %r2
	mov	%r23 %r1
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	setup_rect_table.0
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	mov	%r1 %r9
	lw	%r26 %r15 124
	lw	%r26 %r19 120
	lw	%r26 %r11 116
	lw	%r26 %r3 112
	lw	%r26 %r13 108
	lw	%r26 %r16 104
	lw	%r26 %r14 100
	lw	%r26 %r7 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r17 84
	lw	%r26 %r2 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	lw	%r26 %r4 48
	slli	%r3 %r10 2
	add	%r19 %r10 %r31
	sw	%r31 %r9 0
tail_b.808 :
	addi	%r0 %r9 1
	sub	%r3 %r9 %r3
	j	iter_setup_dirvec_constants.8
postloop_b.66 :
	lw	%r26 %r3 44
tail_b.810 :
	addi	%r0 %r3 1
	sub	%r16 %r3 %r16
	j	init_dirvec_constants.2
postloop_b.67 :
	lw	%r26 %r16 40
tail_b.812 :
	addi	%r0 %r3 1
	sub	%r7 %r3 %r7
	j	init_vecset_constants.1
postloop_b.68 :
	lw	%r26 %r7 36
preloop_b.69 :
	lw	%r26 %r30 0
	lw.s	%r30 %f0 0
	sw.s	%r4 %f0 0
	lw	%r26 %r30 0
	lw.s	%r30 %f0 4
	sw.s	%r4 %f0 4
	lw	%r26 %r30 0
	lw.s	%r30 %f0 8
	sw.s	%r4 %f0 8
	lw	%r1 %r3 0
	addi	%r0 %r2 1
	sub	%r3 %r2 %r7
	sw	%r26 %r7 48
iter_setup_dirvec_constants.1 :
	addi	%r0 %r2 0
	ble	%r2 %r7 branching_b.493
	j	postloop_b.69
branching_b.493 :
	slli	%r7 %r2 2
	add	%r22 %r2 %r31
	lw	%r31 %r4 0
	lw	%r11 %r10 4
	lw	%r11 %r9 0
	lw	%r4 %r3 4
	addi	%r0 %r2 1
	beq	%r3 %r2 tail_b.814
	addi	%r0 %r2 2
	beq	%r3 %r2 tail_b.815
	sw	%r26 %r15 104
	sw	%r26 %r10 100
	sw	%r26 %r7 96
	sw	%r26 %r11 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r17 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	mov	%r4 %r2
	mov	%r9 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	setup_second_table.0
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r2
	lw	%r26 %r15 104
	lw	%r26 %r10 100
	lw	%r26 %r7 96
	lw	%r26 %r11 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r17 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	slli	%r7 %r3 2
	add	%r10 %r3 %r31
	sw	%r31 %r2 0
	j	tail_b.817
tail_b.815 :
	sw	%r26 %r15 104
	sw	%r26 %r10 100
	sw	%r26 %r7 96
	sw	%r26 %r11 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r17 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	mov	%r4 %r2
	mov	%r9 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	setup_surface_table.0
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r2
	lw	%r26 %r15 104
	lw	%r26 %r10 100
	lw	%r26 %r7 96
	lw	%r26 %r11 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r17 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	slli	%r7 %r3 2
	add	%r10 %r3 %r31
	sw	%r31 %r2 0
	j	tail_b.817
tail_b.814 :
	sw	%r26 %r15 104
	sw	%r26 %r10 100
	sw	%r26 %r7 96
	sw	%r26 %r11 92
	sw	%r26 %r5 88
	sw	%r26 %r12 84
	sw	%r26 %r17 80
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r22 68
	sw	%r26 %r18 64
	sw	%r26 %r6 60
	sw	%r26 %r20 56
	sw	%r26 %r21 52
	mov	%r4 %r2
	mov	%r9 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	setup_rect_table.0
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	mov	%r1 %r3
	lw	%r26 %r15 104
	lw	%r26 %r10 100
	lw	%r26 %r7 96
	lw	%r26 %r11 92
	lw	%r26 %r5 88
	lw	%r26 %r12 84
	lw	%r26 %r17 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r22 68
	lw	%r26 %r18 64
	lw	%r26 %r6 60
	lw	%r26 %r20 56
	lw	%r26 %r21 52
	slli	%r7 %r2 2
	add	%r10 %r2 %r31
	sw	%r31 %r3 0
tail_b.817 :
	addi	%r0 %r2 1
	sub	%r7 %r2 %r7
	j	iter_setup_dirvec_constants.1
postloop_b.69 :
	lw	%r26 %r7 48
preloop_b.70 :
	lw	%r1 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	sw	%r26 %r15 80
	sw	%r26 %r5 76
	sw	%r26 %r12 72
	sw	%r26 %r17 68
	sw	%r26 %r8 64
	sw	%r26 %r18 60
	sw	%r26 %r6 56
	sw	%r26 %r21 52
	mov	%r20 %r29
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r15 80
	lw	%r26 %r5 76
	lw	%r26 %r12 72
	lw	%r26 %r17 68
	lw	%r26 %r8 64
	lw	%r26 %r18 60
	lw	%r26 %r6 56
	lw	%r26 %r21 52
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	sw	%r26 %r15 80
	sw	%r26 %r5 76
	sw	%r26 %r12 72
	sw	%r26 %r17 68
	sw	%r26 %r8 64
	sw	%r26 %r18 60
	sw	%r26 %r6 56
	sw	%r26 %r21 52
	mov	%r18 %r29
	mov	%r5 %r1
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r15 80
	lw	%r26 %r5 76
	lw	%r26 %r12 72
	lw	%r26 %r17 68
	lw	%r26 %r8 64
	lw	%r26 %r18 60
	lw	%r26 %r6 56
	lw	%r26 %r21 52
	addi	%r0 %r7 0
	addi	%r0 %r10 2
	sw	%r26 %r7 52
	sw	%r26 %r5 56
	sw	%r26 %r5 60
	sw	%r26 %r5 64
	sw	%r26 %r10 68
scan_line.1 :
	lw	%r8 %r1 4
	bl	%r7 %r1 branching_b.496
	j	postloop_b.74
branching_b.496 :
	lw	%r8 %r2 4
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	bl	%r7 %r1 tail_b.819
	j	preloop_b.71
tail_b.819 :
	addi	%r7 %r2 1
	sw	%r26 %r15 108
	sw	%r26 %r10 104
	sw	%r26 %r7 100
	sw	%r26 %r5 96
	sw	%r26 %r12 92
	sw	%r26 %r17 88
	sw	%r26 %r8 84
	sw	%r26 %r18 80
	sw	%r26 %r6 76
	sw	%r26 %r21 72
	mov	%r18 %r29
	mov	%r10 %r3
	mov	%r5 %r1
	sw	%r26 %r28 112
	lw	%r29 %r30 0
	addi	%r26 %r26 116
	jalr	%r30
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	lw	%r26 %r15 108
	lw	%r26 %r10 104
	lw	%r26 %r7 100
	lw	%r26 %r5 96
	lw	%r26 %r12 92
	lw	%r26 %r17 88
	lw	%r26 %r8 84
	lw	%r26 %r18 80
	lw	%r26 %r6 76
	lw	%r26 %r21 72
preloop_b.71 :
	addi	%r0 %r9 0
	sw	%r26 %r9 72
scan_pixel.2 :
	lw	%r8 %r1 0
	bl	%r9 %r1 branching_b.498
	j	postloop_b.73
branching_b.498 :
	slli	%r9 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	lw.s	%r1 %f0 0
	sw.s	%r6 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r6 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r6 %f0 8
	addi	%r7 %r1 1
	lw	%r8 %r2 4
	bl	%r1 %r2 branching_b.499
	addi	%r0 %r2 0
	j	branching_b.502
branching_b.499 :
	addi	%r0 %r1 0
	bl	%r1 %r7 branching_b.500
	addi	%r0 %r2 0
	j	branching_b.502
branching_b.500 :
	addi	%r9 %r1 1
	lw	%r8 %r2 0
	bl	%r1 %r2 branching_b.501
	addi	%r0 %r2 0
	j	branching_b.502
branching_b.501 :
	addi	%r0 %r1 0
	bl	%r1 %r9 tail_b.821
	addi	%r0 %r2 0
	j	branching_b.502
tail_b.821 :
	addi	%r0 %r2 1
branching_b.502 :
	addi	%r0 %r1 0
	beq	%r2 %r1 preloop_b.72
	addi	%r0 %r4 0
	sw	%r26 %r4 76
try_exploit_neighbors.3 :
	slli	%r9 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 4
	ble	%r4 %r1 branching_b.507
	j	postloop_b.72
branching_b.507 :
	addi	%r0 %r11 0
	lw	%r2 %r1 8
	slli	%r4 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r1 0
	ble	%r11 %r1 branching_b.508
	j	postloop_b.72
branching_b.508 :
	sw	%r26 %r2 128
	sw	%r26 %r4 124
	sw	%r26 %r9 120
	sw	%r26 %r15 116
	sw	%r26 %r10 112
	sw	%r26 %r7 108
	sw	%r26 %r5 104
	sw	%r26 %r12 100
	sw	%r26 %r17 96
	sw	%r26 %r8 92
	sw	%r26 %r18 88
	sw	%r26 %r6 84
	sw	%r26 %r21 80
	mov	%r5 %r3
	mov	%r5 %r2
	mov	%r9 %r1
	mov	%r5 %r31
	mov	%r4 %r5
	mov	%r31 %r4
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	neighbors_are_available.0
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw	%r26 %r2 128
	lw	%r26 %r4 124
	lw	%r26 %r9 120
	lw	%r26 %r15 116
	lw	%r26 %r10 112
	lw	%r26 %r7 108
	lw	%r26 %r5 104
	lw	%r26 %r12 100
	lw	%r26 %r17 96
	lw	%r26 %r8 92
	lw	%r26 %r18 88
	lw	%r26 %r6 84
	lw	%r26 %r21 80
	addi	%r0 %r3 0
	beq	%r1 %r3 preloop_b.74
	lw	%r2 %r1 12
	slli	%r4 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.836
	sw	%r26 %r4 124
	sw	%r26 %r9 120
	sw	%r26 %r15 116
	sw	%r26 %r10 112
	sw	%r26 %r7 108
	sw	%r26 %r5 104
	sw	%r26 %r12 100
	sw	%r26 %r17 96
	sw	%r26 %r8 92
	sw	%r26 %r18 88
	sw	%r26 %r6 84
	sw	%r26 %r21 80
	mov	%r12 %r29
	mov	%r5 %r3
	mov	%r5 %r2
	mov	%r9 %r1
	mov	%r5 %r31
	mov	%r4 %r5
	mov	%r31 %r4
	sw	%r26 %r28 128
	lw	%r29 %r30 0
	addi	%r26 %r26 132
	jalr	%r30
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	lw	%r26 %r4 124
	lw	%r26 %r9 120
	lw	%r26 %r15 116
	lw	%r26 %r10 112
	lw	%r26 %r7 108
	lw	%r26 %r5 104
	lw	%r26 %r12 100
	lw	%r26 %r17 96
	lw	%r26 %r8 92
	lw	%r26 %r18 88
	lw	%r26 %r6 84
	lw	%r26 %r21 80
	j	tail_b.838
tail_b.836 :
	j	tail_b.838
preloop_b.74 :
	slli	%r9 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r13 0
	sw	%r26 %r4 80
do_without_neighbors.6 :
	addi	%r0 %r1 4
	ble	%r4 %r1 branching_b.510
	j	postloop_b.71
branching_b.510 :
	lw	%r13 %r3 8
	addi	%r0 %r2 0
	slli	%r4 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	ble	%r2 %r1 branching_b.511
	j	postloop_b.71
branching_b.511 :
	lw	%r13 %r1 12
	slli	%r4 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.831
	lw	%r13 %r3 20
	lw	%r13 %r2 28
	lw	%r13 %r14 4
	lw	%r13 %r1 16
	slli	%r4 %r11 2
	add	%r3 %r11 %r31
	lw	%r31 %r3 0
	lw.s	%r3 %f0 0
	sw.s	%r17 %f0 0
	lw.s	%r3 %f0 4
	sw.s	%r17 %f0 4
	lw.s	%r3 %f0 8
	sw.s	%r17 %f0 8
	lw	%r13 %r3 24
	lw	%r3 %r11 0
	slli	%r4 %r3 2
	add	%r2 %r3 %r31
	lw	%r31 %r16 0
	slli	%r4 %r2 2
	add	%r14 %r2 %r31
	lw	%r31 %r3 0
	sw	%r26 %r1 136
	sw	%r26 %r13 132
	sw	%r26 %r4 128
	sw	%r26 %r9 124
	sw	%r26 %r15 120
	sw	%r26 %r10 116
	sw	%r26 %r7 112
	sw	%r26 %r5 108
	sw	%r26 %r12 104
	sw	%r26 %r17 100
	sw	%r26 %r8 96
	sw	%r26 %r18 92
	sw	%r26 %r6 88
	sw	%r26 %r21 84
	mov	%r21 %r29
	mov	%r16 %r2
	mov	%r11 %r1
	sw	%r26 %r28 140
	lw	%r29 %r30 0
	addi	%r26 %r26 144
	jalr	%r30
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r1 %r2
	lw	%r26 %r1 136
	lw	%r26 %r13 132
	lw	%r26 %r4 128
	lw	%r26 %r9 124
	lw	%r26 %r15 120
	lw	%r26 %r10 116
	lw	%r26 %r7 112
	lw	%r26 %r5 108
	lw	%r26 %r12 104
	lw	%r26 %r17 100
	lw	%r26 %r8 96
	lw	%r26 %r18 92
	lw	%r26 %r6 88
	lw	%r26 %r21 84
	slli	%r4 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	sw	%r26 %r13 132
	sw	%r26 %r4 128
	sw	%r26 %r9 124
	sw	%r26 %r15 120
	sw	%r26 %r10 116
	sw	%r26 %r7 112
	sw	%r26 %r5 108
	sw	%r26 %r12 104
	sw	%r26 %r17 100
	sw	%r26 %r8 96
	sw	%r26 %r18 92
	sw	%r26 %r6 88
	sw	%r26 %r21 84
	mov	%r17 %r3
	mov	%r6 %r1
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	vecaccumv.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw	%r26 %r13 132
	lw	%r26 %r4 128
	lw	%r26 %r9 124
	lw	%r26 %r15 120
	lw	%r26 %r10 116
	lw	%r26 %r7 112
	lw	%r26 %r5 108
	lw	%r26 %r12 104
	lw	%r26 %r17 100
	lw	%r26 %r8 96
	lw	%r26 %r18 92
	lw	%r26 %r6 88
	lw	%r26 %r21 84
	j	tail_b.833
tail_b.831 :
	j	tail_b.833
preloop_b.72 :
	slli	%r9 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r13 0
	addi	%r0 %r14 0
	sw	%r26 %r14 84
do_without_neighbors.7 :
	addi	%r0 %r1 4
	ble	%r14 %r1 branching_b.504
	j	postloop_b.70
branching_b.504 :
	lw	%r13 %r2 8
	addi	%r0 %r3 0
	slli	%r14 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	ble	%r3 %r1 branching_b.505
	j	postloop_b.70
branching_b.505 :
	lw	%r13 %r1 12
	slli	%r14 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.826
	lw	%r13 %r4 20
	lw	%r13 %r16 28
	lw	%r13 %r1 4
	lw	%r13 %r2 16
	slli	%r14 %r3 2
	add	%r4 %r3 %r31
	lw	%r31 %r3 0
	lw.s	%r3 %f0 0
	sw.s	%r17 %f0 0
	lw.s	%r3 %f0 4
	sw.s	%r17 %f0 4
	lw.s	%r3 %f0 8
	sw.s	%r17 %f0 8
	lw	%r13 %r3 24
	lw	%r3 %r11 0
	slli	%r14 %r3 2
	add	%r16 %r3 %r31
	lw	%r31 %r4 0
	slli	%r14 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r3 0
	sw	%r26 %r2 140
	sw	%r26 %r14 136
	sw	%r26 %r13 132
	sw	%r26 %r9 128
	sw	%r26 %r15 124
	sw	%r26 %r10 120
	sw	%r26 %r7 116
	sw	%r26 %r5 112
	sw	%r26 %r12 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r18 96
	sw	%r26 %r6 92
	sw	%r26 %r21 88
	mov	%r21 %r29
	mov	%r4 %r2
	mov	%r11 %r1
	sw	%r26 %r28 144
	lw	%r29 %r30 0
	addi	%r26 %r26 148
	jalr	%r30
	addi	%r26 %r26 -148
	lw	%r26 %r28 144
	lw	%r26 %r2 140
	lw	%r26 %r14 136
	lw	%r26 %r13 132
	lw	%r26 %r9 128
	lw	%r26 %r15 124
	lw	%r26 %r10 120
	lw	%r26 %r7 116
	lw	%r26 %r5 112
	lw	%r26 %r12 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r18 96
	lw	%r26 %r6 92
	lw	%r26 %r21 88
	slli	%r14 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r2 0
	sw	%r26 %r14 136
	sw	%r26 %r13 132
	sw	%r26 %r9 128
	sw	%r26 %r15 124
	sw	%r26 %r10 120
	sw	%r26 %r7 116
	sw	%r26 %r5 112
	sw	%r26 %r12 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r18 96
	sw	%r26 %r6 92
	sw	%r26 %r21 88
	mov	%r17 %r3
	mov	%r6 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	vecaccumv.0
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw	%r26 %r14 136
	lw	%r26 %r13 132
	lw	%r26 %r9 128
	lw	%r26 %r15 124
	lw	%r26 %r10 120
	lw	%r26 %r7 116
	lw	%r26 %r5 112
	lw	%r26 %r12 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r18 96
	lw	%r26 %r6 92
	lw	%r26 %r21 88
	j	tail_b.828
tail_b.826 :
tail_b.828 :
	addi	%r14 %r14 1
	j	do_without_neighbors.7
postloop_b.70 :
	lw	%r26 %r14 84
branching_b.513 :
	lw.s	%r6 %f0 0
	mfc1	%r2 %f0
	addi	%r0 %r1 255
	bl	%r1 %r2 tail_b.841
	addi	%r0 %r1 0
	bl	%r2 %r1 tail_b.842
	mov	%r2 %r1
	j	branching_b.515
tail_b.842 :
	addi	%r0 %r1 0
	j	branching_b.515
tail_b.841 :
	addi	%r0 %r1 255
branching_b.515 :
	sw	%r26 %r9 128
	sw	%r26 %r15 124
	sw	%r26 %r10 120
	sw	%r26 %r7 116
	sw	%r26 %r5 112
	sw	%r26 %r12 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r18 96
	sw	%r26 %r6 92
	sw	%r26 %r21 88
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	print_int.0
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw	%r26 %r9 128
	lw	%r26 %r15 124
	lw	%r26 %r10 120
	lw	%r26 %r7 116
	lw	%r26 %r5 112
	lw	%r26 %r12 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r18 96
	lw	%r26 %r6 92
	lw	%r26 %r21 88
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r6 %f0 4
	mfc1	%r1 %f0
	addi	%r0 %r2 255
	bl	%r2 %r1 tail_b.844
	addi	%r0 %r2 0
	bl	%r1 %r2 tail_b.845
	j	branching_b.517
tail_b.845 :
	addi	%r0 %r1 0
	j	branching_b.517
tail_b.844 :
	addi	%r0 %r1 255
branching_b.517 :
	sw	%r26 %r9 128
	sw	%r26 %r15 124
	sw	%r26 %r10 120
	sw	%r26 %r7 116
	sw	%r26 %r5 112
	sw	%r26 %r12 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r18 96
	sw	%r26 %r6 92
	sw	%r26 %r21 88
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	print_int.0
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw	%r26 %r9 128
	lw	%r26 %r15 124
	lw	%r26 %r10 120
	lw	%r26 %r7 116
	lw	%r26 %r5 112
	lw	%r26 %r12 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r18 96
	lw	%r26 %r6 92
	lw	%r26 %r21 88
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r6 %f0 8
	mfc1	%r2 %f0
	addi	%r0 %r1 255
	bl	%r1 %r2 tail_b.847
	addi	%r0 %r1 0
	bl	%r2 %r1 tail_b.848
	mov	%r2 %r1
	j	tail_b.850
tail_b.848 :
	addi	%r0 %r1 0
	j	tail_b.850
tail_b.847 :
	addi	%r0 %r1 255
tail_b.850 :
	sw	%r26 %r9 128
	sw	%r26 %r15 124
	sw	%r26 %r10 120
	sw	%r26 %r7 116
	sw	%r26 %r5 112
	sw	%r26 %r12 108
	sw	%r26 %r17 104
	sw	%r26 %r8 100
	sw	%r26 %r18 96
	sw	%r26 %r6 92
	sw	%r26 %r21 88
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	print_int.0
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw	%r26 %r9 128
	lw	%r26 %r15 124
	lw	%r26 %r10 120
	lw	%r26 %r7 116
	lw	%r26 %r5 112
	lw	%r26 %r12 108
	lw	%r26 %r17 104
	lw	%r26 %r8 100
	lw	%r26 %r18 96
	lw	%r26 %r6 92
	lw	%r26 %r21 88
	addi	%r0 %r1 10
	out	%r1
	addi	%r9 %r9 1
	j	scan_pixel.2
tail_b.833 :
	addi	%r4 %r4 1
	j	do_without_neighbors.6
postloop_b.71 :
	lw	%r26 %r4 80
	j	postloop_b.72
tail_b.838 :
	addi	%r4 %r4 1
	j	try_exploit_neighbors.3
postloop_b.72 :
	lw	%r26 %r4 76
	j	branching_b.513
postloop_b.73 :
	lw	%r26 %r9 72
branching_b.519 :
	addi	%r7 %r7 1
	addi	%r10 %r2 2
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.852
	mov	%r2 %r10
	j	tail_b.854
tail_b.852 :
	addi	%r0 %r1 5
	sub	%r2 %r1 %r10
tail_b.854 :
	j	scan_line.1
postloop_b.74 :
	lw	%r26 %r7 52
	lw	%r26 %r5 64
	lw	%r26 %r5 60
	lw	%r26 %r5 56
	lw	%r26 %r10 68
return_point.57 :
	mov	%r15 %r1
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
