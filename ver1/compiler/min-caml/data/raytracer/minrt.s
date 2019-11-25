#data_section
l.7346 :	# 128.000000
	.long	0x43000000
l.7297 :	# 0.900000
	.long	0x3f666666
l.7295 :	# 0.200000
	.long	0x3e4ccccd
l.7188 :	# 150.000000
	.long	0x43160000
l.7185 :	# -150.000000
	.long	0xc3160000
l.7166 :	# 0.100000
	.long	0x3dcccccd
l.7162 :	# -2.000000
	.long	0xc0000000
l.7159 :	# 0.003906
	.long	0x3b800000
l.7157 :	# 256.000000
	.long	0x43800000
l.7124 :	# 20.000000
	.long	0x41a00000
l.7122 :	# 0.050000
	.long	0x3d4ccccd
l.7114 :	# 0.250000
	.long	0x3e800000
l.7105 :	# 10.000000
	.long	0x41200000
l.7100 :	# 0.300000
	.long	0x3e99999a
l.7098 :	# 255.000000
	.long	0x437f0000
l.7093 :	# 0.150000
	.long	0x3e19999a
l.7086 :	# 3.141593
	.long	0x40490fdb
l.7084 :	# 30.000000
	.long	0x41f00000
l.7082 :	# 15.000000
	.long	0x41700000
l.7080 :	# 0.000100
	.long	0x38d1b717
l.7031 :	# 100000000.000000
	.long	0x4cbebc20
l.7025 :	# 1000000000.000000
	.long	0x4e6e6b28
l.7002 :	# -0.100000
	.long	0xbdcccccd
l.6988 :	# 0.010000
	.long	0x3c23d70a
l.6986 :	# -0.200000
	.long	0xbe4ccccd
l.6731 :	# -200.000000
	.long	0xc3480000
l.6728 :	# 200.000000
	.long	0x43480000
l.6723 :	# 0.017453
	.long	0x3c8efa35
l.6607 :	# -1.000000
	.long	0xbf800000
l.6601 :	# 0.001000
	.long	0x3a83126f
l.6596 :	# 0.500000
	.long	0x3f000000
l.6592 :	# 0.041667
	.long	0x3d2aaaab
l.6590 :	# 24.000000
	.long	0x41c00000
l.6587 :	# 0.001389
	.long	0x3ab60b61
l.6585 :	# 720.000000
	.long	0x44340000
l.6582 :	# 0.000025
	.long	0x37d00d01
l.6580 :	# 40320.000000
	.long	0x471d8000
l.6577 :	# -0.000000
	.long	0xb493f27e
l.6575 :	# 0.000000
	.long	0x3493f27e
l.6573 :	# 3628800.000000
	.long	0x4a5d7c00
l.6568 :	# 0.166667
	.long	0x3e2aaaab
l.6566 :	# 6.000000
	.long	0x40c00000
l.6563 :	# 0.008333
	.long	0x3c088889
l.6561 :	# 120.000000
	.long	0x42f00000
l.6558 :	# 0.000198
	.long	0x39500d01
l.6556 :	# 5040.000000
	.long	0x459d8000
l.6553 :	# 0.000003
	.long	0x3638ef1d
l.6551 :	# 362880.000000
	.long	0x48b13000
l.6548 :	# -0.000000
	.long	0xb2d7322b
l.6546 :	# 0.000000
	.long	0x32d7322b
l.6544 :	# 39916800.000000
	.long	0x4c184540
l.6541 :	# -3.141593
	.long	0xc0490fdb
l.6539 :	# 3.141593
	.long	0x40490fdb
l.6537 :	# 1.000000
	.long	0x3f800000
l.6535 :	# 2.000000
	.long	0x40000000
l.6528 :	# 0.000000
	.long	0x0
#text_section
program_start :
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
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
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 1
	addi	%r0 %r2 l.7098 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 50
	addi	%r0 %r2 1
	addi	%r0 %r3 -1
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r1 0
	sw	%r26 %r2 4
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	lw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	addi	%r0 %r2 l.7025 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 1
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 8
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 60
	lw	%r26 %r3 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	mov	%r3 %r2
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
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 20
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6528 
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
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
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
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.7098 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r1 44
	sw	%r26 %r2 48
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r2
	lw	%r26 %r1 48
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 52
	sw	%r26 %r2 56
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 1
	addi	%r0 %r3 l.7025 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 124
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 128
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 132
	mov	%r2 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_float_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 136
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 136
	sw	%r3 %r1 0
	mov	%r3 %r1
	mov	%r2 %r23
	mov	%r1 %r2
	mov	%r23 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 140
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_float_array
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_float_array
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 60
	lw	%r26 %r3 144
	sw	%r26 %r1 148
	mov	%r2 %r1
	mov	%r3 %r2
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
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 152
	mov	%r2 %r1
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_float_array
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 156
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 156
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6528 
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
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 160
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r27 %r2
	addi	%r27 %r27 24
	addi	%r0 %r3 read_screen_settings.2878 
	sw	%r2 %r3 0
	lw	%r26 %r3 36
	sw	%r2 %r3 20
	lw	%r26 %r4 128
	sw	%r2 %r4 16
	lw	%r26 %r5 124
	sw	%r2 %r5 12
	lw	%r26 %r6 120
	sw	%r2 %r6 8
	lw	%r26 %r7 32
	sw	%r2 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r8 read_light.2880 
	sw	%r7 %r8 0
	lw	%r26 %r8 40
	sw	%r7 %r8 8
	lw	%r26 %r9 44
	sw	%r7 %r9 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 read_nth_object.2885 
	sw	%r10 %r11 0
	lw	%r26 %r11 28
	sw	%r10 %r11 4
	mov	%r27 %r12
	addi	%r27 %r27 16
	addi	%r0 %r13 read_object.2887 
	sw	%r12 %r13 0
	sw	%r12 %r10 8
	lw	%r26 %r10 24
	sw	%r12 %r10 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 read_all_object.2889 
	sw	%r13 %r14 0
	sw	%r13 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 8
	addi	%r0 %r14 read_and_network.2895 
	sw	%r12 %r14 0
	lw	%r26 %r14 52
	sw	%r12 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r16 read_parameter.2897 
	sw	%r15 %r16 0
	sw	%r15 %r2 20
	sw	%r15 %r7 16
	sw	%r15 %r12 12
	sw	%r15 %r13 8
	lw	%r26 %r2 60
	sw	%r15 %r2 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r12 solver_rect_surface.2899 
	sw	%r7 %r12 0
	lw	%r26 %r12 64
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_rect.2908 
	sw	%r13 %r16 0
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface.2914 
	sw	%r7 %r16 0
	sw	%r7 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r17 solver_second.2933 
	sw	%r16 %r17 0
	sw	%r16 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 solver.2939 
	sw	%r17 %r18 0
	sw	%r17 %r7 16
	sw	%r17 %r16 12
	sw	%r17 %r13 8
	sw	%r17 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 solver_rect_fast.2943 
	sw	%r7 %r13 0
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast.2950 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r18 solver_second_fast.2956 
	sw	%r16 %r18 0
	sw	%r16 %r12 4
	mov	%r27 %r18
	addi	%r27 %r27 24
	addi	%r0 %r19 solver_fast.2962 
	sw	%r18 %r19 0
	sw	%r18 %r13 16
	sw	%r18 %r16 12
	sw	%r18 %r7 8
	sw	%r18 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast2.2966 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r19 solver_second_fast2.2973 
	sw	%r16 %r19 0
	sw	%r16 %r12 4
	mov	%r27 %r19
	addi	%r27 %r27 24
	addi	%r0 %r20 solver_fast2.2980 
	sw	%r19 %r20 0
	sw	%r19 %r13 16
	sw	%r19 %r16 12
	sw	%r19 %r7 8
	sw	%r19 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 iter_setup_dirvec_constants.2992 
	sw	%r7 %r13 0
	sw	%r7 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_dirvec_constants.2995 
	sw	%r13 %r16 0
	sw	%r13 %r10 8
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 setup_startp_constants.2997 
	sw	%r7 %r16 0
	sw	%r7 %r11 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r20 setup_startp.3000 
	sw	%r16 %r20 0
	lw	%r26 %r20 116
	sw	%r16 %r20 12
	sw	%r16 %r7 8
	sw	%r16 %r10 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r21 check_all_inside.3022 
	sw	%r7 %r21 0
	sw	%r7 %r11 4
	mov	%r27 %r21
	addi	%r27 %r27 32
	addi	%r0 %r22 shadow_check_and_group.3028 
	sw	%r21 %r22 0
	sw	%r21 %r18 28
	sw	%r21 %r12 24
	sw	%r21 %r11 20
	lw	%r26 %r22 152
	sw	%r21 %r22 16
	sw	%r21 %r8 12
	lw	%r26 %r23 76
	sw	%r21 %r23 8
	sw	%r21 %r7 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	sw	%r26 %r15 164
	addi	%r0 %r15 shadow_check_one_or_group.3031 
	sw	%r24 %r15 0
	sw	%r24 %r21 8
	sw	%r24 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r21 shadow_check_one_or_matrix.3034 
	sw	%r15 %r21 0
	sw	%r15 %r18 20
	sw	%r15 %r12 16
	sw	%r15 %r24 12
	sw	%r15 %r22 8
	sw	%r15 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 40
	addi	%r0 %r21 solve_each_element.3037 
	sw	%r18 %r21 0
	lw	%r26 %r21 72
	sw	%r18 %r21 36
	lw	%r26 %r24 112
	sw	%r18 %r24 32
	sw	%r18 %r12 28
	sw	%r18 %r17 24
	sw	%r18 %r11 20
	lw	%r26 %r22 68
	sw	%r18 %r22 16
	sw	%r18 %r23 12
	sw	%r26 %r13 168
	lw	%r26 %r13 80
	sw	%r18 %r13 8
	sw	%r18 %r7 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r5 solve_one_or_network.3041 
	sw	%r10 %r5 0
	sw	%r10 %r18 8
	sw	%r10 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r18 trace_or_matrix.3045 
	sw	%r5 %r18 0
	sw	%r5 %r21 20
	sw	%r5 %r24 16
	sw	%r5 %r12 12
	sw	%r5 %r17 8
	sw	%r5 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r17 judge_intersection.3049 
	sw	%r10 %r17 0
	sw	%r10 %r5 12
	sw	%r10 %r21 8
	sw	%r10 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 40
	addi	%r0 %r17 solve_each_element_fast.3051 
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
	addi	%r0 %r17 solve_one_or_network_fast.3055 
	sw	%r7 %r17 0
	sw	%r7 %r5 8
	sw	%r7 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r14 trace_or_matrix_fast.3059 
	sw	%r5 %r14 0
	sw	%r5 %r21 16
	sw	%r5 %r19 12
	sw	%r5 %r12 8
	sw	%r5 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r12 judge_intersection_fast.3063 
	sw	%r7 %r12 0
	sw	%r7 %r5 12
	sw	%r7 %r21 8
	sw	%r7 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r12 get_nvector_rect.3065 
	sw	%r5 %r12 0
	lw	%r26 %r12 84
	sw	%r5 %r12 8
	sw	%r5 %r22 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r17 get_nvector_plane.3067 
	sw	%r14 %r17 0
	sw	%r14 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r18 get_nvector_second.3069 
	sw	%r17 %r18 0
	sw	%r17 %r12 8
	sw	%r17 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 get_nvector.3071 
	sw	%r18 %r19 0
	sw	%r18 %r17 12
	sw	%r18 %r5 8
	sw	%r18 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 utexture.3074 
	sw	%r5 %r14 0
	lw	%r26 %r14 88
	sw	%r5 %r14 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r19 add_light.3077 
	sw	%r17 %r19 0
	sw	%r17 %r14 8
	lw	%r26 %r19 96
	sw	%r17 %r19 4
	mov	%r27 %r20
	addi	%r27 %r27 40
	addi	%r0 %r4 trace_reflections.3081 
	sw	%r20 %r4 0
	sw	%r20 %r15 32
	lw	%r26 %r4 160
	sw	%r20 %r4 28
	sw	%r20 %r2 24
	sw	%r20 %r12 20
	sw	%r20 %r7 16
	sw	%r20 %r22 12
	sw	%r20 %r13 8
	sw	%r20 %r17 4
	mov	%r27 %r4
	addi	%r27 %r27 88
	addi	%r0 %r6 trace_ray.3086 
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
	addi	%r0 %r9 trace_diffuse_ray.3092 
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
	lw	%r26 %r2 92
	sw	%r6 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r7 iter_trace_diffuse_rays.3095 
	sw	%r5 %r7 0
	sw	%r5 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_rays.3100 
	sw	%r6 %r7 0
	sw	%r6 %r16 8
	sw	%r6 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_ray_80percent.3104 
	sw	%r5 %r7 0
	sw	%r5 %r6 8
	lw	%r26 %r7 140
	sw	%r5 %r7 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_1point.3108 
	sw	%r9 %r10 0
	sw	%r9 %r5 12
	sw	%r9 %r19 8
	sw	%r9 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_5points.3111 
	sw	%r5 %r10 0
	sw	%r5 %r19 8
	sw	%r5 %r2 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r12 do_without_neighbors.3117 
	sw	%r10 %r12 0
	sw	%r10 %r9 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r12 neighbors_exist.3120 
	sw	%r9 %r12 0
	lw	%r26 %r12 100
	sw	%r9 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r14 try_exploit_neighbors.3133 
	sw	%r13 %r14 0
	sw	%r13 %r10 8
	sw	%r13 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 write_ppm_header.3140 
	sw	%r5 %r14 0
	sw	%r5 %r12 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r15 write_rgb.3144 
	sw	%r14 %r15 0
	sw	%r14 %r19 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 pretrace_diffuse_rays.3146 
	sw	%r15 %r16 0
	sw	%r15 %r6 12
	sw	%r15 %r7 8
	sw	%r15 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 40
	addi	%r0 %r6 pretrace_pixels.3149 
	sw	%r2 %r6 0
	sw	%r2 %r3 36
	sw	%r2 %r4 32
	sw	%r2 %r24 28
	lw	%r26 %r3 120
	sw	%r2 %r3 24
	lw	%r26 %r3 108
	sw	%r2 %r3 20
	sw	%r2 %r19 16
	lw	%r26 %r4 132
	sw	%r2 %r4 12
	sw	%r2 %r15 8
	lw	%r26 %r4 104
	sw	%r2 %r4 4
	mov	%r27 %r6
	addi	%r27 %r27 32
	addi	%r0 %r15 pretrace_line.3156 
	sw	%r6 %r15 0
	lw	%r26 %r15 128
	sw	%r6 %r15 24
	lw	%r26 %r15 124
	sw	%r6 %r15 20
	sw	%r6 %r3 16
	sw	%r6 %r2 12
	sw	%r6 %r12 8
	sw	%r6 %r4 4
	mov	%r27 %r2
	addi	%r27 %r27 32
	addi	%r0 %r15 scan_pixel.3160 
	sw	%r2 %r15 0
	sw	%r2 %r14 24
	sw	%r2 %r13 20
	sw	%r2 %r19 16
	sw	%r2 %r9 12
	sw	%r2 %r12 8
	sw	%r2 %r10 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 scan_line.3166 
	sw	%r9 %r10 0
	sw	%r9 %r2 12
	sw	%r9 %r6 8
	sw	%r9 %r12 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r10 create_pixelline.3179 
	sw	%r2 %r10 0
	sw	%r2 %r12 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r13 calc_dirvec.3186 
	sw	%r10 %r13 0
	sw	%r10 %r7 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvecs.3194 
	sw	%r13 %r14 0
	sw	%r13 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvec_rows.3199 
	sw	%r10 %r14 0
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 create_dirvec.3203 
	sw	%r13 %r14 0
	lw	%r26 %r14 24
	sw	%r13 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r16 create_dirvec_elements.3205 
	sw	%r15 %r16 0
	sw	%r15 %r13 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r17 create_dirvecs.3208 
	sw	%r16 %r17 0
	sw	%r16 %r7 12
	sw	%r16 %r15 8
	sw	%r16 %r13 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r17 init_dirvec_constants.3210 
	sw	%r15 %r17 0
	lw	%r26 %r17 168
	sw	%r15 %r17 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 init_vecset_constants.3213 
	sw	%r18 %r19 0
	sw	%r18 %r15 8
	sw	%r18 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r15 init_dirvecs.3215 
	sw	%r7 %r15 0
	sw	%r7 %r18 12
	sw	%r7 %r16 8
	sw	%r7 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r15 add_reflection.3217 
	sw	%r10 %r15 0
	sw	%r10 %r17 12
	lw	%r26 %r15 160
	sw	%r10 %r15 8
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r15 setup_rect_reflection.3224 
	sw	%r13 %r15 0
	sw	%r13 %r1 12
	sw	%r13 %r8 8
	sw	%r13 %r10 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_surface_reflection.3227 
	sw	%r15 %r16 0
	sw	%r15 %r1 12
	sw	%r15 %r8 8
	sw	%r15 %r10 4
	mov	%r27 %r1
	addi	%r27 %r27 16
	addi	%r0 %r10 setup_reflections.3230 
	sw	%r1 %r10 0
	sw	%r1 %r15 12
	sw	%r1 %r13 8
	sw	%r1 %r11 4
	mov	%r27 %r24
	addi	%r27 %r27 64
	addi	%r0 %r10 rt.3232 
	sw	%r24 %r10 0
	sw	%r24 %r5 56
	sw	%r24 %r1 52
	sw	%r24 %r17 48
	sw	%r24 %r3 44
	sw	%r24 %r9 40
	lw	%r26 %r1 164
	sw	%r24 %r1 36
	sw	%r24 %r6 32
	sw	%r24 %r14 28
	lw	%r26 %r1 152
	sw	%r24 %r1 24
	sw	%r24 %r8 20
	sw	%r24 %r7 16
	sw	%r24 %r12 12
	sw	%r24 %r4 8
	sw	%r24 %r2 4
	addi	%r0 %r1 128
	addi	%r0 %r2 128
	sw	%r26 %r28 172
	lw	%r24 %r23 0
	addi	%r26 %r26 176	
	jalr	%r23
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	addi	%r0 %r1 0
	ret
fiszero.2649 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	fbne	%f0 %f1 fbe_else.9478 
	addi	%r0 %r1 1
	retl
fbe_else.9478 :
	addi	%r0 %r1 0
	retl
fispos.2651 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9479 
	addi	%r0 %r1 0
	retl
fble_else.9479 :
	addi	%r0 %r1 1
	retl
fisneg.2653 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9480 
	addi	%r0 %r1 0
	retl
fble_else.9480 :
	addi	%r0 %r1 1
	retl
fneg.2655 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fless.2657 :
	fbg	%f1 %f0 fble_else.9481 
	addi	%r0 %r1 0
	retl
fble_else.9481 :
	addi	%r0 %r1 1
	retl
fsqr.2660 :
	mul.s	%f0 %f0 %f0
	retl
fabs.2662 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9482 
	retl
fble_else.9482 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fhalf.2664 :
	addi	%r0 %r1 l.6535 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	retl
loop_fpow.6511 :
	bne	%r2 %r1 be_else.9483 
	mov.s	%f1 %f0
	retl
be_else.9483 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6511 
fpow.2666 :
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 0
	j	loop_fpow.6511 
sin.2669 :
	addi	%r0 %r1 l.6539 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9484 
	addi	%r0 %r1 l.6541 
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.9485 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6544 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6546 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6548 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 11
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2666 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6551 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6553 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2666 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6556 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6558 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2666 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6561 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6563 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2666 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6566 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6568 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fpow.2666 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 0
	add.s	%f1 %f0 %f0
	retl
fble_else.9485 :
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sin.2669 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
fble_else.9484 :
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sin.2669 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
cos.2671 :
	addi	%r0 %r1 l.6539 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9486 
	addi	%r0 %r1 l.6541 
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.9487 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6573 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6575 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6577 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 10
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2666 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6580 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6582 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2666 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6585 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6587 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2666 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6590 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6592 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2666 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6535 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6596 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fpow.2666 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	retl
fble_else.9487 :
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2671 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
fble_else.9486 :
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2671 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
f.6410 :
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f0
	retl
euler.6412 :
	add.s	%f3 %f0 %f4
	fbg	%f4 %f2 fble_else.9488 
	sw.s	%r26 %f2 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f3 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	f.6410 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f3 24
	mul.s	%f0 %f3 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f1
	lw.s	%r26 %f0 8
	add.s	%f3 %f0 %f0
	lw.s	%r26 %f2 0
	j	euler.6412 
fble_else.9488 :
	mov.s	%f1 %f0
	retl
atan.2673 :
	addi	%r0 %r1 l.6601 
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f2 0
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	j	euler.6412 
print_int.2675 :
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
addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.9489 
	j	ble_cont.9490 
ble_else.9489 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.9490 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.9491 
	j	ble_cont.9492 
ble_else.9491 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.9492 :
	addi	%r1 %r1 48
	out	%r1
	retl
xor.2707 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9493 
	mov	%r2 %r1
	retl
be_else.9493 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9494 
	addi	%r0 %r1 1
	retl
be_else.9494 :
	addi	%r0 %r1 0
	retl
sgn.2710 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2649 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9495 
	lw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fispos.2651 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9496 
	addi	%r0 %r1 l.6607 
	ilw.s	%r1 %f0 0
	retl
be_else.9496 :
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	retl
be_else.9495 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	retl
fneg_cond.2712 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9497 
	j	fneg.2655 
be_else.9497 :
	retl
add_mod5.2715 :
	add	%r1 %r2 %r1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9498 
	addi	%r1 %r1 -5
	retl
bge_else.9498 :
	retl
xor.2748 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9499 
	mov	%r2 %r1
	retl
be_else.9499 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9500 
	addi	%r0 %r1 1
	retl
be_else.9500 :
	addi	%r0 %r1 0
	retl
sgn.2751 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2649 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9501 
	lw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fispos.2651 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9502 
	addi	%r0 %r1 l.6607 
	ilw.s	%r1 %f0 0
	retl
be_else.9502 :
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	retl
be_else.9501 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	retl
fneg_cond.2753 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9503 
	j	fneg.2655 
be_else.9503 :
	retl
add_mod5.2756 :
	add	%r1 %r2 %r1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9504 
	addi	%r1 %r1 -5
	retl
bge_else.9504 :
	retl
vecset.2759 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f2 8
	retl
vecfill.2764 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f0 8
	retl
vecbzero.2767 :
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	j	vecfill.2764 
veccpy.2769 :
	lw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r2 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r1 %f0 8
	retl
vecdist2.2772 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2660 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	lw	%r26 %r2 0
	lw.s	%r2 %f2 4
	sub.s	%f2 %f1 %f1
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fsqr.2660 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r1 0
	lw.s	%r1 %f2 8
	sub.s	%f2 %f1 %f1
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2660 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	retl
vecunit.2775 :
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 0
	sw	%r26 %r1 8
	mov.s	%f1 %f0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2660 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2660 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2660 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 0
	div.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
vecunit_sgn.2777 :
	lw.s	%r1 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2660 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fsqr.2660 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2660 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fiszero.2649 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9510 
	lw	%r26 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9512 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
	j	be_cont.9513 
be_else.9512 :
	addi	%r0 %r1 l.6607 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
be_cont.9513 :
	j	be_cont.9511 
be_else.9510 :
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
be_cont.9511 :
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
veciprod.2780 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	retl
veciprod2.2783 :
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	lw.s	%r1 %f3 4
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	retl
vecaccum.2788 :
	lw.s	%r1 %f1 0
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f0 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	lw.s	%r2 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
vecadd.2792 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	lw.s	%r2 %f1 4
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
vecmul.2795 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	lw.s	%r2 %f1 4
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
vecscale.2798 :
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	mul.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
vecaccumv.2801 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	lw.s	%r3 %f2 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	lw.s	%r2 %f1 4
	lw.s	%r3 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	lw.s	%r3 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
o_texturetype.2805 :
	lw	%r1 %r1 0
	retl
o_form.2807 :
	lw	%r1 %r1 4
	retl
o_reflectiontype.2809 :
	lw	%r1 %r1 8
	retl
o_isinvert.2811 :
	lw	%r1 %r1 24
	retl
o_isrot.2813 :
	lw	%r1 %r1 12
	retl
o_param_a.2815 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 0
	retl
o_param_b.2817 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 4
	retl
o_param_c.2819 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	retl
o_param_abc.2821 :
	lw	%r1 %r1 16
	retl
o_param_x.2823 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 0
	retl
o_param_y.2825 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 4
	retl
o_param_z.2827 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 8
	retl
o_diffuse.2829 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 0
	retl
o_hilight.2831 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 4
	retl
o_color_red.2833 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 0
	retl
o_color_green.2835 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 4
	retl
o_color_blue.2837 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 8
	retl
o_param_r1.2839 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 0
	retl
o_param_r2.2841 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 4
	retl
o_param_r3.2843 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 8
	retl
o_param_ctbl.2845 :
	lw	%r1 %r1 40
	retl
p_rgb.2847 :
	lw	%r1 %r1 0
	retl
p_intersection_points.2849 :
	lw	%r1 %r1 4
	retl
p_surface_ids.2851 :
	lw	%r1 %r1 8
	retl
p_calc_diffuse.2853 :
	lw	%r1 %r1 12
	retl
p_energy.2855 :
	lw	%r1 %r1 16
	retl
p_received_ray_20percent.2857 :
	lw	%r1 %r1 20
	retl
p_group_id.2859 :
	lw	%r1 %r1 24
	lw	%r1 %r1 0
	retl
p_set_group_id.2861 :
	lw	%r1 %r1 24
	sw	%r1 %r2 0
	retl
p_nvectors.2864 :
	lw	%r1 %r1 28
	retl
d_vec.2866 :
	lw	%r1 %r1 0
	retl
d_const.2868 :
	lw	%r1 %r1 4
	retl
r_surface_id.2870 :
	lw	%r1 %r1 0
	retl
r_dvec.2872 :
	lw	%r1 %r1 4
	retl
r_bright.2874 :
	lw.s	%r1 %f0 8
	retl
rad.2876 :
	addi	%r0 %r1 l.6723 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	retl
read_screen_settings.2878 :
	lw	%r24 %r1 20
	lw	%r24 %r2 16
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	fin	%f0
	sw.s	%r5 %f0 0
	fin	%f0
	sw.s	%r5 %f0 4
	fin	%f0
	sw.s	%r5 %f0 8
	fin	%f0
	sw	%r26 %r1 0
	sw	%r26 %r5 4
	sw	%r26 %r3 8
	sw	%r26 %r4 12
	sw	%r26 %r2 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2876 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2671 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2669 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f1
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2876 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	cos.2671 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sin.2669 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.6728 
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 16
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.6731 
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 40
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 56
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.6728 
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 12
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2655 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 12
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2655 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 32
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2655 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2655 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r1 4
	lw.s	%r1 %f0 0
	lw	%r26 %r2 16
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r26 %r3 0
	sw.s	%r3 %f0 0
	lw.s	%r1 %f0 4
	lw.s	%r2 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r3 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
	retl
read_light.2880 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	in	%r3
	fin	%f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	rad.2876 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2669 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2655 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2876 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2671 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2669 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2671 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	fin	%f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	retl
rotate_quadratic_matrix.2882 :
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	cos.2671 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2669 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2671 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2669 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	cos.2671 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	sin.2669 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 24
	mul.s	%f1 %f2 %f3
	lw.s	%r26 %f4 32
	lw.s	%r26 %f5 16
	mul.s	%f4 %f5 %f6
	mul.s	%f1 %f6 %f6
	lw.s	%r26 %f7 8
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
	sw.s	%r26 %f0 48
	sw.s	%r26 %f8 56
	sw.s	%r26 %f10 64
	sw.s	%r26 %f6 72
	sw.s	%r26 %f9 80
	sw.s	%r26 %f3 88
	mov.s	%f4 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fneg.2655 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 24
	lw.s	%r26 %f2 16
	mul.s	%f1 %f2 %f2
	lw.s	%r26 %f3 8
	mul.s	%f1 %f3 %f1
	lw	%r26 %r1 0
	lw.s	%r1 %f3 0
	lw.s	%r1 %f4 4
	lw.s	%r1 %f5 8
	lw.s	%r26 %f6 88
	sw.s	%r26 %f1 96
	sw.s	%r26 %f2 104
	sw.s	%r26 %f5 112
	sw.s	%r26 %f0 120
	sw.s	%r26 %f4 128
	sw.s	%r26 %f3 136
	mov.s	%f6 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fsqr.2660 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 80
	sw.s	%r26 %f0 144
	mov.s	%f2 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	fsqr.2660 
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	lw.s	%r26 %f1 128
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 144
	add.s	%f0 %f2 %f0
	lw.s	%r26 %f2 120
	sw.s	%r26 %f0 152
	mov.s	%f2 %f0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fsqr.2660 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 152
	add.s	%f0 %f2 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 72
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fsqr.2660 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 64
	sw.s	%r26 %f0 160
	mov.s	%f2 %f0
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	fsqr.2660 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw.s	%r26 %f1 128
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 160
	add.s	%f0 %f2 %f0
	lw.s	%r26 %f2 104
	sw.s	%r26 %f0 168
	mov.s	%f2 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fsqr.2660 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 168
	add.s	%f0 %f2 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 56
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fsqr.2660 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 48
	sw.s	%r26 %f0 176
	mov.s	%f2 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fsqr.2660 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f1 128
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 176
	add.s	%f0 %f2 %f0
	lw.s	%r26 %f2 96
	sw.s	%r26 %f0 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2660 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 184
	add.s	%f0 %f2 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
	addi	%r0 %r1 l.6535 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f2 72
	lw.s	%r26 %f3 136
	mul.s	%f2 %f3 %f4
	lw.s	%r26 %f5 56
	mul.s	%f5 %f4 %f4
	lw.s	%r26 %f6 64
	lw.s	%r26 %f7 128
	mul.s	%f6 %f7 %f8
	lw.s	%r26 %f9 48
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f4 %f4
	lw.s	%r26 %f8 104
	mul.s	%f8 %f1 %f10
	lw.s	%r26 %f11 96
	mul.s	%f11 %f10 %f10
	add.s	%f10 %f4 %f4
	mul.s	%f4 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6535 
	ilw.s	%r2 %f0 0
	lw.s	%r26 %f4 88
	mul.s	%f4 %f3 %f10
	mul.s	%f5 %f10 %f5
	lw.s	%r26 %f10 80
	mul.s	%f10 %f7 %f12
	mul.s	%f9 %f12 %f9
	add.s	%f9 %f5 %f5
	lw.s	%r26 %f9 120
	mul.s	%f9 %f1 %f12
	mul.s	%f11 %f12 %f11
	add.s	%f11 %f5 %f5
	mul.s	%f5 %f0 %f0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 l.6535 
	ilw.s	%r2 %f0 0
	mul.s	%f4 %f3 %f3
	mul.s	%f2 %f3 %f2
	mul.s	%f10 %f7 %f3
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f2 %f2
	mul.s	%f9 %f1 %f1
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f2 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
read_nth_object.2885 :
	lw	%r24 %r2 4
	in	%r3
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9525 
	addi	%r0 %r1 0
	retl
be_else.9525 :
	in	%r4
	in	%r5
	in	%r6
	addi	%r0 %r7 3
	addi	%r0 %r8 l.6528 
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
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f0
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2653 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 2
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 20
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9526 
	j	be_cont.9527 
be_else.9526 :
	fin	%f0
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2876 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 0
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2876 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2876 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
be_cont.9527 :
	lw	%r26 %r2 16
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9528 
	addi	%r0 %r3 1
	j	be_cont.9529 
be_else.9528 :
	lw	%r26 %r3 32
be_cont.9529 :
	addi	%r0 %r4 4
	addi	%r0 %r5 l.6528 
	ilw.s	%r5 %f0 0
	sw	%r26 %r3 48
	sw	%r26 %r1 44
	mov	%r4 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
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
	add %r7 %r6 %r25
	sw	%r25 %r2 0
addi	%r0 %r25 3
	bne	%r5 %r25 be_else.9530 
	lw.s	%r3 %f0 0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fiszero.2649 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9533 
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sgn.2751 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2660 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	div.s	%f0 %f1 %f0
	j	be_cont.9534 
be_else.9533 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
be_cont.9534 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fiszero.2649 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9535 
	lw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sgn.2751 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fsqr.2660 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	div.s	%f0 %f1 %f0
	j	be_cont.9536 
be_else.9535 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
be_cont.9536 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2649 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9537 
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sgn.2751 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fsqr.2660 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	div.s	%f0 %f1 %f0
	j	be_cont.9538 
be_else.9537 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
be_cont.9538 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	j	be_cont.9531 
be_else.9530 :
addi	%r0 %r25 2
	bne	%r5 %r25 be_else.9539 
	lw	%r26 %r2 32
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9541 
	addi	%r0 %r2 1
	j	be_cont.9542 
be_else.9541 :
	addi	%r0 %r2 0
be_cont.9542 :
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecunit_sgn.2777 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	be_cont.9540 
be_else.9539 :
be_cont.9540 :
be_cont.9531 :
	lw	%r26 %r1 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9543 
	j	be_cont.9544 
be_else.9543 :
	lw	%r26 %r1 24
	lw	%r26 %r2 44
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	rotate_quadratic_matrix.2882 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
be_cont.9544 :
	addi	%r0 %r1 1
	retl
read_object.2887 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 60
	bl	%r1 %r25 bge_else.9545 
	retl
bge_else.9545 :
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	mov	%r2 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9547 
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
be_else.9547 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_all_object.2889 :
	lw	%r24 %r24 4
	addi	%r0 %r1 0
	lw	%r24 %r23 0
	jr	%r23
read_net_item.2891 :
	in	%r2
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9549 
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
be_else.9549 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2891 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2893 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2891 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 be_else.9550 
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
be_else.9550 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2893 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 4
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2895 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2891 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9551 
	retl
be_else.9551 :
	lw	%r26 %r2 8
	sw	%r2 %r1 0
	lw	%r26 %r1 4
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_parameter.2897 :
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r24 12
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r24 8
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 0
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	read_or_network.2893 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
solver_rect_surface.2899 :
	lw	%r24 %r6 4
	addi	%r0 %r25 2
	sll	%r3 %r7 %r25
	add	%r2 %r7 %r25
	lw.s	%r25 %f3 0
	sw	%r26 %r6 0
	sw.s	%r26 %f2 8
	sw	%r26 %r5 16
	sw.s	%r26 %f1 24
	sw	%r26 %r4 32
	sw.s	%r26 %f0 40
	sw	%r26 %r2 48
	sw	%r26 %r3 52
	sw	%r26 %r1 56
	mov.s	%f3 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fiszero.2649 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9557 
	lw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_abc.2821 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_isinvert.2811 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 52
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 48
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	sw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fisneg.2653 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	xor.2748 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 52
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 60
	add	%r4 %r3 %r25
	lw.s	%r25 %f0 0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg_cond.2753 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 40
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 52
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 48
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 32
	addi	%r0 %r25 2
	sll	%r1 %r3 %r25
	add	%r2 %r3 %r25
	lw.s	%r25 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f2 24
	add.s	%f2 %f1 %f1
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2662 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 32
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fless.2657 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9559 
	addi	%r0 %r1 0
	retl
be_else.9559 :
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 48
	add	%r3 %r2 %r25
	lw.s	%r25 %f0 0
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 8
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2662 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 60
	add	%r2 %r1 %r25
	lw.s	%r25 %f1 0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fless.2657 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9560 
	addi	%r0 %r1 0
	retl
be_else.9560 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9557 :
	addi	%r0 %r1 0
	retl
solver_rect.2908 :
	lw	%r24 %r24 4
	addi	%r0 %r3 0
	addi	%r0 %r4 1
	addi	%r0 %r5 2
	sw.s	%r26 %f0 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw	%r26 %r2 24
	sw	%r26 %r1 28
	sw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9561 
	addi	%r0 %r3 1
	addi	%r0 %r4 2
	addi	%r0 %r5 0
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9562 
	addi	%r0 %r3 2
	addi	%r0 %r4 0
	addi	%r0 %r5 1
	lw.s	%r26 %f0 8
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	lw	%r26 %r24 32
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9563 
	addi	%r0 %r1 0
	retl
be_else.9563 :
	addi	%r0 %r1 3
	retl
be_else.9562 :
	addi	%r0 %r1 2
	retl
be_else.9561 :
	addi	%r0 %r1 1
	retl
solver_surface.2914 :
	lw	%r24 %r3 4
	sw	%r26 %r3 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r2 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2821 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r2 36
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2780 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fispos.2651 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9565 
	addi	%r0 %r1 0
	retl
be_else.9565 :
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	lw	%r26 %r1 36
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2783 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
quadratic.2920 :
	sw.s	%r26 %f0 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2660 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_a.2815 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fsqr.2660 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 24
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_b.2817 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 8
	sw.s	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fsqr.2660 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 24
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2819 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isrot.2813 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9567 
	lw.s	%r26 %f0 72
	retl
be_else.9567 :
	lw.s	%r26 %f0 8
	lw.s	%r26 %f1 16
	mul.s	%f0 %f1 %f2
	lw	%r26 %r1 24
	sw.s	%r26 %f2 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r1.2839 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 72
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 0
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f2
	lw	%r26 %r1 24
	sw.s	%r26 %f0 88
	sw.s	%r26 %f2 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r2.2841 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 88
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 0
	mul.s	%f1 %f2 %f1
	lw	%r26 %r1 24
	sw.s	%r26 %f0 104
	sw.s	%r26 %f1 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_r3.2843 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	retl
bilinear.2925 :
	mul.s	%f3 %f0 %f6
	sw.s	%r26 %f3 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f5 16
	sw.s	%r26 %f2 24
	sw	%r26 %r1 32
	sw.s	%r26 %f4 40
	sw.s	%r26 %f1 48
	sw.s	%r26 %f6 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2815 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	mul.s	%f1 %f2 %f3
	lw	%r26 %r1 32
	sw.s	%r26 %f0 64
	sw.s	%r26 %f3 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_b.2817 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 24
	mul.s	%f1 %f2 %f3
	lw	%r26 %r1 32
	sw.s	%r26 %f0 80
	sw.s	%r26 %f3 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2819 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 32
	sw.s	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_isrot.2813 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9569 
	lw.s	%r26 %f0 96
	retl
be_else.9569 :
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f2
	lw.s	%r26 %f3 16
	lw.s	%r26 %f4 48
	mul.s	%f3 %f4 %f5
	add.s	%f5 %f2 %f2
	lw	%r26 %r1 32
	sw.s	%r26 %f2 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2839 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	lw.s	%r26 %f3 0
	lw.s	%r26 %f4 24
	mul.s	%f3 %f4 %f4
	add.s	%f4 %f1 %f1
	lw	%r26 %r1 32
	sw.s	%r26 %f0 112
	sw.s	%r26 %f1 120
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	o_param_r2.2841 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 120
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 112
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	lw.s	%r26 %f2 0
	lw.s	%r26 %f3 48
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f1 %f1
	lw	%r26 %r1 32
	sw.s	%r26 %f0 128
	sw.s	%r26 %f1 136
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_param_r3.2843 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2664 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	retl
solver_second.2933 :
	lw	%r24 %r3 4
	lw.s	%r2 %f3 0
	lw.s	%r2 %f4 4
	lw.s	%r2 %f5 8
	sw	%r26 %r3 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r1 32
	sw	%r26 %r2 36
	mov.s	%f5 %f2
	mov.s	%f4 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	quadratic.2920 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2649 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9571 
	lw	%r26 %r1 36
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r1 %f2 8
	lw.s	%r26 %f3 24
	lw.s	%r26 %f4 16
	lw.s	%r26 %f5 8
	lw	%r26 %r1 32
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	bilinear.2925 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 24
	lw.s	%r26 %f2 16
	lw.s	%r26 %f3 8
	lw	%r26 %r1 32
	sw.s	%r26 %f0 48
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	quadratic.2920 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 32
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_form.2807 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9572 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	j	be_cont.9573 
be_else.9572 :
	lw.s	%r26 %f0 56
be_cont.9573 :
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2660 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 40
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2651 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9574 
	addi	%r0 %r1 0
	retl
be_else.9574 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw	%r26 %r1 32
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2811 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9575 
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2655 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	be_cont.9576 
be_else.9575 :
	lw.s	%r26 %f0 80
be_cont.9576 :
	lw.s	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9571 :
	addi	%r0 %r1 0
	retl
solver.2939 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	add	%r7 %r1 %r25
	lw	%r25 %r1 0
	lw.s	%r3 %f0 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	sw	%r26 %r6 12
	sw	%r26 %r1 16
	sw	%r26 %r3 20
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2823 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 4
	lw	%r26 %r2 16
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_y.2825 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 20
	lw.s	%r1 %f1 8
	lw	%r26 %r1 16
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_z.2827 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2807 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9577 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9577 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9578 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9578 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_rect_fast.2943 :
	lw	%r24 %r4 4
	lw.s	%r3 %f3 0
	sub.s	%f0 %f3 %f3
	lw.s	%r3 %f4 4
	mul.s	%f4 %f3 %f3
	lw.s	%r2 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	sw	%r26 %r4 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw	%r26 %r3 24
	sw.s	%r26 %f2 32
	sw.s	%r26 %f3 40
	sw	%r26 %r2 48
	sw	%r26 %r1 52
	mov.s	%f4 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fabs.2662 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 52
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2817 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov.s	%f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2657 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9581 
	addi	%r0 %r1 0
	j	be_cont.9582 
be_else.9581 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fabs.2662 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 52
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2819 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f1
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2657 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9583 
	addi	%r0 %r1 0
	j	be_cont.9584 
be_else.9583 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 4
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fiszero.2649 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9585 
	addi	%r0 %r1 1
	j	be_cont.9586 
be_else.9585 :
	addi	%r0 %r1 0
be_cont.9586 :
be_cont.9584 :
be_cont.9582 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9587 
	lw	%r26 %r1 24
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	lw.s	%r1 %f2 12
	mul.s	%f2 %f0 %f0
	lw	%r26 %r2 48
	lw.s	%r2 %f2 0
	mul.s	%f2 %f0 %f2
	lw.s	%r26 %f3 8
	add.s	%f3 %f2 %f2
	sw.s	%r26 %f0 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fabs.2662 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 52
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_a.2815 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f1
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fless.2657 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9588 
	addi	%r0 %r1 0
	j	be_cont.9589 
be_else.9588 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fabs.2662 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 52
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2819 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov.s	%f0 %f1
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fless.2657 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9590 
	addi	%r0 %r1 0
	j	be_cont.9591 
be_else.9590 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 12
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2649 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9592 
	addi	%r0 %r1 1
	j	be_cont.9593 
be_else.9592 :
	addi	%r0 %r1 0
be_cont.9593 :
be_cont.9591 :
be_cont.9589 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9594 
	lw	%r26 %r1 24
	lw.s	%r1 %f0 16
	lw.s	%r26 %f1 32
	sub.s	%f1 %f0 %f0
	lw.s	%r1 %f1 20
	mul.s	%f1 %f0 %f0
	lw	%r26 %r2 48
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r26 %f2 8
	add.s	%f2 %f1 %f1
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fabs.2662 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 52
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_a.2815 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f1
	lw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fless.2657 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9595 
	addi	%r0 %r1 0
	j	be_cont.9596 
be_else.9595 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 16
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fabs.2662 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r1 52
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_b.2817 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov.s	%f0 %f1
	lw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fless.2657 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9597 
	addi	%r0 %r1 0
	j	be_cont.9598 
be_else.9597 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 20
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fiszero.2649 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9599 
	addi	%r0 %r1 1
	j	be_cont.9600 
be_else.9599 :
	addi	%r0 %r1 0
be_cont.9600 :
be_cont.9598 :
be_cont.9596 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9601 
	addi	%r0 %r1 0
	retl
be_else.9601 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	retl
be_else.9594 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	retl
be_else.9587 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 40
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_surface_fast.2950 :
	lw	%r24 %r1 4
	lw.s	%r2 %f3 0
	sw	%r26 %r1 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r2 32
	mov.s	%f3 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2653 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9603 
	addi	%r0 %r1 0
	retl
be_else.9603 :
	lw	%r26 %r1 32
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r26 %f2 16
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 12
	lw.s	%r26 %f2 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast.2956 :
	lw	%r24 %r3 4
	lw.s	%r2 %f3 0
	sw	%r26 %r3 0
	sw.s	%r26 %f3 8
	sw	%r26 %r1 16
	sw.s	%r26 %f2 24
	sw.s	%r26 %f1 32
	sw.s	%r26 %f0 40
	sw	%r26 %r2 48
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2649 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9606 
	lw	%r26 %r1 48
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f2 8
	lw.s	%r26 %f3 32
	mul.s	%f3 %f2 %f2
	add.s	%f2 %f0 %f0
	lw.s	%r1 %f2 12
	lw.s	%r26 %f4 24
	mul.s	%f4 %f2 %f2
	add.s	%f2 %f0 %f0
	lw	%r26 %r2 16
	sw.s	%r26 %f0 56
	mov	%r2 %r1
	mov.s	%f4 %f2
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	quadratic.2920 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2807 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9608 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	j	be_cont.9609 
be_else.9608 :
	lw.s	%r26 %f0 64
be_cont.9609 :
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2660 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fispos.2651 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9610 
	addi	%r0 %r1 0
	retl
be_else.9610 :
	lw	%r26 %r1 16
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2811 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9611 
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9612 
be_else.9611 :
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9612 :
	addi	%r0 %r1 1
	retl
be_else.9606 :
	addi	%r0 %r1 0
	retl
solver_fast.2962 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r7 %r8 %r25
	lw	%r25 %r7 0
	lw.s	%r3 %f0 0
	sw	%r26 %r5 0
	sw	%r26 %r4 4
	sw	%r26 %r6 8
	sw	%r26 %r1 12
	sw	%r26 %r2 16
	sw	%r26 %r7 20
	sw	%r26 %r3 24
	sw.s	%r26 %f0 32
	mov	%r7 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_x.2823 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 4
	lw	%r26 %r2 20
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_y.2825 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 8
	lw	%r26 %r1 20
	sw.s	%r26 %f0 56
	sw.s	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_z.2827 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_const.2868 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 20
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_form.2807 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9614 
	lw	%r26 %r1 16
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_vec.2866 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r2
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r3 80
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9614 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9615 
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9615 :
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_surface_fast2.2966 :
	lw	%r24 %r1 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fisneg.2653 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9616 
	addi	%r0 %r1 0
	retl
be_else.9616 :
	lw	%r26 %r1 8
	lw.s	%r1 %f0 0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 12
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast2.2973 :
	lw	%r24 %r4 4
	lw.s	%r2 %f3 0
	sw	%r26 %r4 0
	sw	%r26 %r1 4
	sw.s	%r26 %f3 8
	sw	%r26 %r3 16
	sw.s	%r26 %f2 24
	sw.s	%r26 %f1 32
	sw.s	%r26 %f0 40
	sw	%r26 %r2 48
	mov.s	%f3 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2649 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9618 
	lw	%r26 %r1 48
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	lw.s	%r26 %f2 32
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 12
	lw.s	%r26 %f2 24
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	lw	%r26 %r2 16
	lw.s	%r2 %f1 12
	sw.s	%r26 %f0 56
	sw.s	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2660 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2651 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9620 
	addi	%r0 %r1 0
	retl
be_else.9620 :
	lw	%r26 %r1 4
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isinvert.2811 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9621 
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9622 
be_else.9621 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9622 :
	addi	%r0 %r1 1
	retl
be_else.9618 :
	addi	%r0 %r1 0
	retl
solver_fast2.2980 :
	lw	%r24 %r3 16
	lw	%r24 %r4 12
	lw	%r24 %r5 8
	lw	%r24 %r6 4
	addi	%r0 %r25 2
	sll	%r1 %r7 %r25
	add	%r6 %r7 %r25
	lw	%r25 %r6 0
	sw	%r26 %r4 0
	sw	%r26 %r3 4
	sw	%r26 %r5 8
	sw	%r26 %r6 12
	sw	%r26 %r1 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_ctbl.2845 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r1 %f2 8
	lw	%r26 %r2 20
	sw	%r26 %r1 24
	sw.s	%r26 %f2 32
	sw.s	%r26 %f1 40
	sw.s	%r26 %f0 48
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_const.2868 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 12
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2807 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9624 
	lw	%r26 %r1 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2866 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r3 56
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9624 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9625 
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9625 :
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
setup_rect_table.2983 :
	addi	%r0 %r3 6
	addi	%r0 %r4 l.6528 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2649 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9626 
	lw	%r26 %r1 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_isinvert.2811 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fisneg.2653 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	xor.2748 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_a.2815 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg_cond.2753 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	j	be_cont.9627 
be_else.9626 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
be_cont.9627 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fiszero.2649 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9628 
	lw	%r26 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_isinvert.2811 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2653 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2748 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_b.2817 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fneg_cond.2753 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 4
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 12
	j	be_cont.9629 
be_else.9628 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9629 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fiszero.2649 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9630 
	lw	%r26 %r1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2811 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2653 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	xor.2748 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_c.2819 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg_cond.2753 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 20
	j	be_cont.9631 
be_else.9630 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 20
be_cont.9631 :
	retl
setup_surface_table.2986 :
	addi	%r0 %r3 4
	addi	%r0 %r4 l.6528 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	lw	%r26 %r3 0
	sw	%r26 %r1 8
	sw.s	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_a.2815 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	lw	%r26 %r2 0
	sw.s	%r26 %f0 24
	sw.s	%r26 %f1 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2817 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 24
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r1 0
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_c.2819 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	add.s	%f0 %f1 %f0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fispos.2651 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9633 
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	j	be_cont.9634 
be_else.9633 :
	addi	%r0 %r1 l.6607 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2815 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2655 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2817 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2655 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2819 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2655 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9634 :
	retl
setup_second_table.2989 :
	addi	%r0 %r3 5
	addi	%r0 %r4 l.6528 
	ilw.s	%r4 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	lw	%r26 %r3 0
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	quadratic.2920 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2815 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg.2655 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	lw	%r26 %r2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_b.2817 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	lw	%r26 %r2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2819 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2655 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	lw.s	%r26 %f1 16
	sw.s	%r1 %f1 0
	lw	%r26 %r2 0
	sw.s	%r26 %f0 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_isrot.2813 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9636 
	lw	%r26 %r1 8
	lw.s	%r26 %f0 32
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 48
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 12
	j	be_cont.9637 
be_else.9636 :
	lw	%r26 %r1 4
	lw.s	%r1 %f0 8
	lw	%r26 %r2 0
	sw.s	%r26 %f0 72
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_r2.2841 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	lw	%r26 %r2 0
	sw.s	%r26 %f0 80
	sw.s	%r26 %f1 88
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r3.2843 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2664 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	lw	%r26 %r3 0
	sw.s	%r26 %f0 96
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2839 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r2 0
	sw.s	%r26 %f0 104
	sw.s	%r26 %f1 112
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_r3.2843 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fhalf.2664 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	lw	%r26 %r3 0
	sw.s	%r26 %f0 120
	mov	%r3 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	o_param_r1.2839 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 120
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	lw	%r26 %r1 0
	sw.s	%r26 %f0 128
	sw.s	%r26 %f1 136
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_param_r2.2841 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2664 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9637 :
	lw.s	%r26 %f0 16
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fiszero.2649 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9638 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 16
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	j	be_cont.9639 
be_else.9638 :
be_cont.9639 :
	lw	%r26 %r1 8
	retl
iter_setup_dirvec_constants.2992 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9640 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r3 8
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_const.2868 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_vec.2866 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_form.2807 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9641 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_rect_table.2983 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9642 
be_else.9641 :
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9643 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_surface_table.2986 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9644 
be_else.9643 :
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_second_table.2989 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9644 :
be_cont.9642 :
	addi	%r2 %r2 -1
	lw	%r26 %r1 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9640 :
	retl
setup_dirvec_constants.2995 :
	lw	%r24 %r2 8
	lw	%r24 %r24 4
	lw	%r2 %r2 0
	addi	%r2 %r2 -1
	lw	%r24 %r23 0
	jr	%r23
setup_startp_constants.2997 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9646 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	sw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_ctbl.2845 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2807 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	lw.s	%r2 %f0 0
	lw	%r26 %r3 12
	sw	%r26 %r1 20
	sw.s	%r26 %f0 24
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2823 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	lw.s	%r2 %f0 4
	lw	%r26 %r3 12
	sw.s	%r26 %f0 32
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2825 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 4
	lw	%r26 %r2 8
	lw.s	%r2 %f0 8
	lw	%r26 %r3 12
	sw.s	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2827 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 20
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9647 
	lw	%r26 %r2 12
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_abc.2821 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 16
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2783 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
	j	be_cont.9648 
be_else.9647 :
addi	%r0 %r25 2
	bg	%r2 %r25 ble_else.9649 
	j	ble_cont.9650 
ble_else.9649 :
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r1 %f2 8
	lw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	quadratic.2920 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9651 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.9652 
be_else.9651 :
be_cont.9652 :
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
ble_cont.9650 :
be_cont.9648 :
	lw	%r26 %r1 4
	addi	%r1 %r2 -1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9646 :
	retl
setup_startp.3000 :
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
	jal	veccpy.2769 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
is_rect_outside.3002 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fabs.2662 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2815 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f1
	lw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2657 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9655 
	addi	%r0 %r1 0
	j	be_cont.9656 
be_else.9655 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fabs.2662 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2817 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2657 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9657 
	addi	%r0 %r1 0
	j	be_cont.9658 
be_else.9657 :
	lw.s	%r26 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fabs.2662 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_c.2819 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov.s	%f0 %f1
	lw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2657 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9658 :
be_cont.9656 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9659 
	lw	%r26 %r1 16
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2811 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9660 
	addi	%r0 %r1 1
	retl
be_else.9660 :
	addi	%r0 %r1 0
	retl
be_else.9659 :
	lw	%r26 %r1 16
	j	o_isinvert.2811 
is_plane_outside.3007 :
	sw	%r26 %r1 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2821 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veciprod2.2783 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 0
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_isinvert.2811 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f0 32
	sw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fisneg.2653 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	xor.2748 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9662 
	addi	%r0 %r1 1
	retl
be_else.9662 :
	addi	%r0 %r1 0
	retl
is_second_outside.3012 :
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	quadratic.2920 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2807 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9664 
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	j	be_cont.9665 
be_else.9664 :
	lw.s	%r26 %f0 8
be_cont.9665 :
	lw	%r26 %r1 0
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2811 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2653 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2748 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9666 
	addi	%r0 %r1 1
	retl
be_else.9666 :
	addi	%r0 %r1 0
	retl
is_outside.3017 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2823 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2825 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2827 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 0
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2807 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9668 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_rect_outside.3002 
be_else.9668 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9669 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_plane_outside.3007 
be_else.9669 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_second_outside.3012 
check_all_inside.3022 :
	lw	%r24 %r3 4
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.9670 
	addi	%r0 %r1 1
	retl
be_else.9670 :
	addi	%r0 %r25 2
	sll	%r4 %r4 %r25
	add	%r3 %r4 %r25
	lw	%r25 %r3 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r2 24
	sw	%r26 %r24 28
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	is_outside.3017 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9671 
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r2 24
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9671 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.3028 :
	lw	%r24 %r3 28
	lw	%r24 %r4 24
	lw	%r24 %r5 20
	lw	%r24 %r6 16
	lw	%r24 %r7 12
	lw	%r24 %r8 8
	lw	%r24 %r9 4
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.9672 
	addi	%r0 %r1 0
	retl
be_else.9672 :
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r2 %r10 %r25
	lw	%r25 %r10 0
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
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 32
	lw.s	%r2 %f0 0
	sw.s	%r26 %f0 40
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9674 
	addi	%r0 %r1 0
	j	be_cont.9675 
be_else.9674 :
	addi	%r0 %r1 l.6986 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2657 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9675 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9676 
	lw	%r26 %r1 28
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2811 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9677 
	addi	%r0 %r1 0
	retl
be_else.9677 :
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9676 :
	addi	%r0 %r1 l.6988 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 40
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r2 4
	lw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r1 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r2 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	mul.s	%f0 %f3 %f0
	lw.s	%r2 %f3 8
	add.s	%f3 %f0 %f0
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
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9678 
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9678 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.3031 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r25 -1
	bne	%r5 %r25 be_else.9679 
	addi	%r0 %r1 0
	retl
be_else.9679 :
	addi	%r0 %r25 2
	sll	%r5 %r5 %r25
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
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9680 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9680 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.3034 :
	lw	%r24 %r3 20
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r2 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r9 0
	addi	%r0 %r25 -1
	bne	%r9 %r25 be_else.9681 
	addi	%r0 %r1 0
	retl
be_else.9681 :
	sw	%r26 %r8 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9682 
	addi	%r0 %r1 1
	j	be_cont.9683 
be_else.9682 :
	sw	%r26 %r4 20
	mov	%r6 %r2
	mov	%r9 %r1
	mov	%r3 %r24
	mov	%r7 %r3
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9684 
	addi	%r0 %r1 0
	j	be_cont.9685 
be_else.9684 :
	lw	%r26 %r1 20
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.7002 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2657 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9686 
	addi	%r0 %r1 0
	j	be_cont.9687 
be_else.9686 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9688 
	addi	%r0 %r1 0
	j	be_cont.9689 
be_else.9688 :
	addi	%r0 %r1 1
be_cont.9689 :
be_cont.9687 :
be_cont.9685 :
be_cont.9683 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9690 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9690 :
	addi	%r0 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9691 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9691 :
	addi	%r0 %r1 1
	retl
solve_each_element.3037 :
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
	add	%r2 %r13 %r25
	lw	%r25 %r13 0
	addi	%r0 %r25 -1
	bne	%r13 %r25 be_else.9692 
	retl
be_else.9692 :
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
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9694 
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 44
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2811 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9695 
	retl
be_else.9695 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
be_else.9694 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 52
	sw.s	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2657 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9697 
	j	be_cont.9698 
be_else.9697 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2657 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9699 
	j	be_cont.9700 
be_else.9699 :
	addi	%r0 %r1 l.6988 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 28
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r2 16
	lw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r1 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r2 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	mul.s	%f0 %f3 %f3
	lw.s	%r2 %f4 8
	add.s	%f4 %f3 %f3
	addi	%r0 %r2 0
	lw	%r26 %r3 32
	lw	%r26 %r24 12
	sw.s	%r26 %f3 64
	sw.s	%r26 %f2 72
	sw.s	%r26 %f1 80
	sw.s	%r26 %f0 88
	mov	%r2 %r1
	mov	%r3 %r2
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9701 
	j	be_cont.9702 
be_else.9701 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 88
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 80
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 64
	lw	%r26 %r1 8
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	vecset.2759 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r1 4
	lw	%r26 %r2 48
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 52
	sw	%r1 %r2 0
be_cont.9702 :
be_cont.9700 :
be_cont.9698 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.3041 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9703 
	retl
be_else.9703 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
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
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix.3045 :
	lw	%r24 %r4 20
	lw	%r24 %r5 16
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r2 %r9 %r25
	lw	%r25 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r25 -1
	bne	%r10 %r25 be_else.9705 
	retl
be_else.9705 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r10 %r25 be_else.9707 
	addi	%r0 %r4 1
	mov	%r9 %r2
	mov	%r4 %r1
	mov	%r8 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.9708 
be_else.9707 :
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
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9709 
	j	be_cont.9710 
be_else.9709 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2657 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9711 
	j	be_cont.9712 
be_else.9711 :
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	lw	%r26 %r3 0
	lw	%r26 %r24 20
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9712 :
be_cont.9710 :
be_cont.9708 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection.3049 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.7025 
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
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.7002 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2657 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9714 
	addi	%r0 %r1 0
	retl
be_else.9714 :
	addi	%r0 %r1 l.7031 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2657 
solve_each_element_fast.3051 :
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
	jal	d_vec.2866 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9715 
	retl
be_else.9715 :
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
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9717 
	lw	%r26 %r1 56
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_isinvert.2811 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9718 
	retl
be_else.9718 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9717 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 60
	sw.s	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2657 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9720 
	j	be_cont.9721 
be_else.9720 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2657 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9722 
	j	be_cont.9723 
be_else.9722 :
	addi	%r0 %r1 l.6988 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 64
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 52
	lw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r2 16
	lw.s	%r2 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r1 %f2 4
	mul.s	%f0 %f2 %f2
	lw.s	%r2 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r1 %f3 8
	mul.s	%f0 %f3 %f3
	lw.s	%r2 %f4 8
	add.s	%f4 %f3 %f3
	addi	%r0 %r1 0
	lw	%r26 %r2 44
	lw	%r26 %r24 12
	sw.s	%r26 %f3 72
	sw.s	%r26 %f2 80
	sw.s	%r26 %f1 88
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	mov.s	%f3 %f2
	sw	%r26 %r28 108
	lw	%r24 %r23 0
	addi	%r26 %r26 112	
	jalr	%r23
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9724 
	j	be_cont.9725 
be_else.9724 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 88
	lw.s	%r26 %f1 80
	lw.s	%r26 %f2 72
	lw	%r26 %r1 8
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecset.2759 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 4
	lw	%r26 %r2 56
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 60
	sw	%r1 %r2 0
be_cont.9725 :
be_cont.9723 :
be_cont.9721 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.3055 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9726 
	retl
be_else.9726 :
	addi	%r0 %r25 2
	sll	%r6 %r6 %r25
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
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
trace_or_matrix_fast.3059 :
	lw	%r24 %r4 16
	lw	%r24 %r5 12
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r2 %r8 %r25
	lw	%r25 %r8 0
	lw	%r8 %r9 0
	addi	%r0 %r25 -1
	bne	%r9 %r25 be_else.9728 
	retl
be_else.9728 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9730 
	addi	%r0 %r4 1
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	j	be_cont.9731 
be_else.9730 :
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
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9732 
	j	be_cont.9733 
be_else.9732 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2657 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9734 
	j	be_cont.9735 
be_else.9734 :
	addi	%r0 %r1 1
	lw	%r26 %r2 16
	lw	%r26 %r3 0
	lw	%r26 %r24 20
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9735 :
be_cont.9733 :
be_cont.9731 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection_fast.3063 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.7025 
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
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.7002 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2657 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9737 
	addi	%r0 %r1 0
	retl
be_else.9737 :
	addi	%r0 %r1 l.7031 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2657 
get_nvector_rect.3065 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw	%r3 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	vecbzero.2767 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	addi	%r1 %r2 -1
	addi	%r1 %r1 -1
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r3 4
	add	%r3 %r1 %r25
	lw.s	%r25 %f0 0
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sgn.2751 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2655 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 0
	add %r2 %r1 %r25
	sw.s	%r25 %f0 0
	retl
get_nvector_plane.3067 :
	lw	%r24 %r2 4
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_a.2815 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2655 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_b.2817 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2655 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_c.2819 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2655 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
get_nvector_second.3069 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2823 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 4
	lw	%r26 %r2 4
	sw.s	%r26 %f0 24
	sw.s	%r26 %f1 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2825 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	lw.s	%r1 %f1 8
	lw	%r26 %r1 4
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_z.2827 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2815 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2817 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_c.2819 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isrot.2813 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9741 
	lw	%r26 %r1 0
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 80
	sw.s	%r1 %f0 8
	j	be_cont.9742 
be_else.9741 :
	lw	%r26 %r1 4
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r3.2843 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r2.2841 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 88
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2664 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 64
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r3.2843 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2839 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fhalf.2664 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 72
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 4
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r2.2841 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2839 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fhalf.2664 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
be_cont.9742 :
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_isinvert.2811 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r1 0
	j	vecunit_sgn.2777 
get_nvector.3071 :
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
	jal	o_form.2807 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9743 
	lw	%r26 %r1 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9743 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9744 
	lw	%r26 %r1 4
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9744 :
	lw	%r26 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
utexture.3074 :
	lw	%r24 %r3 4
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_texturetype.2805 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_red.2833 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_green.2835 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_blue.2837 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	lw	%r26 %r2 12
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.9745 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2823 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7122 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.7124 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7105 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2657 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	lw.s	%r2 %f0 8
	lw	%r26 %r2 8
	sw	%r26 %r1 24
	sw.s	%r26 %f0 32
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_z.2827 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7122 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.7124 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7105 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2657 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 24
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9747 
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9749 
	addi	%r0 %r1 l.7098 
	ilw.s	%r1 %f0 0
	j	be_cont.9750 
be_else.9749 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
be_cont.9750 :
	j	be_cont.9748 
be_else.9747 :
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9751 
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	j	be_cont.9752 
be_else.9751 :
	addi	%r0 %r1 l.7098 
	ilw.s	%r1 %f0 0
be_cont.9752 :
be_cont.9748 :
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	retl
be_else.9745 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9754 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.7114 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2669 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2660 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.7098 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.7098 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	retl
be_else.9754 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.9756 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_x.2823 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 8
	lw	%r26 %r1 8
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_z.2827 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2660 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2660 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.7105 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7086 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2671 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2660 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 l.7098 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.7098 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
be_else.9756 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.9758 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 80
	mov	%r3 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_x.2823 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_a.2815 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 8
	lw	%r26 %r2 8
	sw.s	%r26 %f0 96
	sw.s	%r26 %f1 104
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_z.2827 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_c.2819 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	sw.s	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fsqr.2660 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 120
	sw.s	%r26 %f0 128
	mov.s	%f1 %f0
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2660 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	sw.s	%r26 %f0 136
	mov.s	%f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2662 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.7080 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fless.2657 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9759 
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 120
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2662 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	atan.2673 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.7084 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7086 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9760 
be_else.9759 :
	addi	%r0 %r1 l.7082 
	ilw.s	%r1 %f0 0
be_cont.9760 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 4
	lw	%r26 %r1 8
	sw.s	%r26 %f0 144
	sw.s	%r26 %f1 152
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_param_y.2825 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 152
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 160
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	o_param_b.2817 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 160
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 136
	sw.s	%r26 %f0 168
	mov.s	%f1 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2662 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.7080 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fless.2657 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9761 
	lw.s	%r26 %f0 136
	lw.s	%r26 %f1 168
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2662 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	atan.2673 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.7084 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7086 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9762 
be_else.9761 :
	addi	%r0 %r1 l.7082 
	ilw.s	%r1 %f0 0
be_cont.9762 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7093 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6596 
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 144
	sub.s	%f3 %f2 %f2
	sw.s	%r26 %f0 176
	sw.s	%r26 %f1 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2660 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 184
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6596 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f2 176
	sub.s	%f2 %f1 %f1
	sw.s	%r26 %f0 192
	mov.s	%f1 %f0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	fsqr.2660 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw.s	%r26 %f1 192
	sub.s	%f0 %f1 %f0
	sw.s	%r26 %f0 200
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	fisneg.2653 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9763 
	lw.s	%r26 %f0 200
	j	be_cont.9764 
be_else.9763 :
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
be_cont.9764 :
	addi	%r0 %r1 l.7098 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7100 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
be_else.9758 :
	retl
add_light.3077 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r2 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2651 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9767 
	j	be_cont.9768 
be_else.9767 :
	lw.s	%r26 %f0 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecaccum.2788 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9768 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2651 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9769 
	retl
be_else.9769 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2660 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2660 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 28
	lw.s	%r1 %f1 0
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
trace_reflections.3081 :
	lw	%r24 %r3 32
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9772 
	addi	%r0 %r25 2
	sll	%r1 %r11 %r25
	add	%r4 %r11 %r25
	lw	%r25 %r4 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw.s	%r26 %f1 8
	sw	%r26 %r10 16
	sw	%r26 %r2 20
	sw.s	%r26 %f0 24
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
	jal	r_dvec.2872 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r24 56
	sw	%r26 %r1 60
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9773 
	j	be_cont.9774 
be_else.9773 :
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
	jal	r_surface_id.2870 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	bne	%r2 %r1 be_else.9775 
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9777 
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	d_vec.2866 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veciprod.2780 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 44
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	r_bright.2874 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 24
	mul.s	%f1 %f0 %f2
	lw.s	%r26 %f3 72
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 60
	sw.s	%r26 %f2 80
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	d_vec.2866 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	veciprod.2780 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f1
	lw.s	%r26 %f0 80
	lw.s	%r26 %f2 8
	lw	%r26 %r24 16
	sw	%r26 %r28 100
	lw	%r24 %r23 0
	addi	%r26 %r26 104	
	jalr	%r23
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	j	be_cont.9778 
be_else.9777 :
be_cont.9778 :
	j	be_cont.9776 
be_else.9775 :
be_cont.9776 :
be_cont.9774 :
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 8
	lw	%r26 %r2 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9772 :
	retl
trace_ray.3086 :
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
	bg	%r1 %r25 ble_else.9781 
	sw	%r26 %r24 0
	sw.s	%r26 %f1 8
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
	sw.s	%r26 %f0 96
	sw	%r26 %r16 104
	sw	%r26 %r1 108
	sw	%r26 %r2 112
	sw	%r26 %r17 116
	mov	%r3 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	p_surface_ids.2851 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw	%r26 %r2 112
	lw	%r26 %r24 116
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	lw	%r24 %r23 0
	addi	%r26 %r26 128	
	jalr	%r23
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9784 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 120
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9785 
	retl
be_else.9785 :
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	veciprod.2780 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fneg.2655 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fispos.2651 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9788 
	retl
be_else.9788 :
	lw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2660 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f1 128
	mul.s	%f1 %f0 %f0
	lw.s	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 88
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 84
	lw.s	%r1 %f1 0
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 0
	lw.s	%r1 %f1 4
	add.s	%f0 %f1 %f1
	sw.s	%r1 %f1 4
	lw.s	%r1 %f1 8
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 8
	retl
be_else.9784 :
	lw	%r26 %r1 80
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 76
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	sw	%r26 %r1 136
	sw	%r26 %r2 140
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_reflectiontype.2809 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw	%r26 %r2 140
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_diffuse.2829 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 96
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 140
	lw	%r26 %r2 112
	lw	%r26 %r24 72
	sw.s	%r26 %f0 152
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 68
	lw	%r26 %r2 64
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	veccpy.2769 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 140
	lw	%r26 %r2 64
	lw	%r26 %r24 60
	sw	%r26 %r28 164
	lw	%r24 %r23 0
	addi	%r26 %r26 168	
	jalr	%r23
	addi	%r26 %r26 -168
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
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_intersection_points.2849 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	lw	%r26 %r3 64
	mov	%r3 %r2
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	veccpy.2769 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_calc_diffuse.2853 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 140
	sw	%r26 %r1 160
	mov	%r2 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_diffuse.2829 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r1 l.6596 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fless.2657 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9792 
	addi	%r0 %r1 1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_energy.2855 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r4 48
	sw	%r26 %r1 164
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	veccpy.2769 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 108
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 164
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 l.6537 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.7157 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.7159 
	ilw.s	%r3 %f0 0
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	mov	%r2 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	vecscale.2798 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 52
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	p_nvectors.2864 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	lw	%r26 %r3 44
	mov	%r3 %r2
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	veccpy.2769 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	j	be_cont.9793 
be_else.9792 :
	addi	%r0 %r1 0
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9793 :
	addi	%r0 %r1 l.7162 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw.s	%r26 %f0 168
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	veciprod.2780 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 168
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	vecaccum.2788 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r1 140
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	o_hilight.2831 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 0
	lw	%r26 %r2 40
	lw	%r2 %r2 0
	lw	%r26 %r24 36
	sw.s	%r26 %f0 176
	sw	%r26 %r28 188
	lw	%r24 %r23 0
	addi	%r26 %r26 192	
	jalr	%r23
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9794 
	lw	%r26 %r1 44
	lw	%r26 %r2 104
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	veciprod.2780 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fneg.2655 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw.s	%r26 %f0 184
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	veciprod.2780 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fneg.2655 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	mov.s	%f0 %f1
	lw.s	%r26 %f0 184
	lw.s	%r26 %f2 176
	lw	%r26 %r24 32
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	j	be_cont.9795 
be_else.9794 :
be_cont.9795 :
	lw	%r26 %r1 64
	lw	%r26 %r24 28
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw	%r26 %r1 24
	lw	%r1 %r1 0
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 152
	lw.s	%r26 %f1 176
	lw	%r26 %r2 112
	lw	%r26 %r24 20
	sw	%r26 %r28 196
	lw	%r24 %r23 0
	addi	%r26 %r26 200	
	jalr	%r23
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r1 l.7166 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 96
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fless.2657 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9796 
	retl
be_else.9796 :
	lw	%r26 %r1 108
addi	%r0 %r25 4
	bl	%r1 r25 bge_else.9798 
	j	bge_cont.9799 
bge_else.9798 :
	addi	%r1 %r2 1
	addi	%r0 %r3 -1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r4 120
	add %r4 %r2 %r25
	sw	%r25 %r3 0
bge_cont.9799 :
	lw	%r26 %r2 144
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9800 
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 140
	sw.s	%r26 %f0 192
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	o_diffuse.2829 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw.s	%r26 %f1 192
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 108
	addi	%r1 %r1 1
	lw	%r26 %r2 16
	lw.s	%r2 %f1 0
	lw.s	%r26 %f2 8
	add.s	%f1 %f2 %f1
	lw	%r26 %r2 112
	lw	%r26 %r3 52
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9800 :
	retl
ble_else.9781 :
	retl
trace_diffuse_ray.3092 :
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
	sw.s	%r26 %f0 8
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
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9803 
	retl
be_else.9803 :
	lw	%r26 %r1 52
	lw	%r1 %r1 0
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 48
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 44
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2866 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r1 56
	lw	%r26 %r24 40
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 56
	lw	%r26 %r2 32
	lw	%r26 %r24 36
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r1 0
	lw	%r26 %r2 28
	lw	%r2 %r2 0
	lw	%r26 %r24 24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9805 
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.2780 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2655 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fispos.2651 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9807 
	addi	%r0 %r1 l.6528 
	ilw.s	%r1 %f0 0
	j	be_cont.9808 
be_else.9807 :
	lw.s	%r26 %f0 64
be_cont.9808 :
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 56
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_diffuse.2829 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	j	vecaccum.2788 
be_else.9805 :
	retl
iter_trace_diffuse_rays.3095 :
	lw	%r24 %r5 4
	addi	%r0 %r25 0
	bl	%r4 %r25 bge_else.9810 
	addi	%r0 %r25 2
	sll	%r4 %r6 %r25
	add	%r1 %r6 %r25
	lw	%r25 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r24 4
	sw	%r26 %r5 8
	sw	%r26 %r1 12
	sw	%r26 %r4 16
	sw	%r26 %r2 20
	mov	%r6 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	d_vec.2866 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.2780 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2653 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9811 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.7188 
	ilw.s	%r4 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f0 %f1 %f0
	lw	%r26 %r24 8
	mov	%r2 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	j	be_cont.9812 
be_else.9811 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.7185 
	ilw.s	%r4 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f0 %f1 %f0
	lw	%r26 %r24 8
	mov	%r2 %r1
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9812 :
	lw	%r26 %r1 16
	addi	%r1 %r4 -2
	lw	%r26 %r1 12
	lw	%r26 %r2 20
	lw	%r26 %r3 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9810 :
	retl
trace_diffuse_rays.3100 :
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r4 118
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
trace_diffuse_ray_80percent.3104 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r1 16
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9814 
	j	be_cont.9815 
be_else.9814 :
	lw	%r5 %r6 0
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9815 :
	lw	%r26 %r1 16
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9816 
	j	be_cont.9817 
be_else.9816 :
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9817 :
	lw	%r26 %r1 16
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9818 
	j	be_cont.9819 
be_else.9818 :
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9819 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9820 
	j	be_cont.9821 
be_else.9820 :
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9821 :
	lw	%r26 %r1 16
	addi	%r0 %r25 4
	bne	%r1 %r25 be_else.9822 
	retl
be_else.9822 :
	lw	%r26 %r1 12
	lw	%r1 %r1 16
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
calc_diffuse_using_1point.3108 :
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
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2864 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_intersection_points.2849 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_energy.2855 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 20
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r4 8
	sw	%r26 %r1 32
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veccpy.2769 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_group_id.2859 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 24
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r26 %r5 28
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	lw	%r26 %r24 4
	mov	%r3 %r2
	mov	%r4 %r3
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 12
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	add	%r2 %r1 %r25
	lw	%r25 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r3 8
	j	vecaccumv.2801 
calc_diffuse_using_5points.3111 :
	lw	%r24 %r6 8
	lw	%r24 %r7 4
	addi	%r0 %r25 2
	sll	%r1 %r8 %r25
	add	%r2 %r8 %r25
	lw	%r25 %r2 0
	sw	%r26 %r6 0
	sw	%r26 %r7 4
	sw	%r26 %r5 8
	sw	%r26 %r4 12
	sw	%r26 %r3 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	addi	%r2 %r3 -1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 16
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	sw	%r26 %r1 24
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	sw	%r26 %r1 28
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 20
	addi	%r2 %r3 1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 16
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 20
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 12
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	sw	%r26 %r1 36
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 24
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r4 4
	sw	%r26 %r1 40
	mov	%r3 %r2
	mov	%r4 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2769 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 28
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2792 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 32
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2792 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 36
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2792 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	vecadd.2792 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 20
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 16
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_energy.2855 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r3 4
	j	vecaccumv.2801 
do_without_neighbors.3117 :
	lw	%r24 %r3 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9824 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_surface_ids.2851 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9825 
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_calc_diffuse.2853 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9826 
	j	be_cont.9827 
be_else.9826 :
	lw	%r26 %r1 8
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9827 :
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9825 :
	retl
ble_else.9824 :
	retl
neighbors_exist.3120 :
	lw	%r24 %r3 4
	lw	%r3 %r4 4
	addi	%r2 %r5 1
	bg	%r4 %r5 ble_else.9830 
	addi	%r0 %r1 0
	retl
ble_else.9830 :
	addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.9831 
	addi	%r0 %r1 0
	retl
ble_else.9831 :
	lw	%r3 %r2 0
	addi	%r1 %r3 1
	bg	%r2 %r3 ble_else.9832 
	addi	%r0 %r1 0
	retl
ble_else.9832 :
	addi	%r0 %r25 0
	bg	%r1 %r25 ble_else.9833 
	addi	%r0 %r1 0
	retl
ble_else.9833 :
	addi	%r0 %r1 1
	retl
get_surface_id.3124 :
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	p_surface_ids.2851 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	retl
neighbors_are_available.3127 :
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r3 %r6 %r25
	lw	%r25 %r6 0
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r5 8
	sw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r5 %r2
	mov	%r6 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	get_surface_id.3124 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 12
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r4 8
	sw	%r26 %r1 20
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3124 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9834 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r3 %r25
	lw	%r26 %r4 4
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r4 8
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3124 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9835 
	lw	%r26 %r1 16
	addi	%r1 %r3 -1
	addi	%r0 %r25 2
	sll	%r3 %r3 %r25
	lw	%r26 %r4 0
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	lw	%r26 %r5 8
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3124 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9836 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r3 0
	add	%r3 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r3 8
	mov	%r3 %r2
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3124 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9837 
	addi	%r0 %r1 1
	retl
be_else.9837 :
	addi	%r0 %r1 0
	retl
be_else.9836 :
	addi	%r0 %r1 0
	retl
be_else.9835 :
	addi	%r0 %r1 0
	retl
be_else.9834 :
	addi	%r0 %r1 0
	retl
try_exploit_neighbors.3133 :
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r4 %r9 %r25
	lw	%r25 %r9 0
	addi	%r0 %r25 4
	bg	%r6 %r25 ble_else.9838 
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
	jal	get_surface_id.3124 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9839 
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r5 20
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	neighbors_are_available.3127 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9840 
	lw	%r26 %r1 36
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 28
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 20
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9840 :
	lw	%r26 %r1 12
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_calc_diffuse.2853 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r5 20
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9841 
	j	be_cont.9842 
be_else.9841 :
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r24 8
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
be_cont.9842 :
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
bge_else.9839 :
	retl
ble_else.9838 :
	retl
write_ppm_header.3140 :
	lw	%r24 %r1 4
	addi	%r0 %r2 80
	out	%r2
	addi	%r0 %r2 51
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2675 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2675 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 255
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2675 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
write_rgb_element.3142 :
	mfc1	%r1 %f0
addi	%r0 %r25 255
	bg	%r1 %r25 ble_else.9845 
addi	%r0 %r25 0
	bl	%r1 r25 bge_else.9847 
	j	bge_cont.9848 
bge_else.9847 :
	addi	%r0 %r1 0
bge_cont.9848 :
	j	ble_cont.9846 
ble_else.9845 :
	addi	%r0 %r1 255
ble_cont.9846 :
	j	print_int.2675 
write_rgb.3144 :
	lw	%r24 %r1 4
	lw.s	%r1 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3142 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3142 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3142 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
pretrace_diffuse_rays.3146 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9849 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3124 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9850 
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_calc_diffuse.2853 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9851 
	j	be_cont.9852 
be_else.9851 :
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_group_id.2859 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecbzero.2767 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2864 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_intersection_points.2849 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 24
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 8
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r3 16
	addi	%r0 %r25 2
	sll	%r3 %r4 %r25
	lw	%r26 %r5 28
	add	%r5 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 2
	sll	%r3 %r5 %r25
	add	%r1 %r5 %r25
	lw	%r25 %r1 0
	lw	%r26 %r24 4
	mov	%r1 %r3
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 20
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_received_ray_20percent.2857 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	lw	%r26 %r3 12
	mov	%r3 %r2
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veccpy.2769 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9852 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	lw	%r26 %r1 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9850 :
	retl
ble_else.9849 :
	retl
pretrace_pixels.3149 :
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
	bl	%r2 %r25 bge_else.9855 
	lw.s	%r8 %f3 0
	lw	%r12 %r8 0
	sub	%r2 %r8 %r8
	mtc1	%r8 %f4
	mul.s	%f4 %f3 %f3
	lw.s	%r7 %f4 0
	mul.s	%f4 %f3 %f4
	add.s	%f0 %f4 %f4
	sw.s	%r10 %f4 0
	lw.s	%r7 %f4 4
	mul.s	%f4 %f3 %f4
	add.s	%f1 %f4 %f4
	sw.s	%r10 %f4 4
	lw.s	%r7 %f4 8
	mul.s	%f4 %f3 %f3
	add.s	%f2 %f3 %f3
	sw.s	%r10 %f3 8
	addi	%r0 %r7 0
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
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
	jal	vecunit_sgn.2777 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	vecbzero.2767 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 56
	lw	%r26 %r2 52
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2769 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6537 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 l.6528 
	ilw.s	%r5 %f1 0
	lw	%r26 %r5 36
	lw	%r26 %r24 40
	mov	%r5 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	p_rgb.2847 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2769 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r4 32
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	p_set_group_id.2861 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 44
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r24 28
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 48
	addi	%r1 %r1 -1
	addi	%r0 %r2 1
	lw	%r26 %r3 32
	sw	%r26 %r1 64
	mov	%r3 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	add_mod5.2756 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r3
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r1 44
	lw	%r26 %r2 64
	lw	%r26 %r24 24
	lw	%r24 %r23 0
	jr	%r23
bge_else.9855 :
	retl
pretrace_line.3156 :
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
	mul.s	%f1 %f0 %f0
	lw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r4 %f2 0
	add.s	%f2 %f1 %f1
	lw.s	%r5 %f2 4
	mul.s	%f2 %f0 %f2
	lw.s	%r4 %f3 4
	add.s	%f3 %f2 %f2
	lw.s	%r5 %f3 8
	mul.s	%f3 %f0 %f0
	lw.s	%r4 %f3 8
	add.s	%f3 %f0 %f0
	lw	%r8 %r2 0
	addi	%r2 %r2 -1
	mov	%r7 %r24
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	lw	%r24 %r23 0
	jr	%r23
scan_pixel.3160 :
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r10 %r10 0
	bg	%r10 %r1 ble_else.9857 
	retl
ble_else.9857 :
	addi	%r0 %r25 2
	sll	%r1 %r10 %r25
	add	%r4 %r10 %r25
	lw	%r25 %r10 0
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
	jal	p_rgb.2847 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2769 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 32
	lw	%r26 %r2 28
	lw	%r26 %r3 24
	lw	%r26 %r24 36
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9859 
	lw	%r26 %r1 32
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 20
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r24 16
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	j	be_cont.9860 
be_else.9859 :
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
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
be_cont.9860 :
	lw	%r26 %r24 4
	sw	%r26 %r28 44
	lw	%r24 %r23 0
	addi	%r26 %r26 48	
	jalr	%r23
	addi	%r26 %r26 -48
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
scan_line.3166 :
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	lw	%r8 %r9 4
	bg	%r9 %r1 ble_else.9861 
	retl
ble_else.9861 :
	lw	%r8 %r8 4
	addi	%r8 %r8 -1
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r6 24
	bg	%r8 %r1 ble_else.9863 
	j	ble_cont.9864 
ble_else.9863 :
	addi	%r1 %r8 1
	mov	%r5 %r3
	mov	%r8 %r2
	mov	%r4 %r1
	mov	%r7 %r24
	sw	%r26 %r28 28
	lw	%r24 %r23 0
	addi	%r26 %r26 32	
	jalr	%r23
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
ble_cont.9864 :
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
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	addi	%r0 %r2 2
	lw	%r26 %r3 4
	sw	%r26 %r1 28
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	add_mod5.2756 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r5
	lw	%r26 %r1 28
	lw	%r26 %r2 12
	lw	%r26 %r3 8
	lw	%r26 %r4 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
create_float5x3array.3172 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 4
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 16
	mov	%r2 %r1
	retl
create_pixel.3174 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6528 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	create_float5x3array.3172 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 5
	addi	%r0 %r3 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3172 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3172 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 20
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	create_float5x3array.3172 
	addi	%r26 %r26 -32
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
init_line_elements.3176 :
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9865 
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3174 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 0
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 -1
	mov	%r4 %r1
	j	init_line_elements.3176 
bge_else.9865 :
	retl
create_pixelline.3179 :
	lw	%r24 %r1 4
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3174 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	lw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	lw	%r2 %r2 0
	addi	%r2 %r2 -2
	j	init_line_elements.3176 
tan.3181 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	sin.2669 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	cos.2671 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	div.s	%f0 %f1 %f0
	retl
adjust_position.3183 :
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.7166 
	ilw.s	%r1 %f2 0
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f2 0
	div.s	%f0 %f2 %f2
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	mov.s	%f2 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	atan.2673 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	tan.3181 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	retl
calc_dirvec.3186 :
	lw	%r24 %r4 4
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9866 
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2660 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2660 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 16
	div.s	%f0 %f1 %f1
	lw.s	%r26 %f2 24
	div.s	%f0 %f2 %f2
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f3 0
	div.s	%f0 %f3 %f0
	lw	%r26 %r1 8
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 4
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r3 0
	sw	%r26 %r1 40
	sw.s	%r26 %f0 48
	sw.s	%r26 %f2 56
	sw.s	%r26 %f1 64
	mov	%r3 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2866 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 48
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2759 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 0
	addi	%r1 %r2 40
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2866 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 56
	sw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2655 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f2
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 48
	lw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2759 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 0
	addi	%r1 %r2 80
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	d_vec.2866 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	sw	%r26 %r1 76
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fneg.2655 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2655 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f2
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 80
	lw	%r26 %r1 76
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	vecset.2759 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 0
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	d_vec.2866 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f0 64
	sw	%r26 %r1 88
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2655 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fneg.2655 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2655 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f2
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 104
	lw	%r26 %r1 88
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	vecset.2759 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r1 0
	addi	%r1 %r2 41
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 40
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	d_vec.2866 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f0 64
	sw	%r26 %r1 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2655 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2655 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov.s	%f0 %f1
	lw.s	%r26 %f0 120
	lw.s	%r26 %f2 56
	lw	%r26 %r1 112
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	vecset.2759 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw	%r26 %r1 0
	addi	%r1 %r1 81
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 40
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	d_vec.2866 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f0 48
	sw	%r26 %r1 128
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2655 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 56
	lw	%r26 %r1 128
	j	vecset.2759 
bge_else.9866 :
	sw.s	%r26 %f2 136
	sw	%r26 %r3 0
	sw	%r26 %r2 8
	sw	%r26 %r24 144
	sw.s	%r26 %f3 152
	sw	%r26 %r1 160
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	adjust_position.3183 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 160
	addi	%r1 %r1 1
	lw.s	%r26 %f1 152
	sw.s	%r26 %f0 168
	sw	%r26 %r1 176
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	adjust_position.3183 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	mov.s	%f0 %f1
	lw.s	%r26 %f0 168
	lw.s	%r26 %f2 136
	lw.s	%r26 %f3 152
	lw	%r26 %r1 176
	lw	%r26 %r2 8
	lw	%r26 %r3 0
	lw	%r26 %r24 144
	lw	%r24 %r23 0
	jr	%r23
calc_dirvecs.3194 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9874 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.7295 
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.7297 
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.6528 
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.6528 
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
	addi	%r0 %r2 l.7295 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.7166 
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f1 0
	lw	%r26 %r3 24
	addi	%r3 %r4 2
	lw.s	%r26 %f3 8
	lw	%r26 %r5 16
	lw	%r26 %r24 20
	mov	%r4 %r3
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 36
	lw	%r24 %r23 0
	addi	%r26 %r26 40	
	jalr	%r23
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 28
	addi	%r1 %r1 -1
	addi	%r0 %r2 1
	lw	%r26 %r3 16
	sw	%r26 %r1 32
	mov	%r3 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	add_mod5.2756 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw.s	%r26 %f0 8
	lw	%r26 %r1 32
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9874 :
	retl
calc_dirvec_rows.3199 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9877 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.7295 
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.7297 
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
	lw	%r26 %r1 12
	addi	%r1 %r1 -1
	addi	%r0 %r2 2
	lw	%r26 %r3 8
	sw	%r26 %r1 16
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	add_mod5.2756 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 4
	addi	%r1 %r3 4
	lw	%r26 %r1 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9877 :
	retl
create_dirvec.3203 :
	lw	%r24 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6528 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 4
	sw	%r2 %r1 0
	mov	%r2 %r1
	retl
create_dirvec_elements.3205 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9879 
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r2 -1
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
bge_else.9879 :
	retl
create_dirvecs.3208 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9881 
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
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 8
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 2
	sll	%r2 %r1 %r25
	add	%r4 %r1 %r25
	lw	%r25 %r1 0
	addi	%r0 %r3 118
	lw	%r26 %r24 4
	mov	%r3 %r2
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r1 -1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9881 :
	retl
init_dirvec_constants.3210 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9883 
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	add	%r1 %r4 %r25
	lw	%r25 %r4 0
	sw	%r26 %r1 0
	sw	%r26 %r24 4
	sw	%r26 %r2 8
	mov	%r4 %r1
	mov	%r3 %r24
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	addi	%r1 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9883 :
	retl
init_vecset_constants.3213 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9885 
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
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
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9885 :
	retl
init_dirvecs.3215 :
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
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 9
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r24 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
add_reflection.3217 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r24 4
	sw	%r26 %r4 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw.s	%r26 %f0 16
	sw	%r26 %r3 24
	sw.s	%r26 %f3 32
	sw.s	%r26 %f2 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2866 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	vecset.2759 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 56
	lw	%r26 %r24 24
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r27 %r1
	addi	%r27 %r27 16
	lw.s	%r26 %f0 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 56
	sw	%r1 %r2 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	add %r3 %r2 %r25
	sw	%r25 %r1 0
	retl
setup_rect_reflection.3224 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6537 
	ilw.s	%r7 %f0 0
	sw	%r26 %r3 0
	sw	%r26 %r6 4
	sw	%r26 %r5 8
	sw	%r26 %r1 12
	sw	%r26 %r4 16
	sw.s	%r26 %f0 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_diffuse.2829 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fneg.2655 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 48
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2655 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov.s	%f0 %f3
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r3 16
	lw.s	%r3 %f1 0
	lw.s	%r26 %f0 32
	lw.s	%r26 %f2 48
	lw	%r26 %r4 4
	lw	%r26 %r24 8
	sw.s	%r26 %f3 56
	mov	%r4 %r1
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r2 1
	lw	%r26 %r3 12
	addi	%r3 %r4 2
	lw	%r26 %r5 16
	lw.s	%r5 %f2 4
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f3 56
	lw	%r26 %r24 8
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r2 2
	lw	%r26 %r3 12
	addi	%r3 %r3 3
	lw	%r26 %r4 16
	lw.s	%r4 %f3 8
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r24 8
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 68
	lw	%r24 %r23 0
	addi	%r26 %r26 72	
	jalr	%r23
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 4
	addi	%r1 %r1 3
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
setup_surface_reflection.3227 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	addi	%r1 %r1 1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6537 
	ilw.s	%r7 %f0 0
	sw	%r26 %r3 0
	sw	%r26 %r1 4
	sw	%r26 %r6 8
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	sw	%r26 %r2 20
	sw.s	%r26 %f0 24
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_diffuse.2829 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_abc.2821 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2780 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6535 
	ilw.s	%r1 %f1 0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_a.2815 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6535 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 56
	sw.s	%r26 %f2 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2817 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 4
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6535 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 72
	sw.s	%r26 %f2 80
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_c.2819 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f3
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r24 12
	sw	%r26 %r28 92
	lw	%r24 %r23 0
	addi	%r26 %r26 96	
	jalr	%r23
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
setup_reflections.3230 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9893 
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	add	%r4 %r5 %r25
	lw	%r25 %r4 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw	%r26 %r4 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_reflectiontype.2809 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9894 
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_diffuse.2829 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 l.6537 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2657 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9895 
	retl
be_else.9895 :
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2807 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9897 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9897 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9898 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9898 :
	retl
be_else.9894 :
	retl
bge_else.9893 :
	retl
rt.3232 :
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
	addi	%r0 %r2 l.7346 
	ilw.s	%r2 %f0 0
	mtc1	%r1 %f1
	div.s	%f1 %f0 %f0
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
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r24 40
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r24 40
	sw	%r26 %r1 48
	sw	%r26 %r28 52
	lw	%r24 %r23 0
	addi	%r26 %r26 56	
	jalr	%r23
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r24 36
	sw	%r26 %r1 52
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r24 32
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r24 28
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 24
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2866 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veccpy.2769 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 24
	lw	%r26 %r24 16
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 12
	lw	%r1 %r1 0
	addi	%r1 %r1 -1
	lw	%r26 %r24 8
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r1 48
	lw	%r26 %r24 4
	sw	%r26 %r28 60
	lw	%r24 %r23 0
	addi	%r26 %r26 64	
	jalr	%r23
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r1 0
	addi	%r0 %r5 2
	lw	%r26 %r2 44
	lw	%r26 %r3 48
	lw	%r26 %r4 52
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
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
