#data_section
l.6995 :	# 128.000000
	.long	0x43000000
l.6946 :	# 0.900000
	.long	0x3f666666
l.6838 :	# 150.000000
	.long	0x43160000
l.6835 :	# -150.000000
	.long	0xc3160000
l.6816 :	# 0.100000
	.long	0x3dcccccd
l.6812 :	# -2.000000
	.long	0xc0000000
l.6809 :	# 0.003906
	.long	0x3b800000
l.6777 :	# 20.000000
	.long	0x41a00000
l.6775 :	# 0.050000
	.long	0x3d4ccccd
l.6767 :	# 0.250000
	.long	0x3e800000
l.6758 :	# 10.000000
	.long	0x41200000
l.6753 :	# 0.300000
	.long	0x3e99999a
l.6751 :	# 255.000000
	.long	0x437f0000
l.6746 :	# 0.150000
	.long	0x3e19999a
l.6739 :	# 3.141593
	.long	0x40490fdb
l.6737 :	# 30.000000
	.long	0x41f00000
l.6735 :	# 15.000000
	.long	0x41700000
l.6733 :	# 0.000100
	.long	0x38d1b717
l.6684 :	# 100000000.000000
	.long	0x4cbebc20
l.6678 :	# 1000000000.000000
	.long	0x4e6e6b28
l.6655 :	# -0.100000
	.long	0xbdcccccd
l.6641 :	# 0.010000
	.long	0x3c23d70a
l.6639 :	# -0.200000
	.long	0xbe4ccccd
l.6384 :	# -200.000000
	.long	0xc3480000
l.6381 :	# 200.000000
	.long	0x43480000
l.6376 :	# 0.017453
	.long	0x3c8efa35
l.6288 :	# -1.000000
	.long	0xbf800000
l.6284 :	# 0.333333
	.long	0x3eaaaaab
l.6282 :	# 0.200000
	.long	0x3e4ccccd
l.6280 :	# 0.142857
	.long	0x3e124925
l.6278 :	# 0.111111
	.long	0x3de38e39
l.6275 :	# 0.500000
	.long	0x3f000000
l.6273 :	# 0.041667
	.long	0x3d2aaaab
l.6271 :	# 0.001389
	.long	0x3ab60b61
l.6269 :	# 0.000025
	.long	0x37d00d01
l.6267 :	# 0.166667
	.long	0x3e2aaaab
l.6265 :	# 0.008333
	.long	0x3c088889
l.6263 :	# 0.000198
	.long	0x39500d01
l.6261 :	# 0.000003
	.long	0x3638ef1d
l.6259 :	# 1.000000
	.long	0x3f800000
l.6257 :	# 2.000000
	.long	0x40000000
l.6250 :	# 0.000000
	.long	0x0
#text_section
program_start :
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
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
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6751 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r1 20
	sw	%r26 %r2 24
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 28
	sw	%r26 %r2 32
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_array
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6678 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 112
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	addi	%r0 %r2 60
	lw	%r26 %r3 120
	sw	%r26 %r1 124
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 124
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 128
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 132
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 132
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6250 
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
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 136
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 24
	addi	%r0 %r3 read_screen_settings.2732 
	sw	%r2 %r3 0
	lw	%r26 %r3 12
	sw	%r2 %r3 20
	lw	%r26 %r4 104
	sw	%r2 %r4 16
	lw	%r26 %r5 100
	sw	%r2 %r5 12
	lw	%r26 %r6 96
	sw	%r2 %r6 8
	lw	%r26 %r7 8
	sw	%r2 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r8 read_light.2734 
	sw	%r7 %r8 0
	lw	%r26 %r8 16
	sw	%r7 %r8 8
	lw	%r26 %r9 20
	sw	%r7 %r9 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 read_nth_object.2739 
	sw	%r10 %r11 0
	lw	%r26 %r11 4
	sw	%r10 %r11 4
	mov	%r27 %r12
	addi	%r27 %r27 16
	addi	%r0 %r13 read_object.2741 
	sw	%r12 %r13 0
	sw	%r12 %r10 8
	lw	%r26 %r10 0
	sw	%r12 %r10 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 read_all_object.2743 
	sw	%r13 %r14 0
	sw	%r13 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 8
	addi	%r0 %r14 read_and_network.2749 
	sw	%r12 %r14 0
	lw	%r26 %r14 28
	sw	%r12 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r16 read_parameter.2751 
	sw	%r15 %r16 0
	sw	%r15 %r2 20
	sw	%r15 %r7 16
	sw	%r15 %r12 12
	sw	%r15 %r13 8
	lw	%r26 %r2 36
	sw	%r15 %r2 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r12 solver_rect_surface.2753 
	sw	%r7 %r12 0
	lw	%r26 %r12 40
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_rect.2762 
	sw	%r13 %r16 0
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface.2768 
	sw	%r7 %r16 0
	sw	%r7 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r17 solver_second.2787 
	sw	%r16 %r17 0
	sw	%r16 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 solver.2793 
	sw	%r17 %r18 0
	sw	%r17 %r7 16
	sw	%r17 %r16 12
	sw	%r17 %r13 8
	sw	%r17 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 solver_rect_fast.2797 
	sw	%r7 %r13 0
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast.2804 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r18 solver_second_fast.2810 
	sw	%r16 %r18 0
	sw	%r16 %r12 4
	mov	%r27 %r18
	addi	%r27 %r27 24
	addi	%r0 %r19 solver_fast.2816 
	sw	%r18 %r19 0
	sw	%r18 %r13 16
	sw	%r18 %r16 12
	sw	%r18 %r7 8
	sw	%r18 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast2.2820 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r19 solver_second_fast2.2827 
	sw	%r16 %r19 0
	sw	%r16 %r12 4
	mov	%r27 %r19
	addi	%r27 %r27 24
	addi	%r0 %r20 solver_fast2.2834 
	sw	%r19 %r20 0
	sw	%r19 %r13 16
	sw	%r19 %r16 12
	sw	%r19 %r7 8
	sw	%r19 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 iter_setup_dirvec_constants.2846 
	sw	%r7 %r13 0
	sw	%r7 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_dirvec_constants.2849 
	sw	%r13 %r16 0
	sw	%r13 %r10 8
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 setup_startp_constants.2851 
	sw	%r7 %r16 0
	sw	%r7 %r11 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r20 setup_startp.2854 
	sw	%r16 %r20 0
	lw	%r26 %r20 92
	sw	%r16 %r20 12
	sw	%r16 %r7 8
	sw	%r16 %r10 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r21 check_all_inside.2876 
	sw	%r7 %r21 0
	sw	%r7 %r11 4
	mov	%r27 %r21
	addi	%r27 %r27 32
	addi	%r0 %r22 shadow_check_and_group.2882 
	sw	%r21 %r22 0
	sw	%r21 %r18 28
	sw	%r21 %r12 24
	sw	%r21 %r11 20
	lw	%r26 %r22 128
	sw	%r21 %r22 16
	sw	%r21 %r8 12
	lw	%r26 %r23 52
	sw	%r21 %r23 8
	sw	%r21 %r7 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	sw	%r26 %r15 140
	addi	%r0 %r15 shadow_check_one_or_group.2885 
	sw	%r24 %r15 0
	sw	%r24 %r21 8
	sw	%r24 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r21 shadow_check_one_or_matrix.2888 
	sw	%r15 %r21 0
	sw	%r15 %r18 20
	sw	%r15 %r12 16
	sw	%r15 %r24 12
	sw	%r15 %r22 8
	sw	%r15 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 40
	addi	%r0 %r21 solve_each_element.2891 
	sw	%r18 %r21 0
	lw	%r26 %r21 48
	sw	%r18 %r21 36
	lw	%r26 %r24 88
	sw	%r18 %r24 32
	sw	%r18 %r12 28
	sw	%r18 %r17 24
	sw	%r18 %r11 20
	lw	%r26 %r22 44
	sw	%r18 %r22 16
	sw	%r18 %r23 12
	sw	%r26 %r13 144
	lw	%r26 %r13 56
	sw	%r18 %r13 8
	sw	%r18 %r7 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r5 solve_one_or_network.2895 
	sw	%r10 %r5 0
	sw	%r10 %r18 8
	sw	%r10 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r18 trace_or_matrix.2899 
	sw	%r5 %r18 0
	sw	%r5 %r21 20
	sw	%r5 %r24 16
	sw	%r5 %r12 12
	sw	%r5 %r17 8
	sw	%r5 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r17 judge_intersection.2903 
	sw	%r10 %r17 0
	sw	%r10 %r5 12
	sw	%r10 %r21 8
	sw	%r10 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 40
	addi	%r0 %r17 solve_each_element_fast.2905 
	sw	%r5 %r17 0
	sw	%r5 %r21 36
	sw	%r5 %r20 32
	sw	%r5 %r19 28
	sw	%r5 %r12 24
	sw	%r5 %r11 20
	sw	%r5 %r22 16
	sw	%r5 %r23 12
	sw	%r5 %r13 8
	sw	%r5 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r17 solve_one_or_network_fast.2909 
	sw	%r7 %r17 0
	sw	%r7 %r5 8
	sw	%r7 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r14 trace_or_matrix_fast.2913 
	sw	%r5 %r14 0
	sw	%r5 %r21 16
	sw	%r5 %r19 12
	sw	%r5 %r12 8
	sw	%r5 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r12 judge_intersection_fast.2917 
	sw	%r7 %r12 0
	sw	%r7 %r5 12
	sw	%r7 %r21 8
	sw	%r7 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r12 get_nvector_rect.2919 
	sw	%r5 %r12 0
	lw	%r26 %r12 60
	sw	%r5 %r12 8
	sw	%r5 %r22 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r17 get_nvector_plane.2921 
	sw	%r14 %r17 0
	sw	%r14 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r18 get_nvector_second.2923 
	sw	%r17 %r18 0
	sw	%r17 %r12 8
	sw	%r17 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 get_nvector.2925 
	sw	%r18 %r19 0
	sw	%r18 %r17 12
	sw	%r18 %r5 8
	sw	%r18 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 utexture.2928 
	sw	%r5 %r14 0
	lw	%r26 %r14 64
	sw	%r5 %r14 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r19 add_light.2931 
	sw	%r17 %r19 0
	sw	%r17 %r14 8
	lw	%r26 %r19 72
	sw	%r17 %r19 4
	mov	%r27 %r20
	addi	%r27 %r27 40
	addi	%r0 %r4 trace_reflections.2935 
	sw	%r20 %r4 0
	sw	%r20 %r15 32
	lw	%r26 %r4 136
	sw	%r20 %r4 28
	sw	%r20 %r2 24
	sw	%r20 %r12 20
	sw	%r20 %r7 16
	sw	%r20 %r22 12
	sw	%r20 %r13 8
	sw	%r20 %r17 4
	mov	%r27 %r4
	addi	%r27 %r27 88
	addi	%r0 %r6 trace_ray.2940 
	sw	%r4 %r6 0
	sw	%r4 %r5 80
	sw	%r4 %r20 76
	sw	%r4 %r21 72
	sw	%r4 %r14 68
	sw	%r4 %r24 64
	sw	%r4 %r15 60
	sw	%r4 %r16 56
	sw	%r4 %r19 52
	sw	%r4 %r2 48
	sw	%r4 %r11 44
	sw	%r4 %r12 40
	sw	%r4 %r1 36
	sw	%r4 %r8 32
	sw	%r4 %r10 28
	sw	%r4 %r22 24
	sw	%r4 %r23 20
	sw	%r4 %r13 16
	sw	%r4 %r18 12
	sw	%r4 %r9 8
	sw	%r4 %r17 4
	mov	%r27 %r6
	addi	%r27 %r27 56
	addi	%r0 %r9 trace_diffuse_ray.2946 
	sw	%r6 %r9 0
	sw	%r6 %r5 48
	sw	%r6 %r14 44
	sw	%r6 %r15 40
	sw	%r6 %r2 36
	sw	%r6 %r11 32
	sw	%r6 %r12 28
	sw	%r6 %r8 24
	sw	%r6 %r7 20
	sw	%r6 %r23 16
	sw	%r6 %r13 12
	sw	%r6 %r18 8
	lw	%r26 %r2 68
	sw	%r6 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r7 iter_trace_diffuse_rays.2949 
	sw	%r5 %r7 0
	sw	%r5 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_rays.2954 
	sw	%r6 %r7 0
	sw	%r6 %r16 8
	sw	%r6 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_ray_80percent.2958 
	sw	%r5 %r7 0
	sw	%r5 %r6 8
	lw	%r26 %r7 116
	sw	%r5 %r7 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_1point.2962 
	sw	%r9 %r10 0
	sw	%r9 %r5 12
	sw	%r9 %r19 8
	sw	%r9 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_5points.2965 
	sw	%r5 %r10 0
	sw	%r5 %r19 8
	sw	%r5 %r2 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r12 do_without_neighbors.2971 
	sw	%r10 %r12 0
	sw	%r10 %r9 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r12 neighbors_exist.2974 
	sw	%r9 %r12 0
	lw	%r26 %r12 76
	sw	%r9 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r14 try_exploit_neighbors.2987 
	sw	%r13 %r14 0
	sw	%r13 %r10 8
	sw	%r13 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 write_ppm_header.2994 
	sw	%r5 %r14 0
	sw	%r5 %r12 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r15 write_rgb.2998 
	sw	%r14 %r15 0
	sw	%r14 %r19 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 pretrace_diffuse_rays.3000 
	sw	%r15 %r16 0
	sw	%r15 %r6 12
	sw	%r15 %r7 8
	sw	%r15 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 40
	addi	%r0 %r6 pretrace_pixels.3003 
	sw	%r2 %r6 0
	sw	%r2 %r3 36
	sw	%r2 %r4 32
	sw	%r2 %r24 28
	lw	%r26 %r3 96
	sw	%r2 %r3 24
	lw	%r26 %r3 84
	sw	%r2 %r3 20
	sw	%r2 %r19 16
	lw	%r26 %r4 108
	sw	%r2 %r4 12
	sw	%r2 %r15 8
	lw	%r26 %r4 80
	sw	%r2 %r4 4
	mov	%r27 %r6
	addi	%r27 %r27 32
	addi	%r0 %r15 pretrace_line.3010 
	sw	%r6 %r15 0
	lw	%r26 %r15 104
	sw	%r6 %r15 24
	lw	%r26 %r15 100
	sw	%r6 %r15 20
	sw	%r6 %r3 16
	sw	%r6 %r2 12
	sw	%r6 %r12 8
	sw	%r6 %r4 4
	mov	%r27 %r2
	addi	%r27 %r27 32
	addi	%r0 %r15 scan_pixel.3014 
	sw	%r2 %r15 0
	sw	%r2 %r14 24
	sw	%r2 %r13 20
	sw	%r2 %r19 16
	sw	%r2 %r9 12
	sw	%r2 %r12 8
	sw	%r2 %r10 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 scan_line.3020 
	sw	%r9 %r10 0
	sw	%r9 %r2 12
	sw	%r9 %r6 8
	sw	%r9 %r12 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r10 create_pixelline.3033 
	sw	%r2 %r10 0
	sw	%r2 %r12 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r13 calc_dirvec.3040 
	sw	%r10 %r13 0
	sw	%r10 %r7 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvecs.3048 
	sw	%r13 %r14 0
	sw	%r13 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvec_rows.3053 
	sw	%r10 %r14 0
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 create_dirvec.3057 
	sw	%r13 %r14 0
	lw	%r26 %r14 0
	sw	%r13 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r16 create_dirvec_elements.3059 
	sw	%r15 %r16 0
	sw	%r15 %r13 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r17 create_dirvecs.3062 
	sw	%r16 %r17 0
	sw	%r16 %r7 12
	sw	%r16 %r15 8
	sw	%r16 %r13 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r17 init_dirvec_constants.3064 
	sw	%r15 %r17 0
	lw	%r26 %r17 144
	sw	%r15 %r17 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 init_vecset_constants.3067 
	sw	%r18 %r19 0
	sw	%r18 %r15 8
	sw	%r18 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r15 init_dirvecs.3069 
	sw	%r7 %r15 0
	sw	%r7 %r18 12
	sw	%r7 %r16 8
	sw	%r7 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r15 add_reflection.3071 
	sw	%r10 %r15 0
	sw	%r10 %r17 12
	lw	%r26 %r15 136
	sw	%r10 %r15 8
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r15 setup_rect_reflection.3078 
	sw	%r13 %r15 0
	sw	%r13 %r1 12
	sw	%r13 %r8 8
	sw	%r13 %r10 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_surface_reflection.3081 
	sw	%r15 %r16 0
	sw	%r15 %r1 12
	sw	%r15 %r8 8
	sw	%r15 %r10 4
	mov	%r27 %r1
	addi	%r27 %r27 16
	addi	%r0 %r10 setup_reflections.3084 
	sw	%r1 %r10 0
	sw	%r1 %r15 12
	sw	%r1 %r13 8
	sw	%r1 %r11 4
	mov	%r27 %r24
	addi	%r27 %r27 64
	addi	%r0 %r10 rt.3086 
	sw	%r24 %r10 0
	sw	%r24 %r5 56
	sw	%r24 %r1 52
	sw	%r24 %r17 48
	sw	%r24 %r3 44
	sw	%r24 %r9 40
	lw	%r26 %r1 140
	sw	%r24 %r1 36
	sw	%r24 %r6 32
	sw	%r24 %r14 28
	lw	%r26 %r1 128
	sw	%r24 %r1 24
	sw	%r24 %r8 20
	sw	%r24 %r7 16
	sw	%r24 %r12 12
	sw	%r24 %r4 8
	sw	%r24 %r2 4
	addi	%r0 %r1 512
	addi	%r0 %r2 512
	sw	%r26 %r28 148
	lw	%r24 %r23 0
	addi	%r26 %r26 152	
	jalr	%r23
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	addi	%r0 %r1 0
	ret
fiszero.2544 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	fbne	%f0 %f1 fbe_else.9058 
	addi	%r0 %r1 1
	retl
fbe_else.9058 :
	addi	%r0 %r1 0
	retl
fispos.2546 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9059 
	addi	%r0 %r1 0
	retl
fble_else.9059 :
	addi	%r0 %r1 1
	retl
fisneg.2548 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9060 
	addi	%r0 %r1 0
	retl
fble_else.9060 :
	addi	%r0 %r1 1
	retl
fneg.2550 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	retl
fless.2552 :
	fbg	%f1 %f0 fble_else.9061 
	addi	%r0 %r1 0
	retl
fble_else.9061 :
	addi	%r0 %r1 1
	retl
fsqr.2555 :
	mul.s	%f0 %f0 %f0
	retl
fabs.2557 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9062 
	retl
fble_else.9062 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	retl
fhalf.2559 :
	addi	%r0 %r1 l.6257 
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f0
	retl
fpow.2561 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9063 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	retl
be_else.9063 :
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	isw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fpow.2561 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	ilw	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	retl
sin.2564 :
	addi	%r0 %r1 l.6261 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	isw	%r26 %f0 0
	isw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2561 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6263 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	ilw	%r26 %f2 0
	isw	%r26 %f0 16
	isw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2561 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6265 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	ilw	%r26 %f2 0
	isw	%r26 %f0 32
	isw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2561 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6267 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	ilw	%r26 %f2 0
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2561 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	ilw	%r26 %f1 0
	add.s	%f0 %f1 %f0
	retl
cos.2566 :
	addi	%r0 %r1 l.6269 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	isw	%r26 %f0 0
	isw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2561 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6271 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	ilw	%r26 %f2 0
	isw	%r26 %f0 16
	isw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2561 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6273 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	ilw	%r26 %f2 0
	isw	%r26 %f0 32
	isw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2561 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6275 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	ilw	%r26 %f2 0
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2561 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f1 0
	add.s	%f0 %f1 %f0
	retl
atan.2568 :
	addi	%r0 %r1 l.6278 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	isw	%r26 %f0 0
	isw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2561 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6280 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	ilw	%r26 %f2 0
	isw	%r26 %f0 16
	isw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2561 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6282 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	ilw	%r26 %f2 0
	isw	%r26 %f0 32
	isw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2561 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6284 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	ilw	%r26 %f2 0
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2561 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	ilw	%r26 %f1 0
	add.s	%f0 %f1 %f0
	retl
print_int.2570 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r2
	sub	%r1 %r2 %r1
	addi	%r0 %r2 10
	mul	%r3 %r2 %r2
	sub	%r1 %r2 %r1
	addi	%r1 %r1 48
	out	%r1
	retl
xor.2602 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9064 
	mov	%r2 %r1
	retl
be_else.9064 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9065 
	addi	%r0 %r1 1
	retl
be_else.9065 :
	addi	%r0 %r1 0
	retl
sgn.2605 :
	isw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2544 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9066 
	ilw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fispos.2546 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9067 
	addi	%r0 %r1 l.6288 
	ilw.s	%r1 %f0 0
	retl
be_else.9067 :
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	retl
be_else.9066 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	retl
fneg_cond.2607 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9068 
	j	fneg.2550 
be_else.9068 :
	retl
add_mod5.2610 :
	add	%r1 %r2 %r1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9069 
	addi	%r0 %r25 5
	sub	%r1 %r25 %r1
	retl
bge_else.9069 :
	retl
vecset.2613 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f1 8
	sw.s	%r1 %f2 16
	retl
vecfill.2618 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f0 8
	sw.s	%r1 %f0 16
	retl
vecbzero.2621 :
	addi	%r0 %r2 l.6250 
	ilw.s	%r2 %f0 0
	j	vecfill.2618 
veccpy.2623 :
	lw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r2 %f0 8
	sw.s	%r1 %f0 8
	lw.s	%r2 %f0 16
	sw.s	%r1 %f0 16
	retl
vecunit_sgn.2631 :
	lw.s	%r1 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2555 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	isw	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fsqr.2555 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 16
	isw	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2555 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f1 16
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fiszero.2544 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9073 
	lw	%r26 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9075 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 24
	div.s	%f0 %f1 %f0
	j	be_cont.9076 
be_else.9075 :
	addi	%r0 %r1 l.6288 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 24
	div.s	%f0 %f1 %f0
be_cont.9076 :
	j	be_cont.9074 
be_else.9073 :
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
be_cont.9074 :
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 8
	mul.s	%f1 %f0 %f1
	sw.s	%r1 %f1 8
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 16
	retl
veciprod.2634 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	lw.s	%r1 %f1 16
	lw.s	%r2 %f2 16
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	retl
veciprod2.2637 :
	lw.s	%r1 %f3 0
	mul.s	%f3 %f0 %f0
	lw.s	%r1 %f3 8
	mul.s	%f3 %f1 %f1
	add.s	%f0 %f1 %f0
	lw.s	%r1 %f1 16
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	retl
vecaccum.2642 :
	lw.s	%r1 %f1 0
	lw.s	%r2 %f2 0
	mul.s	%f0 %f2 %f2
	add.s	%f1 %f2 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f0 %f2 %f2
	add.s	%f1 %f2 %f1
	sw.s	%r1 %f1 8
	lw.s	%r1 %f1 16
	lw.s	%r2 %f2 16
	mul.s	%f0 %f2 %f0
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 16
	retl
vecadd.2646 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	lw.s	%r1 %f0 16
	lw.s	%r2 %f1 16
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	retl
vecscale.2652 :
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 8
	mul.s	%f1 %f0 %f1
	sw.s	%r1 %f1 8
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 16
	retl
vecaccumv.2655 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	lw.s	%r3 %f2 0
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	lw.s	%r3 %f2 8
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	lw.s	%r1 %f0 16
	lw.s	%r2 %f1 16
	lw.s	%r3 %f2 16
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	retl
o_texturetype.2659 :
	lw	%r1 %r1 0
	retl
o_form.2661 :
	lw	%r1 %r1 4
	retl
o_reflectiontype.2663 :
	lw	%r1 %r1 8
	retl
o_isinvert.2665 :
	lw	%r1 %r1 24
	retl
o_isrot.2667 :
	lw	%r1 %r1 12
	retl
o_param_a.2669 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 0
	retl
o_param_b.2671 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	retl
o_param_c.2673 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 16
	retl
o_param_abc.2675 :
	lw	%r1 %r1 16
	retl
o_param_x.2677 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 0
	retl
o_param_y.2679 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 8
	retl
o_param_z.2681 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 16
	retl
o_diffuse.2683 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 0
	retl
o_hilight.2685 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 8
	retl
o_color_red.2687 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 0
	retl
o_color_green.2689 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 8
	retl
o_color_blue.2691 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 16
	retl
o_param_r1.2693 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 0
	retl
o_param_r2.2695 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 8
	retl
o_param_r3.2697 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 16
	retl
o_param_ctbl.2699 :
	lw	%r1 %r1 40
	retl
p_rgb.2701 :
	lw	%r1 %r1 0
	retl
p_intersection_points.2703 :
	lw	%r1 %r1 4
	retl
p_surface_ids.2705 :
	lw	%r1 %r1 8
	retl
p_calc_diffuse.2707 :
	lw	%r1 %r1 12
	retl
p_energy.2709 :
	lw	%r1 %r1 16
	retl
p_received_ray_20percent.2711 :
	lw	%r1 %r1 20
	retl
p_group_id.2713 :
	lw	%r1 %r1 24
	lw	%r1 %r1 0
	retl
p_set_group_id.2715 :
	lw	%r1 %r1 24
	sw	%r1 %r2 0
	retl
p_nvectors.2718 :
	lw	%r1 %r1 28
	retl
d_vec.2720 :
	lw	%r1 %r1 0
	retl
d_const.2722 :
	lw	%r1 %r1 4
	retl
r_surface_id.2724 :
	lw	%r1 %r1 0
	retl
r_dvec.2726 :
	lw	%r1 %r1 4
	retl
r_bright.2728 :
	lw.s	%r1 %f0 8
	retl
rad.2730 :
	addi	%r0 %r1 l.6376 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	retl
read_screen_settings.2732 :
	lw	%r24 %r1 20
	lw	%r24 %r2 16
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	fin	%f0
	sw.s	%r5 %f0 0
	fin	%f0
	sw.s	%r5 %f0 8
	fin	%f0
	sw.s	%r5 %f0 16
	fin	%f0
	sw	%r26 %r1 0
	sw	%r26 %r5 4
	sw	%r26 %r3 8
	sw	%r26 %r4 12
	sw	%r26 %r2 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2730 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2566 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	isw	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2564 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	fin	%f1
	isw	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2730 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	isw	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	cos.2566 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	isw	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sin.2564 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 32
	mul.s	%f1 %f0 %f2
	addi	%r0 %r1 l.6381 
	ilw.s	%r1 %f3 0
	mul.s	%f2 %f3 %f2
	lw	%r26 %r1 16
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.6384 
	ilw.s	%r2 %f2 0
	ilw	%r26 %f3 40
	mul.s	%f3 %f2 %f2
	sw.s	%r1 %f2 8
	ilw	%r26 %f2 56
	mul.s	%f1 %f2 %f4
	addi	%r0 %r2 l.6381 
	ilw.s	%r2 %f5 0
	mul.s	%f4 %f5 %f4
	sw.s	%r1 %f4 16
	lw	%r26 %r2 12
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 8
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2550 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	lw	%r26 %r1 12
	sw.s	%r1 %f0 16
	ilw	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2550 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 32
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2550 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	ilw	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2550 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	lw	%r26 %r1 4
	lw.s	%r1 %f0 0
	lw	%r26 %r2 16
	lw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	lw	%r26 %r3 0
	sw.s	%r3 %f0 0
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	sub.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
	lw.s	%r1 %f0 16
	lw.s	%r2 %f1 16
	sub.s	%f0 %f1 %f0
	sw.s	%r3 %f0 16
	retl
read_light.2734 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	fin	%f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	rad.2730 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	isw	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2564 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2550 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	fin	%f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2730 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	isw	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2566 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f1 16
	isw	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2564 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2566 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 16
	fin	%f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	retl
rotate_quadratic_matrix.2736 :
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	cos.2566 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	isw	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2564 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	isw	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2566 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	isw	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2564 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 16
	isw	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	cos.2566 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 4
	lw.s	%r1 %f1 16
	isw	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	sin.2564 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	ilw	%r26 %f2 24
	mul.s	%f2 %f1 %f3
	ilw	%r26 %f4 32
	ilw	%r26 %f5 16
	mul.s	%f5 %f4 %f6
	mul.s	%f6 %f1 %f6
	ilw	%r26 %f7 8
	mul.s	%f7 %f0 %f8
	sub.s	%f6 %f8 %f6
	mul.s	%f7 %f4 %f8
	mul.s	%f8 %f1 %f8
	mul.s	%f5 %f0 %f9
	add.s	%f8 %f9 %f8
	mul.s	%f2 %f0 %f9
	mul.s	%f5 %f4 %f10
	mul.s	%f10 %f0 %f10
	mul.s	%f7 %f1 %f11
	add.s	%f10 %f11 %f10
	mul.s	%f7 %f4 %f11
	mul.s	%f11 %f0 %f0
	mul.s	%f5 %f1 %f1
	sub.s	%f0 %f1 %f0
	isw	%r26 %f0 48
	isw	%r26 %f8 56
	isw	%r26 %f10 64
	isw	%r26 %f6 72
	isw	%r26 %f9 80
	isw	%r26 %f3 88
	mov.s	%f4 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fneg.2550 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 24
	ilw	%r26 %f2 16
	mul.s	%f2 %f1 %f2
	ilw	%r26 %f3 8
	mul.s	%f3 %f1 %f1
	lw	%r26 %r1 0
	lw.s	%r1 %f3 0
	lw.s	%r1 %f4 8
	lw.s	%r1 %f5 16
	ilw	%r26 %f6 88
	isw	%r26 %f1 96
	isw	%r26 %f2 104
	isw	%r26 %f5 112
	isw	%r26 %f0 120
	isw	%r26 %f4 128
	isw	%r26 %f3 136
	mov.s	%f6 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fsqr.2555 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 80
	isw	%r26 %f0 144
	mov.s	%f2 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	fsqr.2555 
	addi	%r0 %r25 160
	sub	%r26 %r25 %r26
	lw	%r26 %r28 156
	ilw	%r26 %f1 128
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 144
	add.s	%f2 %f0 %f0
	ilw	%r26 %f2 120
	isw	%r26 %f0 152
	mov.s	%f2 %f0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fsqr.2555 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 152
	add.s	%f2 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 72
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fsqr.2555 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	ilw	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 64
	isw	%r26 %f0 160
	mov.s	%f2 %f0
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	fsqr.2555 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	ilw	%r26 %f1 128
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 160
	add.s	%f2 %f0 %f0
	ilw	%r26 %f2 104
	isw	%r26 %f0 168
	mov.s	%f2 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fsqr.2555 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 168
	add.s	%f2 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
	ilw	%r26 %f0 56
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fsqr.2555 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	ilw	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 48
	isw	%r26 %f0 176
	mov.s	%f2 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fsqr.2555 
	addi	%r0 %r25 192
	sub	%r26 %r25 %r26
	lw	%r26 %r28 188
	ilw	%r26 %f1 128
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 176
	add.s	%f2 %f0 %f0
	ilw	%r26 %f2 96
	isw	%r26 %f0 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2555 
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 184
	add.s	%f2 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 16
	addi	%r0 %r1 l.6257 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f2 72
	ilw	%r26 %f3 136
	mul.s	%f3 %f2 %f4
	ilw	%r26 %f5 56
	mul.s	%f4 %f5 %f4
	ilw	%r26 %f6 64
	ilw	%r26 %f7 128
	mul.s	%f7 %f6 %f8
	ilw	%r26 %f9 48
	mul.s	%f8 %f9 %f8
	add.s	%f4 %f8 %f4
	ilw	%r26 %f8 104
	mul.s	%f1 %f8 %f10
	ilw	%r26 %f11 96
	mul.s	%f10 %f11 %f10
	add.s	%f4 %f10 %f4
	mul.s	%f0 %f4 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6257 
	ilw.s	%r2 %f0 0
	ilw	%r26 %f4 88
	mul.s	%f3 %f4 %f10
	mul.s	%f10 %f5 %f5
	ilw	%r26 %f10 80
	mul.s	%f7 %f10 %f12
	mul.s	%f12 %f9 %f9
	add.s	%f5 %f9 %f5
	ilw	%r26 %f9 120
	mul.s	%f1 %f9 %f12
	mul.s	%f12 %f11 %f11
	add.s	%f5 %f11 %f5
	mul.s	%f0 %f5 %f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 l.6257 
	ilw.s	%r2 %f0 0
	mul.s	%f3 %f4 %f3
	mul.s	%f3 %f2 %f2
	mul.s	%f7 %f10 %f3
	mul.s	%f3 %f6 %f3
	add.s	%f2 %f3 %f2
	mul.s	%f1 %f9 %f1
	mul.s	%f1 %f8 %f1
	add.s	%f2 %f1 %f1
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	retl
read_nth_object.2739 :
	lw	%r24 %r2 4
	in	%r3
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9087 
	addi	%r0 %r1 0
	retl
be_else.9087 :
	in	%r4
	in	%r5
	in	%r6
	addi	%r0 %r7 3
	addi	%r0 %r8 l.6250 
	ilw.s	%r8 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	sw	%r26 %r6 20
	mov	%r7 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	sw.s	%r1 %f0 16
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	sw.s	%r1 %f0 16
	fin	%f0
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2548 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r2 2
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	sw.s	%r1 %f0 16
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r2 20
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9088 
	j	be_cont.9089 
be_else.9088 :
	fin	%f0
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2730 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 0
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2730 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2730 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 16
be_cont.9089 :
	lw	%r26 %r2 16
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9090 
	addi	%r0 %r3 1
	j	be_cont.9091 
be_else.9090 :
	lw	%r26 %r3 32
be_cont.9091 :
	addi	%r0 %r4 4
	addi	%r0 %r5 l.6250 
	ilw.s	%r5 %f0 0
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	mov	%r4 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	mov	%r27 %r2
	addi	%r27 %r27 48
	sw	%r2 %r1 40
	lw	%r26 %r1 44
	sw	%r2 %r1 36
	lw	%r26 %r3 40
	sw	%r2 %r3 32
	lw	%r26 %r3 36
	sw	%r2 %r3 28
	lw	%r26 %r3 48
	sw	%r2 %r3 24
	lw	%r26 %r3 28
	sw	%r2 %r3 20
	lw	%r26 %r3 24
	sw	%r2 %r3 16
	lw	%r26 %r4 20
	sw	%r2 %r4 12
	lw	%r26 %r5 12
	sw	%r2 %r5 8
	lw	%r26 %r5 16
	sw	%r2 %r5 4
	lw	%r26 %r6 8
	sw	%r2 %r6 0
	lw	%r26 %r6 4
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	lw	%r26 %r7 0
	sw	%r7 %r2 %r6
addi	%r0 %r25 3
	bne	%r5 %r25 be_else.9092 
	lw.s	%r3 %f0 0
	isw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fiszero.2544 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9095 
	ilw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sgn.2605 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	isw	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2555 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	div.s	%f1 %f0 %f0
	j	be_cont.9096 
be_else.9095 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
be_cont.9096 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 8
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fiszero.2544 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9097 
	ilw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sgn.2605 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	isw	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fsqr.2555 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 80
	div.s	%f1 %f0 %f0
	j	be_cont.9098 
be_else.9097 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
be_cont.9098 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	lw.s	%r1 %f0 16
	isw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2544 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9099 
	ilw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sgn.2605 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 88
	isw	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fsqr.2555 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 96
	div.s	%f1 %f0 %f0
	j	be_cont.9100 
be_else.9099 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
be_cont.9100 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 16
	j	be_cont.9093 
be_else.9092 :
addi	%r0 %r25 2
	bne	%r5 %r25 be_else.9101 
	lw	%r26 %r2 32
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9103 
	addi	%r0 %r2 1
	j	be_cont.9104 
be_else.9103 :
	addi	%r0 %r2 0
be_cont.9104 :
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecunit_sgn.2631 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	j	be_cont.9102 
be_else.9101 :
be_cont.9102 :
be_cont.9093 :
	lw	%r26 %r1 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9105 
	j	be_cont.9106 
be_else.9105 :
	lw	%r26 %r1 24
	lw	%r26 %r2 44
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	rotate_quadratic_matrix.2736 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
be_cont.9106 :
	addi	%r0 %r1 1
	retl
read_object.2741 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 60
	bl	%r1 %r25 bge_else.9107 
	retl
bge_else.9107 :
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	mov	%r2 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9109 
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
be_else.9109 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_all_object.2743 :
	lw	%r24 %r24 4
	addi	%r0 %r1 0
	lw	%r24 %r23 0
	jr	%r23
read_net_item.2745 :
	in	%r2
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9111 
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
be_else.9111 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2745 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	sw	%r1 %r3 %r2
	retl
read_or_network.2747 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2745 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 be_else.9112 
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
be_else.9112 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2747 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 4
	sw	%r1 %r3 %r2
	retl
read_and_network.2749 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2745 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9113 
	retl
be_else.9113 :
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	sw	%r4 %r1 %r3
	addi	%r2 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_parameter.2751 :
	lw	%r24 %r1 20
	lw	%r24 %r2 16
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r5 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r2 12
	mov	%r1 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r24 12
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r24 8
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r1 0
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	read_or_network.2747 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
solver_rect_surface.2753 :
	lw	%r24 %r6 4
	addi	%r0 %r25 3
	sll	%r3 %r7 %r25
	lw.s	%r2 %f3 %r7
	sw	%r26 %r6 0
	isw	%r26 %f2 8
	sw	%r26 %r5 16
	isw	%r26 %f1 24
	sw	%r26 %r4 32
	isw	%r26 %f0 40
	sw	%r26 %r2 48
	sw	%r26 %r3 52
	sw	%r26 %r1 56
	mov.s	%f3 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fiszero.2544 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9119 
	lw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_abc.2675 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_isinvert.2665 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r2 52
	addi	%r0 %r25 3
	sll	%r2 %r3 %r25
	lw	%r26 %r4 48
	lw.s	%r4 %f0 %r3
	sw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fisneg.2548 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	xor.2602 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r2 52
	addi	%r0 %r25 3
	sll	%r2 %r3 %r25
	lw	%r26 %r4 60
	lw.s	%r4 %f0 %r3
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg_cond.2607 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 52
	addi	%r0 %r25 3
	sll	%r1 %r1 %r25
	lw	%r26 %r2 48
	lw.s	%r2 %f1 %r1
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 32
	addi	%r0 %r25 3
	sll	%r1 %r3 %r25
	lw.s	%r2 %f1 %r3
	mul.s	%f0 %f1 %f1
	ilw	%r26 %f2 24
	add.s	%f1 %f2 %f1
	isw	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2557 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	lw	%r26 %r1 32
	addi	%r0 %r25 3
	sll	%r1 %r1 %r25
	lw	%r26 %r2 60
	lw.s	%r2 %f1 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fless.2552 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9121 
	addi	%r0 %r1 0
	retl
be_else.9121 :
	lw	%r26 %r1 16
	addi	%r0 %r25 3
	sll	%r1 %r2 %r25
	lw	%r26 %r3 48
	lw.s	%r3 %f0 %r2
	ilw	%r26 %f1 72
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 8
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2557 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	lw	%r26 %r1 16
	addi	%r0 %r25 3
	sll	%r1 %r1 %r25
	lw	%r26 %r2 60
	lw.s	%r2 %f1 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fless.2552 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9122 
	addi	%r0 %r1 0
	retl
be_else.9122 :
	lw	%r26 %r1 0
	ilw	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9119 :
	addi	%r0 %r1 0
	retl
solver_rect.2762 :
	lw	%r24 %r24 4
	addi	%r0 %r3 0
	addi	%r0 %r4 1
	addi	%r0 %r5 2
	isw	%r26 %f0 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	sw	%r26 %r2 24
	sw	%r26 %r1 28
	sw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9123 
	addi	%r0 %r3 1
	addi	%r0 %r4 2
	addi	%r0 %r5 0
	ilw	%r26 %f0 16
	ilw	%r26 %f1 8
	ilw	%r26 %f2 0
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9124 
	addi	%r0 %r3 2
	addi	%r0 %r4 0
	addi	%r0 %r5 1
	ilw	%r26 %f0 8
	ilw	%r26 %f1 0
	ilw	%r26 %f2 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9125 
	addi	%r0 %r1 0
	retl
be_else.9125 :
	addi	%r0 %r1 3
	retl
be_else.9124 :
	addi	%r0 %r1 2
	retl
be_else.9123 :
	addi	%r0 %r1 1
	retl
solver_surface.2768 :
	lw	%r24 %r3 4
	sw	%r26 %r3 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	isw	%r26 %f0 24
	sw	%r26 %r2 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2675 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r2 36
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2634 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	isw	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fispos.2546 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9127 
	addi	%r0 %r1 0
	retl
be_else.9127 :
	ilw	%r26 %f0 24
	ilw	%r26 %f1 16
	ilw	%r26 %f2 8
	lw	%r26 %r1 36
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2637 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2550 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
quadratic.2774 :
	isw	%r26 %f0 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2555 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	isw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_a.2669 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	isw	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fsqr.2555 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 24
	isw	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_b.2671 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 8
	isw	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fsqr.2555 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 24
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2673 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 56
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 24
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isrot.2667 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9129 
	ilw	%r26 %f0 72
	retl
be_else.9129 :
	ilw	%r26 %f0 8
	ilw	%r26 %f1 16
	mul.s	%f1 %f0 %f2
	lw	%r26 %r1 24
	isw	%r26 %f2 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r1.2693 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 80
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 72
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 0
	ilw	%r26 %f2 8
	mul.s	%f2 %f1 %f2
	lw	%r26 %r1 24
	isw	%r26 %f0 88
	isw	%r26 %f2 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r2.2695 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 88
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	ilw	%r26 %f2 0
	mul.s	%f2 %f1 %f1
	lw	%r26 %r1 24
	isw	%r26 %f0 104
	isw	%r26 %f1 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_r3.2697 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 104
	add.s	%f1 %f0 %f0
	retl
bilinear.2779 :
	mul.s	%f0 %f3 %f6
	isw	%r26 %f3 0
	isw	%r26 %f0 8
	isw	%r26 %f5 16
	isw	%r26 %f2 24
	sw	%r26 %r1 32
	isw	%r26 %f4 40
	isw	%r26 %f1 48
	isw	%r26 %f6 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2669 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	ilw	%r26 %f2 48
	mul.s	%f2 %f1 %f3
	lw	%r26 %r1 32
	isw	%r26 %f0 64
	isw	%r26 %f3 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_b.2671 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 64
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	ilw	%r26 %f2 24
	mul.s	%f2 %f1 %f3
	lw	%r26 %r1 32
	isw	%r26 %f0 80
	isw	%r26 %f3 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2673 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 88
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 80
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 32
	isw	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_isrot.2667 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9131 
	ilw	%r26 %f0 96
	retl
be_else.9131 :
	ilw	%r26 %f0 40
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f2
	ilw	%r26 %f3 16
	ilw	%r26 %f4 48
	mul.s	%f4 %f3 %f5
	add.s	%f2 %f5 %f2
	lw	%r26 %r1 32
	isw	%r26 %f2 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2693 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f1 104
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 16
	ilw	%r26 %f2 8
	mul.s	%f2 %f1 %f1
	ilw	%r26 %f3 0
	ilw	%r26 %f4 24
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f1
	lw	%r26 %r1 32
	isw	%r26 %f0 112
	isw	%r26 %f1 120
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	o_param_r2.2695 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	ilw	%r26 %f1 120
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 112
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	ilw	%r26 %f2 8
	mul.s	%f2 %f1 %f1
	ilw	%r26 %f2 0
	ilw	%r26 %f3 48
	mul.s	%f3 %f2 %f2
	add.s	%f1 %f2 %f1
	lw	%r26 %r1 32
	isw	%r26 %f0 128
	isw	%r26 %f1 136
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_param_r3.2697 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 128
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2559 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 96
	add.s	%f1 %f0 %f0
	retl
solver_second.2787 :
	lw	%r24 %r3 4
	lw.s	%r2 %f3 0
	lw.s	%r2 %f4 8
	lw.s	%r2 %f5 16
	sw	%r26 %r3 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	isw	%r26 %f0 24
	sw	%r26 %r1 32
	sw	%r26 %r2 36
	mov.s	%f5 %f2
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	quadratic.2774 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	isw	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2544 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9133 
	lw	%r26 %r1 36
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 8
	lw.s	%r1 %f2 16
	ilw	%r26 %f3 24
	ilw	%r26 %f4 16
	ilw	%r26 %f5 8
	lw	%r26 %r1 32
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	bilinear.2779 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 24
	ilw	%r26 %f2 16
	ilw	%r26 %f3 8
	lw	%r26 %r1 32
	isw	%r26 %f0 48
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	quadratic.2774 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 32
	isw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_form.2661 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9134 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 56
	sub.s	%f1 %f0 %f0
	j	be_cont.9135 
be_else.9134 :
	ilw	%r26 %f0 56
be_cont.9135 :
	ilw	%r26 %f1 48
	isw	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2555 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	ilw	%r26 %f2 40
	mul.s	%f2 %f1 %f1
	sub.s	%f0 %f1 %f0
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2546 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9136 
	addi	%r0 %r1 0
	retl
be_else.9136 :
	ilw	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw	%r26 %r1 32
	isw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2665 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9137 
	ilw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2550 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	j	be_cont.9138 
be_else.9137 :
	ilw	%r26 %f0 80
be_cont.9138 :
	ilw	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	ilw	%r26 %f1 40
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9133 :
	addi	%r0 %r1 0
	retl
solver.2793 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r7 %r1 %r1
	lw.s	%r3 %f0 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	sw	%r26 %r6 12
	sw	%r26 %r1 16
	sw	%r26 %r3 20
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2677 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 8
	lw	%r26 %r2 16
	isw	%r26 %f0 32
	isw	%r26 %f1 40
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_y.2679 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 16
	lw	%r26 %r1 16
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_z.2681 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2661 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9139 
	ilw	%r26 %f0 32
	ilw	%r26 %f1 48
	ilw	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9139 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9140 
	ilw	%r26 %f0 32
	ilw	%r26 %f1 48
	ilw	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9140 :
	ilw	%r26 %f0 32
	ilw	%r26 %f1 48
	ilw	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_rect_fast.2797 :
	lw	%r24 %r4 4
	lw.s	%r3 %f3 0
	sub.s	%f3 %f0 %f3
	lw.s	%r3 %f4 8
	mul.s	%f3 %f4 %f3
	lw.s	%r2 %f4 8
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f1 %f4
	sw	%r26 %r4 0
	isw	%r26 %f0 8
	isw	%r26 %f1 16
	sw	%r26 %r3 24
	isw	%r26 %f2 32
	isw	%r26 %f3 40
	sw	%r26 %r2 48
	sw	%r26 %r1 52
	mov.s	%f4 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fabs.2557 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 52
	isw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2671 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	mov.s	%f0 %f1
	ilw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2552 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9143 
	addi	%r0 %r1 0
	j	be_cont.9144 
be_else.9143 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 16
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 32
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fabs.2557 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 52
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2673 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	mov.s	%f0 %f1
	ilw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2552 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9145 
	addi	%r0 %r1 0
	j	be_cont.9146 
be_else.9145 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 8
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fiszero.2544 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9147 
	addi	%r0 %r1 1
	j	be_cont.9148 
be_else.9147 :
	addi	%r0 %r1 0
be_cont.9148 :
be_cont.9146 :
be_cont.9144 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9149 
	lw	%r26 %r1 24
	lw.s	%r1 %f0 16
	ilw	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	lw.s	%r1 %f2 24
	mul.s	%f0 %f2 %f0
	lw	%r26 %r2 48
	lw.s	%r2 %f2 0
	mul.s	%f0 %f2 %f2
	ilw	%r26 %f3 8
	add.s	%f2 %f3 %f2
	isw	%r26 %f0 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2557 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	lw	%r26 %r1 52
	isw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_a.2669 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	mov.s	%f0 %f1
	ilw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fless.2552 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9150 
	addi	%r0 %r1 0
	j	be_cont.9151 
be_else.9150 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 16
	ilw	%r26 %f1 72
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 32
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fabs.2557 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	lw	%r26 %r1 52
	isw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2673 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	mov.s	%f0 %f1
	ilw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fless.2552 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9152 
	addi	%r0 %r1 0
	j	be_cont.9153 
be_else.9152 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 24
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2544 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9154 
	addi	%r0 %r1 1
	j	be_cont.9155 
be_else.9154 :
	addi	%r0 %r1 0
be_cont.9155 :
be_cont.9153 :
be_cont.9151 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9156 
	lw	%r26 %r1 24
	lw.s	%r1 %f0 32
	ilw	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	lw.s	%r1 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r2 48
	lw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f1
	ilw	%r26 %f2 8
	add.s	%f1 %f2 %f1
	isw	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fabs.2557 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	lw	%r26 %r1 52
	isw	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_a.2669 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	mov.s	%f0 %f1
	ilw	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fless.2552 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9157 
	addi	%r0 %r1 0
	j	be_cont.9158 
be_else.9157 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	ilw	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 16
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fabs.2557 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	lw	%r26 %r1 52
	isw	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_b.2671 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	mov.s	%f0 %f1
	ilw	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fless.2552 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9159 
	addi	%r0 %r1 0
	j	be_cont.9160 
be_else.9159 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 40
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fiszero.2544 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9161 
	addi	%r0 %r1 1
	j	be_cont.9162 
be_else.9161 :
	addi	%r0 %r1 0
be_cont.9162 :
be_cont.9160 :
be_cont.9158 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9163 
	addi	%r0 %r1 0
	retl
be_else.9163 :
	lw	%r26 %r1 0
	ilw	%r26 %f0 96
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	retl
be_else.9156 :
	lw	%r26 %r1 0
	ilw	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	retl
be_else.9149 :
	lw	%r26 %r1 0
	ilw	%r26 %f0 40
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_surface_fast.2804 :
	lw	%r24 %r1 4
	lw.s	%r2 %f3 0
	sw	%r26 %r1 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	isw	%r26 %f0 24
	sw	%r26 %r2 32
	mov.s	%f3 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2548 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9165 
	addi	%r0 %r1 0
	retl
be_else.9165 :
	lw	%r26 %r1 32
	lw.s	%r1 %f0 8
	ilw	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r1 %f1 16
	ilw	%r26 %f2 16
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	lw.s	%r1 %f1 24
	ilw	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast.2810 :
	lw	%r24 %r3 4
	lw.s	%r2 %f3 0
	sw	%r26 %r3 0
	isw	%r26 %f3 8
	sw	%r26 %r1 16
	isw	%r26 %f2 24
	isw	%r26 %f1 32
	isw	%r26 %f0 40
	sw	%r26 %r2 48
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2544 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9168 
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	ilw	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r1 %f2 16
	ilw	%r26 %f3 32
	mul.s	%f2 %f3 %f2
	add.s	%f0 %f2 %f0
	lw.s	%r1 %f2 24
	ilw	%r26 %f4 24
	mul.s	%f2 %f4 %f2
	add.s	%f0 %f2 %f0
	lw	%r26 %r2 16
	isw	%r26 %f0 56
	mov	%r2 %r1
	mov.s	%f4 %f2
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	quadratic.2774 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 16
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2661 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9170 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 64
	sub.s	%f1 %f0 %f0
	j	be_cont.9171 
be_else.9170 :
	ilw	%r26 %f0 64
be_cont.9171 :
	ilw	%r26 %f1 56
	isw	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2555 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	ilw	%r26 %f2 8
	mul.s	%f2 %f1 %f1
	sub.s	%f0 %f1 %f0
	isw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fispos.2546 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9172 
	addi	%r0 %r1 0
	retl
be_else.9172 :
	lw	%r26 %r1 16
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2665 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9173 
	ilw	%r26 %f0 80
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 56
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 32
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9174 
be_else.9173 :
	ilw	%r26 %f0 80
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 56
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 32
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9174 :
	addi	%r0 %r1 1
	retl
be_else.9168 :
	addi	%r0 %r1 0
	retl
solver_fast.2816 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	lw	%r7 %r7 %r8
	lw.s	%r3 %f0 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r6 8
	sw	%r26 %r1 12
	sw	%r26 %r2 16
	sw	%r26 %r7 20
	sw	%r26 %r3 24
	isw	%r26 %f0 32
	mov	%r7 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_x.2677 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 8
	lw	%r26 %r2 20
	isw	%r26 %f0 40
	isw	%r26 %f1 48
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_y.2679 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 16
	lw	%r26 %r1 20
	isw	%r26 %f0 56
	isw	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_z.2681 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_const.2722 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r1 %r1 %r2
	lw	%r26 %r2 20
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_form.2661 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9176 
	lw	%r26 %r1 16
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_vec.2720 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	mov	%r1 %r2
	ilw	%r26 %f0 40
	ilw	%r26 %f1 56
	ilw	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r3 80
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9176 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9177 
	ilw	%r26 %f0 40
	ilw	%r26 %f1 56
	ilw	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9177 :
	ilw	%r26 %f0 40
	ilw	%r26 %f1 56
	ilw	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_surface_fast2.2820 :
	lw	%r24 %r1 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fisneg.2548 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9178 
	addi	%r0 %r1 0
	retl
be_else.9178 :
	lw	%r26 %r1 8
	lw.s	%r1 %f0 0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast2.2827 :
	lw	%r24 %r4 4
	lw.s	%r2 %f3 0
	sw	%r26 %r4 0
	sw	%r26 %r1 4
	isw	%r26 %f3 8
	sw	%r26 %r3 16
	isw	%r26 %f2 24
	isw	%r26 %f1 32
	isw	%r26 %f0 40
	sw	%r26 %r2 48
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2544 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9180 
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	ilw	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r1 %f1 16
	ilw	%r26 %f2 32
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	lw.s	%r1 %f1 24
	ilw	%r26 %f2 24
	mul.s	%f1 %f2 %f1
	add.s	%f0 %f1 %f0
	lw	%r26 %r2 16
	lw.s	%r2 %f1 24
	isw	%r26 %f0 56
	isw	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2555 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	ilw	%r26 %f2 8
	mul.s	%f2 %f1 %f1
	sub.s	%f0 %f1 %f0
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2546 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9182 
	addi	%r0 %r1 0
	retl
be_else.9182 :
	lw	%r26 %r1 4
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isinvert.2665 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9183 
	ilw	%r26 %f0 72
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 56
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 32
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9184 
be_else.9183 :
	ilw	%r26 %f0 72
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 56
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 32
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9184 :
	addi	%r0 %r1 1
	retl
be_else.9180 :
	addi	%r0 %r1 0
	retl
solver_fast2.2834 :
	lw	%r24 %r3 16
	lw	%r24 %r4 12
	lw	%r24 %r5 8
	lw	%r24 %r6 4
	addi	%r0 %r25 2
	sll	%r1 %r7 %r25
	lw	%r6 %r6 %r7
	sw	%r26 %r4 0
	sw	%r26 %r3 4
	sw	%r26 %r5 8
	sw	%r26 %r6 12
	sw	%r26 %r1 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_ctbl.2699 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 8
	lw.s	%r1 %f2 16
	lw	%r26 %r2 20
	sw	%r26 %r1 24
	isw	%r26 %f2 32
	isw	%r26 %f1 40
	isw	%r26 %f0 48
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_const.2722 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r1 %r1 %r2
	lw	%r26 %r2 12
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2661 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9186 
	lw	%r26 %r1 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2720 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	mov	%r1 %r2
	ilw	%r26 %f0 48
	ilw	%r26 %f1 40
	ilw	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r3 56
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9186 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9187 
	ilw	%r26 %f0 48
	ilw	%r26 %f1 40
	ilw	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9187 :
	ilw	%r26 %f0 48
	ilw	%r26 %f1 40
	ilw	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
setup_rect_table.2837 :
	addi	%r0 %r3 6
	addi	%r0 %r4 l.6250 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2544 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9188 
	lw	%r26 %r1 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_isinvert.2665 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fisneg.2548 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	xor.2602 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_a.2669 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg_cond.2607 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	j	be_cont.9189 
be_else.9188 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
be_cont.9189 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fiszero.2544 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9190 
	lw	%r26 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_isinvert.2665 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2548 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2602 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_b.2671 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fneg_cond.2607 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 8
	div.s	%f0 %f1 %f0
	sw.s	%r1 %f0 24
	j	be_cont.9191 
be_else.9190 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 24
be_cont.9191 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fiszero.2544 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9192 
	lw	%r26 %r1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2665 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	lw.s	%r2 %f0 16
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2548 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	xor.2602 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_c.2673 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg_cond.2607 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 8
	sw.s	%r1 %f0 32
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 16
	div.s	%f0 %f1 %f0
	sw.s	%r1 %f0 40
	j	be_cont.9193 
be_else.9192 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 40
be_cont.9193 :
	retl
setup_surface_table.2840 :
	addi	%r0 %r3 4
	addi	%r0 %r4 l.6250 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	lw	%r26 %r3 0
	sw	%r26 %r1 8
	isw	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_a.2669 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r2 0
	isw	%r26 %f0 24
	isw	%r26 %f1 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2671 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 24
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 16
	lw	%r26 %r1 0
	isw	%r26 %f0 40
	isw	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_c.2673 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	add.s	%f1 %f0 %f0
	isw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fispos.2546 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9195 
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	j	be_cont.9196 
be_else.9195 :
	addi	%r0 %r1 l.6288 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 56
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2669 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2550 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2671 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2550 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2673 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2550 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 24
be_cont.9196 :
	retl
setup_second_table.2843 :
	addi	%r0 %r3 5
	addi	%r0 %r4 l.6250 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 8
	lw.s	%r2 %f2 16
	lw	%r26 %r3 0
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	quadratic.2774 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r2 0
	isw	%r26 %f0 16
	isw	%r26 %f1 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2669 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg.2550 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r2 0
	isw	%r26 %f0 32
	isw	%r26 %f1 40
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_b.2671 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2550 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 4
	lw.s	%r1 %f1 16
	lw	%r26 %r2 0
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2673 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2550 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	ilw	%r26 %f1 16
	sw.s	%r1 %f1 0
	lw	%r26 %r2 0
	isw	%r26 %f0 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_isrot.2667 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9198 
	lw	%r26 %r1 8
	ilw	%r26 %f0 32
	sw.s	%r1 %f0 8
	ilw	%r26 %f0 48
	sw.s	%r1 %f0 16
	ilw	%r26 %f0 64
	sw.s	%r1 %f0 24
	j	be_cont.9199 
be_else.9198 :
	lw	%r26 %r1 4
	lw.s	%r1 %f0 16
	lw	%r26 %r2 0
	isw	%r26 %f0 72
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_r2.2695 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r2 0
	isw	%r26 %f0 80
	isw	%r26 %f1 88
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r3.2697 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 88
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 80
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2559 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 4
	lw.s	%r2 %f0 16
	lw	%r26 %r3 0
	isw	%r26 %f0 96
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2693 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r2 0
	isw	%r26 %f0 104
	isw	%r26 %f1 112
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_r3.2697 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 104
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fhalf.2559 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	lw	%r26 %r3 0
	isw	%r26 %f0 120
	mov	%r3 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	o_param_r1.2693 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	ilw	%r26 %f1 120
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r1 0
	isw	%r26 %f0 128
	isw	%r26 %f1 136
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_param_r2.2695 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 136
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 128
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2559 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 64
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 24
be_cont.9199 :
	ilw	%r26 %f0 16
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fiszero.2544 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9200 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 16
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 32
	j	be_cont.9201 
be_else.9200 :
be_cont.9201 :
	lw	%r26 %r1 8
	retl
iter_setup_dirvec_constants.2846 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9202 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r3 %r3 %r4
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_const.2722 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_vec.2720 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_form.2661 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9203 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_rect_table.2837 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	sw	%r4 %r1 %r3
	j	be_cont.9204 
be_else.9203 :
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9205 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_surface_table.2840 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	sw	%r4 %r1 %r3
	j	be_cont.9206 
be_else.9205 :
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_second_table.2843 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	sw	%r4 %r1 %r3
be_cont.9206 :
be_cont.9204 :
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	lw	%r26 %r1 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9202 :
	retl
setup_dirvec_constants.2849 :
	lw	%r24 %r2 8
	lw	%r24 %r24 4
	lw	%r2 %r2 0
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	lw	%r24 %r23 0
	jr	%r23
setup_startp_constants.2851 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9208 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r3 %r3 %r4
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_ctbl.2699 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2661 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	lw.s	%r2 %f0 0
	lw	%r26 %r3 12
	sw	%r26 %r1 20
	isw	%r26 %f0 24
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2677 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	lw.s	%r2 %f0 8
	lw	%r26 %r3 12
	isw	%r26 %f0 32
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2679 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 8
	lw.s	%r2 %f0 16
	lw	%r26 %r3 12
	isw	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2681 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 16
	lw	%r26 %r2 20
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9209 
	lw	%r26 %r2 12
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_abc.2675 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r2 16
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 8
	lw.s	%r2 %f2 16
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2637 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	sw.s	%r1 %f0 24
	j	be_cont.9210 
be_else.9209 :
addi	%r0 %r25 2
	bg	%r2 %r25 ble_else.9211 
	j	ble_cont.9212 
ble_else.9211 :
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 8
	lw.s	%r1 %f2 16
	lw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	quadratic.2774 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9213 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	j	be_cont.9214 
be_else.9213 :
be_cont.9214 :
	lw	%r26 %r1 16
	sw.s	%r1 %f0 24
ble_cont.9212 :
be_cont.9210 :
	lw	%r26 %r1 4
	addi	%r0 %r25 1
	sub	%r1 %r25 %r2
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9208 :
	retl
setup_startp.2854 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	veccpy.2623 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r0 %r25 1
	sub	%r1 %r25 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
is_rect_outside.2856 :
	isw	%r26 %f2 0
	isw	%r26 %f1 8
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fabs.2557 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2669 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov.s	%f0 %f1
	ilw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2552 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9217 
	addi	%r0 %r1 0
	j	be_cont.9218 
be_else.9217 :
	ilw	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fabs.2557 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	isw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2671 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	ilw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2552 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9219 
	addi	%r0 %r1 0
	j	be_cont.9220 
be_else.9219 :
	ilw	%r26 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fabs.2557 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	isw	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_c.2673 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	mov.s	%f0 %f1
	ilw	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2552 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
be_cont.9220 :
be_cont.9218 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9221 
	lw	%r26 %r1 16
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2665 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9222 
	addi	%r0 %r1 1
	retl
be_else.9222 :
	addi	%r0 %r1 0
	retl
be_else.9221 :
	lw	%r26 %r1 16
	j	o_isinvert.2665 
is_plane_outside.2861 :
	sw	%r26 %r1 0
	isw	%r26 %f2 8
	isw	%r26 %f1 16
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2675 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f0 24
	ilw	%r26 %f1 16
	ilw	%r26 %f2 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veciprod2.2637 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 0
	isw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_isinvert.2665 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f0 32
	sw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fisneg.2548 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	xor.2602 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9224 
	addi	%r0 %r1 1
	retl
be_else.9224 :
	addi	%r0 %r1 0
	retl
is_second_outside.2866 :
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	quadratic.2774 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	isw	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2661 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9226 
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 8
	sub.s	%f1 %f0 %f0
	j	be_cont.9227 
be_else.9226 :
	ilw	%r26 %f0 8
be_cont.9227 :
	lw	%r26 %r1 0
	isw	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2665 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2548 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2602 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9228 
	addi	%r0 %r1 1
	retl
be_else.9228 :
	addi	%r0 %r1 0
	retl
is_outside.2871 :
	isw	%r26 %f2 0
	isw	%r26 %f1 8
	sw	%r26 %r1 16
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2677 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	isw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2679 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 8
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	isw	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2681 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	isw	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2661 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9230 
	ilw	%r26 %f0 32
	ilw	%r26 %f1 40
	ilw	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_rect_outside.2856 
be_else.9230 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9231 
	ilw	%r26 %f0 32
	ilw	%r26 %f1 40
	ilw	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_plane_outside.2861 
be_else.9231 :
	ilw	%r26 %f0 32
	ilw	%r26 %f1 40
	ilw	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_second_outside.2866 
check_all_inside.2876 :
	lw	%r24 %r3 4
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	lw	%r2 %r4 %r4
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.9232 
	addi	%r0 %r1 1
	retl
be_else.9232 :
	addi	%r0 %r25 2
	sll	%r4 %r4 %r25
	lw	%r3 %r3 %r4
	isw	%r26 %f2 0
	isw	%r26 %f1 8
	isw	%r26 %f0 16
	sw	%r26 %r2 24
	sw	%r26 %r24 28
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	is_outside.2871 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9233 
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	ilw	%r26 %f0 16
	ilw	%r26 %f1 8
	ilw	%r26 %f2 0
	lw	%r26 %r2 24
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9233 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.2882 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	lw	%r2 %r10 %r10
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.9234 
	addi	%r0 %r1 0
	retl
be_else.9234 :
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	lw	%r2 %r10 %r10
	sw	%r26 %r9 0
	sw	%r26 %r8 4
	sw	%r26 %r7 8
	sw	%r26 %r2 12
	sw	%r26 %r24 16
	sw	%r26 %r1 20
	sw	%r26 %r5 24
	sw	%r26 %r10 28
	sw	%r26 %r4 32
	mov	%r6 %r2
	mov	%r10 %r1
	mov	%r3 %r24
	mov	%r8 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 32
	lw.s	%r2 %f0 0
	isw	%r26 %f0 40
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9236 
	addi	%r0 %r1 0
	j	be_cont.9237 
be_else.9236 :
	addi	%r0 %r1 l.6639 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2552 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
be_cont.9237 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9238 
	lw	%r26 %r1 28
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 24
	lw	%r2 %r1 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2665 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9239 
	addi	%r0 %r1 0
	retl
be_else.9239 :
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9238 :
	addi	%r0 %r1 l.6641 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 40
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 4
	lw.s	%r2 %f2 0
	add.s	%f1 %f2 %f1
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f3 8
	add.s	%f2 %f3 %f2
	lw.s	%r1 %f3 16
	mul.s	%f3 %f0 %f0
	lw.s	%r2 %f3 16
	add.s	%f0 %f3 %f0
	addi	%r0 %r1 0
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9240 
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9240 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2885 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	lw	%r2 %r5 %r5
	addi	%r0 %r25 -1
	bne	%r5 %r25 be_else.9241 
	addi	%r0 %r1 0
	retl
be_else.9241 :
	addi	%r0 %r25 2
	sll	%r5 %r5 %r25
	lw	%r4 %r4 %r5
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
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9242 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9242 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2888 :
	lw	%r24 %r3 20
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	lw	%r2 %r8 %r8
	lw	%r8 %r9 0
	addi	%r0 %r25 -1
	bne	%r9 %r25 be_else.9243 
	addi	%r0 %r1 0
	retl
be_else.9243 :
	sw	%r26 %r8 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9244 
	addi	%r0 %r1 1
	j	be_cont.9245 
be_else.9244 :
	sw	%r26 %r4 20
	mov	%r6 %r2
	mov	%r9 %r1
	mov	%r3 %r24
	mov	%r7 %r3
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9246 
	addi	%r0 %r1 0
	j	be_cont.9247 
be_else.9246 :
	lw	%r26 %r1 20
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.6655 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2552 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9248 
	addi	%r0 %r1 0
	j	be_cont.9249 
be_else.9248 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9250 
	addi	%r0 %r1 0
	j	be_cont.9251 
be_else.9250 :
	addi	%r0 %r1 1
be_cont.9251 :
be_cont.9249 :
be_cont.9247 :
be_cont.9245 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9252 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9252 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9253 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9253 :
	addi	%r0 %r1 1
	retl
solve_each_element.2891 :
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r25 2
	sll	%r1 %r13 %r25
	lw	%r2 %r13 %r13
	addi	%r0 %r25 -1
	bne	%r13 %r25 be_else.9254 
	retl
be_else.9254 :
	sw	%r26 %r9 0
	sw	%r26 %r11 4
	sw	%r26 %r10 8
	sw	%r26 %r12 12
	sw	%r26 %r5 16
	sw	%r26 %r4 20
	sw	%r26 %r6 24
	sw	%r26 %r3 28
	sw	%r26 %r2 32
	sw	%r26 %r24 36
	sw	%r26 %r1 40
	sw	%r26 %r8 44
	sw	%r26 %r13 48
	mov	%r3 %r2
	mov	%r13 %r1
	mov	%r7 %r24
	mov	%r5 %r3
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9256 
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 44
	lw	%r2 %r1 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2665 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9257 
	retl
be_else.9257 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
be_else.9256 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6250 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 52
	isw	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2552 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9259 
	j	be_cont.9260 
be_else.9259 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	ilw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2552 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9261 
	j	be_cont.9262 
be_else.9261 :
	addi	%r0 %r1 l.6641 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 56
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 16
	lw.s	%r2 %f2 0
	add.s	%f1 %f2 %f1
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f3 8
	add.s	%f2 %f3 %f2
	lw.s	%r1 %f3 16
	mul.s	%f3 %f0 %f3
	lw.s	%r2 %f4 16
	add.s	%f3 %f4 %f3
	addi	%r0 %r2 0
	lw	%r26 %r3 32
	lw	%r26 %r24 12
	isw	%r26 %f3 64
	isw	%r26 %f2 72
	isw	%r26 %f1 80
	isw	%r26 %f0 88
	mov	%r2 %r1
	mov	%r3 %r2
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9263 
	j	be_cont.9264 
be_else.9263 :
	lw	%r26 %r1 20
	ilw	%r26 %f0 88
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 80
	ilw	%r26 %f1 72
	ilw	%r26 %f2 64
	lw	%r26 %r1 8
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	vecset.2613 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	lw	%r26 %r1 4
	lw	%r26 %r2 48
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 52
	sw	%r1 %r2 0
be_cont.9264 :
be_cont.9262 :
be_cont.9260 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.2895 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	lw	%r2 %r6 %r6
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9265 
	retl
be_else.9265 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	lw	%r5 %r5 %r6
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
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix.2899 :
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	lw	%r2 %r9 %r9
	lw	%r9 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.9267 
	retl
be_else.9267 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r10 %r25 be_else.9269 
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r8 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	j	be_cont.9270 
be_else.9269 :
	sw	%r26 %r9 16
	sw	%r26 %r8 20
	sw	%r26 %r4 24
	sw	%r26 %r6 28
	mov	%r3 %r2
	mov	%r10 %r1
	mov	%r7 %r24
	mov	%r5 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9271 
	j	be_cont.9272 
be_else.9271 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2552 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9273 
	j	be_cont.9274 
be_else.9273 :
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	lw	%r26 %r3 0
	lw	%r26 %r24 20
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
be_cont.9274 :
be_cont.9272 :
be_cont.9270 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection.2903 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.6678 
	ilw.s	%r5 %f0 0
	sw.s	%r3 %f0 0
	addi	%r0 %r5 0
	lw	%r4 %r4 0
	sw	%r26 %r3 0
	mov	%r1 %r3
	mov	%r2 %r24
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 4
	lw	%r24 %r23 0
	addi	%r26 %r26 8	
	jalr	%r23
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.6655 
	ilw.s	%r1 %f0 0
	isw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2552 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9276 
	addi	%r0 %r1 0
	retl
be_else.9276 :
	addi	%r0 %r1 l.6684 
	ilw.s	%r1 %f1 0
	ilw	%r26 %f0 8
	j	fless.2552 
solve_each_element_fast.2905 :
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	sw	%r26 %r9 0
	sw	%r26 %r11 4
	sw	%r26 %r10 8
	sw	%r26 %r12 12
	sw	%r26 %r5 16
	sw	%r26 %r4 20
	sw	%r26 %r7 24
	sw	%r26 %r24 28
	sw	%r26 %r8 32
	sw	%r26 %r3 36
	sw	%r26 %r6 40
	sw	%r26 %r2 44
	sw	%r26 %r1 48
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	d_vec.2720 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	lw	%r4 %r3 %r3
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9277 
	retl
be_else.9277 :
	lw	%r26 %r5 36
	lw	%r26 %r24 40
	sw	%r26 %r1 52
	sw	%r26 %r3 56
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9279 
	lw	%r26 %r1 56
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	lw	%r2 %r1 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_isinvert.2665 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9280 
	retl
be_else.9280 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9279 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6250 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 60
	isw	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2552 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9282 
	j	be_cont.9283 
be_else.9282 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	ilw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2552 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9284 
	j	be_cont.9285 
be_else.9284 :
	addi	%r0 %r1 l.6641 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 64
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 52
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r2 16
	lw.s	%r2 %f2 0
	add.s	%f1 %f2 %f1
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f2
	lw.s	%r2 %f3 8
	add.s	%f2 %f3 %f2
	lw.s	%r1 %f3 16
	mul.s	%f3 %f0 %f3
	lw.s	%r2 %f4 16
	add.s	%f3 %f4 %f3
	addi	%r0 %r1 0
	lw	%r26 %r2 44
	lw	%r26 %r24 12
	isw	%r26 %f3 72
	isw	%r26 %f2 80
	isw	%r26 %f1 88
	isw	%r26 %f0 96
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9286 
	j	be_cont.9287 
be_else.9286 :
	lw	%r26 %r1 20
	ilw	%r26 %f0 96
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 88
	ilw	%r26 %f1 80
	ilw	%r26 %f2 72
	lw	%r26 %r1 8
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecset.2613 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	lw	%r26 %r1 4
	lw	%r26 %r2 56
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 60
	sw	%r1 %r2 0
be_cont.9287 :
be_cont.9285 :
be_cont.9283 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.2909 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	lw	%r2 %r6 %r6
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9288 
	retl
be_else.9288 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
	lw	%r5 %r5 %r6
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
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix_fast.2913 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	lw	%r2 %r8 %r8
	lw	%r8 %r9 0
	addi	%r0 %r25 -1
	bne	%r9 %r25 be_else.9290 
	retl
be_else.9290 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9292 
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	j	be_cont.9293 
be_else.9292 :
	sw	%r26 %r8 16
	sw	%r26 %r7 20
	sw	%r26 %r4 24
	sw	%r26 %r6 28
	mov	%r3 %r2
	mov	%r9 %r1
	mov	%r5 %r24
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9294 
	j	be_cont.9295 
be_else.9294 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2552 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9296 
	j	be_cont.9297 
be_else.9296 :
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	lw	%r26 %r3 0
	lw	%r26 %r24 20
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
be_cont.9297 :
be_cont.9295 :
be_cont.9293 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection_fast.2917 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.6678 
	ilw.s	%r5 %f0 0
	sw.s	%r3 %f0 0
	addi	%r0 %r5 0
	lw	%r4 %r4 0
	sw	%r26 %r3 0
	mov	%r1 %r3
	mov	%r2 %r24
	mov	%r4 %r2
	mov	%r5 %r1
	sw	%r26 %r28 4
	lw	%r24 %r23 0
	addi	%r26 %r26 8	
	jalr	%r23
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.6655 
	ilw.s	%r1 %f0 0
	isw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2552 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9299 
	addi	%r0 %r1 0
	retl
be_else.9299 :
	addi	%r0 %r1 l.6684 
	ilw.s	%r1 %f1 0
	ilw	%r26 %f0 8
	j	fless.2552 
get_nvector_rect.2919 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw	%r3 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	vecbzero.2621 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	addi	%r0 %r25 1
	sub	%r1 %r25 %r2
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	addi	%r0 %r25 3
	sll	%r1 %r1 %r25
	lw	%r26 %r3 4
	lw.s	%r3 %f0 %r1
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sgn.2605 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2550 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 3
	sll	%r1 %r1 %r25
	lw	%r26 %r2 0
	sw.s	%r2 %f0 %r1
	retl
get_nvector_plane.2921 :
	lw	%r24 %r2 4
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_a.2669 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2550 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_b.2671 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2550 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_c.2673 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2550 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 16
	retl
get_nvector_second.2923 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	isw	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2677 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 8
	lw	%r26 %r2 4
	isw	%r26 %f0 24
	isw	%r26 %f1 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2679 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 16
	lw	%r26 %r1 4
	isw	%r26 %f0 40
	isw	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_z.2681 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2669 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2671 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_c.2673 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isrot.2667 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9303 
	lw	%r26 %r1 0
	ilw	%r26 %f0 64
	sw.s	%r1 %f0 0
	ilw	%r26 %f0 72
	sw.s	%r1 %f0 8
	ilw	%r26 %f0 80
	sw.s	%r1 %f0 16
	j	be_cont.9304 
be_else.9303 :
	lw	%r26 %r1 4
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r3.2697 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r2.2695 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f2 88
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2559 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 64
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r3.2697 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2693 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 96
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fhalf.2559 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 72
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r2.2695 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	isw	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2693 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 104
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fhalf.2559 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f1 80
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 16
be_cont.9304 :
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_isinvert.2665 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r1 0
	j	vecunit_sgn.2631 
get_nvector.2925 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r1 4
	sw	%r26 %r5 8
	sw	%r26 %r2 12
	sw	%r26 %r4 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2661 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9305 
	lw	%r26 %r1 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9305 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9306 
	lw	%r26 %r1 4
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9306 :
	lw	%r26 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
utexture.2928 :
	lw	%r24 %r3 4
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_texturetype.2659 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_red.2687 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_green.2689 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_blue.2691 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 16
	lw	%r26 %r2 12
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.9307 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	isw	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2677 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	ilw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6775 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.6777 
	ilw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6758 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2552 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	lw.s	%r2 %f0 16
	lw	%r26 %r2 8
	sw	%r26 %r1 24
	isw	%r26 %f0 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_z.2681 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6775 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.6777 
	ilw.s	%r1 %f2 0
	mul.s	%f1 %f2 %f1
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6758 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2552 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r2 24
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9309 
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9311 
	addi	%r0 %r1 l.6751 
	ilw.s	%r1 %f0 0
	j	be_cont.9312 
be_else.9311 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
be_cont.9312 :
	j	be_cont.9310 
be_else.9309 :
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9313 
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	j	be_cont.9314 
be_else.9313 :
	addi	%r0 %r1 l.6751 
	ilw.s	%r1 %f0 0
be_cont.9314 :
be_cont.9310 :
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
be_else.9307 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9316 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 8
	addi	%r0 %r2 l.6767 
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2564 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2555 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6751 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.6751 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f2 0
	sub.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
be_else.9316 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.9318 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	isw	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_x.2677 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	ilw	%r26 %f1 40
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 16
	lw	%r26 %r1 8
	isw	%r26 %f0 48
	isw	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_z.2681 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	ilw	%r26 %f1 56
	sub.s	%f1 %f0 %f0
	ilw	%r26 %f1 48
	isw	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2555 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	isw	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2555 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6758 
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f0
	floor.w.s	%f0 %f1
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6739 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2566 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2555 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	addi	%r0 %r1 l.6751 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 8
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	addi	%r0 %r2 l.6751 
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 16
	retl
be_else.9318 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.9320 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	isw	%r26 %f0 80
	mov	%r3 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_x.2677 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 80
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	isw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_a.2669 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 88
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 16
	lw	%r26 %r2 8
	isw	%r26 %f0 96
	isw	%r26 %f1 104
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_z.2681 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f1 104
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	isw	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_c.2673 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 112
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 96
	isw	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fsqr.2555 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	ilw	%r26 %f1 120
	isw	%r26 %f0 128
	mov.s	%f1 %f0
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2555 
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	ilw	%r26 %f1 128
	add.s	%f1 %f0 %f0
	ilw	%r26 %f1 96
	isw	%r26 %f0 136
	mov.s	%f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2557 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	addi	%r0 %r1 l.6733 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fless.2552 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9321 
	ilw	%r26 %f0 96
	ilw	%r26 %f1 120
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2557 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	atan.2568 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	addi	%r0 %r1 l.6737 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6739 
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f0
	j	be_cont.9322 
be_else.9321 :
	addi	%r0 %r1 l.6735 
	ilw.s	%r1 %f0 0
be_cont.9322 :
	floor.w.s	%f0 %f1
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 8
	lw	%r26 %r1 8
	isw	%r26 %f0 144
	isw	%r26 %f1 152
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_param_y.2679 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	ilw	%r26 %f1 152
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	isw	%r26 %f0 160
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	o_param_b.2671 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 160
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 136
	isw	%r26 %f0 168
	mov.s	%f1 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2557 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	addi	%r0 %r1 l.6733 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fless.2552 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9323 
	ilw	%r26 %f0 136
	ilw	%r26 %f1 168
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2557 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	atan.2568 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	addi	%r0 %r1 l.6737 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6739 
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f0
	j	be_cont.9324 
be_else.9323 :
	addi	%r0 %r1 l.6735 
	ilw.s	%r1 %f0 0
be_cont.9324 :
	floor.w.s	%f0 %f1
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6746 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6275 
	ilw.s	%r1 %f2 0
	ilw	%r26 %f3 144
	sub.s	%f2 %f3 %f2
	isw	%r26 %f0 176
	isw	%r26 %f1 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2555 
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	ilw	%r26 %f1 184
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6275 
	ilw.s	%r1 %f1 0
	ilw	%r26 %f2 176
	sub.s	%f1 %f2 %f1
	isw	%r26 %f0 192
	mov.s	%f1 %f0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	fsqr.2555 
	addi	%r0 %r25 208
	sub	%r26 %r25 %r26
	lw	%r26 %r28 204
	ilw	%r26 %f1 192
	sub.s	%f1 %f0 %f0
	isw	%r26 %f0 200
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	fisneg.2548 
	addi	%r0 %r25 216
	sub	%r26 %r25 %r26
	lw	%r26 %r28 212
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9325 
	ilw	%r26 %f0 200
	j	be_cont.9326 
be_else.9325 :
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
be_cont.9326 :
	addi	%r0 %r1 l.6751 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6753 
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 16
	retl
be_else.9320 :
	retl
add_light.2931 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	isw	%r26 %f2 0
	isw	%r26 %f1 8
	isw	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r2 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2546 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9329 
	j	be_cont.9330 
be_else.9329 :
	ilw	%r26 %f0 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecaccum.2642 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
be_cont.9330 :
	ilw	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2546 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9331 
	retl
be_else.9331 :
	ilw	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2555 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2555 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 0
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 28
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 8
	add.s	%f1 %f0 %f1
	sw.s	%r1 %f1 8
	lw.s	%r1 %f1 16
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 16
	retl
trace_reflections.2935 :
	lw	%r24 %r3 32
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9334 
	addi	%r0 %r25 2
	sll	%r1 %r11 %r25
	lw	%r4 %r4 %r11
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	isw	%r26 %f1 8
	sw	%r26 %r10 16
	sw	%r26 %r2 20
	isw	%r26 %f0 24
	sw	%r26 %r6 32
	sw	%r26 %r3 36
	sw	%r26 %r5 40
	sw	%r26 %r4 44
	sw	%r26 %r8 48
	sw	%r26 %r9 52
	sw	%r26 %r7 56
	mov	%r4 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	r_dvec.2726 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r24 56
	sw	%r26 %r1 60
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9335 
	j	be_cont.9336 
be_else.9335 :
	lw	%r26 %r1 52
	lw	%r1 %r1 0
	addi	%r0 %r2 4
	mul	%r1 %r2 %r1
	lw	%r26 %r2 48
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 44
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	r_surface_id.2724 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	bne	%r2 %r1 be_else.9337 
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9339 
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	d_vec.2720 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veciprod.2634 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 44
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	r_bright.2728 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 24
	mul.s	%f0 %f1 %f2
	ilw	%r26 %f3 72
	mul.s	%f2 %f3 %f2
	lw	%r26 %r1 60
	isw	%r26 %f2 80
	isw	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	d_vec.2720 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	veciprod.2634 
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	ilw	%r26 %f1 88
	mul.s	%f1 %f0 %f1
	ilw	%r26 %f0 80
	ilw	%r26 %f2 8
	lw	%r26 %r24 16
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r0 %r25 104
	sub	%r26 %r25 %r26
	lw	%r26 %r28 100
	j	be_cont.9340 
be_else.9339 :
be_cont.9340 :
	j	be_cont.9338 
be_else.9337 :
be_cont.9338 :
be_cont.9336 :
	lw	%r26 %r1 4
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	ilw	%r26 %f0 24
	ilw	%r26 %f1 8
	lw	%r26 %r2 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9334 :
	retl
trace_ray.2940 :
	lw	%r24 %r4 80
	lw	%r24 %r5 76
	lw	%r24 %r6 72
	lw	%r24 %r7 68
	lw	%r24 %r8 64
	lw	%r24 %r9 60
	lw	%r24 %r10 56
	lw	%r24 %r11 52
	lw	%r24 %r12 48
	lw	%r24 %r13 44
	lw	%r24 %r14 40
	lw	%r24 %r15 36
	lw	%r24 %r16 32
	lw	%r24 %r17 28
	lw	%r24 %r18 24
	lw	%r24 %r19 20
	lw	%r24 %r20 16
	lw	%r24 %r21 12
	lw	%r24 %r22 8
	lw	%r24 %r23 4
	addi	%r0 %r25 4
	bg	%r1 %r25 ble_else.9343 
	sw	%r26 %r24 0
	isw	%r26 %f1 8
	sw	%r26 %r6 16
	sw	%r26 %r5 20
	sw	%r26 %r15 24
	sw	%r26 %r10 28
	sw	%r26 %r23 32
	sw	%r26 %r9 36
	sw	%r26 %r12 40
	sw	%r26 %r14 44
	sw	%r26 %r7 48
	sw	%r26 %r3 52
	sw	%r26 %r18 56
	sw	%r26 %r4 60
	sw	%r26 %r19 64
	sw	%r26 %r8 68
	sw	%r26 %r21 72
	sw	%r26 %r13 76
	sw	%r26 %r20 80
	sw	%r26 %r11 84
	sw	%r26 %r22 88
	isw	%r26 %f0 96
	sw	%r26 %r16 104
	sw	%r26 %r1 108
	sw	%r26 %r2 112
	sw	%r26 %r17 116
	mov	%r3 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	p_surface_ids.2705 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	lw	%r26 %r2 112
	lw	%r26 %r24 116
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	lw	%r24 %r23 0
	addi	%r26 %r26 128	
	jalr	%r23
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9346 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 120
	sw	%r4 %r1 %r3
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9347 
	retl
be_else.9347 :
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	veciprod.2634 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fneg.2550 
	addi	%r0 %r25 128
	sub	%r26 %r25 %r26
	lw	%r26 %r28 124
	isw	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fispos.2546 
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9350 
	retl
be_else.9350 :
	ilw	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2555 
	addi	%r0 %r25 144
	sub	%r26 %r25 %r26
	lw	%r26 %r28 140
	ilw	%r26 %f1 128
	mul.s	%f0 %f1 %f0
	ilw	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 88
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 84
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 8
	add.s	%f1 %f0 %f1
	sw.s	%r1 %f1 8
	lw.s	%r1 %f1 16
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 16
	retl
be_else.9346 :
	lw	%r26 %r1 80
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 76
	lw	%r3 %r2 %r2
	sw	%r26 %r1 136
	sw	%r26 %r2 140
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_reflectiontype.2663 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	lw	%r26 %r2 140
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_diffuse.2683 
	addi	%r0 %r25 152
	sub	%r26 %r25 %r26
	lw	%r26 %r28 148
	ilw	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 140
	lw	%r26 %r2 112
	lw	%r26 %r24 72
	isw	%r26 %f0 152
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r1 68
	lw	%r26 %r2 64
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	veccpy.2623 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r1 140
	lw	%r26 %r2 64
	lw	%r26 %r24 60
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	addi	%r0 %r1 4
	lw	%r26 %r2 136
	mul	%r2 %r1 %r1
	lw	%r26 %r2 56
	lw	%r2 %r2 0
	add	%r1 %r2 %r1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 120
	sw	%r4 %r1 %r3
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_intersection_points.2703 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
	lw	%r26 %r3 64
	mov	%r3 %r2
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	veccpy.2623 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_calc_diffuse.2707 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r2 140
	sw	%r26 %r1 160
	mov	%r2 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_diffuse.2683 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	addi	%r0 %r1 l.6275 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fless.2552 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9354 
	addi	%r0 %r1 1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	sw	%r4 %r1 %r3
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_energy.2709 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r3 %r3
	lw	%r26 %r4 48
	sw	%r26 %r1 164
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	veccpy.2623 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	lw	%r26 %r1 108
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 164
	lw	%r3 %r2 %r2
	addi	%r0 %r3 l.6809 
	ilw.s	%r3 %f0 0
	ilw	%r26 %f1 152
	mul.s	%f0 %f1 %f0
	mov	%r2 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	vecscale.2652 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	lw	%r26 %r1 52
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	p_nvectors.2718 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
	lw	%r26 %r3 44
	mov	%r3 %r2
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	veccpy.2623 
	addi	%r0 %r25 176
	sub	%r26 %r25 %r26
	lw	%r26 %r28 172
	j	be_cont.9355 
be_else.9354 :
	addi	%r0 %r1 0
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	sw	%r4 %r1 %r3
be_cont.9355 :
	addi	%r0 %r1 l.6812 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	isw	%r26 %f0 168
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	veciprod.2634 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	ilw	%r26 %f1 168
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	vecaccum.2642 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	lw	%r26 %r1 140
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	o_hilight.2685 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	ilw	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	isw	%r26 %f0 176
	sw	%r26 %r28 188
	lw	%r24 %r23 0
	addi	%r26 %r26 192	
	jalr	%r23
	addi	%r0 %r25 192
	sub	%r26 %r25 %r26
	lw	%r26 %r28 188
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9356 
	lw	%r26 %r1 44
	lw	%r26 %r2 104
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	veciprod.2634 
	addi	%r0 %r25 192
	sub	%r26 %r25 %r26
	lw	%r26 %r28 188
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fneg.2550 
	addi	%r0 %r25 192
	sub	%r26 %r25 %r26
	lw	%r26 %r28 188
	ilw	%r26 %f1 152
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	isw	%r26 %f0 184
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	veciprod.2634 
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fneg.2550 
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	mov.s	%f0 %f1
	ilw	%r26 %f0 184
	ilw	%r26 %f2 176
	lw	%r26 %r24 32
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	j	be_cont.9357 
be_else.9356 :
be_cont.9357 :
	lw	%r26 %r1 64
	lw	%r26 %r24 28
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	lw	%r26 %r1 24
	lw	%r1 %r1 0
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	ilw	%r26 %f0 152
	ilw	%r26 %f1 176
	lw	%r26 %r2 112
	lw	%r26 %r24 20
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	addi	%r0 %r1 l.6816 
	ilw.s	%r1 %f0 0
	ilw	%r26 %f1 96
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fless.2552 
	addi	%r0 %r25 200
	sub	%r26 %r25 %r26
	lw	%r26 %r28 196
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9358 
	retl
be_else.9358 :
	lw	%r26 %r1 108
addi	%r0 %r25 4
	bl	%r1 r25 bge_else.9360 
	j	bge_cont.9361 
bge_else.9360 :
	addi	%r1 %r2 1
	addi	%r0 %r3 -1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r4 120
	sw	%r4 %r3 %r2
bge_cont.9361 :
	lw	%r26 %r2 144
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9362 
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 140
	isw	%r26 %f0 192
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	o_diffuse.2683 
	addi	%r0 %r25 208
	sub	%r26 %r25 %r26
	lw	%r26 %r28 204
	ilw	%r26 %f1 192
	sub.s	%f1 %f0 %f0
	ilw	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 108
	addi	%r1 %r1 1
	lw	%r26 %r2 16
	lw.s	%r2 %f1 0
	ilw	%r26 %f2 8
	add.s	%f2 %f1 %f1
	lw	%r26 %r2 112
	lw	%r26 %r3 52
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9362 :
	retl
ble_else.9343 :
	retl
trace_diffuse_ray.2946 :
	lw	%r24 %r2 48
	lw	%r24 %r3 44
	lw	%r24 %r4 40
	lw	%r24 %r5 36
	lw	%r24 %r6 32
	lw	%r24 %r7 28
	lw	%r24 %r8 24
	lw	%r24 %r9 20
	lw	%r24 %r10 16
	lw	%r24 %r11 12
	lw	%r24 %r12 8
	lw	%r24 %r13 4
	sw	%r26 %r3 0
	sw	%r26 %r13 4
	isw	%r26 %f0 8
	sw	%r26 %r8 16
	sw	%r26 %r7 20
	sw	%r26 %r4 24
	sw	%r26 %r5 28
	sw	%r26 %r10 32
	sw	%r26 %r2 36
	sw	%r26 %r12 40
	sw	%r26 %r1 44
	sw	%r26 %r6 48
	sw	%r26 %r11 52
	mov	%r9 %r24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9365 
	retl
be_else.9365 :
	lw	%r26 %r1 52
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 48
	lw	%r2 %r1 %r1
	lw	%r26 %r2 44
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2720 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r1 56
	lw	%r26 %r24 40
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 56
	lw	%r26 %r2 32
	lw	%r26 %r24 36
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r1 0
	lw	%r26 %r2 28
	lw	%r2 %r2 0
	lw	%r26 %r24 24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9367 
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.2634 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2550 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	isw	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fispos.2546 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9369 
	addi	%r0 %r1 l.6250 
	ilw.s	%r1 %f0 0
	j	be_cont.9370 
be_else.9369 :
	ilw	%r26 %f0 64
be_cont.9370 :
	ilw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 56
	isw	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_diffuse.2683 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 72
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	j	vecaccum.2642 
be_else.9367 :
	retl
iter_trace_diffuse_rays.2949 :
	lw	%r24 %r5 4
	addi	%r0 %r25 0
	bl	%r4 %r25 bge_else.9372 
	addi	%r0 %r25 2
	sll	%r4 %r6 %r25
	lw	%r1 %r6 %r6
	sw	%r26 %r3 0
	sw	%r26 %r24 4
	sw	%r26 %r5 8
	sw	%r26 %r1 12
	sw	%r26 %r4 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	d_vec.2720 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.2634 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	isw	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2548 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9373 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	lw	%r3 %r2 %r2
	addi	%r0 %r4 l.6838 
	ilw.s	%r4 %f0 0
	ilw	%r26 %f1 24
	div.s	%f1 %f0 %f0
	lw	%r26 %r24 8
	mov	%r2 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	j	be_cont.9374 
be_else.9373 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 12
	lw	%r3 %r2 %r2
	addi	%r0 %r4 l.6835 
	ilw.s	%r4 %f0 0
	ilw	%r26 %f1 24
	div.s	%f1 %f0 %f0
	lw	%r26 %r24 8
	mov	%r2 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
be_cont.9374 :
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sub	%r1 %r25 %r4
	lw	%r26 %r1 12
	lw	%r26 %r2 20
	lw	%r26 %r3 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9372 :
	retl
trace_diffuse_rays.2954 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r5 12
	mov	%r3 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r4 118
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
trace_diffuse_ray_80percent.2958 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r1 16
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9376 
	j	be_cont.9377 
be_else.9376 :
	lw	%r5 %r6 0
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
be_cont.9377 :
	lw	%r26 %r1 16
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9378 
	j	be_cont.9379 
be_else.9378 :
	lw	%r26 %r2 12
	lw	%r2 %r3 4
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 8
	mov	%r4 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
be_cont.9379 :
	lw	%r26 %r1 16
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9380 
	j	be_cont.9381 
be_else.9380 :
	lw	%r26 %r2 12
	lw	%r2 %r3 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 8
	mov	%r4 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
be_cont.9381 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9382 
	j	be_cont.9383 
be_else.9382 :
	lw	%r26 %r2 12
	lw	%r2 %r3 12
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	lw	%r26 %r24 8
	mov	%r4 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
be_cont.9383 :
	lw	%r26 %r1 16
	addi	%r0 %r25 4
	bne	%r1 %r25 be_else.9384 
	retl
be_else.9384 :
	lw	%r26 %r1 12
	lw	%r1 %r1 16
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
calc_diffuse_using_1point.2962 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r4 0
	sw	%r26 %r3 4
	sw	%r26 %r5 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2718 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_intersection_points.2703 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_energy.2709 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 20
	lw	%r4 %r3 %r3
	lw	%r26 %r4 8
	sw	%r26 %r1 32
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veccpy.2623 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_group_id.2713 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 24
	lw	%r4 %r3 %r3
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r26 %r5 28
	lw	%r5 %r4 %r4
	lw	%r26 %r24 4
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 12
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	lw	%r2 %r2 %r1
	lw	%r26 %r1 0
	lw	%r26 %r3 8
	j	vecaccumv.2655 
calc_diffuse_using_5points.2965 :
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	lw	%r2 %r2 %r8
	sw	%r26 %r6 0
	sw	%r26 %r7 4
	sw	%r26 %r5 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	addi	%r0 %r25 1
	sub	%r2 %r25 %r3
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 16
	lw	%r4 %r3 %r3
	sw	%r26 %r1 24
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	lw	%r4 %r3 %r3
	sw	%r26 %r1 28
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 20
	addi	%r2 %r3 1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 16
	lw	%r4 %r3 %r3
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 20
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 12
	lw	%r4 %r3 %r3
	sw	%r26 %r1 36
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 24
	lw	%r4 %r3 %r3
	lw	%r26 %r4 4
	sw	%r26 %r1 40
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2623 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 28
	lw	%r3 %r2 %r2
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2646 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 32
	lw	%r3 %r2 %r2
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2646 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 36
	lw	%r3 %r2 %r2
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2646 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 40
	lw	%r3 %r2 %r2
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2646 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 20
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 16
	lw	%r2 %r1 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_energy.2709 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r1 %r2 %r2
	lw	%r26 %r1 0
	lw	%r26 %r3 4
	j	vecaccumv.2655 
do_without_neighbors.2971 :
	lw	%r24 %r3 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9386 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_surface_ids.2705 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9387 
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_calc_diffuse.2707 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9388 
	j	be_cont.9389 
be_else.9388 :
	lw	%r26 %r1 8
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
be_cont.9389 :
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9387 :
	retl
ble_else.9386 :
	retl
neighbors_exist.2974 :
	lw	%r24 %r3 4
	lw	%r3 %r4 4
	addi	%r2 %r5 1
	bg	%r4 %r5 ble_else.9392 
	addi	%r0 %r1 0
	retl
ble_else.9392 :
	addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.9393 
	addi	%r0 %r1 0
	retl
ble_else.9393 :
	lw	%r3 %r2 0
	addi	%r1 %r3 1
	bg	%r2 %r3 ble_else.9394 
	addi	%r0 %r1 0
	retl
ble_else.9394 :
	addi	%r0 %r25 0
	bg	%r1 %r25 ble_else.9395 
	addi	%r0 %r1 0
	retl
ble_else.9395 :
	addi	%r0 %r1 1
	retl
get_surface_id.2978 :
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	p_surface_ids.2705 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r1 %r1 %r2
	retl
neighbors_are_available.2981 :
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	lw	%r3 %r6 %r6
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r5 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r5 %r2
	mov	%r6 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	get_surface_id.2978 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 12
	lw	%r4 %r3 %r3
	lw	%r26 %r4 8
	sw	%r26 %r1 20
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2978 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9396 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r3 %r25
	lw	%r26 %r4 4
	lw	%r4 %r3 %r3
	lw	%r26 %r4 8
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2978 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9397 
	lw	%r26 %r1 16
	addi	%r0 %r25 1
	sub	%r1 %r25 %r3
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 0
	lw	%r4 %r3 %r3
	lw	%r26 %r5 8
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2978 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9398 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r3 0
	lw	%r3 %r1 %r1
	lw	%r26 %r3 8
	mov	%r3 %r2
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2978 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9399 
	addi	%r0 %r1 1
	retl
be_else.9399 :
	addi	%r0 %r1 0
	retl
be_else.9398 :
	addi	%r0 %r1 0
	retl
be_else.9397 :
	addi	%r0 %r1 0
	retl
be_else.9396 :
	addi	%r0 %r1 0
	retl
try_exploit_neighbors.2987 :
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	lw	%r4 %r9 %r9
	addi	%r0 %r25 4
	bg	%r6 %r25 ble_else.9400 
	sw	%r26 %r2 0
	sw	%r26 %r24 4
	sw	%r26 %r8 8
	sw	%r26 %r9 12
	sw	%r26 %r7 16
	sw	%r26 %r6 20
	sw	%r26 %r5 24
	sw	%r26 %r4 28
	sw	%r26 %r3 32
	sw	%r26 %r1 36
	mov	%r6 %r2
	mov	%r9 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	get_surface_id.2978 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9401 
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r5 20
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	neighbors_are_available.2981 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9402 
	lw	%r26 %r1 36
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 28
	lw	%r2 %r1 %r1
	lw	%r26 %r2 20
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9402 :
	lw	%r26 %r1 12
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_calc_diffuse.2707 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r5 20
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	lw	%r1 %r1 %r2
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9403 
	j	be_cont.9404 
be_else.9403 :
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r24 8
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
be_cont.9404 :
	lw	%r26 %r1 20
	addi	%r1 %r6 1
	lw	%r26 %r1 36
	lw	%r26 %r2 0
	lw	%r26 %r3 32
	lw	%r26 %r4 28
	lw	%r26 %r5 24
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9401 :
	retl
ble_else.9400 :
	retl
write_ppm_header.2994 :
	lw	%r24 %r1 4
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2570 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw	%r1 %r1 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2570 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 255
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2570 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
write_rgb_element.2996 :
	mfc1	%f0 %r1
addi	%r0 %r25 255
	bg	%r1 %r25 ble_else.9407 
addi	%r0 %r25 0
	bl	%r1 r25 bge_else.9409 
	j	bge_cont.9410 
bge_else.9409 :
	addi	%r0 %r1 0
bge_cont.9410 :
	j	ble_cont.9408 
ble_else.9407 :
	addi	%r0 %r1 255
ble_cont.9408 :
	j	print_int.2570 
write_rgb.2998 :
	lw	%r24 %r1 4
	lw.s	%r1 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2996 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f0 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2996 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f0 16
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2996 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
pretrace_diffuse_rays.3000 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9411 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2978 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9412 
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_calc_diffuse.2707 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9413 
	j	be_cont.9414 
be_else.9413 :
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_group_id.2713 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecbzero.2621 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2718 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_intersection_points.2703 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 24
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 8
	lw	%r3 %r2 %r2
	lw	%r26 %r3 16
	addi	%r0 %r25 2
	sll	%r3 %r4 %r25
	lw	%r26 %r5 28
	lw	%r5 %r4 %r4
	addi	%r0 %r25 2
	sll	%r3 %r5 %r25
	lw	%r1 %r1 %r5
	lw	%r26 %r24 4
	mov	%r1 %r3
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 20
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2711 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r1 %r3
	lw	%r26 %r3 12
	mov	%r3 %r2
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veccpy.2623 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
be_cont.9414 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	lw	%r26 %r1 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9412 :
	retl
ble_else.9411 :
	retl
pretrace_pixels.3003 :
	lw	%r24 %r4 36
	lw	%r24 %r5 32
	lw	%r24 %r6 28
	lw	%r24 %r7 24
	lw	%r24 %r8 20
	lw	%r24 %r9 16
	lw	%r24 %r10 12
	lw	%r24 %r11 8
	lw	%r24 %r12 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9417 
	lw.s	%r8 %f3 0
	lw	%r12 %r8 0
	sub	%r2 %r8 %r8
	mtc1	%r8 %f4
	mul.s	%f3 %f4 %f3
	lw.s	%r7 %f4 0
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f0 %f4
	sw.s	%r10 %f4 0
	lw.s	%r7 %f4 8
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f1 %f4
	sw.s	%r10 %f4 8
	lw.s	%r7 %f4 16
	mul.s	%f3 %f4 %f3
	add.s	%f3 %f2 %f3
	sw.s	%r10 %f3 16
	addi	%r0 %r7 0
	isw	%r26 %f2 0
	isw	%r26 %f1 8
	isw	%r26 %f0 16
	sw	%r26 %r24 24
	sw	%r26 %r11 28
	sw	%r26 %r3 32
	sw	%r26 %r10 36
	sw	%r26 %r5 40
	sw	%r26 %r1 44
	sw	%r26 %r2 48
	sw	%r26 %r4 52
	sw	%r26 %r6 56
	sw	%r26 %r9 60
	mov	%r7 %r2
	mov	%r10 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	vecunit_sgn.2631 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	vecbzero.2621 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 56
	lw	%r26 %r2 52
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2623 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6259 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	lw	%r4 %r3 %r3
	addi	%r0 %r5 l.6250 
	ilw.s	%r5 %f1 0
	lw	%r26 %r5 36
	lw	%r26 %r24 40
	mov	%r5 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	lw	%r3 %r2 %r2
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	p_rgb.2701 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r2 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2623 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	lw	%r3 %r2 %r2
	lw	%r26 %r4 32
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	p_set_group_id.2715 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	lw	%r3 %r2 %r2
	addi	%r0 %r4 0
	lw	%r26 %r24 28
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	addi	%r0 %r2 1
	lw	%r26 %r3 32
	sw	%r26 %r1 64
	mov	%r3 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	add_mod5.2610 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	mov	%r1 %r3
	ilw	%r26 %f0 16
	ilw	%r26 %f1 8
	ilw	%r26 %f2 0
	lw	%r26 %r1 44
	lw	%r26 %r2 64
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
bge_else.9417 :
	retl
pretrace_line.3010 :
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	lw.s	%r6 %f0 0
	lw	%r9 %r6 4
	sub	%r2 %r6 %r2
	mtc1	%r2 %f1
	mul.s	%f0 %f1 %f0
	lw.s	%r5 %f1 0
	mul.s	%f0 %f1 %f1
	lw.s	%r4 %f2 0
	add.s	%f1 %f2 %f1
	lw.s	%r5 %f2 8
	mul.s	%f0 %f2 %f2
	lw.s	%r4 %f3 8
	add.s	%f2 %f3 %f2
	lw.s	%r5 %f3 16
	mul.s	%f0 %f3 %f0
	lw.s	%r4 %f3 16
	add.s	%f0 %f3 %f0
	lw	%r8 %r2 0
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	mov	%r7 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	lw	%r24 %r23 0
	jr	%r23
scan_pixel.3014 :
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r10 %r10 0
	bg	%r10 %r1 ble_else.9419 
	retl
ble_else.9419 :
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	lw	%r4 %r10 %r10
	sw	%r26 %r24 0
	sw	%r26 %r6 4
	sw	%r26 %r3 8
	sw	%r26 %r7 12
	sw	%r26 %r11 16
	sw	%r26 %r4 20
	sw	%r26 %r5 24
	sw	%r26 %r2 28
	sw	%r26 %r1 32
	sw	%r26 %r9 36
	sw	%r26 %r8 40
	mov	%r10 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_rgb.2701 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2623 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 32
	lw	%r26 %r2 28
	lw	%r26 %r3 24
	lw	%r26 %r24 36
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9421 
	lw	%r26 %r1 32
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 20
	lw	%r3 %r2 %r2
	addi	%r0 %r4 0
	lw	%r26 %r24 16
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	j	be_cont.9422 
be_else.9421 :
	addi	%r0 %r6 0
	lw	%r26 %r1 32
	lw	%r26 %r2 28
	lw	%r26 %r3 8
	lw	%r26 %r4 20
	lw	%r26 %r5 24
	lw	%r26 %r24 12
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
be_cont.9422 :
	lw	%r26 %r24 4
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	lw	%r26 %r2 28
	lw	%r26 %r3 8
	lw	%r26 %r4 20
	lw	%r26 %r5 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
scan_line.3020 :
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	lw	%r8 %r9 4
	bg	%r9 %r1 ble_else.9423 
	retl
ble_else.9423 :
	lw	%r8 %r8 4
	addi	%r0 %r25 1
	sub	%r8 %r25 %r8
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r6 24
	bg	%r8 %r1 ble_else.9425 
	j	ble_cont.9426 
ble_else.9425 :
	addi	%r1 %r8 1
	mov	%r5 %r3
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
ble_cont.9426 :
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
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	addi	%r0 %r2 2
	lw	%r26 %r3 4
	sw	%r26 %r1 28
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	add_mod5.2610 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov	%r1 %r5
	lw	%r26 %r1 28
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
create_float5x3array.3026 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6250 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 16
	mov	%r2 %r1
	retl
create_pixel.3028 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6250 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	create_float5x3array.3026 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3026 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3026 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	create_float5x3array.3026 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	mov	%r27 %r2
	addi	%r27 %r27 32
	sw	%r2 %r1 28
	lw	%r26 %r1 24
	sw	%r2 %r1 24
	lw	%r26 %r1 20
	sw	%r2 %r1 20
	lw	%r26 %r1 16
	sw	%r2 %r1 16
	lw	%r26 %r1 12
	sw	%r2 %r1 12
	lw	%r26 %r1 8
	sw	%r2 %r1 8
	lw	%r26 %r1 4
	sw	%r2 %r1 4
	lw	%r26 %r1 0
	sw	%r2 %r1 0
	mov	%r2 %r1
	retl
init_line_elements.3030 :
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9427 
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3028 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 0
	sw	%r4 %r1 %r3
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	mov	%r4 %r1
	j	init_line_elements.3030 
bge_else.9427 :
	retl
create_pixelline.3033 :
	lw	%r24 %r1 4
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3028 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	mov	%r1 %r2
	lw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	lw	%r2 %r2 0
	addi	%r0 %r25 2
	sub	%r2 %r25 %r2
	j	init_line_elements.3030 
tan.3035 :
	isw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	sin.2564 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	ilw	%r26 %f1 0
	isw	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	cos.2566 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	div.s	%f1 %f0 %f0
	retl
adjust_position.3037 :
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.6816 
	ilw.s	%r1 %f2 0
	add.s	%f0 %f2 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f2 0
	div.s	%f2 %f0 %f2
	isw	%r26 %f0 0
	isw	%r26 %f1 8
	mov.s	%f2 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	atan.2568 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	tan.3035 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	ilw	%r26 %f1 0
	mul.s	%f0 %f1 %f0
	retl
calc_dirvec.3040 :
	lw	%r24 %r4 4
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9428 
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	isw	%r26 %f0 16
	isw	%r26 %f1 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2555 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	isw	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2555 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	ilw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f1 0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	ilw	%r26 %f1 16
	div.s	%f1 %f0 %f1
	ilw	%r26 %f2 24
	div.s	%f2 %f0 %f2
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f3 0
	div.s	%f3 %f0 %f0
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 4
	lw	%r2 %r1 %r1
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r1 %r3 %r3
	sw	%r26 %r1 40
	isw	%r26 %f0 48
	isw	%r26 %f2 56
	isw	%r26 %f1 64
	mov	%r3 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2720 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f0 64
	ilw	%r26 %f1 56
	ilw	%r26 %f2 48
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2613 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	lw	%r26 %r1 0
	addi	%r1 %r2 40
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	lw	%r3 %r2 %r2
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2720 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f0 56
	sw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2550 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	mov.s	%f0 %f2
	ilw	%r26 %f0 64
	ilw	%r26 %f1 48
	lw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2613 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	lw	%r26 %r1 0
	addi	%r1 %r2 80
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	lw	%r3 %r2 %r2
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2720 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f0 64
	sw	%r26 %r1 76
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fneg.2550 
	addi	%r0 %r25 88
	sub	%r26 %r25 %r26
	lw	%r26 %r28 84
	ilw	%r26 %f1 56
	isw	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2550 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	mov.s	%f0 %f2
	ilw	%r26 %f0 48
	ilw	%r26 %f1 80
	lw	%r26 %r1 76
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	vecset.2613 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	lw	%r26 %r1 0
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	lw	%r3 %r2 %r2
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	d_vec.2720 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f0 64
	sw	%r26 %r1 88
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2550 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 56
	isw	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fneg.2550 
	addi	%r0 %r25 112
	sub	%r26 %r25 %r26
	lw	%r26 %r28 108
	ilw	%r26 %f1 48
	isw	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2550 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	mov.s	%f0 %f2
	ilw	%r26 %f0 96
	ilw	%r26 %f1 104
	lw	%r26 %r1 88
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	vecset.2613 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	lw	%r26 %r1 0
	addi	%r1 %r2 41
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	lw	%r3 %r2 %r2
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	d_vec.2720 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f0 64
	sw	%r26 %r1 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2550 
	addi	%r0 %r25 120
	sub	%r26 %r25 %r26
	lw	%r26 %r28 116
	ilw	%r26 %f1 48
	isw	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2550 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	mov.s	%f0 %f1
	ilw	%r26 %f0 120
	ilw	%r26 %f2 56
	lw	%r26 %r1 112
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	vecset.2613 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	lw	%r26 %r1 0
	addi	%r1 %r1 81
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 40
	lw	%r2 %r1 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	d_vec.2720 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	ilw	%r26 %f0 48
	sw	%r26 %r1 128
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2550 
	addi	%r0 %r25 136
	sub	%r26 %r25 %r26
	lw	%r26 %r28 132
	ilw	%r26 %f1 64
	ilw	%r26 %f2 56
	lw	%r26 %r1 128
	j	vecset.2613 
bge_else.9428 :
	isw	%r26 %f2 136
	sw	%r26 %r3 0
	sw	%r26 %r2 8
	sw	%r26 %r24 144
	isw	%r26 %f3 152
	sw	%r26 %r1 160
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	adjust_position.3037 
	addi	%r0 %r25 168
	sub	%r26 %r25 %r26
	lw	%r26 %r28 164
	lw	%r26 %r1 160
	addi	%r1 %r1 1
	ilw	%r26 %f1 152
	isw	%r26 %f0 168
	sw	%r26 %r1 176
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	adjust_position.3037 
	addi	%r0 %r25 184
	sub	%r26 %r25 %r26
	lw	%r26 %r28 180
	mov.s	%f0 %f1
	ilw	%r26 %f0 168
	ilw	%r26 %f2 136
	ilw	%r26 %f3 152
	lw	%r26 %r1 176
	lw	%r26 %r2 8
	lw	%r26 %r3 0
	lw	%r26 %r24 144
	lw	%r24 %r23 0
	jr	%r23
calc_dirvecs.3048 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9436 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.6282 
	ilw.s	%r5 %f2 0
	mul.s	%f1 %f2 %f1
	addi	%r0 %r5 l.6946 
	ilw.s	%r5 %f2 0
	sub.s	%f1 %f2 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.6250 
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.6250 
	ilw.s	%r6 %f3 0
	sw	%r26 %r24 0
	isw	%r26 %f0 8
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
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	mtc1	%r1 %f0
	addi	%r0 %r2 l.6282 
	ilw.s	%r2 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r2 l.6816 
	ilw.s	%r2 %f1 0
	add.s	%f0 %f1 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f1 0
	lw	%r26 %r3 24
	addi	%r3 %r4 2
	ilw	%r26 %f3 8
	lw	%r26 %r5 16
	lw	%r26 %r24 20
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	addi	%r0 %r2 1
	lw	%r26 %r3 16
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	add_mod5.2610 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	mov	%r1 %r2
	ilw	%r26 %f0 8
	lw	%r26 %r1 32
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9436 :
	retl
calc_dirvec_rows.3053 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9439 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.6282 
	ilw.s	%r5 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r5 l.6946 
	ilw.s	%r5 %f1 0
	sub.s	%f0 %f1 %f0
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
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	addi	%r0 %r2 2
	lw	%r26 %r3 8
	sw	%r26 %r1 16
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	add_mod5.2610 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 4
	addi	%r1 %r3 4
	lw	%r26 %r1 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9439 :
	retl
create_dirvec.3057 :
	lw	%r24 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6250 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 4
	sw	%r2 %r1 0
	mov	%r2 %r1
	retl
create_dirvec_elements.3059 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9441 
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	sw	%r4 %r1 %r3
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
bge_else.9441 :
	retl
create_dirvecs.3062 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9443 
	addi	%r0 %r5 120
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r1 12
	sw	%r26 %r5 16
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	sw	%r4 %r1 %r3
	addi	%r0 %r25 2
	sll	%r2 %r1 %r25
	lw	%r4 %r1 %r1
	addi	%r0 %r3 118
	lw	%r26 %r24 4
	mov	%r3 %r2
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9443 :
	retl
init_dirvec_constants.3064 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9445 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r1 %r4 %r4
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	mov	%r4 %r1
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	addi	%r0 %r25 1
	sub	%r1 %r25 %r2
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9445 :
	retl
init_vecset_constants.3067 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9447 
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	lw	%r3 %r3 %r4
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
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9447 :
	retl
init_dirvecs.3069 :
	lw	%r24 %r1 12
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r4 4
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	mov	%r4 %r1
	mov	%r2 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r24 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	addi	%r0 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
add_reflection.3071 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r24 4
	sw	%r26 %r4 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	isw	%r26 %f0 16
	sw	%r26 %r3 24
	isw	%r26 %f3 32
	isw	%r26 %f2 40
	isw	%r26 %f1 48
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	sw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2720 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f0 48
	ilw	%r26 %f1 40
	ilw	%r26 %f2 32
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	vecset.2613 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 56
	lw	%r26 %r24 24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	mov	%r27 %r1
	addi	%r27 %r27 16
	ilw	%r26 %f0 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 56
	sw	%r1 %r2 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	sw	%r3 %r1 %r2
	retl
setup_rect_reflection.3078 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6259 
	ilw.s	%r7 %f0 0
	sw	%r26 %r3 0
	sw	%r26 %r6 4
	sw	%r26 %r5 8
	sw	%r26 %r1 12
	sw	%r26 %r4 16
	isw	%r26 %f0 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_diffuse.2683 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f1 0
	isw	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fneg.2550 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	lw.s	%r1 %f1 8
	isw	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2550 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	lw.s	%r1 %f1 16
	isw	%r26 %f0 48
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2550 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	mov.s	%f0 %f3
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r3 16
	lw.s	%r3 %f1 0
	ilw	%r26 %f0 32
	ilw	%r26 %f2 48
	lw	%r26 %r4 4
	lw	%r26 %r24 8
	isw	%r26 %f3 56
	mov	%r4 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r2 1
	lw	%r26 %r3 12
	addi	%r3 %r4 2
	lw	%r26 %r5 16
	lw.s	%r5 %f2 8
	ilw	%r26 %f0 32
	ilw	%r26 %f1 40
	ilw	%r26 %f3 56
	lw	%r26 %r24 8
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r2 2
	lw	%r26 %r3 12
	addi	%r3 %r3 3
	lw	%r26 %r4 16
	lw.s	%r4 %f3 16
	ilw	%r26 %f0 32
	ilw	%r26 %f1 40
	ilw	%r26 %f2 48
	lw	%r26 %r24 8
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r1 3
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
setup_surface_reflection.3081 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	addi	%r1 %r1 1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6259 
	ilw.s	%r7 %f0 0
	sw	%r26 %r3 0
	sw	%r26 %r1 4
	sw	%r26 %r6 8
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	sw	%r26 %r2 20
	isw	%r26 %f0 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_diffuse.2683 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	ilw	%r26 %f1 24
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 20
	isw	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_abc.2675 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2634 
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6257 
	ilw.s	%r1 %f1 0
	lw	%r26 %r1 20
	isw	%r26 %f0 40
	isw	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_a.2669 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	ilw	%r26 %f1 48
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.6257 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	isw	%r26 %f0 56
	isw	%r26 %f2 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2671 
	addi	%r0 %r25 80
	sub	%r26 %r25 %r26
	lw	%r26 %r28 76
	ilw	%r26 %f1 64
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 8
	sub.s	%f0 %f2 %f0
	addi	%r0 %r2 l.6257 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	isw	%r26 %f0 72
	isw	%r26 %f2 80
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_c.2673 
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	ilw	%r26 %f1 80
	mul.s	%f1 %f0 %f0
	ilw	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f1 16
	sub.s	%f0 %f1 %f3
	ilw	%r26 %f0 32
	ilw	%r26 %f1 56
	ilw	%r26 %f2 72
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r24 12
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r0 %r25 96
	sub	%r26 %r25 %r26
	lw	%r26 %r28 92
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
setup_reflections.3084 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9455 
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	lw	%r4 %r4 %r5
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw	%r26 %r4 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_reflectiontype.2663 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9456 
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_diffuse.2683 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r1 l.6259 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2552 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9457 
	retl
be_else.9457 :
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2661 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9459 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9459 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9460 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9460 :
	retl
be_else.9456 :
	retl
bge_else.9455 :
	retl
rt.3086 :
	lw	%r24 %r3 56
	lw	%r24 %r4 52
	lw	%r24 %r5 48
	lw	%r24 %r6 44
	lw	%r24 %r7 40
	lw	%r24 %r8 36
	lw	%r24 %r9 32
	lw	%r24 %r10 28
	lw	%r24 %r11 24
	lw	%r24 %r12 20
	lw	%r24 %r13 16
	lw	%r24 %r14 12
	lw	%r24 %r15 8
	lw	%r24 %r24 4
	sw	%r14 %r1 0
	sw	%r14 %r2 4
	addi	%r0 %r14 2
	div	%r1 %r14 %r14
	sw	%r15 %r14 0
	addi	%r0 %r14 2
	div	%r2 %r14 %r2
	sw	%r15 %r2 4
	addi	%r0 %r2 l.6995 
	ilw.s	%r2 %f0 0
	mtc1	%r1 %f1
	div.s	%f0 %f1 %f0
	sw.s	%r6 %f0 0
	sw	%r26 %r7 0
	sw	%r26 %r9 4
	sw	%r26 %r4 8
	sw	%r26 %r10 12
	sw	%r26 %r5 16
	sw	%r26 %r12 20
	sw	%r26 %r11 24
	sw	%r26 %r13 28
	sw	%r26 %r3 32
	sw	%r26 %r8 36
	sw	%r26 %r24 40
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r0 %r25 48
	sub	%r26 %r25 %r26
	lw	%r26 %r28 44
	lw	%r26 %r24 40
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r24 40
	sw	%r26 %r1 48
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %r24 36
	sw	%r26 %r1 52
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r24 32
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r24 28
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 24
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2720 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r2 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veccpy.2623 
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 24
	lw	%r26 %r24 16
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	lw	%r26 %r1 12
	lw	%r1 %r1 0
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	lw	%r26 %r24 8
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r1 48
	lw	%r26 %r24 4
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r0 %r25 64
	sub	%r26 %r25 %r26
	lw	%r26 %r28 60
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 44
	lw	%r26 %r3 48
	lw	%r26 %r4 52
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23