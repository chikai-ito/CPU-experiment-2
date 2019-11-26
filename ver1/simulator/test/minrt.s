#data_section
l.7034 :	# 128.000000
	.long	0x43000000
l.6985 :	# 0.900000
	.long	0x3f666666
l.6983 :	# 0.200000
	.long	0x3e4ccccd
l.6876 :	# 150.000000
	.long	0x43160000
l.6873 :	# -150.000000
	.long	0xc3160000
l.6854 :	# 0.100000
	.long	0x3dcccccd
l.6850 :	# -2.000000
	.long	0xc0000000
l.6847 :	# 0.003906
	.long	0x3b800000
l.6845 :	# 256.000000
	.long	0x43800000
l.6812 :	# 20.000000
	.long	0x41a00000
l.6810 :	# 0.050000
	.long	0x3d4ccccd
l.6802 :	# 0.250000
	.long	0x3e800000
l.6793 :	# 10.000000
	.long	0x41200000
l.6788 :	# 0.300000
	.long	0x3e99999a
l.6786 :	# 255.000000
	.long	0x437f0000
l.6781 :	# 0.150000
	.long	0x3e19999a
l.6774 :	# 3.141593
	.long	0x40490fdb
l.6772 :	# 30.000000
	.long	0x41f00000
l.6770 :	# 15.000000
	.long	0x41700000
l.6768 :	# 0.000100
	.long	0x38d1b717
l.6719 :	# 100000000.000000
	.long	0x4cbebc20
l.6713 :	# 1000000000.000000
	.long	0x4e6e6b28
l.6690 :	# -0.100000
	.long	0xbdcccccd
l.6676 :	# 0.010000
	.long	0x3c23d70a
l.6674 :	# -0.200000
	.long	0xbe4ccccd
l.6419 :	# -200.000000
	.long	0xc3480000
l.6416 :	# 200.000000
	.long	0x43480000
l.6411 :	# 0.017453
	.long	0x3c8efa35
l.6298 :	# -1.000000
	.long	0xbf800000
l.6292 :	# 0.001000
	.long	0x3a83126f
l.6287 :	# 0.500000
	.long	0x3f000000
l.6283 :	# 0.041667
	.long	0x3d2aaaab
l.6281 :	# 24.000000
	.long	0x41c00000
l.6278 :	# 0.001389
	.long	0x3ab60b61
l.6276 :	# 720.000000
	.long	0x44340000
l.6273 :	# 0.000025
	.long	0x37d00d01
l.6271 :	# 40320.000000
	.long	0x471d8000
l.6268 :	# 0.166667
	.long	0x3e2aaaab
l.6266 :	# 6.000000
	.long	0x40c00000
l.6263 :	# 0.008333
	.long	0x3c088889
l.6261 :	# 120.000000
	.long	0x42f00000
l.6258 :	# 0.000198
	.long	0x39500d01
l.6256 :	# 5040.000000
	.long	0x459d8000
l.6253 :	# 0.000003
	.long	0x3638ef1d
l.6251 :	# 362880.000000
	.long	0x48b13000
l.6248 :	# 1.000000
	.long	0x3f800000
l.6246 :	# 2.000000
	.long	0x40000000
l.6239 :	# 0.000000
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
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 0
	mov	%r2 %r1
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
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6786 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_float_array
	addi	%r26 %r26 -24
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
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	min_caml_create_array
	addi	%r26 %r26 -32
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
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 36
	mov	%r2 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_float_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 40
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	min_caml_create_array
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6713 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 44
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 48
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 52
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 56
	mov	%r2 %r1
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	min_caml_create_float_array
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 64
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_float_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 68
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_float_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 72
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r2 2
	addi	%r0 %r3 0
	sw	%r26 %r1 76
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 1
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 80
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_float_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 84
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 88
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 92
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 96
	mov	%r2 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 100
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 104
	mov	%r2 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	min_caml_create_float_array
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 108
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_float_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 0
	sw	%r26 %r2 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
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
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	addi	%r0 %r1 5
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 116
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 120
	mov	%r2 %r1
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	min_caml_create_float_array
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	addi	%r0 %r2 60
	lw	%r26 %r3 120
	sw	%r26 %r1 124
	mov	%r2 %r1
	mov	%r3 %r2
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
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6239 
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
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r1 4
	lw	%r26 %r1 132
	sw	%r2 %r1 0
	mov	%r2 %r1
	addi	%r0 %r2 180
	addi	%r0 %r3 0
	addi	%r0 %r4 l.6239 
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
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r2 1
	addi	%r0 %r3 0
	sw	%r26 %r1 136
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	min_caml_create_array
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	mov	%r27 %r2
	addi	%r27 %r27 24
	addi	%r0 %r3 read_screen_settings.2722 
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
	addi	%r0 %r8 read_light.2724 
	sw	%r7 %r8 0
	lw	%r26 %r8 16
	sw	%r7 %r8 8
	lw	%r26 %r9 20
	sw	%r7 %r9 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r11 read_nth_object.2729 
	sw	%r10 %r11 0
	lw	%r26 %r11 4
	sw	%r10 %r11 4
	mov	%r27 %r12
	addi	%r27 %r27 16
	addi	%r0 %r13 read_object.2731 
	sw	%r12 %r13 0
	sw	%r12 %r10 8
	lw	%r26 %r10 0
	sw	%r12 %r10 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 read_all_object.2733 
	sw	%r13 %r14 0
	sw	%r13 %r12 4
	mov	%r27 %r12
	addi	%r27 %r27 8
	addi	%r0 %r14 read_and_network.2739 
	sw	%r12 %r14 0
	lw	%r26 %r14 28
	sw	%r12 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r16 read_parameter.2741 
	sw	%r15 %r16 0
	sw	%r15 %r2 20
	sw	%r15 %r7 16
	sw	%r15 %r12 12
	sw	%r15 %r13 8
	lw	%r26 %r2 36
	sw	%r15 %r2 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r12 solver_rect_surface.2743 
	sw	%r7 %r12 0
	lw	%r26 %r12 40
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_rect.2752 
	sw	%r13 %r16 0
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface.2758 
	sw	%r7 %r16 0
	sw	%r7 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r17 solver_second.2777 
	sw	%r16 %r17 0
	sw	%r16 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 24
	addi	%r0 %r18 solver.2783 
	sw	%r17 %r18 0
	sw	%r17 %r7 16
	sw	%r17 %r16 12
	sw	%r17 %r13 8
	sw	%r17 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 solver_rect_fast.2787 
	sw	%r7 %r13 0
	sw	%r7 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast.2794 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r18 solver_second_fast.2800 
	sw	%r16 %r18 0
	sw	%r16 %r12 4
	mov	%r27 %r18
	addi	%r27 %r27 24
	addi	%r0 %r19 solver_fast.2806 
	sw	%r18 %r19 0
	sw	%r18 %r13 16
	sw	%r18 %r16 12
	sw	%r18 %r7 8
	sw	%r18 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r16 solver_surface_fast2.2810 
	sw	%r13 %r16 0
	sw	%r13 %r12 4
	mov	%r27 %r16
	addi	%r27 %r27 8
	addi	%r0 %r19 solver_second_fast2.2817 
	sw	%r16 %r19 0
	sw	%r16 %r12 4
	mov	%r27 %r19
	addi	%r27 %r27 24
	addi	%r0 %r20 solver_fast2.2824 
	sw	%r19 %r20 0
	sw	%r19 %r13 16
	sw	%r19 %r16 12
	sw	%r19 %r7 8
	sw	%r19 %r11 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r13 iter_setup_dirvec_constants.2836 
	sw	%r7 %r13 0
	sw	%r7 %r11 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_dirvec_constants.2839 
	sw	%r13 %r16 0
	sw	%r13 %r10 8
	sw	%r13 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r16 setup_startp_constants.2841 
	sw	%r7 %r16 0
	sw	%r7 %r11 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r20 setup_startp.2844 
	sw	%r16 %r20 0
	lw	%r26 %r20 92
	sw	%r16 %r20 12
	sw	%r16 %r7 8
	sw	%r16 %r10 4
	mov	%r27 %r7
	addi	%r27 %r27 8
	addi	%r0 %r21 check_all_inside.2866 
	sw	%r7 %r21 0
	sw	%r7 %r11 4
	mov	%r27 %r21
	addi	%r27 %r27 32
	addi	%r0 %r22 shadow_check_and_group.2872 
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
	addi	%r0 %r15 shadow_check_one_or_group.2875 
	sw	%r24 %r15 0
	sw	%r24 %r21 8
	sw	%r24 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 24
	addi	%r0 %r21 shadow_check_one_or_matrix.2878 
	sw	%r15 %r21 0
	sw	%r15 %r18 20
	sw	%r15 %r12 16
	sw	%r15 %r24 12
	sw	%r15 %r22 8
	sw	%r15 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 40
	addi	%r0 %r21 solve_each_element.2881 
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
	addi	%r0 %r5 solve_one_or_network.2885 
	sw	%r10 %r5 0
	sw	%r10 %r18 8
	sw	%r10 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r18 trace_or_matrix.2889 
	sw	%r5 %r18 0
	sw	%r5 %r21 20
	sw	%r5 %r24 16
	sw	%r5 %r12 12
	sw	%r5 %r17 8
	sw	%r5 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r17 judge_intersection.2893 
	sw	%r10 %r17 0
	sw	%r10 %r5 12
	sw	%r10 %r21 8
	sw	%r10 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 40
	addi	%r0 %r17 solve_each_element_fast.2895 
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
	addi	%r0 %r17 solve_one_or_network_fast.2899 
	sw	%r7 %r17 0
	sw	%r7 %r5 8
	sw	%r7 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 24
	addi	%r0 %r14 trace_or_matrix_fast.2903 
	sw	%r5 %r14 0
	sw	%r5 %r21 16
	sw	%r5 %r19 12
	sw	%r5 %r12 8
	sw	%r5 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r12 judge_intersection_fast.2907 
	sw	%r7 %r12 0
	sw	%r7 %r5 12
	sw	%r7 %r21 8
	sw	%r7 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r12 get_nvector_rect.2909 
	sw	%r5 %r12 0
	lw	%r26 %r12 60
	sw	%r5 %r12 8
	sw	%r5 %r22 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r17 get_nvector_plane.2911 
	sw	%r14 %r17 0
	sw	%r14 %r12 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r18 get_nvector_second.2913 
	sw	%r17 %r18 0
	sw	%r17 %r12 8
	sw	%r17 %r23 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 get_nvector.2915 
	sw	%r18 %r19 0
	sw	%r18 %r17 12
	sw	%r18 %r5 8
	sw	%r18 %r14 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 utexture.2918 
	sw	%r5 %r14 0
	lw	%r26 %r14 64
	sw	%r5 %r14 4
	mov	%r27 %r17
	addi	%r27 %r27 16
	addi	%r0 %r19 add_light.2921 
	sw	%r17 %r19 0
	sw	%r17 %r14 8
	lw	%r26 %r19 72
	sw	%r17 %r19 4
	mov	%r27 %r20
	addi	%r27 %r27 40
	addi	%r0 %r4 trace_reflections.2925 
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
	addi	%r0 %r6 trace_ray.2930 
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
	addi	%r0 %r9 trace_diffuse_ray.2936 
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
	addi	%r0 %r7 iter_trace_diffuse_rays.2939 
	sw	%r5 %r7 0
	sw	%r5 %r6 4
	mov	%r27 %r6
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_rays.2944 
	sw	%r6 %r7 0
	sw	%r6 %r16 8
	sw	%r6 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r7 trace_diffuse_ray_80percent.2948 
	sw	%r5 %r7 0
	sw	%r5 %r6 8
	lw	%r26 %r7 116
	sw	%r5 %r7 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_1point.2952 
	sw	%r9 %r10 0
	sw	%r9 %r5 12
	sw	%r9 %r19 8
	sw	%r9 %r2 4
	mov	%r27 %r5
	addi	%r27 %r27 16
	addi	%r0 %r10 calc_diffuse_using_5points.2955 
	sw	%r5 %r10 0
	sw	%r5 %r19 8
	sw	%r5 %r2 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r12 do_without_neighbors.2961 
	sw	%r10 %r12 0
	sw	%r10 %r9 4
	mov	%r27 %r9
	addi	%r27 %r27 8
	addi	%r0 %r12 neighbors_exist.2964 
	sw	%r9 %r12 0
	lw	%r26 %r12 76
	sw	%r9 %r12 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r14 try_exploit_neighbors.2977 
	sw	%r13 %r14 0
	sw	%r13 %r10 8
	sw	%r13 %r5 4
	mov	%r27 %r5
	addi	%r27 %r27 8
	addi	%r0 %r14 write_ppm_header.2984 
	sw	%r5 %r14 0
	sw	%r5 %r12 4
	mov	%r27 %r14
	addi	%r27 %r27 8
	addi	%r0 %r15 write_rgb.2988 
	sw	%r14 %r15 0
	sw	%r14 %r19 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 pretrace_diffuse_rays.2990 
	sw	%r15 %r16 0
	sw	%r15 %r6 12
	sw	%r15 %r7 8
	sw	%r15 %r2 4
	mov	%r27 %r2
	addi	%r27 %r27 40
	addi	%r0 %r6 pretrace_pixels.2993 
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
	addi	%r0 %r15 pretrace_line.3000 
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
	addi	%r0 %r15 scan_pixel.3004 
	sw	%r2 %r15 0
	sw	%r2 %r14 24
	sw	%r2 %r13 20
	sw	%r2 %r19 16
	sw	%r2 %r9 12
	sw	%r2 %r12 8
	sw	%r2 %r10 4
	mov	%r27 %r9
	addi	%r27 %r27 16
	addi	%r0 %r10 scan_line.3010 
	sw	%r9 %r10 0
	sw	%r9 %r2 12
	sw	%r9 %r6 8
	sw	%r9 %r12 4
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r10 create_pixelline.3023 
	sw	%r2 %r10 0
	sw	%r2 %r12 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r13 calc_dirvec.3030 
	sw	%r10 %r13 0
	sw	%r10 %r7 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvecs.3038 
	sw	%r13 %r14 0
	sw	%r13 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 8
	addi	%r0 %r14 calc_dirvec_rows.3043 
	sw	%r10 %r14 0
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 8
	addi	%r0 %r14 create_dirvec.3047 
	sw	%r13 %r14 0
	lw	%r26 %r14 0
	sw	%r13 %r14 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r16 create_dirvec_elements.3049 
	sw	%r15 %r16 0
	sw	%r15 %r13 4
	mov	%r27 %r16
	addi	%r27 %r27 16
	addi	%r0 %r17 create_dirvecs.3052 
	sw	%r16 %r17 0
	sw	%r16 %r7 12
	sw	%r16 %r15 8
	sw	%r16 %r13 4
	mov	%r27 %r15
	addi	%r27 %r27 8
	addi	%r0 %r17 init_dirvec_constants.3054 
	sw	%r15 %r17 0
	lw	%r26 %r17 144
	sw	%r15 %r17 4
	mov	%r27 %r18
	addi	%r27 %r27 16
	addi	%r0 %r19 init_vecset_constants.3057 
	sw	%r18 %r19 0
	sw	%r18 %r15 8
	sw	%r18 %r7 4
	mov	%r27 %r7
	addi	%r27 %r27 16
	addi	%r0 %r15 init_dirvecs.3059 
	sw	%r7 %r15 0
	sw	%r7 %r18 12
	sw	%r7 %r16 8
	sw	%r7 %r10 4
	mov	%r27 %r10
	addi	%r27 %r27 16
	addi	%r0 %r15 add_reflection.3061 
	sw	%r10 %r15 0
	sw	%r10 %r17 12
	lw	%r26 %r15 136
	sw	%r10 %r15 8
	sw	%r10 %r13 4
	mov	%r27 %r13
	addi	%r27 %r27 16
	addi	%r0 %r15 setup_rect_reflection.3068 
	sw	%r13 %r15 0
	sw	%r13 %r1 12
	sw	%r13 %r8 8
	sw	%r13 %r10 4
	mov	%r27 %r15
	addi	%r27 %r27 16
	addi	%r0 %r16 setup_surface_reflection.3071 
	sw	%r15 %r16 0
	sw	%r15 %r1 12
	sw	%r15 %r8 8
	sw	%r15 %r10 4
	mov	%r27 %r1
	addi	%r27 %r27 16
	addi	%r0 %r10 setup_reflections.3074 
	sw	%r1 %r10 0
	sw	%r1 %r15 12
	sw	%r1 %r13 8
	sw	%r1 %r11 4
	mov	%r27 %r24
	addi	%r27 %r27 64
	addi	%r0 %r10 rt.3076 
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
	addi	%r0 %r1 128
	addi	%r0 %r2 128
	sw	%r26 %r28 148
	lw	%r24 %r23 0
	addi	%r26 %r26 152	
	jalr	%r23
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 0
	ret
fiszero.2534 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	fbne	%f0 %f1 fbe_else.9104 
	addi	%r0 %r1 1
	retl
fbe_else.9104 :
	addi	%r0 %r1 0
	retl
fispos.2536 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.9105 
	addi	%r0 %r1 0
	retl
fble_else.9105 :
	addi	%r0 %r1 1
	retl
fisneg.2538 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9106 
	addi	%r0 %r1 0
	retl
fble_else.9106 :
	addi	%r0 %r1 1
	retl
fneg.2540 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fless.2542 :
	fbg	%f1 %f0 fble_else.9107 
	addi	%r0 %r1 0
	retl
fble_else.9107 :
	addi	%r0 %r1 1
	retl
fsqr.2545 :
	mul.s	%f0 %f0 %f0
	retl
fabs.2547 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 fble_else.9108 
	retl
fble_else.9108 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	retl
fhalf.2549 :
	addi	%r0 %r1 l.6246 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	retl
fpow.2551 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9109 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	retl
be_else.9109 :
	addi	%r1 %r1 -1
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fpow.2551 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f1 0
	mul.s	%f0 %f1 %f0
	retl
sin.2554 :
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6251 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6253 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2551 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6256 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6258 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2551 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6261 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6263 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2551 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6266 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6268 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2551 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 0
	add.s	%f1 %f0 %f0
	retl
cos.2556 :
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6271 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6273 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.2551 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6276 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6278 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.2551 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6281 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6283 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.2551 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 32
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6246 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6287 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	lw.s	%r26 %f2 0
	sw.s	%r26 %f0 48
	sw.s	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.2551 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	retl
f.6155 :
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f2 %f0
	div.s	%f0 %f1 %f0
	retl
euler.6157 :
	add.s	%f3 %f0 %f4
	fbg	%f4 %f2 fble_else.9110 
	sw.s	%r26 %f2 0
	sw.s	%r26 %f0 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f3 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	f.6155 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f3 24
	mul.s	%f0 %f3 %f0
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f1
	lw.s	%r26 %f0 8
	add.s	%f3 %f0 %f0
	lw.s	%r26 %f2 0
	j	euler.6157 
fble_else.9110 :
	mov.s	%f1 %f0
	retl
atan.2558 :
	addi	%r0 %r1 l.6292 
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f2 0
	mov.s	%f2 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f31 %f1
	j	euler.6157 
print_int.2560 :
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
	bg	%r2 %r25 ble_else.9111 
	addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.9112 
	addi	%r1 %r1 48
	out	%r1
	retl
ble_else.9112 :
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
ble_else.9111 :
	addi	%r2 %r2 48
	out	%r2
	addi	%r3 %r2 48
	out	%r2
	addi	%r1 %r1 48
	out	%r1
	retl
xor.2592 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9113 
	mov	%r2 %r1
	retl
be_else.9113 :
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9114 
	addi	%r0 %r1 1
	retl
be_else.9114 :
	addi	%r0 %r1 0
	retl
sgn.2595 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fiszero.2534 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9115 
	lw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fispos.2536 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9116 
	addi	%r0 %r1 l.6298 
	ilw.s	%r1 %f0 0
	retl
be_else.9116 :
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	retl
be_else.9115 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	retl
fneg_cond.2597 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9117 
	j	fneg.2540 
be_else.9117 :
	retl
add_mod5.2600 :
	add	%r1 %r2 %r1
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9118 
	addi	%r1 %r1 -5
	retl
bge_else.9118 :
	retl
vecset.2603 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f2 8
	retl
vecfill.2608 :
	sw.s	%r1 %f0 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f0 8
	retl
vecbzero.2611 :
	addi	%r0 %r2 l.6239 
	ilw.s	%r2 %f0 0
	j	vecfill.2608 
veccpy.2613 :
	lw.s	%r2 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r2 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r1 %f0 8
	retl
vecdist2.2616 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2545 
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
	jal	fsqr.2545 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	retl
vecunit.2619 :
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 0
	sw	%r26 %r1 8
	mov.s	%f1 %f0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2545 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2545 
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
	jal	fsqr.2545 
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
vecunit_sgn.2621 :
	lw.s	%r1 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fsqr.2545 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fsqr.2545 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fiszero.2534 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9124 
	lw	%r26 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9126 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
	j	be_cont.9127 
be_else.9126 :
	addi	%r0 %r1 l.6298 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 24
	div.s	%f1 %f0 %f0
be_cont.9127 :
	j	be_cont.9125 
be_else.9124 :
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
be_cont.9125 :
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
veciprod.2624 :
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
veciprod2.2627 :
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	lw.s	%r1 %f3 4
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r1 %f1 8
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	retl
vecaccum.2632 :
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
vecadd.2636 :
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
vecmul.2639 :
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
vecscale.2642 :
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
vecaccumv.2645 :
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
o_texturetype.2649 :
	lw	%r1 %r1 0
	retl
o_form.2651 :
	lw	%r1 %r1 4
	retl
o_reflectiontype.2653 :
	lw	%r1 %r1 8
	retl
o_isinvert.2655 :
	lw	%r1 %r1 24
	retl
o_isrot.2657 :
	lw	%r1 %r1 12
	retl
o_param_a.2659 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 0
	retl
o_param_b.2661 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 4
	retl
o_param_c.2663 :
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	retl
o_param_abc.2665 :
	lw	%r1 %r1 16
	retl
o_param_x.2667 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 0
	retl
o_param_y.2669 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 4
	retl
o_param_z.2671 :
	lw	%r1 %r1 20
	lw.s	%r1 %f0 8
	retl
o_diffuse.2673 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 0
	retl
o_hilight.2675 :
	lw	%r1 %r1 28
	lw.s	%r1 %f0 4
	retl
o_color_red.2677 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 0
	retl
o_color_green.2679 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 4
	retl
o_color_blue.2681 :
	lw	%r1 %r1 32
	lw.s	%r1 %f0 8
	retl
o_param_r1.2683 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 0
	retl
o_param_r2.2685 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 4
	retl
o_param_r3.2687 :
	lw	%r1 %r1 36
	lw.s	%r1 %f0 8
	retl
o_param_ctbl.2689 :
	lw	%r1 %r1 40
	retl
p_rgb.2691 :
	lw	%r1 %r1 0
	retl
p_intersection_points.2693 :
	lw	%r1 %r1 4
	retl
p_surface_ids.2695 :
	lw	%r1 %r1 8
	retl
p_calc_diffuse.2697 :
	lw	%r1 %r1 12
	retl
p_energy.2699 :
	lw	%r1 %r1 16
	retl
p_received_ray_20percent.2701 :
	lw	%r1 %r1 20
	retl
p_group_id.2703 :
	lw	%r1 %r1 24
	lw	%r1 %r1 0
	retl
p_set_group_id.2705 :
	lw	%r1 %r1 24
	sw	%r1 %r2 0
	retl
p_nvectors.2708 :
	lw	%r1 %r1 28
	retl
d_vec.2710 :
	lw	%r1 %r1 0
	retl
d_const.2712 :
	lw	%r1 %r1 4
	retl
r_surface_id.2714 :
	lw	%r1 %r1 0
	retl
r_dvec.2716 :
	lw	%r1 %r1 4
	retl
r_bright.2718 :
	lw.s	%r1 %f0 8
	retl
rad.2720 :
	addi	%r0 %r1 l.6411 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	retl
read_screen_settings.2722 :
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
	jal	rad.2720 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2556 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2554 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	fin	%f1
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	cos.2556 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 56
	mov.s	%f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sin.2554 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f2
	addi	%r0 %r1 l.6416 
	ilw.s	%r1 %f3 0
	mul.s	%f3 %f2 %f2
	lw	%r26 %r1 16
	sw.s	%r1 %f2 0
	addi	%r0 %r2 l.6419 
	ilw.s	%r2 %f2 0
	lw.s	%r26 %f3 40
	mul.s	%f2 %f3 %f2
	sw.s	%r1 %f2 4
	lw.s	%r26 %f2 56
	mul.s	%f2 %f1 %f4
	addi	%r0 %r2 l.6416 
	ilw.s	%r2 %f5 0
	mul.s	%f5 %f4 %f4
	sw.s	%r1 %f4 8
	lw	%r26 %r2 12
	sw.s	%r2 %f2 0
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f4 0
	sw.s	%r2 %f4 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2540 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 12
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2540 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 32
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2540 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 40
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2540 
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
read_light.2724 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	in	%r3
	fin	%f0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	rad.2720 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2554 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2540 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	rad.2720 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2556 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2554 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	cos.2556 
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
rotate_quadratic_matrix.2726 :
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	cos.2556 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw.s	%r1 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	sin.2554 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	cos.2556 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 4
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	sin.2554 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	cos.2556 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 4
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	sin.2554 
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
	jal	fneg.2540 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 80
	sw.s	%r26 %f0 144
	mov.s	%f2 %f0
	sw	%r26 %r28 156
	addi	%r26 %r26 160
	jal	fsqr.2545 
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
	jal	fsqr.2545 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 64
	sw.s	%r26 %f0 160
	mov.s	%f2 %f0
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	fsqr.2545 
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
	jal	fsqr.2545 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 48
	sw.s	%r26 %f0 176
	mov.s	%f2 %f0
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fsqr.2545 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 184
	add.s	%f0 %f2 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
	addi	%r0 %r1 l.6246 
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
	addi	%r0 %r2 l.6246 
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
	addi	%r0 %r2 l.6246 
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
read_nth_object.2729 :
	lw	%r24 %r2 4
	in	%r3
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9139 
	addi	%r0 %r1 0
	retl
be_else.9139 :
	in	%r4
	in	%r5
	in	%r6
	addi	%r0 %r7 3
	addi	%r0 %r8 l.6239 
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
	addi	%r0 %r3 l.6239 
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
	jal	fisneg.2538 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r2 2
	addi	%r0 %r3 l.6239 
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
	addi	%r0 %r3 l.6239 
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
	addi	%r0 %r3 l.6239 
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
	bne	%r2 %r25 be_else.9140 
	j	be_cont.9141 
be_else.9140 :
	fin	%f0
	sw	%r26 %r1 44
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 0
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 4
	fin	%f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	rad.2720 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 44
	sw.s	%r1 %f0 8
be_cont.9141 :
	lw	%r26 %r2 16
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9142 
	addi	%r0 %r3 1
	j	be_cont.9143 
be_else.9142 :
	lw	%r26 %r3 32
be_cont.9143 :
	addi	%r0 %r4 4
	addi	%r0 %r5 l.6239 
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
	bne	%r5 %r25 be_else.9144 
	lw.s	%r3 %f0 0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fiszero.2534 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9147 
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	sgn.2595 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2545 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	div.s	%f0 %f1 %f0
	j	be_cont.9148 
be_else.9147 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
be_cont.9148 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fiszero.2534 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9149 
	lw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	sgn.2595 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fsqr.2545 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	div.s	%f0 %f1 %f0
	j	be_cont.9150 
be_else.9149 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
be_cont.9150 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2534 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9151 
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	sgn.2595 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fsqr.2545 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 96
	div.s	%f0 %f1 %f0
	j	be_cont.9152 
be_else.9151 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
be_cont.9152 :
	lw	%r26 %r1 24
	sw.s	%r1 %f0 8
	j	be_cont.9145 
be_else.9144 :
addi	%r0 %r25 2
	bne	%r5 %r25 be_else.9153 
	lw	%r26 %r2 32
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9155 
	addi	%r0 %r2 1
	j	be_cont.9156 
be_else.9155 :
	addi	%r0 %r2 0
be_cont.9156 :
	mov	%r3 %r1
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecunit_sgn.2621 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	j	be_cont.9154 
be_else.9153 :
be_cont.9154 :
be_cont.9145 :
	lw	%r26 %r1 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9157 
	j	be_cont.9158 
be_else.9157 :
	lw	%r26 %r1 24
	lw	%r26 %r2 44
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	rotate_quadratic_matrix.2726 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
be_cont.9158 :
	addi	%r0 %r1 1
	retl
read_object.2731 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 60
	bl	%r1 %r25 bge_else.9159 
	retl
bge_else.9159 :
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
	bne	%r1 %r25 be_else.9161 
	lw	%r26 %r1 4
	lw	%r26 %r2 8
	sw	%r1 %r2 0
	retl
be_else.9161 :
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_all_object.2733 :
	lw	%r24 %r24 4
	addi	%r0 %r1 0
	lw	%r24 %r23 0
	jr	%r23
read_net_item.2735 :
	in	%r2
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9163 
	addi	%r1 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
be_else.9163 :
	addi	%r1 %r3 1
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2735 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 0
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_or_network.2737 :
	addi	%r0 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_net_item.2735 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r2 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 be_else.9164 
	lw	%r26 %r1 0
	addi	%r1 %r1 1
	j	min_caml_create_array
be_else.9164 :
	lw	%r26 %r1 0
	addi	%r1 %r3 1
	sw	%r26 %r2 4
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.2737 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 4
	add %r1 %r2 %r25
	sw	%r25 %r3 0
	retl
read_and_network.2739 :
	lw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r24 0
	sw	%r26 %r2 4
	sw	%r26 %r1 8
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.2735 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r1 %r2 0
	addi	%r0 %r25 -1
	bne	%r2 %r25 be_else.9165 
	retl
be_else.9165 :
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r2 %r1 1
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
read_parameter.2741 :
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
	jal	read_or_network.2737 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r2 %r1 0
	retl
solver_rect_surface.2743 :
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
	jal	fiszero.2534 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9171 
	lw	%r26 %r1 56
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_abc.2665 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 56
	sw	%r26 %r1 60
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_isinvert.2655 
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
	jal	fisneg.2538 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 64
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	xor.2592 
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
	jal	fneg_cond.2597 
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
	jal	fabs.2547 
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
	jal	fless.2542 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9173 
	addi	%r0 %r1 0
	retl
be_else.9173 :
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
	jal	fabs.2547 
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
	jal	fless.2542 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9174 
	addi	%r0 %r1 0
	retl
be_else.9174 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9171 :
	addi	%r0 %r1 0
	retl
solver_rect.2752 :
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
	bne	%r1 %r25 be_else.9175 
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
	bne	%r1 %r25 be_else.9176 
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
	bne	%r1 %r25 be_else.9177 
	addi	%r0 %r1 0
	retl
be_else.9177 :
	addi	%r0 %r1 3
	retl
be_else.9176 :
	addi	%r0 %r1 2
	retl
be_else.9175 :
	addi	%r0 %r1 1
	retl
solver_surface.2758 :
	lw	%r24 %r3 4
	sw	%r26 %r3 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r2 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2665 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r2 36
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2624 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fispos.2536 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9179 
	addi	%r0 %r1 0
	retl
be_else.9179 :
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	lw	%r26 %r1 36
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2627 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2540 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
quadratic.2764 :
	sw.s	%r26 %f0 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fsqr.2545 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_a.2659 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 16
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fsqr.2545 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 24
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_b.2661 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 24
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2663 
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
	jal	o_isrot.2657 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9181 
	lw.s	%r26 %f0 72
	retl
be_else.9181 :
	lw.s	%r26 %f0 8
	lw.s	%r26 %f1 16
	mul.s	%f0 %f1 %f2
	lw	%r26 %r1 24
	sw.s	%r26 %f2 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r1.2683 
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
	jal	o_param_r2.2685 
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
	jal	o_param_r3.2687 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	retl
bilinear.2769 :
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
	jal	o_param_a.2659 
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
	jal	o_param_b.2661 
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
	jal	o_param_c.2663 
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
	jal	o_isrot.2657 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9183 
	lw.s	%r26 %f0 96
	retl
be_else.9183 :
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
	jal	o_param_r1.2683 
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
	jal	o_param_r2.2685 
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
	jal	o_param_r3.2687 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2549 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	retl
solver_second.2777 :
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
	jal	quadratic.2764 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fiszero.2534 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9185 
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
	jal	bilinear.2769 
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
	jal	quadratic.2764 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 32
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_form.2651 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9186 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	j	be_cont.9187 
be_else.9186 :
	lw.s	%r26 %f0 56
be_cont.9187 :
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2545 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 40
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2536 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9188 
	addi	%r0 %r1 0
	retl
be_else.9188 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw	%r26 %r1 32
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2655 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9189 
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2540 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	j	be_cont.9190 
be_else.9189 :
	lw.s	%r26 %f0 80
be_cont.9190 :
	lw.s	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw.s	%r26 %f1 40
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
be_else.9185 :
	addi	%r0 %r1 0
	retl
solver.2783 :
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
	jal	o_param_x.2667 
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
	jal	o_param_y.2669 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2651 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9191 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9191 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9192 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9192 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 48
	lw.s	%r26 %f2 64
	lw	%r26 %r1 16
	lw	%r26 %r2 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_rect_fast.2787 :
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
	jal	fabs.2547 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r1 52
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2661 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov.s	%f0 %f1
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2542 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9195 
	addi	%r0 %r1 0
	j	be_cont.9196 
be_else.9195 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fabs.2547 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 52
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_c.2663 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f1
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2542 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9197 
	addi	%r0 %r1 0
	j	be_cont.9198 
be_else.9197 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 4
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fiszero.2534 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9199 
	addi	%r0 %r1 1
	j	be_cont.9200 
be_else.9199 :
	addi	%r0 %r1 0
be_cont.9200 :
be_cont.9198 :
be_cont.9196 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9201 
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
	jal	fabs.2547 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r1 52
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_a.2659 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f1
	lw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fless.2542 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9202 
	addi	%r0 %r1 0
	j	be_cont.9203 
be_else.9202 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 8
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 32
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fabs.2547 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r1 52
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_c.2663 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov.s	%f0 %f1
	lw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fless.2542 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9204 
	addi	%r0 %r1 0
	j	be_cont.9205 
be_else.9204 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 12
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fiszero.2534 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9206 
	addi	%r0 %r1 1
	j	be_cont.9207 
be_else.9206 :
	addi	%r0 %r1 0
be_cont.9207 :
be_cont.9205 :
be_cont.9203 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9208 
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
	jal	fabs.2547 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 52
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_a.2659 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f1
	lw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fless.2542 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9209 
	addi	%r0 %r1 0
	j	be_cont.9210 
be_else.9209 :
	lw	%r26 %r1 48
	lw.s	%r1 %f0 4
	lw.s	%r26 %f1 96
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 16
	add.s	%f2 %f0 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fabs.2547 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw	%r26 %r1 52
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_b.2661 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	mov.s	%f0 %f1
	lw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fless.2542 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9211 
	addi	%r0 %r1 0
	j	be_cont.9212 
be_else.9211 :
	lw	%r26 %r1 24
	lw.s	%r1 %f0 20
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fiszero.2534 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9213 
	addi	%r0 %r1 1
	j	be_cont.9214 
be_else.9213 :
	addi	%r0 %r1 0
be_cont.9214 :
be_cont.9212 :
be_cont.9210 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9215 
	addi	%r0 %r1 0
	retl
be_else.9215 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	addi	%r0 %r1 3
	retl
be_else.9208 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 0
	addi	%r0 %r1 2
	retl
be_else.9201 :
	lw	%r26 %r1 0
	lw.s	%r26 %f0 40
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_surface_fast.2794 :
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
	jal	fisneg.2538 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9217 
	addi	%r0 %r1 0
	retl
be_else.9217 :
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
solver_second_fast.2800 :
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
	jal	fiszero.2534 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9220 
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
	jal	quadratic.2764 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 16
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_form.2651 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9222 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	j	be_cont.9223 
be_else.9222 :
	lw.s	%r26 %f0 64
be_cont.9223 :
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2545 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fispos.2536 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9224 
	addi	%r0 %r1 0
	retl
be_else.9224 :
	lw	%r26 %r1 16
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isinvert.2655 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9225 
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9226 
be_else.9225 :
	lw.s	%r26 %f0 80
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9226 :
	addi	%r0 %r1 1
	retl
be_else.9220 :
	addi	%r0 %r1 0
	retl
solver_fast.2806 :
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
	jal	o_param_x.2667 
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
	jal	o_param_y.2669 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_const.2712 
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
	jal	o_form.2651 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9228 
	lw	%r26 %r1 16
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	d_vec.2710 
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
be_else.9228 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9229 
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9229 :
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 72
	lw	%r26 %r1 20
	lw	%r26 %r2 80
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
solver_surface_fast2.2810 :
	lw	%r24 %r1 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r2 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fisneg.2538 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9230 
	addi	%r0 %r1 0
	retl
be_else.9230 :
	lw	%r26 %r1 8
	lw.s	%r1 %f0 0
	lw	%r26 %r1 4
	lw.s	%r1 %f1 12
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	addi	%r0 %r1 1
	retl
solver_second_fast2.2817 :
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
	jal	fiszero.2534 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9232 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 8
	mul.s	%f1 %f2 %f1
	sub.s	%f1 %f0 %f0
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fispos.2536 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9234 
	addi	%r0 %r1 0
	retl
be_else.9234 :
	lw	%r26 %r1 4
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_isinvert.2655 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9235 
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
	j	be_cont.9236 
be_else.9235 :
	lw.s	%r26 %f0 72
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 56
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 48
	lw.s	%r1 %f1 16
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 0
be_cont.9236 :
	addi	%r0 %r1 1
	retl
be_else.9232 :
	addi	%r0 %r1 0
	retl
solver_fast2.2824 :
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
	jal	o_param_ctbl.2689 
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
	jal	d_const.2712 
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
	jal	o_form.2651 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9238 
	lw	%r26 %r1 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	d_vec.2710 
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
be_else.9238 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9239 
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9239 :
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	lw	%r26 %r1 12
	lw	%r26 %r2 56
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
setup_rect_table.2827 :
	addi	%r0 %r3 6
	addi	%r0 %r4 l.6239 
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
	jal	fiszero.2534 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9240 
	lw	%r26 %r1 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_isinvert.2655 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	lw.s	%r2 %f0 0
	sw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fisneg.2538 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	xor.2592 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 0
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_param_a.2659 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg_cond.2597 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	j	be_cont.9241 
be_else.9240 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
be_cont.9241 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fiszero.2534 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9242 
	lw	%r26 %r1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_isinvert.2655 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 4
	lw.s	%r2 %f0 4
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2538 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2592 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 0
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_b.2661 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fneg_cond.2597 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 4
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 12
	j	be_cont.9243 
be_else.9242 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9243 :
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fiszero.2534 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9244 
	lw	%r26 %r1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2655 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	lw.s	%r2 %f0 8
	sw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2538 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	xor.2592 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r2 0
	sw	%r26 %r1 32
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_c.2663 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 32
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg_cond.2597 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 4
	lw.s	%r2 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r1 %f0 20
	j	be_cont.9245 
be_else.9244 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 20
be_cont.9245 :
	retl
setup_surface_table.2830 :
	addi	%r0 %r3 4
	addi	%r0 %r4 l.6239 
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
	jal	o_param_a.2659 
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
	jal	o_param_b.2661 
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
	jal	o_param_c.2663 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	add.s	%f0 %f1 %f0
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fispos.2536 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9247 
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	j	be_cont.9248 
be_else.9247 :
	addi	%r0 %r1 l.6298 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2659 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2540 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_b.2661 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2540 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 8
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_c.2663 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	div.s	%f1 %f0 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2540 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9248 :
	retl
setup_second_table.2833 :
	addi	%r0 %r3 5
	addi	%r0 %r4 l.6239 
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
	jal	quadratic.2764 
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
	jal	o_param_a.2659 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fneg.2540 
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
	jal	o_param_b.2661 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2540 
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
	jal	o_param_c.2663 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fneg.2540 
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
	jal	o_isrot.2657 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9250 
	lw	%r26 %r1 8
	lw.s	%r26 %f0 32
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 48
	sw.s	%r1 %f0 8
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 12
	j	be_cont.9251 
be_else.9250 :
	lw	%r26 %r1 4
	lw.s	%r1 %f0 8
	lw	%r26 %r2 0
	sw.s	%r26 %f0 72
	mov	%r2 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_r2.2685 
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
	jal	o_param_r3.2687 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 88
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2549 
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
	jal	o_param_r1.2683 
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
	jal	o_param_r3.2687 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	lw.s	%r26 %f1 112
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fhalf.2549 
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
	jal	o_param_r1.2683 
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
	jal	o_param_r2.2685 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 136
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fhalf.2549 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw.s	%r26 %f1 64
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 12
be_cont.9251 :
	lw.s	%r26 %f0 16
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fiszero.2534 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9252 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 16
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 8
	sw.s	%r1 %f0 16
	j	be_cont.9253 
be_else.9252 :
be_cont.9253 :
	lw	%r26 %r1 8
	retl
iter_setup_dirvec_constants.2836 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9254 
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
	jal	d_const.2712 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	d_vec.2710 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_form.2651 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9255 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_rect_table.2827 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9256 
be_else.9255 :
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9257 
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_surface_table.2830 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	j	be_cont.9258 
be_else.9257 :
	lw	%r26 %r1 20
	lw	%r26 %r2 8
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	setup_second_table.2833 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 4
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 16
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9258 :
be_cont.9256 :
	addi	%r2 %r2 -1
	lw	%r26 %r1 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9254 :
	retl
setup_dirvec_constants.2839 :
	lw	%r24 %r2 8
	lw	%r24 %r24 4
	lw	%r2 %r2 0
	addi	%r2 %r2 -1
	lw	%r24 %r23 0
	jr	%r23
setup_startp_constants.2841 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9260 
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
	jal	o_param_ctbl.2689 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	sw	%r26 %r1 16
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2651 
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
	jal	o_param_x.2667 
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
	jal	o_param_y.2669 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 40
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r1 %f0 8
	lw	%r26 %r2 20
addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9261 
	lw	%r26 %r2 12
	mov	%r2 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_abc.2665 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 16
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	veciprod2.2627 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
	j	be_cont.9262 
be_else.9261 :
addi	%r0 %r25 2
	bg	%r2 %r25 ble_else.9263 
	j	ble_cont.9264 
ble_else.9263 :
	lw.s	%r1 %f0 0
	lw.s	%r1 %f1 4
	lw.s	%r1 %f2 8
	lw	%r26 %r3 12
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	quadratic.2764 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9265 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	j	be_cont.9266 
be_else.9265 :
be_cont.9266 :
	lw	%r26 %r1 16
	sw.s	%r1 %f0 12
ble_cont.9264 :
be_cont.9262 :
	lw	%r26 %r1 4
	addi	%r1 %r2 -1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9260 :
	retl
setup_startp.2844 :
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
	jal	veccpy.2613 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r1 %r1 0
	addi	%r1 %r2 -1
	lw	%r26 %r1 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
is_rect_outside.2846 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fabs.2547 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_a.2659 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f1
	lw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2542 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9269 
	addi	%r0 %r1 0
	j	be_cont.9270 
be_else.9269 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fabs.2547 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_b.2661 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2542 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9271 
	addi	%r0 %r1 0
	j	be_cont.9272 
be_else.9271 :
	lw.s	%r26 %f0 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fabs.2547 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_c.2663 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov.s	%f0 %f1
	lw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2542 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9272 :
be_cont.9270 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9273 
	lw	%r26 %r1 16
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9274 
	addi	%r0 %r1 1
	retl
be_else.9274 :
	addi	%r0 %r1 0
	retl
be_else.9273 :
	lw	%r26 %r1 16
	j	o_isinvert.2655 
is_plane_outside.2851 :
	sw	%r26 %r1 0
	sw.s	%r26 %f2 8
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_abc.2665 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	veciprod2.2627 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 0
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_isinvert.2655 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f0 32
	sw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fisneg.2538 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	xor.2592 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9276 
	addi	%r0 %r1 1
	retl
be_else.9276 :
	addi	%r0 %r1 0
	retl
is_second_outside.2856 :
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	quadratic.2764 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	sw.s	%r26 %f0 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2651 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9278 
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	j	be_cont.9279 
be_else.9278 :
	lw.s	%r26 %f0 8
be_cont.9279 :
	lw	%r26 %r1 0
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_isinvert.2655 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fisneg.2538 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r1 24
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	xor.2592 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9280 
	addi	%r0 %r1 1
	retl
be_else.9280 :
	addi	%r0 %r1 0
	retl
is_outside.2861 :
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw	%r26 %r1 16
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	o_param_x.2667 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_y.2669 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 8
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 40
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_z.2671 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw.s	%r26 %f1 0
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 16
	sw.s	%r26 %f0 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_form.2651 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9282 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_rect_outside.2846 
be_else.9282 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9283 
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_plane_outside.2851 
be_else.9283 :
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 48
	lw	%r26 %r1 16
	j	is_second_outside.2856 
check_all_inside.2866 :
	lw	%r24 %r3 4
	addi	%r0 %r25 2
	sll	%r1 %r4 %r25
	add	%r2 %r4 %r25
	lw	%r25 %r4 0
	addi	%r0 %r25 -1
	bne	%r4 %r25 be_else.9284 
	addi	%r0 %r1 1
	retl
be_else.9284 :
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
	jal	is_outside.2861 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9285 
	lw	%r26 %r1 32
	addi	%r1 %r1 1
	lw.s	%r26 %f0 16
	lw.s	%r26 %f1 8
	lw.s	%r26 %f2 0
	lw	%r26 %r2 24
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9285 :
	addi	%r0 %r1 0
	retl
shadow_check_and_group.2872 :
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
	bne	%r10 %r25 be_else.9286 
	addi	%r0 %r1 0
	retl
be_else.9286 :
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
	bne	%r1 %r25 be_else.9288 
	addi	%r0 %r1 0
	j	be_cont.9289 
be_else.9288 :
	addi	%r0 %r1 l.6674 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fless.2542 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
be_cont.9289 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9290 
	lw	%r26 %r1 28
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 24
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9291 
	addi	%r0 %r1 0
	retl
be_else.9291 :
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9290 :
	addi	%r0 %r1 l.6676 
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
	bne	%r1 %r25 be_else.9292 
	lw	%r26 %r1 20
	addi	%r1 %r1 1
	lw	%r26 %r2 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9292 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_group.2875 :
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 2
	sll	%r1 %r5 %r25
	add	%r2 %r5 %r25
	lw	%r25 %r5 0
	addi	%r0 %r25 -1
	bne	%r5 %r25 be_else.9293 
	addi	%r0 %r1 0
	retl
be_else.9293 :
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
	bne	%r1 %r25 be_else.9294 
	lw	%r26 %r1 8
	addi	%r1 %r1 1
	lw	%r26 %r2 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
be_else.9294 :
	addi	%r0 %r1 1
	retl
shadow_check_one_or_matrix.2878 :
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
	bne	%r9 %r25 be_else.9295 
	addi	%r0 %r1 0
	retl
be_else.9295 :
	sw	%r26 %r8 0
	sw	%r26 %r5 4
	sw	%r26 %r2 8
	sw	%r26 %r24 12
	sw	%r26 %r1 16
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9296 
	addi	%r0 %r1 1
	j	be_cont.9297 
be_else.9296 :
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
	bne	%r1 %r25 be_else.9298 
	addi	%r0 %r1 0
	j	be_cont.9299 
be_else.9298 :
	lw	%r26 %r1 20
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.6690 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2542 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9300 
	addi	%r0 %r1 0
	j	be_cont.9301 
be_else.9300 :
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
	bne	%r1 %r25 be_else.9302 
	addi	%r0 %r1 0
	j	be_cont.9303 
be_else.9302 :
	addi	%r0 %r1 1
be_cont.9303 :
be_cont.9301 :
be_cont.9299 :
be_cont.9297 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9304 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9304 :
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
	bne	%r1 %r25 be_else.9305 
	lw	%r26 %r1 16
	addi	%r1 %r1 1
	lw	%r26 %r2 8
	lw	%r26 %r24 12
	lw	%r24 %r23 0
	jr	%r23
be_else.9305 :
	addi	%r0 %r1 1
	retl
solve_each_element.2881 :
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
	bne	%r13 %r25 be_else.9306 
	retl
be_else.9306 :
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
	bne	%r1 %r25 be_else.9308 
	lw	%r26 %r1 48
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 44
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_isinvert.2655 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9309 
	retl
be_else.9309 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
be_else.9308 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6239 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 52
	sw.s	%r26 %f1 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2542 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9311 
	j	be_cont.9312 
be_else.9311 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fless.2542 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9313 
	j	be_cont.9314 
be_else.9313 :
	addi	%r0 %r1 l.6676 
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
	bne	%r1 %r25 be_else.9315 
	j	be_cont.9316 
be_else.9315 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 88
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 80
	lw.s	%r26 %f1 72
	lw.s	%r26 %f2 64
	lw	%r26 %r1 8
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	vecset.2603 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r1 4
	lw	%r26 %r2 48
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 52
	sw	%r1 %r2 0
be_cont.9316 :
be_cont.9314 :
be_cont.9312 :
	lw	%r26 %r1 40
	addi	%r1 %r1 1
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r24 36
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network.2885 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9317 
	retl
be_else.9317 :
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
trace_or_matrix.2889 :
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
	bne	%r10 %r25 be_else.9319 
	retl
be_else.9319 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r10 %r25 be_else.9321 
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
	j	be_cont.9322 
be_else.9321 :
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
	bne	%r1 %r25 be_else.9323 
	j	be_cont.9324 
be_else.9323 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2542 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9325 
	j	be_cont.9326 
be_else.9325 :
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
be_cont.9326 :
be_cont.9324 :
be_cont.9322 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection.2893 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.6713 
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
	addi	%r0 %r1 l.6690 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2542 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9328 
	addi	%r0 %r1 0
	retl
be_else.9328 :
	addi	%r0 %r1 l.6719 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2542 
solve_each_element_fast.2895 :
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
	jal	d_vec.2710 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r25 -1
	bne	%r3 %r25 be_else.9329 
	retl
be_else.9329 :
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
	bne	%r1 %r25 be_else.9331 
	lw	%r26 %r1 56
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 32
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_isinvert.2655 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9332 
	retl
be_else.9332 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
be_else.9331 :
	lw	%r26 %r2 24
	lw.s	%r2 %f1 0
	addi	%r0 %r2 l.6239 
	ilw.s	%r2 %f0 0
	sw	%r26 %r1 60
	sw.s	%r26 %f1 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2542 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9334 
	j	be_cont.9335 
be_else.9334 :
	lw	%r26 %r1 20
	lw.s	%r1 %f1 0
	lw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fless.2542 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9336 
	j	be_cont.9337 
be_else.9336 :
	addi	%r0 %r1 l.6676 
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
	bne	%r1 %r25 be_else.9338 
	j	be_cont.9339 
be_else.9338 :
	lw	%r26 %r1 20
	lw.s	%r26 %f0 96
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 88
	lw.s	%r26 %f1 80
	lw.s	%r26 %f2 72
	lw	%r26 %r1 8
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	vecset.2603 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw	%r26 %r1 4
	lw	%r26 %r2 56
	sw	%r1 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r2 60
	sw	%r1 %r2 0
be_cont.9339 :
be_cont.9337 :
be_cont.9335 :
	lw	%r26 %r1 48
	addi	%r1 %r1 1
	lw	%r26 %r2 44
	lw	%r26 %r3 36
	lw	%r26 %r24 28
	lw	%r24 %r23 0
	jr	%r23
solve_one_or_network_fast.2899 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 2
	sll	%r1 %r6 %r25
	add	%r2 %r6 %r25
	lw	%r25 %r6 0
	addi	%r0 %r25 -1
	bne	%r6 %r25 be_else.9340 
	retl
be_else.9340 :
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
trace_or_matrix_fast.2903 :
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
	bne	%r9 %r25 be_else.9342 
	retl
be_else.9342 :
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r24 8
	sw	%r26 %r1 12
addi	%r0 %r25 99
	bne	%r9 %r25 be_else.9344 
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
	j	be_cont.9345 
be_else.9344 :
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
	bne	%r1 %r25 be_else.9346 
	j	be_cont.9347 
be_else.9346 :
	lw	%r26 %r1 28
	lw.s	%r1 %f0 0
	lw	%r26 %r1 24
	lw.s	%r1 %f1 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fless.2542 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9348 
	j	be_cont.9349 
be_else.9348 :
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
be_cont.9349 :
be_cont.9347 :
be_cont.9345 :
	lw	%r26 %r1 12
	addi	%r1 %r1 1
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
judge_intersection_fast.2907 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r5 l.6713 
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
	addi	%r0 %r1 l.6690 
	ilw.s	%r1 %f0 0
	sw.s	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2542 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9351 
	addi	%r0 %r1 0
	retl
be_else.9351 :
	addi	%r0 %r1 l.6719 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f0 8
	j	fless.2542 
get_nvector_rect.2909 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw	%r3 %r3 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	vecbzero.2611 
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
	jal	sgn.2595 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fneg.2540 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r0 %r25 2
	sll	%r1 %r1 %r25
	lw	%r26 %r2 0
	add %r2 %r1 %r25
	sw.s	%r25 %f0 0
	retl
get_nvector_plane.2911 :
	lw	%r24 %r2 4
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_a.2659 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2540 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_b.2661 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2540 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 0
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_param_c.2663 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fneg.2540 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
get_nvector_second.2913 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	sw.s	%r26 %f0 16
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2667 
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
	jal	o_param_y.2669 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 56
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	o_param_a.2659 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2661 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_param_c.2663 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 80
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_isrot.2657 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9355 
	lw	%r26 %r1 0
	lw.s	%r26 %f0 64
	sw.s	%r1 %f0 0
	lw.s	%r26 %f0 72
	sw.s	%r1 %f0 4
	lw.s	%r26 %f0 80
	sw.s	%r1 %f0 8
	j	be_cont.9356 
be_else.9355 :
	lw	%r26 %r1 4
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_r3.2687 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_r2.2685 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f2 88
	add.s	%f0 %f2 %f0
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	fhalf.2549 
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
	jal	o_param_r3.2687 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 96
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	o_param_r1.2683 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fhalf.2549 
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
	jal	o_param_r2.2685 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 24
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	sw.s	%r26 %f0 104
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_param_r1.2683 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 40
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 104
	add.s	%f0 %f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fhalf.2549 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 80
	add.s	%f0 %f1 %f0
	lw	%r26 %r1 0
	sw.s	%r1 %f0 8
be_cont.9356 :
	lw	%r26 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	o_isinvert.2655 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r2
	lw	%r26 %r1 0
	j	vecunit_sgn.2621 
get_nvector.2915 :
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
	jal	o_form.2651 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9357 
	lw	%r26 %r1 12
	lw	%r26 %r24 16
	lw	%r24 %r23 0
	jr	%r23
be_else.9357 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9358 
	lw	%r26 %r1 4
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9358 :
	lw	%r26 %r1 4
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
utexture.2918 :
	lw	%r24 %r3 4
	sw	%r26 %r2 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	o_texturetype.2649 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r2 8
	sw	%r26 %r1 12
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_red.2677 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 0
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_green.2679 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	lw	%r26 %r2 8
	mov	%r2 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_color_blue.2681 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	lw	%r26 %r2 12
	addi	%r0 %r25 1
	bne	%r2 %r25 be_else.9359 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 16
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	o_param_x.2667 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f1 16
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6810 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.6812 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6793 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fless.2542 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6810 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	floor.w.s	%f1 %f1
	addi	%r0 %r1 l.6812 
	ilw.s	%r1 %f2 0
	mul.s	%f2 %f1 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6793 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fless.2542 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 24
addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9361 
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9363 
	addi	%r0 %r1 l.6786 
	ilw.s	%r1 %f0 0
	j	be_cont.9364 
be_else.9363 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
be_cont.9364 :
	j	be_cont.9362 
be_else.9361 :
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9365 
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	j	be_cont.9366 
be_else.9365 :
	addi	%r0 %r1 l.6786 
	ilw.s	%r1 %f0 0
be_cont.9366 :
be_cont.9362 :
	lw	%r26 %r1 4
	sw.s	%r1 %f0 4
	retl
be_else.9359 :
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9368 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 4
	addi	%r0 %r2 l.6802 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	sin.2554 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2545 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6786 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 0
	addi	%r0 %r2 l.6786 
	ilw.s	%r2 %f1 0
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f2 0
	sub.s	%f0 %f2 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	retl
be_else.9368 :
	addi	%r0 %r25 3
	bne	%r2 %r25 be_else.9370 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 40
	mov	%r3 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	o_param_x.2667 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw.s	%r26 %f1 56
	sub.s	%f0 %f1 %f0
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 64
	mov.s	%f1 %f0
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fsqr.2545 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	sw.s	%r26 %f0 72
	mov.s	%f1 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2545 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6793 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6774 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	cos.2556 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fsqr.2545 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	addi	%r0 %r1 l.6786 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	lw	%r26 %r1 4
	sw.s	%r1 %f1 4
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r2 l.6786 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	retl
be_else.9370 :
	addi	%r0 %r25 4
	bne	%r2 %r25 be_else.9372 
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r26 %r3 8
	sw.s	%r26 %f0 80
	mov	%r3 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_x.2667 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 80
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 88
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	o_param_a.2659 
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
	jal	o_param_z.2671 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 104
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 112
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	o_param_c.2663 
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
	jal	fsqr.2545 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 120
	sw.s	%r26 %f0 128
	mov.s	%f1 %f0
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2545 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	lw.s	%r26 %f1 128
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 96
	sw.s	%r26 %f0 136
	mov.s	%f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2547 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.6768 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fless.2542 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9373 
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 120
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	fabs.2547 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	atan.2558 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	addi	%r0 %r1 l.6772 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6774 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9374 
be_else.9373 :
	addi	%r0 %r1 l.6770 
	ilw.s	%r1 %f0 0
be_cont.9374 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	lw	%r26 %r1 0
	lw.s	%r1 %f1 4
	lw	%r26 %r1 8
	sw.s	%r26 %f0 144
	sw.s	%r26 %f1 152
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_param_y.2669 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw.s	%r26 %f1 152
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 8
	sw.s	%r26 %f0 160
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	o_param_b.2661 
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
	jal	fabs.2547 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.6768 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fless.2542 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9375 
	lw.s	%r26 %f0 136
	lw.s	%r26 %f1 168
	div.s	%f0 %f1 %f0
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	fabs.2547 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	atan.2558 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	addi	%r0 %r1 l.6772 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6774 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	j	be_cont.9376 
be_else.9375 :
	addi	%r0 %r1 l.6770 
	ilw.s	%r1 %f0 0
be_cont.9376 :
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.6781 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.6287 
	ilw.s	%r1 %f2 0
	lw.s	%r26 %f3 144
	sub.s	%f3 %f2 %f2
	sw.s	%r26 %f0 176
	sw.s	%r26 %f1 184
	mov.s	%f2 %f0
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fsqr.2545 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	lw.s	%r26 %f1 184
	sub.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6287 
	ilw.s	%r1 %f1 0
	lw.s	%r26 %f2 176
	sub.s	%f2 %f1 %f1
	sw.s	%r26 %f0 192
	mov.s	%f1 %f0
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	fsqr.2545 
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	lw.s	%r26 %f1 192
	sub.s	%f0 %f1 %f0
	sw.s	%r26 %f0 200
	sw	%r26 %r28 212
	addi	%r26 %r26 216
	jal	fisneg.2538 
	addi	%r26 %r26 -216
	lw	%r26 %r28 212
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9377 
	lw.s	%r26 %f0 200
	j	be_cont.9378 
be_else.9377 :
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
be_cont.9378 :
	addi	%r0 %r1 l.6786 
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6788 
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	lw	%r26 %r1 4
	sw.s	%r1 %f0 8
	retl
be_else.9372 :
	retl
add_light.2921 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	sw.s	%r26 %f2 0
	sw.s	%r26 %f1 8
	sw.s	%r26 %f0 16
	sw	%r26 %r1 24
	sw	%r26 %r2 28
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2536 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9381 
	j	be_cont.9382 
be_else.9381 :
	lw.s	%r26 %f0 16
	lw	%r26 %r1 28
	lw	%r26 %r2 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecaccum.2632 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9382 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fispos.2536 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9383 
	retl
be_else.9383 :
	lw.s	%r26 %f0 8
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2545 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2545 
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
trace_reflections.2925 :
	lw	%r24 %r3 32
	lw	%r24 %r4 28
	lw	%r24 %r5 24
	lw	%r24 %r6 20
	lw	%r24 %r7 16
	lw	%r24 %r8 12
	lw	%r24 %r9 8
	lw	%r24 %r10 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9386 
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
	jal	r_dvec.2716 
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
	bne	%r1 %r25 be_else.9387 
	j	be_cont.9388 
be_else.9387 :
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
	jal	r_surface_id.2714 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 64
	bne	%r2 %r1 be_else.9389 
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
	bne	%r1 %r25 be_else.9391 
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	d_vec.2710 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r2
	lw	%r26 %r1 32
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veciprod.2624 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 44
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	r_bright.2718 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	veciprod.2624 
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
	j	be_cont.9392 
be_else.9391 :
be_cont.9392 :
	j	be_cont.9390 
be_else.9389 :
be_cont.9390 :
be_cont.9388 :
	lw	%r26 %r1 4
	addi	%r1 %r1 -1
	lw.s	%r26 %f0 24
	lw.s	%r26 %f1 8
	lw	%r26 %r2 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9386 :
	retl
trace_ray.2930 :
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
	bg	%r1 %r25 ble_else.9395 
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
	jal	p_surface_ids.2695 
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
	bne	%r1 %r25 be_else.9398 
	addi	%r0 %r1 -1
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 120
	add %r4 %r3 %r25
	sw	%r25 %r1 0
	addi	%r0 %r25 0
	bne	%r2 %r25 be_else.9399 
	retl
be_else.9399 :
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	veciprod.2624 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw	%r26 %r28 124
	addi	%r26 %r26 128
	jal	fneg.2540 
	addi	%r26 %r26 -128
	lw	%r26 %r28 124
	sw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fispos.2536 
	addi	%r26 %r26 -144
	lw	%r26 %r28 140
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9402 
	retl
be_else.9402 :
	lw.s	%r26 %f0 128
	sw	%r26 %r28 140
	addi	%r26 %r26 144
	jal	fsqr.2545 
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
be_else.9398 :
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
	jal	o_reflectiontype.2653 
	addi	%r26 %r26 -152
	lw	%r26 %r28 148
	lw	%r26 %r2 140
	sw	%r26 %r1 144
	mov	%r2 %r1
	sw	%r26 %r28 148
	addi	%r26 %r26 152
	jal	o_diffuse.2673 
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
	jal	veccpy.2613 
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
	jal	p_intersection_points.2693 
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
	jal	veccpy.2613 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 52
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	p_calc_diffuse.2697 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r2 140
	sw	%r26 %r1 160
	mov	%r2 %r1
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	o_diffuse.2673 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	addi	%r0 %r1 l.6287 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 164
	addi	%r26 %r26 168
	jal	fless.2542 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9406 
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
	jal	p_energy.2699 
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
	jal	veccpy.2613 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 108
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 164
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r3 l.6248 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6845 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6847 
	ilw.s	%r3 %f0 0
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	mov	%r2 %r1
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	vecscale.2642 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	lw	%r26 %r1 52
	sw	%r26 %r28 172
	addi	%r26 %r26 176
	jal	p_nvectors.2708 
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
	jal	veccpy.2613 
	addi	%r26 %r26 -176
	lw	%r26 %r28 172
	j	be_cont.9407 
be_else.9406 :
	addi	%r0 %r1 0
	lw	%r26 %r2 108
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 160
	add %r4 %r3 %r25
	sw	%r25 %r1 0
be_cont.9407 :
	addi	%r0 %r1 l.6850 
	ilw.s	%r1 %f0 0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw.s	%r26 %f0 168
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	veciprod.2624 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw.s	%r26 %f1 168
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 44
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	vecaccum.2632 
	addi	%r26 %r26 -184
	lw	%r26 %r28 180
	lw	%r26 %r1 140
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	o_hilight.2675 
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
	bne	%r1 %r25 be_else.9408 
	lw	%r26 %r1 44
	lw	%r26 %r2 104
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	veciprod.2624 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	fneg.2540 
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	lw.s	%r26 %f1 152
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 112
	lw	%r26 %r2 104
	sw.s	%r26 %f0 184
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	veciprod.2624 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fneg.2540 
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
	j	be_cont.9409 
be_else.9408 :
be_cont.9409 :
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
	addi	%r0 %r1 l.6854 
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f1 96
	sw	%r26 %r28 196
	addi	%r26 %r26 200
	jal	fless.2542 
	addi	%r26 %r26 -200
	lw	%r26 %r28 196
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9410 
	retl
be_else.9410 :
	lw	%r26 %r1 108
addi	%r0 %r25 4
	bl	%r1 r25 bge_else.9412 
	j	bge_cont.9413 
bge_else.9412 :
	addi	%r1 %r2 1
	addi	%r0 %r3 -1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r4 120
	add %r4 %r2 %r25
	sw	%r25 %r3 0
bge_cont.9413 :
	lw	%r26 %r2 144
	addi	%r0 %r25 2
	bne	%r2 %r25 be_else.9414 
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 140
	sw.s	%r26 %f0 192
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	o_diffuse.2673 
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
be_else.9414 :
	retl
ble_else.9395 :
	retl
trace_diffuse_ray.2936 :
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
	bne	%r1 %r25 be_else.9417 
	retl
be_else.9417 :
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
	jal	d_vec.2710 
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
	bne	%r1 %r25 be_else.9419 
	lw	%r26 %r1 20
	lw	%r26 %r2 16
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veciprod.2624 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2540 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	sw.s	%r26 %f0 64
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fispos.2536 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9421 
	addi	%r0 %r1 l.6239 
	ilw.s	%r1 %f0 0
	j	be_cont.9422 
be_else.9421 :
	lw.s	%r26 %f0 64
be_cont.9422 :
	lw.s	%r26 %f1 8
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 56
	sw.s	%r26 %f0 72
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	o_diffuse.2673 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 72
	mul.s	%f0 %f1 %f0
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	j	vecaccum.2632 
be_else.9419 :
	retl
iter_trace_diffuse_rays.2939 :
	lw	%r24 %r5 4
	addi	%r0 %r25 0
	bl	%r4 %r25 bge_else.9424 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.2624 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	sw.s	%r26 %f0 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fisneg.2538 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9425 
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.6876 
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
	j	be_cont.9426 
be_else.9425 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	lw	%r26 %r3 12
	add	%r3 %r2 %r25
	lw	%r25 %r2 0
	addi	%r0 %r4 l.6873 
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
be_cont.9426 :
	lw	%r26 %r1 16
	addi	%r1 %r4 -2
	lw	%r26 %r1 12
	lw	%r26 %r2 20
	lw	%r26 %r3 0
	lw	%r26 %r24 4
	lw	%r24 %r23 0
	jr	%r23
bge_else.9424 :
	retl
trace_diffuse_rays.2944 :
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
trace_diffuse_ray_80percent.2948 :
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	sw	%r26 %r3 0
	sw	%r26 %r2 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r1 16
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9428 
	j	be_cont.9429 
be_else.9428 :
	lw	%r5 %r6 0
	mov	%r6 %r1
	mov	%r4 %r24
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9429 :
	lw	%r26 %r1 16
addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9430 
	j	be_cont.9431 
be_else.9430 :
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
be_cont.9431 :
	lw	%r26 %r1 16
addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9432 
	j	be_cont.9433 
be_else.9432 :
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
be_cont.9433 :
	lw	%r26 %r1 16
addi	%r0 %r25 3
	bne	%r1 %r25 be_else.9434 
	j	be_cont.9435 
be_else.9434 :
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
be_cont.9435 :
	lw	%r26 %r1 16
	addi	%r0 %r25 4
	bne	%r1 %r25 be_else.9436 
	retl
be_else.9436 :
	lw	%r26 %r1 12
	lw	%r1 %r1 16
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
calc_diffuse_using_1point.2952 :
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
	jal	p_received_ray_20percent.2701 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 16
	sw	%r26 %r1 20
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2708 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_intersection_points.2693 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_energy.2699 
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
	jal	veccpy.2613 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 16
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_group_id.2703 
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
	j	vecaccumv.2645 
calc_diffuse_using_5points.2955 :
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
	jal	p_received_ray_20percent.2701 
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
	jal	p_received_ray_20percent.2701 
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
	jal	p_received_ray_20percent.2701 
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
	jal	p_received_ray_20percent.2701 
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
	jal	p_received_ray_20percent.2701 
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
	jal	veccpy.2613 
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
	jal	vecadd.2636 
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
	jal	vecadd.2636 
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
	jal	vecadd.2636 
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
	jal	vecadd.2636 
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
	jal	p_energy.2699 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r2 0
	lw	%r26 %r1 0
	lw	%r26 %r3 4
	j	vecaccumv.2645 
do_without_neighbors.2961 :
	lw	%r24 %r3 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9438 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r1 8
	sw	%r26 %r2 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_surface_ids.2695 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9439 
	lw	%r26 %r1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	p_calc_diffuse.2697 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 12
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9440 
	j	be_cont.9441 
be_else.9440 :
	lw	%r26 %r1 8
	lw	%r26 %r24 4
	sw	%r26 %r28 20
	lw	%r24 %r23 0
	addi	%r26 %r26 24	
	jalr	%r23
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
be_cont.9441 :
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r1 8
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9439 :
	retl
ble_else.9438 :
	retl
neighbors_exist.2964 :
	lw	%r24 %r3 4
	lw	%r3 %r4 4
	addi	%r2 %r5 1
	bg	%r4 %r5 ble_else.9444 
	addi	%r0 %r1 0
	retl
ble_else.9444 :
	addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.9445 
	addi	%r0 %r1 0
	retl
ble_else.9445 :
	lw	%r3 %r2 0
	addi	%r1 %r3 1
	bg	%r2 %r3 ble_else.9446 
	addi	%r0 %r1 0
	retl
ble_else.9446 :
	addi	%r0 %r25 0
	bg	%r1 %r25 ble_else.9447 
	addi	%r0 %r1 0
	retl
ble_else.9447 :
	addi	%r0 %r1 1
	retl
get_surface_id.2968 :
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	p_surface_ids.2695 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	addi	%r0 %r25 2
	sll	%r2 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
	retl
neighbors_are_available.2971 :
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
	jal	get_surface_id.2968 
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
	jal	get_surface_id.2968 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9448 
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
	jal	get_surface_id.2968 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9449 
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
	jal	get_surface_id.2968 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9450 
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
	jal	get_surface_id.2968 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	bne	%r1 %r2 be_else.9451 
	addi	%r0 %r1 1
	retl
be_else.9451 :
	addi	%r0 %r1 0
	retl
be_else.9450 :
	addi	%r0 %r1 0
	retl
be_else.9449 :
	addi	%r0 %r1 0
	retl
be_else.9448 :
	addi	%r0 %r1 0
	retl
try_exploit_neighbors.2977 :
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	addi	%r0 %r25 2
	sll	%r1 %r9 %r25
	add	%r4 %r9 %r25
	lw	%r25 %r9 0
	addi	%r0 %r25 4
	bg	%r6 %r25 ble_else.9452 
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
	jal	get_surface_id.2968 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9453 
	lw	%r26 %r1 36
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r5 20
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	neighbors_are_available.2971 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9454 
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
be_else.9454 :
	lw	%r26 %r1 12
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	p_calc_diffuse.2697 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r5 20
	addi	%r0 %r25 2
	sll	%r5 %r2 %r25
	add	%r1 %r2 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9455 
	j	be_cont.9456 
be_else.9455 :
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
be_cont.9456 :
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
bge_else.9453 :
	retl
ble_else.9452 :
	retl
write_ppm_header.2984 :
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
	jal	print_int.2560 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2560 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 255
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.2560 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
write_rgb_element.2986 :
	mfc1	%r1 %f0
addi	%r0 %r25 255
	bg	%r1 %r25 ble_else.9459 
addi	%r0 %r25 0
	bl	%r1 r25 bge_else.9461 
	j	bge_cont.9462 
bge_else.9461 :
	addi	%r0 %r1 0
bge_cont.9462 :
	j	ble_cont.9460 
ble_else.9459 :
	addi	%r0 %r1 255
ble_cont.9460 :
	j	print_int.2560 
write_rgb.2988 :
	lw	%r24 %r1 4
	lw.s	%r1 %f0 0
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2986 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 4
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2986 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw.s	%r1 %f0 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	write_rgb_element.2986 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
pretrace_diffuse_rays.2990 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r25 4
	bg	%r2 %r25 ble_else.9463 
	sw	%r26 %r24 0
	sw	%r26 %r3 4
	sw	%r26 %r4 8
	sw	%r26 %r5 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	get_surface_id.2968 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9464 
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_calc_diffuse.2697 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 16
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	add	%r1 %r3 %r25
	lw	%r25 %r1 0
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9465 
	j	be_cont.9466 
be_else.9465 :
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_group_id.2703 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 12
	sw	%r26 %r1 24
	mov	%r2 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecbzero.2611 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 20
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	p_nvectors.2708 
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	sw	%r26 %r1 28
	mov	%r2 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	p_intersection_points.2693 
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
	jal	p_received_ray_20percent.2701 
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
	jal	veccpy.2613 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
be_cont.9466 :
	lw	%r26 %r1 16
	addi	%r1 %r2 1
	lw	%r26 %r1 20
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9464 :
	retl
ble_else.9463 :
	retl
pretrace_pixels.2993 :
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
	bl	%r2 %r25 bge_else.9469 
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
	jal	vecunit_sgn.2621 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	vecbzero.2611 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r1 56
	lw	%r26 %r2 52
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2613 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	addi	%r0 %r1 0
	addi	%r0 %r2 l.6248 
	ilw.s	%r2 %f0 0
	lw	%r26 %r2 48
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 44
	add	%r4 %r3 %r25
	lw	%r25 %r3 0
	addi	%r0 %r5 l.6239 
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
	jal	p_rgb.2691 
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	lw	%r26 %r2 60
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	veccpy.2613 
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
	jal	p_set_group_id.2705 
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
	jal	add_mod5.2600 
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
bge_else.9469 :
	retl
pretrace_line.3000 :
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
scan_pixel.3004 :
	lw	%r24 %r6 24
	lw	%r24 %r7 20
	lw	%r24 %r8 16
	lw	%r24 %r9 12
	lw	%r24 %r10 8
	lw	%r24 %r11 4
	lw	%r10 %r10 0
	bg	%r10 %r1 ble_else.9471 
	retl
ble_else.9471 :
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
	jal	p_rgb.2691 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 40
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veccpy.2613 
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
	bne	%r1 %r25 be_else.9473 
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
	j	be_cont.9474 
be_else.9473 :
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
be_cont.9474 :
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
scan_line.3010 :
	lw	%r24 %r6 12
	lw	%r24 %r7 8
	lw	%r24 %r8 4
	lw	%r8 %r9 4
	bg	%r9 %r1 ble_else.9475 
	retl
ble_else.9475 :
	lw	%r8 %r8 4
	addi	%r8 %r8 -1
	sw	%r26 %r24 0
	sw	%r26 %r5 4
	sw	%r26 %r4 8
	sw	%r26 %r3 12
	sw	%r26 %r2 16
	sw	%r26 %r1 20
	sw	%r26 %r6 24
	bg	%r8 %r1 ble_else.9477 
	j	ble_cont.9478 
ble_else.9477 :
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
ble_cont.9478 :
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
	jal	add_mod5.2600 
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
create_float5x3array.3016 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6239 
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
	addi	%r0 %r3 l.6239 
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
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.6239 
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
create_pixel.3018 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.6239 
	ilw.s	%r2 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	create_float5x3array.3016 
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
	jal	create_float5x3array.3016 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	sw	%r26 %r1 16
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	create_float5x3array.3016 
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
	jal	create_float5x3array.3016 
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
init_line_elements.3020 :
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9479 
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3018 
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
	j	init_line_elements.3020 
bge_else.9479 :
	retl
create_pixelline.3023 :
	lw	%r24 %r1 4
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_pixel.3018 
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
	j	init_line_elements.3020 
tan.3025 :
	sw.s	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	sin.2554 
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f1 0
	sw.s	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	cos.2556 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	div.s	%f0 %f1 %f0
	retl
adjust_position.3027 :
	mul.s	%f0 %f0 %f0
	addi	%r0 %r1 l.6854 
	ilw.s	%r1 %f2 0
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f2 0
	div.s	%f0 %f2 %f2
	sw.s	%r26 %f0 0
	sw.s	%r26 %f1 8
	mov.s	%f2 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	atan.2558 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	tan.3025 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw.s	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	retl
calc_dirvec.3030 :
	lw	%r24 %r4 4
	addi	%r0 %r25 5
	bl	%r1 %r25 bge_else.9480 
	sw	%r26 %r3 0
	sw	%r26 %r4 4
	sw	%r26 %r2 8
	sw.s	%r26 %f0 16
	sw.s	%r26 %f1 24
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.2545 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sw.s	%r26 %f0 32
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	fsqr.2545 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f1 32
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	sqrt.s	%f0 %f0
	lw.s	%r26 %f1 16
	div.s	%f0 %f1 %f1
	lw.s	%r26 %f2 24
	div.s	%f0 %f2 %f2
	addi	%r0 %r1 l.6248 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 56
	lw.s	%r26 %f2 48
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2603 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 56
	sw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	fneg.2540 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov.s	%f0 %f2
	lw.s	%r26 %f0 64
	lw.s	%r26 %f1 48
	lw	%r26 %r1 72
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	vecset.2603 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f0 64
	sw	%r26 %r1 76
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	fneg.2540 
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 80
	mov.s	%f1 %f0
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2540 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	mov.s	%f0 %f2
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 80
	lw	%r26 %r1 76
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	vecset.2603 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f0 64
	sw	%r26 %r1 88
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	fneg.2540 
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw.s	%r26 %f1 56
	sw.s	%r26 %f0 96
	mov.s	%f1 %f0
	sw	%r26 %r28 108
	addi	%r26 %r26 112
	jal	fneg.2540 
	addi	%r26 %r26 -112
	lw	%r26 %r28 108
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 104
	mov.s	%f1 %f0
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2540 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov.s	%f0 %f2
	lw.s	%r26 %f0 96
	lw.s	%r26 %f1 104
	lw	%r26 %r1 88
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	vecset.2603 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f0 64
	sw	%r26 %r1 112
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	fneg.2540 
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	lw.s	%r26 %f1 48
	sw.s	%r26 %f0 120
	mov.s	%f1 %f0
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2540 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	mov.s	%f0 %f1
	lw.s	%r26 %f0 120
	lw.s	%r26 %f2 56
	lw	%r26 %r1 112
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	vecset.2603 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f0 48
	sw	%r26 %r1 128
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	fneg.2540 
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	lw.s	%r26 %f1 64
	lw.s	%r26 %f2 56
	lw	%r26 %r1 128
	j	vecset.2603 
bge_else.9480 :
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
	jal	adjust_position.3027 
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r1 160
	addi	%r1 %r1 1
	lw.s	%r26 %f1 152
	sw.s	%r26 %f0 168
	sw	%r26 %r1 176
	sw	%r26 %r28 180
	addi	%r26 %r26 184
	jal	adjust_position.3027 
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
calc_dirvecs.3038 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9488 
	mtc1	%r1 %f1
	addi	%r0 %r5 l.6983 
	ilw.s	%r5 %f2 0
	mul.s	%f2 %f1 %f1
	addi	%r0 %r5 l.6985 
	ilw.s	%r5 %f2 0
	sub.s	%f2 %f1 %f2
	addi	%r0 %r5 0
	addi	%r0 %r6 l.6239 
	ilw.s	%r6 %f1 0
	addi	%r0 %r6 l.6239 
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
	addi	%r0 %r2 l.6983 
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r2 l.6854 
	ilw.s	%r2 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r2 0
	addi	%r0 %r3 l.6239 
	ilw.s	%r3 %f0 0
	addi	%r0 %r3 l.6239 
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
	jal	add_mod5.2600 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw.s	%r26 %f0 8
	lw	%r26 %r1 32
	lw	%r26 %r3 24
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9488 :
	retl
calc_dirvec_rows.3043 :
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9491 
	mtc1	%r1 %f0
	addi	%r0 %r5 l.6983 
	ilw.s	%r5 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r5 l.6985 
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
	jal	add_mod5.2600 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 4
	addi	%r1 %r3 4
	lw	%r26 %r1 16
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
bge_else.9491 :
	retl
create_dirvec.3047 :
	lw	%r24 %r1 4
	addi	%r0 %r2 3
	addi	%r0 %r3 l.6239 
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
create_dirvec_elements.3049 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9493 
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
bge_else.9493 :
	retl
create_dirvecs.3052 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9495 
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
bge_else.9495 :
	retl
init_dirvec_constants.3054 :
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r2 %r25 bge_else.9497 
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
bge_else.9497 :
	retl
init_vecset_constants.3057 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9499 
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
bge_else.9499 :
	retl
init_dirvecs.3059 :
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
add_reflection.3061 :
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
	jal	d_vec.2710 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f0 48
	lw.s	%r26 %f1 40
	lw.s	%r26 %f2 32
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	vecset.2603 
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
setup_rect_reflection.3068 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6248 
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
	jal	o_diffuse.2673 
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
	jal	fneg.2540 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r1 16
	lw.s	%r1 %f1 4
	sw.s	%r26 %f0 40
	mov.s	%f1 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fneg.2540 
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r1 16
	lw.s	%r1 %f1 8
	sw.s	%r26 %f0 48
	mov.s	%f1 %f0
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	fneg.2540 
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
setup_surface_reflection.3071 :
	lw	%r24 %r3 12
	lw	%r24 %r4 8
	lw	%r24 %r5 4
	addi	%r0 %r6 4
	mul	%r1 %r6 %r1
	addi	%r1 %r1 1
	lw	%r3 %r6 0
	addi	%r0 %r7 l.6248 
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
	jal	o_diffuse.2673 
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw.s	%r26 %f1 24
	sub.s	%f0 %f1 %f0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 32
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	o_param_abc.2665 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov	%r1 %r2
	lw	%r26 %r1 16
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.2624 
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	addi	%r0 %r1 l.6246 
	ilw.s	%r1 %f1 0
	lw	%r26 %r1 20
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 48
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	o_param_a.2659 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw.s	%r26 %f1 48
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 0
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6246 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 56
	sw.s	%r26 %f2 64
	mov	%r2 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	o_param_b.2661 
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw.s	%r26 %f1 64
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %r1 16
	lw.s	%r1 %f2 4
	sub.s	%f2 %f0 %f0
	addi	%r0 %r2 l.6246 
	ilw.s	%r2 %f2 0
	lw	%r26 %r2 20
	sw.s	%r26 %f0 72
	sw.s	%r26 %f2 80
	mov	%r2 %r1
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	o_param_c.2663 
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
setup_reflections.3074 :
	lw	%r24 %r2 12
	lw	%r24 %r3 8
	lw	%r24 %r4 4
	addi	%r0 %r25 0
	bl	%r1 %r25 bge_else.9507 
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
	jal	o_reflectiontype.2653 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9508 
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_diffuse.2673 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r1 l.6248 
	ilw.s	%r1 %f1 0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fless.2542 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.9509 
	retl
be_else.9509 :
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	o_form.2651 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	addi	%r0 %r25 1
	bne	%r1 %r25 be_else.9511 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
be_else.9511 :
	addi	%r0 %r25 2
	bne	%r1 %r25 be_else.9512 
	lw	%r26 %r1 4
	lw	%r26 %r2 12
	lw	%r26 %r24 0
	lw	%r24 %r23 0
	jr	%r23
be_else.9512 :
	retl
be_else.9508 :
	retl
bge_else.9507 :
	retl
rt.3076 :
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
	addi	%r0 %r2 l.7034 
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
	jal	d_vec.2710 
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	lw	%r26 %r2 20
	sw	%r26 %r28 60
	addi	%r26 %r26 64
	jal	veccpy.2613 
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
	
