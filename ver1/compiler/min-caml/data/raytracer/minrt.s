#data_section
l.7394 :	# 128.000000
	.long	0x43000000
l.7345 :	# 0.900000
	.long	0x3f666666
l.7343 :	# 0.200000
	.long	0x3e4ccccd
l.7236 :	# 150.000000
	.long	0x43160000
l.7233 :	# -150.000000
	.long	0xc3160000
l.7214 :	# 0.100000
	.long	0x3dcccccd
l.7210 :	# -2.000000
	.long	0xc0000000
l.7207 :	# 0.003906
	.long	0x3b800000
l.7175 :	# 20.000000
	.long	0x41a00000
l.7173 :	# 0.050000
	.long	0x3d4ccccd
l.7165 :	# 0.250000
	.long	0x3e800000
l.7156 :	# 10.000000
	.long	0x41200000
l.7151 :	# 0.300000
	.long	0x3e99999a
l.7149 :	# 255.000000
	.long	0x437f0000
l.7144 :	# 0.150000
	.long	0x3e19999a
l.7137 :	# 3.141593
	.long	0x40490fdb
l.7135 :	# 30.000000
	.long	0x41f00000
l.7133 :	# 15.000000
	.long	0x41700000
l.7131 :	# 0.000100
	.long	0x38d1b717
l.7082 :	# 100000000.000000
	.long	0x4cbebc20
l.7076 :	# 1000000000.000000
	.long	0x4e6e6b28
l.7053 :	# -0.100000
	.long	0xbdcccccd
l.7039 :	# 0.010000
	.long	0x3c23d70a
l.7037 :	# -0.200000
	.long	0xbe4ccccd
l.6778 :	# -200.000000
	.long	0xc3480000
l.6775 :	# 200.000000
	.long	0x43480000
l.6770 :	# 0.017453
	.long	0x3c8efa35
l.6682 :	# -1.000000
	.long	0xbf800000
l.6676 :	# 0.001000
	.long	0x3a83126f
l.6671 :	# 0.500000
	.long	0x3f000000
l.6669 :	# 0.041667
	.long	0x3d2aaaab
l.6667 :	# 0.001389
	.long	0x3ab60b61
l.6665 :	# 0.000025
	.long	0x37d00d01
l.6663 :	# -0.000000
	.long	0xb493f27e
l.6659 :	# 0.166667
	.long	0x3e2aaaab
l.6657 :	# 0.008333
	.long	0x3c088889
l.6655 :	# 0.000198
	.long	0x39500d01
l.6653 :	# 0.000003
	.long	0x3638ef1d
l.6651 :	# -0.000000
	.long	0xb2d7322b
l.6649 :	# -3.141593
	.long	0xc0490fdb
l.6647 :	# 3.141593
	.long	0x40490fdb
l.6645 :	# 1.000000
	.long	0x3f800000
l.6643 :	# 2.000000
	.long	0x40000000
l.6636 :	# 0.000000
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
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 1
	addi	%r0 %r2 l.7149 
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
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r2 l.7076 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 60
	lw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	addi	%r0 %r1 0
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
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6636 
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
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 20
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
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_float_array
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 1
	addi	%r0 %r3 l.7149 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 50
	addi	%r0 %r3 1
	addi	%r0 %r4 -1
	sw	%r26 %r1 40
	sw	%r26 %r2 44
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r2
	lw	%r26 %r1 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 1
	lw	%r1 %r4 0
	sw	%r26 %r1 48
	sw	%r26 %r2 52
	mov	%r4 %r2
	mov	%r3 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r2
	lw	%r26 %r1 52
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6636 
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
	addi	%r0 %r2 1
	addi	%r0 %r3 l.7076 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_array
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
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 112
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 124
	mov	%r2 %r1
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_float_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6636 
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
	sw	%r26 %r2 132
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 0
	mov	%r27 %r3
	addi	%r27 %r27 8
	sw	%r3 %r1 4
	lw	%r26 %r1 132
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
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 136
	mov	%r2 %r1
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_float_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 140
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	min_caml_create_float_array
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r2 60
	lw	%r26 %r3 140
	sw	%r26 %r1 144
	mov	%r2 %r1
	mov	%r3 %r2
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
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 148
	mov	%r2 %r1
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_float_array
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 152
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 152
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6636 
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
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	min_caml_create_array
	addi	%r26 %r26 -160
	lw	%r26 %r28 156
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 156
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	min_caml_create_array
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r27 %r2
	addi	%r27 %r27 24
	addi	%r0 %r3 read_screen_settings.2932 
	sw	%r2 %r3 0
	lw	%r26 %r3 32
	sw	%r2 %r3 20
	lw	%r26 %r4 124
	sw	%r2 %r4 16
	lw	%r26 %r5 120
	sw	%r2 %r5 12
	lw	%r26 %r6 116
	sw	%r2 %r6 8
	lw	%r26 %r7 28
	sw	%r2 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r8 read_light.2934 
	sw	%r7 %r8 0
	lw	%r26 %r8 36
	sw	%r7 %r8 8
	lw	%r26 %r9 40
	sw	%r7 %r9 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 read_nth_object.2939 
	sw	%r10 %r11 0
	lw	%r26 %r11 24
	sw	%r10 %r11 4
	mov	%r27 %r12
	addi	%r27 %r27 16
	addi	%r0 %r13 read_object.2941 
	sw	%r12 %r13 0
	sw	%r12 %r10 8
	lw	%r26 %r10 20
	sw	%r12 %r10 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 read_all_object.2943 
	sw	%r13 %r14 0
	sw	%r13 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 8
	addi	%r0 %r14 read_and_network.2949 
	sw	%r12 %r14 0
	lw	%r26 %r14 48
	sw	%r12 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r16 read_parameter.2951 
	sw	%r15 %r16 0
	sw	%r15 %r2 20
	sw	%r15 %r7 16
	sw	%r15 %r12 12
	sw	%r15 %r13 8
	lw	%r26 %r2 56
	sw	%r15 %r2 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r12 solver_rect_surface.2953 
	sw	%r7 %r12 0
	lw	%r26 %r12 60
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_rect.2962 
	sw	%r13 %r16 0
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface.2968 
	sw	%r7 %r16 0
	sw	%r7 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r17 solver_second.2987 
	sw	%r16 %r17 0
	sw	%r16 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 solver.2993 
	sw	%r17 %r18 0
	sw	%r17 %r7 16
	sw	%r17 %r16 12
	sw	%r17 %r13 8
	sw	%r17 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 solver_rect_fast.2997 
	sw	%r7 %r13 0
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast.3004 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r18 solver_second_fast.3010 
	sw	%r16 %r18 0
	sw	%r16 %r12 4
	mov	%r27 %r18
	addi	%r27 %r27 24
	addi	%r0 %r19 solver_fast.3016 
	sw	%r18 %r19 0
	sw	%r18 %r13 16
	sw	%r18 %r16 12
	sw	%r18 %r7 8
	sw	%r18 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast2.3020 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r19 solver_second_fast2.3027 
	sw	%r16 %r19 0
	sw	%r16 %r12 4
	mov	%r27 %r19
	addi	%r27 %r27 24
	addi	%r0 %r20 solver_fast2.3034 
	sw	%r19 %r20 0
	sw	%r19 %r13 16
	sw	%r19 %r16 12
	sw	%r19 %r7 8
	sw	%r19 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 iter_setup_dirvec_constants.3046 
	sw	%r7 %r13 0
	sw	%r7 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_dirvec_constants.3049 
	sw	%r13 %r16 0
	sw	%r13 %r10 8
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 setup_startp_constants.3051 
	sw	%r7 %r16 0
	sw	%r7 %r11 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r20 setup_startp.3054 
	sw	%r16 %r20 0
	lw	%r26 %r20 112
	sw	%r16 %r20 12
	sw	%r16 %r7 8
	sw	%r16 %r10 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r21 check_all_inside.3076 
	sw	%r7 %r21 0
	sw	%r7 %r11 4
	mov	%r27 %r21
	addi	%r27 %r27 32
	addi	%r0 %r22 shadow_check_and_group.3082 
	sw	%r21 %r22 0
	sw	%r21 %r18 28
	sw	%r21 %r12 24
	sw	%r21 %r11 20
	lw	%r26 %r22 148
	sw	%r21 %r22 16
	sw	%r21 %r8 12
	lw	%r26 %r23 72
	sw	%r21 %r23 8
	sw	%r21 %r7 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	sw	%r26 %r15 160
	addi	%r0 %r15 shadow_check_one_or_group.3085 
	sw	%r24 %r15 0
	sw	%r24 %r21 8
	sw	%r24 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r21 shadow_check_one_or_matrix.3088 
	sw	%r15 %r21 0
	sw	%r15 %r18 20
	sw	%r15 %r12 16
	sw	%r15 %r24 12
	sw	%r15 %r22 8
	sw	%r15 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 40
	addi	%r0 %r21 solve_each_element.3091 
	sw	%r18 %r21 0
	lw	%r26 %r21 68
	sw	%r18 %r21 36
	lw	%r26 %r24 108
	sw	%r18 %r24 32
	sw	%r18 %r12 28
	sw	%r18 %r17 24
	sw	%r18 %r11 20
	lw	%r26 %r22 64
	sw	%r18 %r22 16
	sw	%r18 %r23 12
	sw	%r26 %r13 164
	lw	%r26 %r13 76
	sw	%r18 %r13 8
	sw	%r18 %r7 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r5 solve_one_or_network.3095 
	sw	%r10 %r5 0
	sw	%r10 %r18 8
	sw	%r10 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r18 trace_or_matrix.3099 
	sw	%r5 %r18 0
	sw	%r5 %r21 20
	sw	%r5 %r24 16
	sw	%r5 %r12 12
	sw	%r5 %r17 8
	sw	%r5 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r17 judge_intersection.3103 
	sw	%r10 %r17 0
	sw	%r10 %r5 12
	sw	%r10 %r21 8
	sw	%r10 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 40
	addi	%r0 %r17 solve_each_element_fast.3105 
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
	addi	%r0 %r17 solve_one_or_network_fast.3109 
	sw	%r7 %r17 0
	sw	%r7 %r5 8
	sw	%r7 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r14 trace_or_matrix_fast.3113 
	sw	%r5 %r14 0
	sw	%r5 %r21 16
	sw	%r5 %r19 12
	sw	%r5 %r12 8
	sw	%r5 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r12 judge_intersection_fast.3117 
	sw	%r7 %r12 0
	sw	%r7 %r5 12
	sw	%r7 %r21 8
	sw	%r7 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r12 get_nvector_rect.3119 
	sw	%r5 %r12 0
	lw	%r26 %r12 80
	sw	%r5 %r12 8
	sw	%r5 %r22 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r17 get_nvector_plane.3121 
	sw	%r14 %r17 0
	sw	%r14 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r18 get_nvector_second.3123 
	sw	%r17 %r18 0
	sw	%r17 %r12 8
	sw	%r17 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 get_nvector.3125 
	sw	%r18 %r19 0
	sw	%r18 %r17 12
	sw	%r18 %r5 8
	sw	%r18 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 utexture.3128 
	sw	%r5 %r14 0
	lw	%r26 %r14 84
	sw	%r5 %r14 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r19 add_light.3131 
	sw	%r17 %r19 0
	sw	%r17 %r14 8
	lw	%r26 %r19 92
	sw	%r17 %r19 4
	mov	%r27 %r20
	addi	%r27 %r27 40
	addi	%r0 %r4 trace_reflections.3135 
	sw	%r20 %r4 0
	sw	%r20 %r15 32
	lw	%r26 %r4 156
	sw	%r20 %r4 28
	sw	%r20 %r2 24
	sw	%r20 %r12 20
	sw	%r20 %r7 16
	sw	%r20 %r22 12
	sw	%r20 %r13 8
	sw	%r20 %r17 4
	mov	%r27 %r4
	addi	%r27 %r27 88
	addi	%r0 %r6 trace_ray.3140 
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
	addi	%r0 %r9 trace_diffuse_ray.3146 
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
	lw	%r26 %r2 88
	sw	%r6 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r7 iter_trace_diffuse_rays.3149 
	sw	%r5 %r7 0
	sw	%r5 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_rays.3154 
	sw	%r6 %r7 0
	sw	%r6 %r16 8
	sw	%r6 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_ray_80percent.3158 
	sw	%r5 %r7 0
	sw	%r5 %r6 8
	lw	%r26 %r7 136
	sw	%r5 %r7 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_1point.3162 
	sw	%r9 %r10 0
	sw	%r9 %r5 12
	sw	%r9 %r19 8
	sw	%r9 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_5points.3165 
	sw	%r5 %r10 0
	sw	%r5 %r19 8
	sw	%r5 %r2 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r12 do_without_neighbors.3171 
	sw	%r10 %r12 0
	sw	%r10 %r9 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r12 neighbors_exist.3174 
	sw	%r9 %r12 0
	lw	%r26 %r12 96
	sw	%r9 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r14 try_exploit_neighbors.3187 
	sw	%r13 %r14 0
	sw	%r13 %r10 8
	sw	%r13 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 write_ppm_header.3194 
	sw	%r5 %r14 0
	sw	%r5 %r12 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r15 write_rgb.3198 
	sw	%r14 %r15 0
	sw	%r14 %r19 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 pretrace_diffuse_rays.3200 
	sw	%r15 %r16 0
	sw	%r15 %r6 12
	sw	%r15 %r7 8
	sw	%r15 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 40
	addi	%r0 %r6 pretrace_pixels.3203 
	sw	%r2 %r6 0
	sw	%r2 %r3 36
	sw	%r2 %r4 32
	sw	%r2 %r24 28
	lw	%r26 %r3 116
	sw	%r2 %r3 24
	lw	%r26 %r3 104
	sw	%r2 %r3 20
	sw	%r2 %r19 16
	lw	%r26 %r4 128
	sw	%r2 %r4 12
	sw	%r2 %r15 8
	lw	%r26 %r4 100
	sw	%r2 %r4 4
	mov	%r27 %r6
	addi	%r27 %r27 32
	addi	%r0 %r15 pretrace_line.3210 
	sw	%r6 %r15 0
	lw	%r26 %r15 124
	sw	%r6 %r15 24
	lw	%r26 %r15 120
	sw	%r6 %r15 20
	sw	%r6 %r3 16
	sw	%r6 %r2 12
	sw	%r6 %r12 8
	sw	%r6 %r4 4
	mov	%r27 %r2
	addi	%r27 %r27 32
	addi	%r0 %r15 scan_pixel.3214 
	sw	%r2 %r15 0
	sw	%r2 %r14 24
	sw	%r2 %r13 20
	sw	%r2 %r19 16
	sw	%r2 %r9 12
	sw	%r2 %r12 8
	sw	%r2 %r10 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 scan_line.3220 
	sw	%r9 %r10 0
	sw	%r9 %r2 12
	sw	%r9 %r6 8
	sw	%r9 %r12 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r10 create_pixelline.3233 
	sw	%r2 %r10 0
	sw	%r2 %r12 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r13 calc_dirvec.3240 
	sw	%r10 %r13 0
	sw	%r10 %r7 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvecs.3248 
	sw	%r13 %r14 0
	sw	%r13 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvec_rows.3253 
	sw	%r10 %r14 0
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 create_dirvec.3257 
	sw	%r13 %r14 0
	lw	%r26 %r14 20
	sw	%r13 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r16 create_dirvec_elements.3259 
	sw	%r15 %r16 0
	sw	%r15 %r13 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r17 create_dirvecs.3262 
	sw	%r16 %r17 0
	sw	%r16 %r7 12
	sw	%r16 %r15 8
	sw	%r16 %r13 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r17 init_dirvec_constants.3264 
	sw	%r15 %r17 0
	lw	%r26 %r17 164
	sw	%r15 %r17 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 init_vecset_constants.3267 
	sw	%r18 %r19 0
	sw	%r18 %r15 8
	sw	%r18 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r15 init_dirvecs.3269 
	sw	%r7 %r15 0
	sw	%r7 %r18 12
	sw	%r7 %r16 8
	sw	%r7 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r15 add_reflection.3271 
	sw	%r10 %r15 0
	sw	%r10 %r17 12
	lw	%r26 %r15 156
	sw	%r10 %r15 8
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r15 setup_rect_reflection.3278 
	sw	%r13 %r15 0
	sw	%r13 %r1 12
	sw	%r13 %r8 8
	sw	%r13 %r10 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_surface_reflection.3281 
	sw	%r15 %r16 0
	sw	%r15 %r1 12
	sw	%r15 %r8 8
	sw	%r15 %r10 4
	mov	%r27 %r1
	addi	%r27 %r27 16
	addi	%r0 %r10 setup_reflections.3284 
	sw	%r1 %r10 0
	sw	%r1 %r15 12
	sw	%r1 %r13 8
	sw	%r1 %r11 4
	mov	%r27 %r10
	addi	%r27 %r27 64
	addi	%r0 %r11 rt.3286 
	sw	%r10 %r11 0
	sw	%r10 %r5 56
	sw	%r10 %r1 52
	sw	%r10 %r17 48
	sw	%r10 %r3 44
	sw	%r10 %r9 40
	lw	%r26 %r1 160
	sw	%r10 %r1 36
	sw	%r10 %r6 32
	sw	%r10 %r14 28
	lw	%r26 %r1 148
	sw	%r10 %r1 24
	sw	%r10 %r8 20
	sw	%r10 %r7 16
	sw	%r10 %r12 12
	sw	%r10 %r4 8
	sw	%r10 %r2 4
	addi	%r0 %r1 333
	sw	%r26 %r10 168
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	print_int.2729 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 16
	addi	%r0 %r2 16
	lw	%r26 %r24 168
	sw	%r26 %r28 172
	lw	%r24 %r23 0
	addi	%r26 %r26 176	
	jalr	%r23
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	addi	%r0 %r1 0
	ret
fiszero.2703 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	fbne	%f0 %f1 fbe_else.9512 
	addi	%r0 %r1 1
	retl
fbe_else.9512 :
	addi	%r0 %r1 0
	retl
fispos.2705 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9513 
	addi	%r0 %r1 0
	retl
fble_else.9513 :
	addi	%r0 %r1 1
	retl
fisneg.2707 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9514 
	addi	%r0 %r1 0
	retl
fble_else.9514 :
	addi	%r0 %r1 1
	retl
fneg.2709 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fless.2711 :
	fbg	%f1 %f0 fble_else.9515 
	addi	%r0 %r1 0
	retl
fble_else.9515 :
	addi	%r0 %r1 1
	retl
fsqr.2714 :
	mul.s	%f0 %f0 %f0
	retl
fabs.2716 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9516 
	retl
fble_else.9516 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fhalf.2718 :
	addi	%r0 %r1 l.6643 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	retl
loop_fpow.6619 :
	bne	%r2 %r1 be_else.9517 
	mov.s	%f1 %f0
	retl
be_else.9517 :
	mul.s	%f0 %f1 %f1
	addi	%r2 %r2 1
	j	loop_fpow.6619 
fpow.2720 :
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 0
	j	loop_fpow.6619 
sin.2723 :
	addi	%r0 %r1 l.6647 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9518 
	addi	%r0 %r1 l.6649 
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.9519 
	addi	%r0 %r1 l.6651 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 11
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2720 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6653 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2720 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6655 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6657 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2720 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6659 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fpow.2720 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 0
	add.s	%f1 %f0 %f0
	retl
fble_else.9519 :
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sin.2723 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
fble_else.9518 :
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sin.2723 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
cos.2725 :
	addi	%r0 %r1 l.6647 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9520 
	addi	%r0 %r1 l.6649 
	ilw.s	%r1 %f2 0
	fbg	%f2 %f0 fble_else.9521 
	addi	%r0 %r1 l.6663 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 10
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2720 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6665 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2720 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6667 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6669 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2720 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6671 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 64
	sw.s	%r26 %f1 72
	mov.s	%f2 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fpow.2720 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	retl
fble_else.9521 :
	add.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2725 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
fble_else.9520 :
	sub.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2725 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	neg.s	%f0 %f0
	retl
f.6518 :
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f0
	retl
euler.6520 :
	add.s	%f3 %f0 %f4
	fbg	%f4 %f2 fble_else.9522 
	sw.s	%r26 %f2 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f3 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	f.6518 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f3 24
	mul.s	%f0 %f3 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f1
	lw.s	%r26 %f0 8
	add.s	%f3 %f0 %f0
	lw.s	%r26 %f2 0
	j	euler.6520 
fble_else.9522 :
	mov.s	%f1 %f0
	retl
atan.2727 :
	addi	%r0 %r1 l.6676 
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f2 0
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	j	euler.6520 
print_int.2729 :
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
	bg	%r2 %r25 ble_else.9523 
	j	ble_cont.9524 
ble_else.9523 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.9524 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.9525 
	j	ble_cont.9526 
ble_else.9525 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.9526 :
	addi	%r1 %r1 48
	out	%r1
	retl
xor.2802 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9527 
	mov	%r2 %r1
	retl
be_else.9527 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9528 
	addi	%r0 %r1 1
	retl
be_else.9528 :
	addi	%r0 %r1 0
	retl
sgn.2805 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2703 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9529 
	lw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fispos.2705 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9530 
	addi	%r0 %r1 l.6682 
	ilw.s	%r1 %f0 0
	retl
be_else.9530 :
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	retl
be_else.9529 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	retl
fneg_cond.2807 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9531 
	j	fneg.2709 
be_else.9531 :
	retl
add_mod5.2810 :
	add	%r1 %r2 %r1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9532 
	addi	%r1 %r1 -5
	retl
bge_else.9532 :
	retl
vecset.2813 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f2 8
	retl
vecfill.2818 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f0 8
	retl
vecbzero.2821 :
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	j	vecfill.2818 
veccpy.2823 :
	lw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r2 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r1 %f0 8
	retl
vecunit_sgn.2831 :
	lw.s	%r1 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2714 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fsqr.2714 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fiszero.2703 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9536 
	lw	%r26 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9538 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
	j	be_cont.9539 
be_else.9538 :
	addi	%r0 %r1 l.6682 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
be_cont.9539 :
	j	be_cont.9537 
be_else.9536 :
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
be_cont.9537 :
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
veciprod.2834 :
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
veciprod2.2837 :
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	lw.s	%r1 %f3 4
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	retl
vecaccum.2842 :
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
vecadd.2846 :
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
vecscale.2852 :
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
vecaccumv.2855 :
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
o_texturetype.2859 :
	lw	%r1 %r1 0
	retl
o_form.2861 :
	lw	%r1 %r1 4
	retl
o_reflectiontype.2863 :
	lw	%r1 %r1 8
	retl
o_isinvert.2865 :
	lw	%r1 %r1 24
	retl
o_isrot.2867 :
	lw	%r1 %r1 12
	retl
o_param_a.2869 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 0
	retl
o_param_b.2871 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 4
	retl
o_param_c.2873 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	retl
o_param_abc.2875 :
	lw	%r1 %r1 16
	retl
o_param_x.2877 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 0
	retl
o_param_y.2879 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 4
	retl
o_param_z.2881 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 8
	retl
o_diffuse.2883 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 0
	retl
o_hilight.2885 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 4
	retl
o_color_red.2887 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 0
	retl
o_color_green.2889 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 4
	retl
o_color_blue.2891 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 8
	retl
o_param_r1.2893 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 0
	retl
o_param_r2.2895 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 4
	retl
o_param_r3.2897 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 8
	retl
o_param_ctbl.2899 :
	lw	%r1 %r1 40
	retl
p_rgb.2901 :
	lw	%r1 %r1 0
	retl
p_intersection_points.2903 :
	lw	%r1 %r1 4
	retl
p_surface_ids.2905 :
	lw	%r1 %r1 8
	retl
p_calc_diffuse.2907 :
	lw	%r1 %r1 12
	retl
p_energy.2909 :
	lw	%r1 %r1 16
	retl
p_received_ray_20percent.2911 :
	lw	%r1 %r1 20
	retl
p_group_id.2913 :
	lw	%r1 %r1 24
	lw	%r1 %r1 0
	retl
p_set_group_id.2915 :
	lw	%r1 %r1 24
	sw	%r1 %r2 0
	retl
p_nvectors.2918 :
	lw	%r1 %r1 28
	retl
d_vec.2920 :
	lw	%r1 %r1 0
	retl
d_const.2922 :
	lw	%r1 %r1 4
	retl
r_surface_id.2924 :
	lw	%r1 %r1 0
	retl
r_dvec.2926 :
	lw	%r1 %r1 4
	retl
r_bright.2928 :
	lw.s	%r1 %f0 8
	retl
rad.2930 :
	addi	%r0 %r1 l.6770 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	retl
read_screen_settings.2932 :
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
	jal	rad.2930 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2725 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2723 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f1
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2930 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	cos.2725 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sin.2723 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.6775 
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 16
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.6778 
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 40
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 56
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.6775 
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 12
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2709 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 12
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2709 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 32
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2709 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2709 
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
read_light.2934 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	fin	%f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	rad.2930 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2723 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2709 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2930 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2725 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2723 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2725 
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
rotate_quadratic_matrix.2936 :
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	cos.2725 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2723 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2725 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2723 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	cos.2725 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	sin.2723 
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
	jal	fneg.2709 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 80
	sw.s	%r26 %f0 144
	mov.s	%f2 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	fsqr.2714 
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
	jal	fsqr.2714 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 64
	sw.s	%r26 %f0 160
	mov.s	%f2 %f0
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	fsqr.2714 
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
	jal	fsqr.2714 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 48
	sw.s	%r26 %f0 176
	mov.s	%f2 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fsqr.2714 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 184
	add.s	%f0 %f2 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
	addi	%r0 %r1 l.6643 
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
	addi	%r0 %r2 l.6643 
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
	addi	%r0 %r2 l.6643 
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
read_nth_object.2939 :
	lw	%r24 %r2 4
	in	%r3
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9550 
	addi	%r0 %r1 0
	retl
be_else.9550 :
	in	%r4
	in	%r5
	in	%r6
	addi	%r0 %r7 3
	addi	%r0 %r8 l.6636 
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
	addi	%r0 %r3 l.6636 
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
	jal	fisneg.2707 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 2
	addi	%r0 %r3 l.6636 
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
	addi	%r0 %r3 l.6636 
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
	addi	%r0 %r3 l.6636 
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
	bne	%r2 %r25 be_else.9551 
	j	be_cont.9552 
be_else.9551 :
	fin	%f0
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2930 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 0
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2930 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2930 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
be_cont.9552 :
	lw	%r26 %r2 16
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9553 
	addi	%r0 %r3 1
	j	be_cont.9554 
be_else.9553 :
	lw	%r26 %r3 32
be_cont.9554 :
	addi	%r0 %r4 4
	addi	%r0 %r5 l.6636 
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
	bne	%r5 %r25 be_else.9555 
	lw.s	%r3 %f0 0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fiszero.2703 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9558 
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sgn.2805 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2714 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	div.s	%f0 %f1 %f0
	j	be_cont.9559 
be_else.9558 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
be_cont.9559 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fiszero.2703 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9560 
	lw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sgn.2805 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fsqr.2714 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	div.s	%f0 %f1 %f0
	j	be_cont.9561 
be_else.9560 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
be_cont.9561 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2703 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9562 
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sgn.2805 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fsqr.2714 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	div.s	%f0 %f1 %f0
	j	be_cont.9563 
be_else.9562 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
be_cont.9563 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	j	be_cont.9556 
be_else.9555 :
addi	%r0 %r25 2
	bne	%r5 %r25 be_else.9564 
	lw	%r26 %r2 32
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9566 
	addi	%r0 %r2 1
	j	be_cont.9567 
be_else.9566 :
	addi	%r0 %r2 0
be_cont.9567 :
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecunit_sgn.2831 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	be_cont.9565 
be_else.9564 :
be_cont.9565 :
be_cont.9556 :
	lw	%r26 %r1 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9568 
	j	be_cont.9569 
be_else.9568 :
	lw	%r26 %r1 24
	lw	%r26 %r2 44
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	rotate_quadratic_matrix.2936 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
be_cont.9569 :
	addi	%r0 %r1 1
	retl
read_object.2941 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 60
	bl	%r1 %r25 bge_else.9570 
	retl
bge_else.9570 :
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
	bne	%r1 %r25 be_else.9572 
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
be_else.9572 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_all_object.2943 :
	lw	%r24 %r24 4
	addi	%r0 %r1 0
	lw	%r24 %r23 0
	jr	%r23
read_net_item.2945 :
	in	%r2
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9574 
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
be_else.9574 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2945 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2947 :
	addi	%r0 %r2 108
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2945 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r2 108
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	lw	%r1 %r2 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.2729 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 4
	lw	%r1 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.2729 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 4
	lw	%r1 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.2729 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 4
	lw	%r1 %r2 12
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	print_int.2729 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 108
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r2 4
	lw	%r2 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 be_else.9575 
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
be_else.9575 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2947 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 4
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2949 :
	lw	%r24 %r2 4
	addi	%r0 %r3 103
	out	%r3
	addi	%r0 %r3 10
	out	%r3
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2945 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9576 
	retl
be_else.9576 :
	lw	%r26 %r2 8
	sw	%r2 %r1 0
	lw	%r26 %r1 4
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_parameter.2951 :
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
	jal	read_or_network.2947 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
solver_rect_surface.2953 :
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
	jal	fiszero.2703 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9582 
	lw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_abc.2875 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_isinvert.2865 
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
	jal	fisneg.2707 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	xor.2802 
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
	jal	fneg_cond.2807 
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
	jal	fabs.2716 
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
	jal	fless.2711 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9584 
	addi	%r0 %r1 0
	retl
be_else.9584 :
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
	jal	fabs.2716 
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
	jal	fless.2711 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9585 
	addi	%r0 %r1 0
	retl
be_else.9585 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9582 :
	addi	%r0 %r1 0
	retl
solver_rect.2962 :
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
	bne	%r1 %r25 be_else.9586 
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
	bne	%r1 %r25 be_else.9587 
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
	bne	%r1 %r25 be_else.9588 
	addi	%r0 %r1 0
	retl
be_else.9588 :
	addi	%r0 %r1 3
	retl
be_else.9587 :
	addi	%r0 %r1 2
	retl
be_else.9586 :
	addi	%r0 %r1 1
	retl
solver_surface.2968 :
	lw	%r24 %r3 4
	sw	%r26 %r3 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r2 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2875 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r2 36
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2834 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fispos.2705 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9590 
	addi	%r0 %r1 0
	retl
be_else.9590 :
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	lw	%r26 %r1 36
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2837 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2709 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
quadratic.2974 :
	sw.s	%r26 %f0 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2714 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_a.2869 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fsqr.2714 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 24
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_b.2871 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 24
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2873 
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
	jal	o_isrot.2867 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9592 
	lw.s	%r26 %f0 72
	retl
be_else.9592 :
	lw.s	%r26 %f0 8
	lw.s	%r26 %f1 16
	mul.s	%f0 %f1 %f2
	lw	%r26 %r1 24
	sw.s	%r26 %f2 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r1.2893 
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
	jal	o_param_r2.2895 
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
	jal	o_param_r3.2897 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	retl
bilinear.2979 :
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
	jal	o_param_a.2869 
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
	jal	o_param_b.2871 
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
	jal	o_param_c.2873 
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
	jal	o_isrot.2867 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9594 
	lw.s	%r26 %f0 96
	retl
be_else.9594 :
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
	jal	o_param_r1.2893 
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
	jal	o_param_r2.2895 
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
	jal	o_param_r3.2897 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2718 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	retl
solver_second.2987 :
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
	jal	quadratic.2974 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2703 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9596 
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
	jal	bilinear.2979 
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
	jal	quadratic.2974 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 32
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_form.2861 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9597 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	j	be_cont.9598 
be_else.9597 :
	lw.s	%r26 %f0 56
be_cont.9598 :
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2714 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 40
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2705 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9599 
	addi	%r0 %r1 0
	retl
be_else.9599 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw	%r26 %r1 32
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2865 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9600 
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2709 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	be_cont.9601 
be_else.9600 :
	lw.s	%r26 %f0 80
be_cont.9601 :
	lw.s	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9596 :
	addi	%r0 %r1 0
	retl
solver.2993 :
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
	jal	o_param_x.2877 
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
	jal	o_param_y.2879 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2861 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9602 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9602 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9603 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9603 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_rect_fast.2997 :
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
	jal	fabs.2716 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 52
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2871 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov.s	%f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2711 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9606 
	addi	%r0 %r1 0
	j	be_cont.9607 
be_else.9606 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fabs.2716 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 52
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2873 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f1
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2711 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9608 
	addi	%r0 %r1 0
	j	be_cont.9609 
be_else.9608 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 4
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fiszero.2703 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9610 
	addi	%r0 %r1 1
	j	be_cont.9611 
be_else.9610 :
	addi	%r0 %r1 0
be_cont.9611 :
be_cont.9609 :
be_cont.9607 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9612 
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
	jal	fabs.2716 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 52
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_a.2869 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f1
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fless.2711 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9613 
	addi	%r0 %r1 0
	j	be_cont.9614 
be_else.9613 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fabs.2716 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 52
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2873 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov.s	%f0 %f1
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fless.2711 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9615 
	addi	%r0 %r1 0
	j	be_cont.9616 
be_else.9615 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 12
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2703 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9617 
	addi	%r0 %r1 1
	j	be_cont.9618 
be_else.9617 :
	addi	%r0 %r1 0
be_cont.9618 :
be_cont.9616 :
be_cont.9614 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9619 
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
	jal	fabs.2716 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 52
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_a.2869 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f1
	lw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fless.2711 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9620 
	addi	%r0 %r1 0
	j	be_cont.9621 
be_else.9620 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 16
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fabs.2716 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r1 52
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_b.2871 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov.s	%f0 %f1
	lw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fless.2711 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9622 
	addi	%r0 %r1 0
	j	be_cont.9623 
be_else.9622 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 20
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fiszero.2703 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9624 
	addi	%r0 %r1 1
	j	be_cont.9625 
be_else.9624 :
	addi	%r0 %r1 0
be_cont.9625 :
be_cont.9623 :
be_cont.9621 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9626 
	addi	%r0 %r1 0
	retl
be_else.9626 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	retl
be_else.9619 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	retl
be_else.9612 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 40
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_surface_fast.3004 :
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
	jal	fisneg.2707 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9628 
	addi	%r0 %r1 0
	retl
be_else.9628 :
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
solver_second_fast.3010 :
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
	jal	fiszero.2703 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9631 
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
	jal	quadratic.2974 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2861 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9633 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	j	be_cont.9634 
be_else.9633 :
	lw.s	%r26 %f0 64
be_cont.9634 :
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2714 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fispos.2705 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9635 
	addi	%r0 %r1 0
	retl
be_else.9635 :
	lw	%r26 %r1 16
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2865 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9636 
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9637 
be_else.9636 :
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9637 :
	addi	%r0 %r1 1
	retl
be_else.9631 :
	addi	%r0 %r1 0
	retl
solver_fast.3016 :
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
	jal	o_param_x.2877 
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
	jal	o_param_y.2879 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_const.2922 
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
	jal	o_form.2861 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9639 
	lw	%r26 %r1 16
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_vec.2920 
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
be_else.9639 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9640 
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9640 :
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_surface_fast2.3020 :
	lw	%r24 %r1 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fisneg.2707 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9641 
	addi	%r0 %r1 0
	retl
be_else.9641 :
	lw	%r26 %r1 8
	lw.s	%r1 %f0 0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 12
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast2.3027 :
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
	jal	fiszero.2703 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9643 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2705 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9645 
	addi	%r0 %r1 0
	retl
be_else.9645 :
	lw	%r26 %r1 4
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isinvert.2865 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9646 
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9647 
be_else.9646 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9647 :
	addi	%r0 %r1 1
	retl
be_else.9643 :
	addi	%r0 %r1 0
	retl
solver_fast2.3034 :
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
	jal	o_param_ctbl.2899 
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
	jal	d_const.2922 
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
	jal	o_form.2861 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9649 
	lw	%r26 %r1 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2920 
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
be_else.9649 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9650 
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9650 :
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
setup_rect_table.3037 :
	addi	%r0 %r3 6
	addi	%r0 %r4 l.6636 
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
	jal	fiszero.2703 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9651 
	lw	%r26 %r1 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_isinvert.2865 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fisneg.2707 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	xor.2802 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_a.2869 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg_cond.2807 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	j	be_cont.9652 
be_else.9651 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
be_cont.9652 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fiszero.2703 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9653 
	lw	%r26 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_isinvert.2865 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2707 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2802 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_b.2871 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fneg_cond.2807 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 4
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 12
	j	be_cont.9654 
be_else.9653 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9654 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fiszero.2703 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9655 
	lw	%r26 %r1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2865 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2707 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	xor.2802 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_c.2873 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg_cond.2807 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 20
	j	be_cont.9656 
be_else.9655 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 20
be_cont.9656 :
	retl
setup_surface_table.3040 :
	addi	%r0 %r3 4
	addi	%r0 %r4 l.6636 
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
	jal	o_param_a.2869 
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
	jal	o_param_b.2871 
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
	jal	o_param_c.2873 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	add.s	%f0 %f1 %f0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fispos.2705 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9658 
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	j	be_cont.9659 
be_else.9658 :
	addi	%r0 %r1 l.6682 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2869 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2709 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2871 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2709 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2873 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2709 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9659 :
	retl
setup_second_table.3043 :
	addi	%r0 %r3 5
	addi	%r0 %r4 l.6636 
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
	jal	quadratic.2974 
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
	jal	o_param_a.2869 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg.2709 
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
	jal	o_param_b.2871 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2709 
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
	jal	o_param_c.2873 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2709 
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
	jal	o_isrot.2867 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9661 
	lw	%r26 %r1 8
	lw.s	%r26 %f0 32
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 48
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 12
	j	be_cont.9662 
be_else.9661 :
	lw	%r26 %r1 4
	lw.s	%r1 %f0 8
	lw	%r26 %r2 0
	sw.s	%r26 %f0 72
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_r2.2895 
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
	jal	o_param_r3.2897 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2718 
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
	jal	o_param_r1.2893 
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
	jal	o_param_r3.2897 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fhalf.2718 
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
	jal	o_param_r1.2893 
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
	jal	o_param_r2.2895 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2718 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9662 :
	lw.s	%r26 %f0 16
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fiszero.2703 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9663 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 16
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	j	be_cont.9664 
be_else.9663 :
be_cont.9664 :
	lw	%r26 %r1 8
	retl
iter_setup_dirvec_constants.3046 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9665 
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
	jal	d_const.2922 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_vec.2920 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_form.2861 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9666 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_rect_table.3037 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9667 
be_else.9666 :
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9668 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_surface_table.3040 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9669 
be_else.9668 :
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_second_table.3043 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9669 :
be_cont.9667 :
	addi	%r2 %r2 -1
	lw	%r26 %r1 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9665 :
	retl
setup_dirvec_constants.3049 :
	lw	%r24 %r2 8
	lw	%r24 %r24 4
	lw	%r2 %r2 0
	addi	%r2 %r2 -1
	lw	%r24 %r23 0
	jr	%r23
setup_startp_constants.3051 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9671 
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
	jal	o_param_ctbl.2899 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2861 
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
	jal	o_param_x.2877 
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
	jal	o_param_y.2879 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 20
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9672 
	lw	%r26 %r2 12
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_abc.2875 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 16
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2837 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
	j	be_cont.9673 
be_else.9672 :
addi	%r0 %r25 2
	bg	%r2 %r25 ble_else.9674 
	j	ble_cont.9675 
ble_else.9674 :
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r1 %f2 8
	lw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	quadratic.2974 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9676 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.9677 
be_else.9676 :
be_cont.9677 :
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
ble_cont.9675 :
be_cont.9673 :
	lw	%r26 %r1 4
	addi	%r1 %r2 -1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9671 :
	retl
setup_startp.3054 :
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
	jal	veccpy.2823 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
is_rect_outside.3056 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fabs.2716 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2869 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f1
	lw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2711 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9680 
	addi	%r0 %r1 0
	j	be_cont.9681 
be_else.9680 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fabs.2716 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2871 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2711 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9682 
	addi	%r0 %r1 0
	j	be_cont.9683 
be_else.9682 :
	lw.s	%r26 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fabs.2716 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_c.2873 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov.s	%f0 %f1
	lw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2711 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9683 :
be_cont.9681 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9684 
	lw	%r26 %r1 16
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2865 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9685 
	addi	%r0 %r1 1
	retl
be_else.9685 :
	addi	%r0 %r1 0
	retl
be_else.9684 :
	lw	%r26 %r1 16
	j	o_isinvert.2865 
is_plane_outside.3061 :
	sw	%r26 %r1 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2875 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veciprod2.2837 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 0
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_isinvert.2865 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f0 32
	sw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fisneg.2707 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	xor.2802 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9687 
	addi	%r0 %r1 1
	retl
be_else.9687 :
	addi	%r0 %r1 0
	retl
is_second_outside.3066 :
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	quadratic.2974 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2861 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9689 
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	j	be_cont.9690 
be_else.9689 :
	lw.s	%r26 %f0 8
be_cont.9690 :
	lw	%r26 %r1 0
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2865 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2707 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2802 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9691 
	addi	%r0 %r1 1
	retl
be_else.9691 :
	addi	%r0 %r1 0
	retl
is_outside.3071 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2877 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2879 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2881 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 0
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2861 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9693 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_rect_outside.3056 
be_else.9693 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9694 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_plane_outside.3061 
be_else.9694 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_second_outside.3066 
check_all_inside.3076 :
	lw	%r24 %r3 4
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.9695 
	addi	%r0 %r1 1
	retl
be_else.9695 :
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
	jal	is_outside.3071 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9696 
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r2 24
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9696 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.3082 :
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
	bne	%r10 %r25 be_else.9697 
	addi	%r0 %r1 0
	retl
be_else.9697 :
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
	bne	%r1 %r25 be_else.9699 
	addi	%r0 %r1 0
	j	be_cont.9700 
be_else.9699 :
	addi	%r0 %r1 l.7037 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2711 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9700 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9701 
	lw	%r26 %r1 28
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2865 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9702 
	addi	%r0 %r1 0
	retl
be_else.9702 :
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9701 :
	addi	%r0 %r1 l.7039 
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
	bne	%r1 %r25 be_else.9703 
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9703 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.3085 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r25 -1
	bne	%r5 %r25 be_else.9704 
	addi	%r0 %r1 0
	retl
be_else.9704 :
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
	bne	%r1 %r25 be_else.9705 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9705 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.3088 :
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
	bne	%r9 %r25 be_else.9706 
	addi	%r0 %r1 0
	retl
be_else.9706 :
	sw	%r26 %r8 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9707 
	addi	%r0 %r1 1
	j	be_cont.9708 
be_else.9707 :
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
	bne	%r1 %r25 be_else.9709 
	addi	%r0 %r1 0
	j	be_cont.9710 
be_else.9709 :
	lw	%r26 %r1 20
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.7053 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2711 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9711 
	addi	%r0 %r1 0
	j	be_cont.9712 
be_else.9711 :
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
	bne	%r1 %r25 be_else.9713 
	addi	%r0 %r1 0
	j	be_cont.9714 
be_else.9713 :
	addi	%r0 %r1 1
be_cont.9714 :
be_cont.9712 :
be_cont.9710 :
be_cont.9708 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9715 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9715 :
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
	bne	%r1 %r25 be_else.9716 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9716 :
	addi	%r0 %r1 1
	retl
solve_each_element.3091 :
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
	bne	%r13 %r25 be_else.9717 
	retl
be_else.9717 :
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
	bne	%r1 %r25 be_else.9719 
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 44
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2865 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9720 
	retl
be_else.9720 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
be_else.9719 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 52
	sw.s	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2711 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9722 
	j	be_cont.9723 
be_else.9722 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2711 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9724 
	j	be_cont.9725 
be_else.9724 :
	addi	%r0 %r1 l.7039 
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
	bne	%r1 %r25 be_else.9726 
	j	be_cont.9727 
be_else.9726 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 88
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 80
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 64
	lw	%r26 %r1 8
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	vecset.2813 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r1 4
	lw	%r26 %r2 48
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 52
	sw	%r1 %r2 0
be_cont.9727 :
be_cont.9725 :
be_cont.9723 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.3095 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9728 
	retl
be_else.9728 :
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
trace_or_matrix.3099 :
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
	bne	%r10 %r25 be_else.9730 
	retl
be_else.9730 :
	addi	%r0 %r11 102
	out	%r11
	addi	%r0 %r11 103
	out	%r11
	addi	%r0 %r11 104
	out	%r11
	addi	%r0 %r11 10
	out	%r11
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r10 %r25 be_else.9732 
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
	j	be_cont.9733 
be_else.9732 :
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
	bne	%r1 %r25 be_else.9734 
	j	be_cont.9735 
be_else.9734 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2711 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9736 
	j	be_cont.9737 
be_else.9736 :
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
be_cont.9737 :
be_cont.9735 :
be_cont.9733 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection.3103 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.7076 
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
	addi	%r0 %r1 l.7053 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2711 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9739 
	addi	%r0 %r1 0
	retl
be_else.9739 :
	addi	%r0 %r1 l.7082 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2711 
solve_each_element_fast.3105 :
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
	jal	d_vec.2920 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9740 
	retl
be_else.9740 :
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
	bne	%r1 %r25 be_else.9742 
	lw	%r26 %r1 56
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_isinvert.2865 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9743 
	retl
be_else.9743 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9742 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 60
	sw.s	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2711 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9745 
	j	be_cont.9746 
be_else.9745 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2711 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9747 
	j	be_cont.9748 
be_else.9747 :
	addi	%r0 %r1 l.7039 
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
	bne	%r1 %r25 be_else.9749 
	j	be_cont.9750 
be_else.9749 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 88
	lw.s	%r26 %f1 80
	lw.s	%r26 %f2 72
	lw	%r26 %r1 8
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecset.2813 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 4
	lw	%r26 %r2 56
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 60
	sw	%r1 %r2 0
be_cont.9750 :
be_cont.9748 :
be_cont.9746 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.3109 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9751 
	retl
be_else.9751 :
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
trace_or_matrix_fast.3113 :
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
	bne	%r9 %r25 be_else.9753 
	retl
be_else.9753 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9755 
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
	j	be_cont.9756 
be_else.9755 :
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
	bne	%r1 %r25 be_else.9757 
	j	be_cont.9758 
be_else.9757 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2711 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9759 
	j	be_cont.9760 
be_else.9759 :
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
be_cont.9760 :
be_cont.9758 :
be_cont.9756 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection_fast.3117 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.7076 
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
	addi	%r0 %r1 l.7053 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2711 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9762 
	addi	%r0 %r1 0
	retl
be_else.9762 :
	addi	%r0 %r1 l.7082 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2711 
get_nvector_rect.3119 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw	%r3 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	vecbzero.2821 
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
	jal	sgn.2805 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2709 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 0
	add %r2 %r1 %r25
	sw.s	%r25 %f0 0
	retl
get_nvector_plane.3121 :
	lw	%r24 %r2 4
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_a.2869 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2709 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_b.2871 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2709 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_c.2873 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2709 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
get_nvector_second.3123 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2877 
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
	jal	o_param_y.2879 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2869 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2871 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_c.2873 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isrot.2867 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9766 
	lw	%r26 %r1 0
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 80
	sw.s	%r1 %f0 8
	j	be_cont.9767 
be_else.9766 :
	lw	%r26 %r1 4
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r3.2897 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r2.2895 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 88
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2718 
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
	jal	o_param_r3.2897 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2893 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fhalf.2718 
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
	jal	o_param_r2.2895 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2893 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fhalf.2718 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
be_cont.9767 :
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_isinvert.2865 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r1 0
	j	vecunit_sgn.2831 
get_nvector.3125 :
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
	jal	o_form.2861 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9768 
	lw	%r26 %r1 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9768 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9769 
	lw	%r26 %r1 4
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9769 :
	lw	%r26 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
utexture.3128 :
	lw	%r24 %r3 4
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_texturetype.2859 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_red.2887 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_green.2889 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_blue.2891 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	lw	%r26 %r2 12
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.9770 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2877 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7173 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.7175 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7156 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2711 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7173 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.7175 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7156 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2711 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 24
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9772 
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9774 
	addi	%r0 %r1 l.7149 
	ilw.s	%r1 %f0 0
	j	be_cont.9775 
be_else.9774 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
be_cont.9775 :
	j	be_cont.9773 
be_else.9772 :
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9776 
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	j	be_cont.9777 
be_else.9776 :
	addi	%r0 %r1 l.7149 
	ilw.s	%r1 %f0 0
be_cont.9777 :
be_cont.9773 :
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	retl
be_else.9770 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9779 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.7165 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2723 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2714 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.7149 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.7149 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	retl
be_else.9779 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.9781 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_x.2877 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2714 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2714 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.7156 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7137 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2725 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2714 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 l.7149 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.7149 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
be_else.9781 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.9783 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 80
	mov	%r3 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_x.2877 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_a.2869 
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
	jal	o_param_z.2881 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_c.2873 
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
	jal	fsqr.2714 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 120
	sw.s	%r26 %f0 128
	mov.s	%f1 %f0
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2714 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	sw.s	%r26 %f0 136
	mov.s	%f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2716 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.7131 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fless.2711 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9784 
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 120
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2716 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	atan.2727 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.7135 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7137 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9785 
be_else.9784 :
	addi	%r0 %r1 l.7133 
	ilw.s	%r1 %f0 0
be_cont.9785 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 4
	lw	%r26 %r1 8
	sw.s	%r26 %f0 144
	sw.s	%r26 %f1 152
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_param_y.2879 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 152
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 160
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	o_param_b.2871 
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
	jal	fabs.2716 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.7131 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fless.2711 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9786 
	lw.s	%r26 %f0 136
	lw.s	%r26 %f1 168
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2716 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	atan.2727 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.7135 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7137 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9787 
be_else.9786 :
	addi	%r0 %r1 l.7133 
	ilw.s	%r1 %f0 0
be_cont.9787 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.7144 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6671 
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 144
	sub.s	%f3 %f2 %f2
	sw.s	%r26 %f0 176
	sw.s	%r26 %f1 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2714 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 184
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6671 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f2 176
	sub.s	%f2 %f1 %f1
	sw.s	%r26 %f0 192
	mov.s	%f1 %f0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	fsqr.2714 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw.s	%r26 %f1 192
	sub.s	%f0 %f1 %f0
	sw.s	%r26 %f0 200
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	fisneg.2707 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9788 
	lw.s	%r26 %f0 200
	j	be_cont.9789 
be_else.9788 :
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
be_cont.9789 :
	addi	%r0 %r1 l.7149 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.7151 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
be_else.9783 :
	retl
add_light.3131 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r2 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2705 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9792 
	j	be_cont.9793 
be_else.9792 :
	lw.s	%r26 %f0 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecaccum.2842 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9793 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2705 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9794 
	retl
be_else.9794 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2714 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2714 
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
trace_reflections.3135 :
	lw	%r24 %r3 32
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9797 
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
	jal	r_dvec.2926 
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
	bne	%r1 %r25 be_else.9798 
	j	be_cont.9799 
be_else.9798 :
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
	jal	r_surface_id.2924 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	bne	%r2 %r1 be_else.9800 
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
	bne	%r1 %r25 be_else.9802 
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	d_vec.2920 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veciprod.2834 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 44
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	r_bright.2928 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	veciprod.2834 
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
	j	be_cont.9803 
be_else.9802 :
be_cont.9803 :
	j	be_cont.9801 
be_else.9800 :
be_cont.9801 :
be_cont.9799 :
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 8
	lw	%r26 %r2 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9797 :
	retl
trace_ray.3140 :
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
	bg	%r1 %r25 ble_else.9806 
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
	jal	p_surface_ids.2905 
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
	bne	%r1 %r25 be_else.9809 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 120
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9810 
	retl
be_else.9810 :
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	veciprod.2834 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fneg.2709 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fispos.2705 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9813 
	retl
be_else.9813 :
	lw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2714 
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
be_else.9809 :
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
	jal	o_reflectiontype.2863 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw	%r26 %r2 140
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_diffuse.2883 
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
	jal	veccpy.2823 
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
	jal	p_intersection_points.2903 
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
	jal	veccpy.2823 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_calc_diffuse.2907 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 140
	sw	%r26 %r1 160
	mov	%r2 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_diffuse.2883 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r1 l.6671 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fless.2711 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9817 
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
	jal	p_energy.2909 
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
	jal	veccpy.2823 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 108
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 164
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 l.7207 
	ilw.s	%r3 %f0 0
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	mov	%r2 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	vecscale.2852 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 52
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	p_nvectors.2918 
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
	jal	veccpy.2823 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	j	be_cont.9818 
be_else.9817 :
	addi	%r0 %r1 0
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9818 :
	addi	%r0 %r1 l.7210 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw.s	%r26 %f0 168
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	veciprod.2834 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 168
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	vecaccum.2842 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r1 140
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	o_hilight.2885 
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
	bne	%r1 %r25 be_else.9819 
	lw	%r26 %r1 44
	lw	%r26 %r2 104
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	veciprod.2834 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fneg.2709 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw.s	%r26 %f0 184
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	veciprod.2834 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fneg.2709 
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
	j	be_cont.9820 
be_else.9819 :
be_cont.9820 :
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
	addi	%r0 %r1 l.7214 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 96
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fless.2711 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9821 
	retl
be_else.9821 :
	lw	%r26 %r1 108
addi	%r0 %r25 4
	bl	%r1 r25 bge_else.9823 
	j	bge_cont.9824 
bge_else.9823 :
	addi	%r1 %r2 1
	addi	%r0 %r3 -1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r4 120
	add %r4 %r2 %r25
	sw	%r25 %r3 0
bge_cont.9824 :
	lw	%r26 %r2 144
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9825 
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 140
	sw.s	%r26 %f0 192
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	o_diffuse.2883 
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
be_else.9825 :
	retl
ble_else.9806 :
	retl
trace_diffuse_ray.3146 :
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
	bne	%r1 %r25 be_else.9828 
	retl
be_else.9828 :
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
	jal	d_vec.2920 
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
	bne	%r1 %r25 be_else.9830 
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.2834 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2709 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fispos.2705 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9832 
	addi	%r0 %r1 l.6636 
	ilw.s	%r1 %f0 0
	j	be_cont.9833 
be_else.9832 :
	lw.s	%r26 %f0 64
be_cont.9833 :
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 56
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_diffuse.2883 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	j	vecaccum.2842 
be_else.9830 :
	retl
iter_trace_diffuse_rays.3149 :
	lw	%r24 %r5 4
	addi	%r0 %r25 0
	bl	%r4 %r25 bge_else.9835 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.2834 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2707 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9836 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.7236 
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
	j	be_cont.9837 
be_else.9836 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.7233 
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
be_cont.9837 :
	lw	%r26 %r1 16
	addi	%r1 %r4 -2
	lw	%r26 %r1 12
	lw	%r26 %r2 20
	lw	%r26 %r3 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9835 :
	retl
trace_diffuse_rays.3154 :
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
trace_diffuse_ray_80percent.3158 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r1 16
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9839 
	j	be_cont.9840 
be_else.9839 :
	lw	%r5 %r6 0
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9840 :
	lw	%r26 %r1 16
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9841 
	j	be_cont.9842 
be_else.9841 :
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
be_cont.9842 :
	lw	%r26 %r1 16
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9843 
	j	be_cont.9844 
be_else.9843 :
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
be_cont.9844 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9845 
	j	be_cont.9846 
be_else.9845 :
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
be_cont.9846 :
	lw	%r26 %r1 16
	addi	%r0 %r25 4
	bne	%r1 %r25 be_else.9847 
	retl
be_else.9847 :
	lw	%r26 %r1 12
	lw	%r1 %r1 16
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
calc_diffuse_using_1point.3162 :
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
	jal	p_received_ray_20percent.2911 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2918 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_intersection_points.2903 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_energy.2909 
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
	jal	veccpy.2823 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_group_id.2913 
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
	j	vecaccumv.2855 
calc_diffuse_using_5points.3165 :
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
	jal	p_received_ray_20percent.2911 
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
	jal	p_received_ray_20percent.2911 
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
	jal	p_received_ray_20percent.2911 
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
	jal	p_received_ray_20percent.2911 
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
	jal	p_received_ray_20percent.2911 
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
	jal	veccpy.2823 
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
	jal	vecadd.2846 
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
	jal	vecadd.2846 
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
	jal	vecadd.2846 
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
	jal	vecadd.2846 
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
	jal	p_energy.2909 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r3 4
	j	vecaccumv.2855 
do_without_neighbors.3171 :
	lw	%r24 %r3 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9849 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_surface_ids.2905 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9850 
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_calc_diffuse.2907 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9851 
	j	be_cont.9852 
be_else.9851 :
	lw	%r26 %r1 8
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9852 :
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9850 :
	retl
ble_else.9849 :
	retl
neighbors_exist.3174 :
	lw	%r24 %r3 4
	lw	%r3 %r4 4
	addi	%r2 %r5 1
	bg	%r4 %r5 ble_else.9855 
	addi	%r0 %r1 0
	retl
ble_else.9855 :
	addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.9856 
	addi	%r0 %r1 0
	retl
ble_else.9856 :
	lw	%r3 %r2 0
	addi	%r1 %r3 1
	bg	%r2 %r3 ble_else.9857 
	addi	%r0 %r1 0
	retl
ble_else.9857 :
	addi	%r0 %r25 0
	bg	%r1 %r25 ble_else.9858 
	addi	%r0 %r1 0
	retl
ble_else.9858 :
	addi	%r0 %r1 1
	retl
get_surface_id.3178 :
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	p_surface_ids.2905 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	retl
neighbors_are_available.3181 :
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
	jal	get_surface_id.3178 
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
	jal	get_surface_id.3178 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9859 
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
	jal	get_surface_id.3178 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9860 
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
	jal	get_surface_id.3178 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9861 
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
	jal	get_surface_id.3178 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9862 
	addi	%r0 %r1 1
	retl
be_else.9862 :
	addi	%r0 %r1 0
	retl
be_else.9861 :
	addi	%r0 %r1 0
	retl
be_else.9860 :
	addi	%r0 %r1 0
	retl
be_else.9859 :
	addi	%r0 %r1 0
	retl
try_exploit_neighbors.3187 :
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r4 %r9 %r25
	lw	%r25 %r9 0
	addi	%r0 %r25 4
	bg	%r6 %r25 ble_else.9863 
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
	jal	get_surface_id.3178 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9864 
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r5 20
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	neighbors_are_available.3181 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9865 
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
be_else.9865 :
	lw	%r26 %r1 12
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_calc_diffuse.2907 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r5 20
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9866 
	j	be_cont.9867 
be_else.9866 :
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
be_cont.9867 :
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
bge_else.9864 :
	retl
ble_else.9863 :
	retl
write_ppm_header.3194 :
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
	jal	print_int.2729 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2729 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 255
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2729 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
write_rgb_element.3196 :
	mfc1	%r1 %f0
addi	%r0 %r25 255
	bg	%r1 %r25 ble_else.9870 
addi	%r0 %r25 0
	bl	%r1 r25 bge_else.9872 
	j	bge_cont.9873 
bge_else.9872 :
	addi	%r0 %r2 98
	out	%r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2729 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 0
bge_cont.9873 :
	j	ble_cont.9871 
ble_else.9870 :
	addi	%r0 %r2 97
	out	%r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2729 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 255
ble_cont.9871 :
	j	print_int.2729 
write_rgb.3198 :
	lw	%r24 %r1 4
	lw.s	%r1 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3196 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3196 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.3196 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
pretrace_diffuse_rays.3200 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9874 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.3178 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9875 
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_calc_diffuse.2907 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9876 
	j	be_cont.9877 
be_else.9876 :
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_group_id.2913 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecbzero.2821 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2918 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_intersection_points.2903 
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
	jal	p_received_ray_20percent.2911 
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
	jal	veccpy.2823 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9877 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	lw	%r26 %r1 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9875 :
	retl
ble_else.9874 :
	retl
pretrace_pixels.3203 :
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
	bl	%r2 %r25 bge_else.9880 
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
	jal	vecunit_sgn.2831 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	vecbzero.2821 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 56
	lw	%r26 %r2 52
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2823 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6645 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 l.6636 
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
	jal	p_rgb.2901 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2823 
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
	jal	p_set_group_id.2915 
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
	jal	add_mod5.2810 
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
bge_else.9880 :
	retl
pretrace_line.3210 :
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
scan_pixel.3214 :
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r10 %r10 0
	bg	%r10 %r1 ble_else.9882 
	retl
ble_else.9882 :
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
	jal	p_rgb.2901 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2823 
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
	bne	%r1 %r25 be_else.9884 
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
	j	be_cont.9885 
be_else.9884 :
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
be_cont.9885 :
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
scan_line.3220 :
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	lw	%r8 %r9 4
	bg	%r9 %r1 ble_else.9886 
	retl
ble_else.9886 :
	lw	%r8 %r8 4
	addi	%r8 %r8 -1
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r6 24
	bg	%r8 %r1 ble_else.9888 
	j	ble_cont.9889 
ble_else.9888 :
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
ble_cont.9889 :
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
	jal	add_mod5.2810 
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
create_float5x3array.3226 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
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
	addi	%r0 %r3 l.6636 
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
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6636 
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
create_pixel.3228 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6636 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	create_float5x3array.3226 
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
	jal	create_float5x3array.3226 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3226 
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
	jal	create_float5x3array.3226 
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
init_line_elements.3230 :
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9890 
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3228 
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
	j	init_line_elements.3230 
bge_else.9890 :
	retl
create_pixelline.3233 :
	lw	%r24 %r1 4
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3228 
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
	j	init_line_elements.3230 
tan.3235 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	sin.2723 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	cos.2725 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	div.s	%f0 %f1 %f0
	retl
adjust_position.3237 :
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.7214 
	ilw.s	%r1 %f2 0
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f2 0
	div.s	%f0 %f2 %f2
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	mov.s	%f2 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	atan.2727 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	tan.3235 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	retl
calc_dirvec.3240 :
	lw	%r24 %r4 4
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9891 
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2714 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2714 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 16
	div.s	%f0 %f1 %f1
	lw.s	%r26 %f2 24
	div.s	%f0 %f2 %f2
	addi	%r0 %r1 l.6645 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 48
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2813 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 56
	sw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2709 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f2
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 48
	lw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2813 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	sw	%r26 %r1 76
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fneg.2709 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2709 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f2
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 80
	lw	%r26 %r1 76
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	vecset.2813 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f0 64
	sw	%r26 %r1 88
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2709 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fneg.2709 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2709 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f2
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 104
	lw	%r26 %r1 88
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	vecset.2813 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f0 64
	sw	%r26 %r1 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2709 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2709 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov.s	%f0 %f1
	lw.s	%r26 %f0 120
	lw.s	%r26 %f2 56
	lw	%r26 %r1 112
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	vecset.2813 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f0 48
	sw	%r26 %r1 128
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2709 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 56
	lw	%r26 %r1 128
	j	vecset.2813 
bge_else.9891 :
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
	jal	adjust_position.3237 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 160
	addi	%r1 %r1 1
	lw.s	%r26 %f1 152
	sw.s	%r26 %f0 168
	sw	%r26 %r1 176
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	adjust_position.3237 
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
calc_dirvecs.3248 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9899 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.7343 
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.7345 
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.6636 
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.6636 
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
	addi	%r0 %r2 l.7343 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.7214 
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6636 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6636 
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
	jal	add_mod5.2810 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw.s	%r26 %f0 8
	lw	%r26 %r1 32
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9899 :
	retl
calc_dirvec_rows.3253 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9902 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.7343 
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.7345 
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
	jal	add_mod5.2810 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 4
	addi	%r1 %r3 4
	lw	%r26 %r1 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9902 :
	retl
create_dirvec.3257 :
	lw	%r24 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6636 
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
create_dirvec_elements.3259 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9904 
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
bge_else.9904 :
	retl
create_dirvecs.3262 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9906 
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
bge_else.9906 :
	retl
init_dirvec_constants.3264 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9908 
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
bge_else.9908 :
	retl
init_vecset_constants.3267 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9910 
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
bge_else.9910 :
	retl
init_dirvecs.3269 :
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
add_reflection.3271 :
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
	jal	d_vec.2920 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	vecset.2813 
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
setup_rect_reflection.3278 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6645 
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
	jal	o_diffuse.2883 
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
	jal	fneg.2709 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2709 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 48
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2709 
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
setup_surface_reflection.3281 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	addi	%r1 %r1 1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6645 
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
	jal	o_diffuse.2883 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_abc.2875 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2834 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6643 
	ilw.s	%r1 %f1 0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_a.2869 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6643 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 56
	sw.s	%r26 %f2 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2871 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 4
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6643 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 72
	sw.s	%r26 %f2 80
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_c.2873 
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
setup_reflections.3284 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9918 
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
	jal	o_reflectiontype.2863 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9919 
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_diffuse.2883 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 l.6645 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2711 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9920 
	retl
be_else.9920 :
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2861 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9922 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9922 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9923 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9923 :
	retl
be_else.9919 :
	retl
bge_else.9918 :
	retl
rt.3286 :
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
	addi	%r0 %r2 l.7394 
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
	jal	d_vec.2920 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veccpy.2823 
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
