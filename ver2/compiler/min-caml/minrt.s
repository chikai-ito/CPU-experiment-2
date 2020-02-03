#data_section
l.347 :	# 3.141593
	.float	0x40490fdb
l.337 :	# 0.900000
	.float	0x3f666666
l.332 :	# 128.000000
	.float	0x43000000
l.289 :	# 150.000000
	.float	0x43160000
l.287 :	# -150.000000
	.float	0xc3160000
l.277 :	# 0.100000
	.float	0x3dcccccd
l.275 :	# -2.000000
	.float	0xc0000000
l.273 :	# 0.003906
	.float	0x3b800000
l.267 :	# 100000000.000000
	.float	0x4cbebc20
l.264 :	# 1000000000.000000
	.float	0x4e6e6b28
l.252 :	# 20.000000
	.float	0x41a00000
l.250 :	# 0.050000
	.float	0x3d4ccccd
l.245 :	# 0.250000
	.float	0x3e800000
l.239 :	# 10.000000
	.float	0x41200000
l.237 :	# 0.300000
	.float	0x3e99999a
l.235 :	# 255.000000
	.float	0x437f0000
l.229 :	# 0.150000
	.float	0x3e19999a
l.221 :	# 3.141593
	.float	0x40490fdb
l.219 :	# 30.000000
	.float	0x41f00000
l.216 :	# 15.000000
	.float	0x41700000
l.214 :	# 0.000100
	.float	0x38d1b717
l.198 :	# -0.100000
	.float	0xbdcccccd
l.196 :	# 0.010000
	.float	0x3c23d70a
l.194 :	# -0.200000
	.float	0xbe4ccccd
l.104 :	# 2.000000
	.float	0x40000000
l.98 :	# -200.000000
	.float	0xc3480000
l.96 :	# 200.000000
	.float	0x43480000
l.93 :	# 0.017453
	.float	0x3c8efa35
l.70 :	# -1.570796
	.float	0xbfc90fdb
l.66 :	# 2.437500
	.float	0x401c0000
l.64 :	# 0.437500
	.float	0x3ee00000
l.61 :	# 0.333333
	.float	0x3eaaaaaa
l.59 :	# 0.200000
	.float	0x3e4ccccd
l.57 :	# 0.142857
	.float	0x3e124925
l.55 :	# 0.111111
	.float	0x3de38e38
l.53 :	# 0.089764
	.float	0x3db7d66e
l.51 :	# 0.060035
	.float	0x3d75e7c5
l.36 :	# -1.000000
	.float	0xbf800000
l.32 :	# 0.000000
	.float	0x0
l.30 :	# 6.283185
	.float	0x40c90fdb
l.21 :	# 0.500000
	.float	0x3f000000
l.19 :	# 0.041664
	.float	0x3d2aa789
l.17 :	# 0.001370
	.float	0x3ab38106
l.15 :	# 1.570796
	.float	0x3fc90fdb
l.13 :	# 0.785398
	.float	0x3f490fdb
l.11 :	# 1.000000
	.float	0x3f800000
l.9 :	# 0.166667
	.float	0x3e2aaaac
l.7 :	# 0.008333
	.float	0x3c088666
l.5 :	# 0.000196
	.float	0x394d64b6
#text_section
program_start :
tail_b.674 :
	addi	%r0 %r1 l.347
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 0
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 4
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 sin.0
	sw	%r26 %r30 12
	lw	%r26 %r30 12
	lw	%r26 %r31 4
	sw	%r31 %r30 0
	lw.s	%r26 %f30 0
	lw	%r26 %r30 4
	sw.s	%r30 %f30 4
	lw	%r26 %r27 8
	mov	%r27 %r9
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 cos.0
	sw	%r26 %r30 16
	lw	%r26 %r30 16
	sw	%r9 %r30 0
	lw.s	%r26 %f30 0
	sw.s	%r9 %f30 4
	addi	%r0 %r30 1
	sw	%r26 %r30 20
	addi	%r0 %r2 0
	sw	%r26 %r9 28
	lw	%r26 %r1 20
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_array
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	sw	%r26 %r1 24
	lw	%r26 %r9 28
	addi	%r0 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 28
	sw	%r26 %r9 36
	sw	%r26 %r1 32
	mov	%r2 %r1
	lw.s	%r26 %f0 28
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r9 36
	lw	%r26 %r1 32
	addi	%r0 %r30 60
	sw	%r26 %r30 32
	addi	%r0 %r5 0
	addi	%r0 %r30 0
	sw	%r26 %r30 36
	addi	%r0 %r3 0
	addi	%r0 %r2 0
	addi	%r0 %r4 0
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 40
	lw	%r26 %r27 8
	addi	%r27 %r27 44
	sw	%r26 %r27 8
	lw	%r26 %r30 40
	sw	%r30 %r1 40
	lw	%r26 %r30 40
	sw	%r30 %r1 36
	lw	%r26 %r30 40
	sw	%r30 %r1 32
	lw	%r26 %r30 40
	sw	%r30 %r1 28
	lw	%r26 %r30 40
	sw	%r30 %r4 24
	lw	%r26 %r30 40
	sw	%r30 %r1 20
	lw	%r26 %r30 40
	sw	%r30 %r1 16
	lw	%r26 %r30 40
	sw	%r30 %r2 12
	lw	%r26 %r30 40
	sw	%r30 %r3 8
	lw	%r26 %r30 36
	lw	%r26 %r31 40
	sw	%r31 %r30 4
	lw	%r26 %r30 40
	sw	%r30 %r5 0
	lw	%r26 %r30 40
	sw	%r26 %r30 44
	sw	%r26 %r9 52
	sw	%r26 %r10 48
	lw	%r26 %r2 44
	lw	%r26 %r1 32
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_array
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r10
	lw	%r26 %r9 52
	lw	%r26 %r10 48
	addi	%r0 %r30 3
	sw	%r26 %r30 48
	addi	%r0 %r30 l.32
	sw	%r26 %r30 52
	lw	%r26 %r30 52
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 56
	sw	%r26 %r9 68
	sw	%r26 %r10 64
	lw	%r26 %r1 48
	lw.s	%r26 %f0 56
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	min_caml_create_float_array
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	sw	%r26 %r1 60
	lw	%r26 %r9 68
	lw	%r26 %r10 64
	addi	%r0 %r30 3
	sw	%r26 %r30 64
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r9 76
	sw	%r26 %r10 72
	lw	%r26 %r1 64
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	min_caml_create_float_array
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	sw	%r26 %r1 68
	lw	%r26 %r9 76
	lw	%r26 %r10 72
	addi	%r0 %r30 3
	sw	%r26 %r30 72
	addi	%r0 %r30 l.32
	sw	%r26 %r30 76
	lw	%r26 %r30 76
	ilw.s	%r30 %f0 0
	sw	%r26 %r9 88
	sw	%r26 %r10 84
	lw	%r26 %r1 72
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	sw	%r26 %r1 80
	lw	%r26 %r9 88
	lw	%r26 %r10 84
	addi	%r0 %r30 1
	sw	%r26 %r30 84
	addi	%r0 %r30 l.235
	sw	%r26 %r30 88
	lw	%r26 %r30 88
	ilw.s	%r30 %f0 0
	sw	%r26 %r9 100
	sw	%r26 %r12 96
	sw	%r26 %r10 92
	lw	%r26 %r1 84
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	min_caml_create_float_array
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r12
	lw	%r26 %r9 100
	lw	%r26 %r12 96
	lw	%r26 %r10 92
	addi	%r0 %r1 50
	addi	%r0 %r30 1
	sw	%r26 %r30 92
	addi	%r0 %r2 -1
	sw	%r26 %r9 112
	sw	%r26 %r1 108
	sw	%r26 %r12 104
	sw	%r26 %r10 100
	lw	%r26 %r1 92
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	sw	%r26 %r1 96
	lw	%r26 %r9 112
	lw	%r26 %r1 108
	lw	%r26 %r12 104
	lw	%r26 %r10 100
	sw	%r26 %r9 112
	sw	%r26 %r11 108
	sw	%r26 %r12 104
	sw	%r26 %r10 100
	lw	%r26 %r2 96
	sw	%r26 %r28 116
	addi	%r26 %r26 120
	jal	min_caml_create_array
	addi	%r26 %r26 -120
	lw	%r26 %r28 116
	mov	%r1 %r11
	lw	%r26 %r9 112
	lw	%r26 %r11 108
	lw	%r26 %r12 104
	lw	%r26 %r10 100
	addi	%r0 %r30 1
	sw	%r26 %r30 100
	addi	%r0 %r30 1
	sw	%r26 %r30 104
	lw	%r11 %r2 0
	sw	%r26 %r9 124
	sw	%r26 %r11 120
	sw	%r26 %r12 116
	sw	%r26 %r10 112
	lw	%r26 %r1 104
	sw	%r26 %r28 128
	addi	%r26 %r26 132
	jal	min_caml_create_array
	addi	%r26 %r26 -132
	lw	%r26 %r28 128
	sw	%r26 %r1 108
	lw	%r26 %r9 124
	lw	%r26 %r11 120
	lw	%r26 %r12 116
	lw	%r26 %r10 112
	sw	%r26 %r9 128
	sw	%r26 %r11 124
	sw	%r26 %r12 120
	sw	%r26 %r10 116
	lw	%r26 %r2 108
	lw	%r26 %r1 100
	sw	%r26 %r28 132
	addi	%r26 %r26 136
	jal	min_caml_create_array
	addi	%r26 %r26 -136
	lw	%r26 %r28 132
	sw	%r26 %r1 112
	lw	%r26 %r9 128
	lw	%r26 %r11 124
	lw	%r26 %r12 120
	lw	%r26 %r10 116
	addi	%r0 %r30 1
	sw	%r26 %r30 116
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 120
	sw	%r26 %r9 140
	sw	%r26 %r11 136
	sw	%r26 %r12 132
	sw	%r26 %r10 128
	lw	%r26 %r1 116
	lw.s	%r26 %f0 120
	sw	%r26 %r28 144
	addi	%r26 %r26 148
	jal	min_caml_create_float_array
	addi	%r26 %r26 -148
	lw	%r26 %r28 144
	sw	%r26 %r1 124
	lw	%r26 %r9 140
	lw	%r26 %r11 136
	lw	%r26 %r12 132
	lw	%r26 %r10 128
	addi	%r0 %r30 1
	sw	%r26 %r30 128
	addi	%r0 %r2 0
	sw	%r26 %r9 148
	sw	%r26 %r11 144
	sw	%r26 %r12 140
	sw	%r26 %r10 136
	lw	%r26 %r1 128
	sw	%r26 %r28 152
	addi	%r26 %r26 156
	jal	min_caml_create_array
	addi	%r26 %r26 -156
	lw	%r26 %r28 152
	sw	%r26 %r1 132
	lw	%r26 %r9 148
	lw	%r26 %r11 144
	lw	%r26 %r12 140
	lw	%r26 %r10 136
	addi	%r0 %r1 1
	addi	%r0 %r30 l.264
	sw	%r26 %r30 136
	lw	%r26 %r30 136
	ilw.s	%r30 %f0 0
	sw	%r26 %r7 156
	sw	%r26 %r9 152
	sw	%r26 %r11 148
	sw	%r26 %r12 144
	sw	%r26 %r10 140
	sw	%r26 %r28 160
	addi	%r26 %r26 164
	jal	min_caml_create_float_array
	addi	%r26 %r26 -164
	lw	%r26 %r28 160
	mov	%r1 %r7
	lw	%r26 %r7 156
	lw	%r26 %r9 152
	lw	%r26 %r11 148
	lw	%r26 %r12 144
	lw	%r26 %r10 140
	addi	%r0 %r30 3
	sw	%r26 %r30 140
	addi	%r0 %r30 l.32
	sw	%r26 %r30 144
	lw	%r26 %r30 144
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 148
	sw	%r26 %r7 172
	sw	%r26 %r9 168
	sw	%r26 %r11 164
	sw	%r26 %r12 160
	sw	%r26 %r10 156
	lw	%r26 %r1 140
	lw.s	%r26 %f0 148
	sw	%r26 %r28 176
	addi	%r26 %r26 180
	jal	min_caml_create_float_array
	addi	%r26 %r26 -180
	lw	%r26 %r28 176
	sw	%r26 %r1 152
	lw	%r26 %r7 172
	lw	%r26 %r9 168
	lw	%r26 %r11 164
	lw	%r26 %r12 160
	lw	%r26 %r10 156
	addi	%r0 %r1 1
	addi	%r0 %r30 0
	sw	%r26 %r30 156
	sw	%r26 %r7 180
	sw	%r26 %r9 176
	sw	%r26 %r11 172
	sw	%r26 %r12 168
	sw	%r26 %r10 164
	lw	%r26 %r2 156
	sw	%r26 %r28 184
	addi	%r26 %r26 188
	jal	min_caml_create_array
	addi	%r26 %r26 -188
	lw	%r26 %r28 184
	sw	%r26 %r1 160
	lw	%r26 %r7 180
	lw	%r26 %r9 176
	lw	%r26 %r11 172
	lw	%r26 %r12 168
	lw	%r26 %r10 164
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r14 184
	sw	%r26 %r7 180
	sw	%r26 %r9 176
	sw	%r26 %r11 172
	sw	%r26 %r12 168
	sw	%r26 %r10 164
	sw	%r26 %r28 188
	addi	%r26 %r26 192
	jal	min_caml_create_float_array
	addi	%r26 %r26 -192
	lw	%r26 %r28 188
	mov	%r1 %r14
	lw	%r26 %r14 184
	lw	%r26 %r7 180
	lw	%r26 %r9 176
	lw	%r26 %r11 172
	lw	%r26 %r12 168
	lw	%r26 %r10 164
	addi	%r0 %r30 3
	sw	%r26 %r30 164
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 168
	sw	%r26 %r15 196
	sw	%r26 %r14 192
	sw	%r26 %r7 188
	sw	%r26 %r9 184
	sw	%r26 %r11 180
	sw	%r26 %r12 176
	sw	%r26 %r10 172
	lw	%r26 %r1 164
	lw.s	%r26 %f0 168
	sw	%r26 %r28 200
	addi	%r26 %r26 204
	jal	min_caml_create_float_array
	addi	%r26 %r26 -204
	lw	%r26 %r28 200
	mov	%r1 %r15
	lw	%r26 %r15 196
	lw	%r26 %r14 192
	lw	%r26 %r7 188
	lw	%r26 %r9 184
	lw	%r26 %r11 180
	lw	%r26 %r12 176
	lw	%r26 %r10 172
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r15 200
	sw	%r26 %r14 196
	sw	%r26 %r7 192
	sw	%r26 %r9 188
	sw	%r26 %r11 184
	sw	%r26 %r12 180
	sw	%r26 %r10 176
	mov	%r2 %r1
	sw	%r26 %r28 204
	addi	%r26 %r26 208
	jal	min_caml_create_float_array
	addi	%r26 %r26 -208
	lw	%r26 %r28 204
	sw	%r26 %r1 172
	lw	%r26 %r15 200
	lw	%r26 %r14 196
	lw	%r26 %r7 192
	lw	%r26 %r9 188
	lw	%r26 %r11 184
	lw	%r26 %r12 180
	lw	%r26 %r10 176
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r6 204
	sw	%r26 %r15 200
	sw	%r26 %r14 196
	sw	%r26 %r7 192
	sw	%r26 %r9 188
	sw	%r26 %r11 184
	sw	%r26 %r12 180
	sw	%r26 %r10 176
	sw	%r26 %r28 208
	addi	%r26 %r26 212
	jal	min_caml_create_float_array
	addi	%r26 %r26 -212
	lw	%r26 %r28 208
	mov	%r1 %r6
	lw	%r26 %r6 204
	lw	%r26 %r15 200
	lw	%r26 %r14 196
	lw	%r26 %r7 192
	lw	%r26 %r9 188
	lw	%r26 %r11 184
	lw	%r26 %r12 180
	lw	%r26 %r10 176
	addi	%r0 %r1 2
	addi	%r0 %r30 0
	sw	%r26 %r30 176
	sw	%r26 %r8 212
	sw	%r26 %r6 208
	sw	%r26 %r15 204
	sw	%r26 %r14 200
	sw	%r26 %r7 196
	sw	%r26 %r9 192
	sw	%r26 %r11 188
	sw	%r26 %r12 184
	sw	%r26 %r10 180
	lw	%r26 %r2 176
	sw	%r26 %r28 216
	addi	%r26 %r26 220
	jal	min_caml_create_array
	addi	%r26 %r26 -220
	lw	%r26 %r28 216
	mov	%r1 %r8
	lw	%r26 %r8 212
	lw	%r26 %r6 208
	lw	%r26 %r15 204
	lw	%r26 %r14 200
	lw	%r26 %r7 196
	lw	%r26 %r9 192
	lw	%r26 %r11 188
	lw	%r26 %r12 184
	lw	%r26 %r10 180
	addi	%r0 %r1 2
	addi	%r0 %r2 0
	sw	%r26 %r8 216
	sw	%r26 %r6 212
	sw	%r26 %r15 208
	sw	%r26 %r14 204
	sw	%r26 %r7 200
	sw	%r26 %r9 196
	sw	%r26 %r11 192
	sw	%r26 %r12 188
	sw	%r26 %r10 184
	sw	%r26 %r28 220
	addi	%r26 %r26 224
	jal	min_caml_create_array
	addi	%r26 %r26 -224
	lw	%r26 %r28 220
	sw	%r26 %r1 180
	lw	%r26 %r8 216
	lw	%r26 %r6 212
	lw	%r26 %r15 208
	lw	%r26 %r14 204
	lw	%r26 %r7 200
	lw	%r26 %r9 196
	lw	%r26 %r11 192
	lw	%r26 %r12 188
	lw	%r26 %r10 184
	addi	%r0 %r30 1
	sw	%r26 %r30 184
	addi	%r0 %r30 l.32
	sw	%r26 %r30 188
	lw	%r26 %r30 188
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 192
	sw	%r26 %r8 232
	sw	%r26 %r6 228
	sw	%r26 %r15 224
	sw	%r26 %r14 220
	sw	%r26 %r7 216
	sw	%r26 %r9 212
	sw	%r26 %r11 208
	sw	%r26 %r12 204
	sw	%r26 %r10 200
	lw	%r26 %r1 184
	lw.s	%r26 %f0 192
	sw	%r26 %r28 236
	addi	%r26 %r26 240
	jal	min_caml_create_float_array
	addi	%r26 %r26 -240
	lw	%r26 %r28 236
	sw	%r26 %r1 196
	lw	%r26 %r8 232
	lw	%r26 %r6 228
	lw	%r26 %r15 224
	lw	%r26 %r14 220
	lw	%r26 %r7 216
	lw	%r26 %r9 212
	lw	%r26 %r11 208
	lw	%r26 %r12 204
	lw	%r26 %r10 200
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 200
	sw	%r26 %r8 240
	sw	%r26 %r6 236
	sw	%r26 %r15 232
	sw	%r26 %r14 228
	sw	%r26 %r7 224
	sw	%r26 %r9 220
	sw	%r26 %r11 216
	sw	%r26 %r12 212
	sw	%r26 %r10 208
	mov	%r2 %r1
	lw.s	%r26 %f0 200
	sw	%r26 %r28 244
	addi	%r26 %r26 248
	jal	min_caml_create_float_array
	addi	%r26 %r26 -248
	lw	%r26 %r28 244
	sw	%r26 %r1 204
	lw	%r26 %r8 240
	lw	%r26 %r6 236
	lw	%r26 %r15 232
	lw	%r26 %r14 228
	lw	%r26 %r7 224
	lw	%r26 %r9 220
	lw	%r26 %r11 216
	lw	%r26 %r12 212
	lw	%r26 %r10 208
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r8 244
	sw	%r26 %r6 240
	sw	%r26 %r15 236
	sw	%r26 %r14 232
	sw	%r26 %r7 228
	sw	%r26 %r9 224
	sw	%r26 %r11 220
	sw	%r26 %r12 216
	sw	%r26 %r10 212
	sw	%r26 %r3 208
	sw	%r26 %r28 248
	addi	%r26 %r26 252
	jal	min_caml_create_float_array
	addi	%r26 %r26 -252
	lw	%r26 %r28 248
	mov	%r1 %r3
	lw	%r26 %r8 244
	lw	%r26 %r6 240
	lw	%r26 %r15 236
	lw	%r26 %r14 232
	lw	%r26 %r7 228
	lw	%r26 %r9 224
	lw	%r26 %r11 220
	lw	%r26 %r12 216
	lw	%r26 %r10 212
	lw	%r26 %r3 208
	addi	%r0 %r1 3
	addi	%r0 %r30 l.32
	sw	%r26 %r30 208
	lw	%r26 %r30 208
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 212
	sw	%r26 %r8 256
	sw	%r26 %r6 252
	sw	%r26 %r15 248
	sw	%r26 %r14 244
	sw	%r26 %r7 240
	sw	%r26 %r9 236
	sw	%r26 %r11 232
	sw	%r26 %r12 228
	sw	%r26 %r10 224
	sw	%r26 %r16 220
	sw	%r26 %r3 216
	lw.s	%r26 %f0 212
	sw	%r26 %r28 260
	addi	%r26 %r26 264
	jal	min_caml_create_float_array
	addi	%r26 %r26 -264
	lw	%r26 %r28 260
	mov	%r1 %r16
	lw	%r26 %r8 256
	lw	%r26 %r6 252
	lw	%r26 %r15 248
	lw	%r26 %r14 244
	lw	%r26 %r7 240
	lw	%r26 %r9 236
	lw	%r26 %r11 232
	lw	%r26 %r12 228
	lw	%r26 %r10 224
	lw	%r26 %r16 220
	lw	%r26 %r3 216
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r8 260
	sw	%r26 %r6 256
	sw	%r26 %r15 252
	sw	%r26 %r14 248
	sw	%r26 %r7 244
	sw	%r26 %r9 240
	sw	%r26 %r11 236
	sw	%r26 %r12 232
	sw	%r26 %r10 228
	sw	%r26 %r16 224
	sw	%r26 %r3 220
	mov	%r2 %r1
	sw	%r26 %r28 264
	addi	%r26 %r26 268
	jal	min_caml_create_float_array
	addi	%r26 %r26 -268
	lw	%r26 %r28 264
	sw	%r26 %r1 216
	lw	%r26 %r8 260
	lw	%r26 %r6 256
	lw	%r26 %r15 252
	lw	%r26 %r14 248
	lw	%r26 %r7 244
	lw	%r26 %r9 240
	lw	%r26 %r11 236
	lw	%r26 %r12 232
	lw	%r26 %r10 228
	lw	%r26 %r16 224
	lw	%r26 %r3 220
	addi	%r0 %r30 3
	sw	%r26 %r30 220
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 224
	sw	%r26 %r8 272
	sw	%r26 %r6 268
	sw	%r26 %r15 264
	sw	%r26 %r14 260
	sw	%r26 %r7 256
	sw	%r26 %r9 252
	sw	%r26 %r11 248
	sw	%r26 %r12 244
	sw	%r26 %r10 240
	sw	%r26 %r18 236
	sw	%r26 %r16 232
	sw	%r26 %r3 228
	lw	%r26 %r1 220
	lw.s	%r26 %f0 224
	sw	%r26 %r28 276
	addi	%r26 %r26 280
	jal	min_caml_create_float_array
	addi	%r26 %r26 -280
	lw	%r26 %r28 276
	mov	%r1 %r18
	lw	%r26 %r8 272
	lw	%r26 %r6 268
	lw	%r26 %r15 264
	lw	%r26 %r14 260
	lw	%r26 %r7 256
	lw	%r26 %r9 252
	lw	%r26 %r11 248
	lw	%r26 %r12 244
	lw	%r26 %r10 240
	lw	%r26 %r18 236
	lw	%r26 %r16 232
	lw	%r26 %r3 228
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r8 276
	sw	%r26 %r6 272
	sw	%r26 %r15 268
	sw	%r26 %r14 264
	sw	%r26 %r7 260
	sw	%r26 %r9 256
	sw	%r26 %r11 252
	sw	%r26 %r12 248
	sw	%r26 %r10 244
	sw	%r26 %r17 240
	sw	%r26 %r18 236
	sw	%r26 %r16 232
	sw	%r26 %r3 228
	mov	%r2 %r1
	sw	%r26 %r28 280
	addi	%r26 %r26 284
	jal	min_caml_create_float_array
	addi	%r26 %r26 -284
	lw	%r26 %r28 280
	mov	%r1 %r17
	lw	%r26 %r8 276
	lw	%r26 %r6 272
	lw	%r26 %r15 268
	lw	%r26 %r14 264
	lw	%r26 %r7 260
	lw	%r26 %r9 256
	lw	%r26 %r11 252
	lw	%r26 %r12 248
	lw	%r26 %r10 244
	lw	%r26 %r17 240
	lw	%r26 %r18 236
	lw	%r26 %r16 232
	lw	%r26 %r3 228
	addi	%r0 %r30 0
	sw	%r26 %r30 228
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r8 284
	sw	%r26 %r6 280
	sw	%r26 %r15 276
	sw	%r26 %r14 272
	sw	%r26 %r7 268
	sw	%r26 %r9 264
	sw	%r26 %r11 260
	sw	%r26 %r12 256
	sw	%r26 %r10 252
	sw	%r26 %r17 248
	sw	%r26 %r18 244
	sw	%r26 %r16 240
	sw	%r26 %r3 236
	lw	%r26 %r1 228
	sw	%r26 %r28 288
	addi	%r26 %r26 292
	jal	min_caml_create_float_array
	addi	%r26 %r26 -292
	lw	%r26 %r28 288
	sw	%r26 %r1 232
	lw	%r26 %r8 284
	lw	%r26 %r6 280
	lw	%r26 %r15 276
	lw	%r26 %r14 272
	lw	%r26 %r7 268
	lw	%r26 %r9 264
	lw	%r26 %r11 260
	lw	%r26 %r12 256
	lw	%r26 %r10 252
	lw	%r26 %r17 248
	lw	%r26 %r18 244
	lw	%r26 %r16 240
	lw	%r26 %r3 236
	addi	%r0 %r1 0
	sw	%r26 %r8 288
	sw	%r26 %r6 284
	sw	%r26 %r15 280
	sw	%r26 %r14 276
	sw	%r26 %r7 272
	sw	%r26 %r9 268
	sw	%r26 %r11 264
	sw	%r26 %r12 260
	sw	%r26 %r10 256
	sw	%r26 %r2 252
	sw	%r26 %r17 248
	sw	%r26 %r18 244
	sw	%r26 %r16 240
	sw	%r26 %r3 236
	lw	%r26 %r2 232
	sw	%r26 %r28 292
	addi	%r26 %r26 296
	jal	min_caml_create_array
	addi	%r26 %r26 -296
	lw	%r26 %r28 292
	mov	%r1 %r2
	lw	%r26 %r8 288
	lw	%r26 %r6 284
	lw	%r26 %r15 280
	lw	%r26 %r14 276
	lw	%r26 %r7 272
	lw	%r26 %r9 268
	lw	%r26 %r11 264
	lw	%r26 %r12 260
	lw	%r26 %r10 256
	lw	%r26 %r2 252
	lw	%r26 %r17 248
	lw	%r26 %r18 244
	lw	%r26 %r16 240
	lw	%r26 %r3 236
	addi	%r0 %r30 0
	sw	%r26 %r30 236
	lw	%r26 %r27 8
	mov	%r27 %r1
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	sw	%r1 %r2 4
	lw	%r26 %r30 232
	sw	%r1 %r30 0
	mov	%r1 %r2
	sw	%r26 %r8 292
	sw	%r26 %r6 288
	sw	%r26 %r15 284
	sw	%r26 %r14 280
	sw	%r26 %r7 276
	sw	%r26 %r9 272
	sw	%r26 %r11 268
	sw	%r26 %r12 264
	sw	%r26 %r10 260
	sw	%r26 %r17 256
	sw	%r26 %r18 252
	sw	%r26 %r16 248
	sw	%r26 %r3 244
	lw	%r26 %r1 236
	sw	%r26 %r28 296
	addi	%r26 %r26 300
	jal	min_caml_create_array
	addi	%r26 %r26 -300
	lw	%r26 %r28 296
	sw	%r26 %r1 240
	lw	%r26 %r8 292
	lw	%r26 %r6 288
	lw	%r26 %r15 284
	lw	%r26 %r14 280
	lw	%r26 %r7 276
	lw	%r26 %r9 272
	lw	%r26 %r11 268
	lw	%r26 %r12 264
	lw	%r26 %r10 260
	lw	%r26 %r17 256
	lw	%r26 %r18 252
	lw	%r26 %r16 248
	lw	%r26 %r3 244
	addi	%r0 %r30 5
	sw	%r26 %r30 244
	sw	%r26 %r8 300
	sw	%r26 %r6 296
	sw	%r26 %r15 292
	sw	%r26 %r14 288
	sw	%r26 %r7 284
	sw	%r26 %r9 280
	sw	%r26 %r11 276
	sw	%r26 %r12 272
	sw	%r26 %r10 268
	sw	%r26 %r17 264
	sw	%r26 %r18 260
	sw	%r26 %r16 256
	sw	%r26 %r3 252
	lw	%r26 %r2 240
	lw	%r26 %r1 244
	sw	%r26 %r28 304
	addi	%r26 %r26 308
	jal	min_caml_create_array
	addi	%r26 %r26 -308
	lw	%r26 %r28 304
	sw	%r26 %r1 248
	lw	%r26 %r8 300
	lw	%r26 %r6 296
	lw	%r26 %r15 292
	lw	%r26 %r14 288
	lw	%r26 %r7 284
	lw	%r26 %r9 280
	lw	%r26 %r11 276
	lw	%r26 %r12 272
	lw	%r26 %r10 268
	lw	%r26 %r17 264
	lw	%r26 %r18 260
	lw	%r26 %r16 256
	lw	%r26 %r3 252
	addi	%r0 %r1 0
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f30 0
	sw.s	%r26 %f30 252
	sw	%r26 %r8 308
	sw	%r26 %r6 304
	sw	%r26 %r15 300
	sw	%r26 %r14 296
	sw	%r26 %r7 292
	sw	%r26 %r9 288
	sw	%r26 %r11 284
	sw	%r26 %r12 280
	sw	%r26 %r10 276
	sw	%r26 %r17 272
	sw	%r26 %r18 268
	sw	%r26 %r16 264
	sw	%r26 %r3 260
	lw.s	%r26 %f0 252
	sw	%r26 %r28 312
	addi	%r26 %r26 316
	jal	min_caml_create_float_array
	addi	%r26 %r26 -316
	lw	%r26 %r28 312
	sw	%r26 %r1 256
	lw	%r26 %r8 308
	lw	%r26 %r6 304
	lw	%r26 %r15 300
	lw	%r26 %r14 296
	lw	%r26 %r7 292
	lw	%r26 %r9 288
	lw	%r26 %r11 284
	lw	%r26 %r12 280
	lw	%r26 %r10 276
	lw	%r26 %r17 272
	lw	%r26 %r18 268
	lw	%r26 %r16 264
	lw	%r26 %r3 260
	addi	%r0 %r30 3
	sw	%r26 %r30 260
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r8 316
	sw	%r26 %r6 312
	sw	%r26 %r15 308
	sw	%r26 %r14 304
	sw	%r26 %r7 300
	sw	%r26 %r9 296
	sw	%r26 %r11 292
	sw	%r26 %r12 288
	sw	%r26 %r10 284
	sw	%r26 %r13 280
	sw	%r26 %r17 276
	sw	%r26 %r18 272
	sw	%r26 %r16 268
	sw	%r26 %r3 264
	lw	%r26 %r1 260
	sw	%r26 %r28 320
	addi	%r26 %r26 324
	jal	min_caml_create_float_array
	addi	%r26 %r26 -324
	lw	%r26 %r28 320
	mov	%r1 %r13
	lw	%r26 %r8 316
	lw	%r26 %r6 312
	lw	%r26 %r15 308
	lw	%r26 %r14 304
	lw	%r26 %r7 300
	lw	%r26 %r9 296
	lw	%r26 %r11 292
	lw	%r26 %r12 288
	lw	%r26 %r10 284
	lw	%r26 %r13 280
	lw	%r26 %r17 276
	lw	%r26 %r18 272
	lw	%r26 %r16 268
	lw	%r26 %r3 264
	addi	%r0 %r30 60
	sw	%r26 %r30 264
	sw	%r26 %r8 324
	sw	%r26 %r6 320
	sw	%r26 %r15 316
	sw	%r26 %r14 312
	sw	%r26 %r7 308
	sw	%r26 %r9 304
	sw	%r26 %r11 300
	sw	%r26 %r12 296
	sw	%r26 %r10 292
	sw	%r26 %r1 288
	sw	%r26 %r13 284
	sw	%r26 %r17 280
	sw	%r26 %r18 276
	sw	%r26 %r16 272
	sw	%r26 %r3 268
	lw	%r26 %r2 256
	lw	%r26 %r1 264
	sw	%r26 %r28 328
	addi	%r26 %r26 332
	jal	min_caml_create_array
	addi	%r26 %r26 -332
	lw	%r26 %r28 328
	lw	%r26 %r8 324
	lw	%r26 %r6 320
	lw	%r26 %r15 316
	lw	%r26 %r14 312
	lw	%r26 %r7 308
	lw	%r26 %r9 304
	lw	%r26 %r11 300
	lw	%r26 %r12 296
	lw	%r26 %r10 292
	lw	%r26 %r1 288
	lw	%r26 %r13 284
	lw	%r26 %r17 280
	lw	%r26 %r18 276
	lw	%r26 %r16 272
	lw	%r26 %r3 268
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 268
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	lw	%r26 %r30 268
	sw	%r30 %r1 4
	lw	%r26 %r30 268
	sw	%r30 %r13 0
	lw	%r26 %r30 268
	mov	%r30 %r2
	addi	%r0 %r30 0
	sw	%r26 %r30 272
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r8 336
	sw	%r26 %r6 332
	sw	%r26 %r15 328
	sw	%r26 %r14 324
	sw	%r26 %r7 320
	sw	%r26 %r9 316
	sw	%r26 %r11 312
	sw	%r26 %r12 308
	sw	%r26 %r10 304
	sw	%r26 %r2 300
	sw	%r26 %r13 296
	sw	%r26 %r17 292
	sw	%r26 %r18 288
	sw	%r26 %r16 284
	sw	%r26 %r3 280
	lw	%r26 %r1 272
	sw	%r26 %r28 340
	addi	%r26 %r26 344
	jal	min_caml_create_float_array
	addi	%r26 %r26 -344
	lw	%r26 %r28 340
	sw	%r26 %r1 276
	lw	%r26 %r8 336
	lw	%r26 %r6 332
	lw	%r26 %r15 328
	lw	%r26 %r14 324
	lw	%r26 %r7 320
	lw	%r26 %r9 316
	lw	%r26 %r11 312
	lw	%r26 %r12 308
	lw	%r26 %r10 304
	lw	%r26 %r2 300
	lw	%r26 %r13 296
	lw	%r26 %r17 292
	lw	%r26 %r18 288
	lw	%r26 %r16 284
	lw	%r26 %r3 280
	addi	%r0 %r1 0
	sw	%r26 %r8 340
	sw	%r26 %r6 336
	sw	%r26 %r15 332
	sw	%r26 %r14 328
	sw	%r26 %r7 324
	sw	%r26 %r9 320
	sw	%r26 %r11 316
	sw	%r26 %r12 312
	sw	%r26 %r10 308
	sw	%r26 %r1 304
	sw	%r26 %r2 300
	sw	%r26 %r13 296
	sw	%r26 %r17 292
	sw	%r26 %r18 288
	sw	%r26 %r16 284
	sw	%r26 %r3 280
	lw	%r26 %r2 276
	sw	%r26 %r28 344
	addi	%r26 %r26 348
	jal	min_caml_create_array
	addi	%r26 %r26 -348
	lw	%r26 %r28 344
	lw	%r26 %r8 340
	lw	%r26 %r6 336
	lw	%r26 %r15 332
	lw	%r26 %r14 328
	lw	%r26 %r7 324
	lw	%r26 %r9 320
	lw	%r26 %r11 316
	lw	%r26 %r12 312
	lw	%r26 %r10 308
	lw	%r26 %r1 304
	lw	%r26 %r2 300
	lw	%r26 %r13 296
	lw	%r26 %r17 292
	lw	%r26 %r18 288
	lw	%r26 %r16 284
	lw	%r26 %r3 280
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 280
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	lw	%r26 %r30 280
	sw	%r30 %r1 4
	lw	%r26 %r30 276
	lw	%r26 %r31 280
	sw	%r31 %r30 0
	lw	%r26 %r30 280
	sw	%r26 %r30 284
	addi	%r0 %r30 180
	sw	%r26 %r30 288
	addi	%r0 %r1 0
	addi	%r0 %r30 l.32
	sw	%r26 %r30 292
	lw	%r26 %r30 292
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 296
	lw	%r26 %r27 8
	mov	%r27 %r4
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	lw.s	%r26 %f30 296
	sw.s	%r4 %f30 8
	lw	%r26 %r30 284
	sw	%r4 %r30 4
	sw	%r4 %r1 0
	mov	%r4 %r30
	sw	%r26 %r30 300
	sw	%r26 %r8 364
	sw	%r26 %r6 360
	sw	%r26 %r15 356
	sw	%r26 %r14 352
	sw	%r26 %r7 348
	sw	%r26 %r9 344
	sw	%r26 %r11 340
	sw	%r26 %r12 336
	sw	%r26 %r10 332
	sw	%r26 %r4 328
	sw	%r26 %r2 324
	sw	%r26 %r13 320
	sw	%r26 %r17 316
	sw	%r26 %r18 312
	sw	%r26 %r16 308
	sw	%r26 %r3 304
	lw	%r26 %r2 300
	lw	%r26 %r1 288
	sw	%r26 %r28 368
	addi	%r26 %r26 372
	jal	min_caml_create_array
	addi	%r26 %r26 -372
	lw	%r26 %r28 368
	mov	%r1 %r4
	lw	%r26 %r8 364
	lw	%r26 %r6 360
	lw	%r26 %r15 356
	lw	%r26 %r14 352
	lw	%r26 %r7 348
	lw	%r26 %r9 344
	lw	%r26 %r11 340
	lw	%r26 %r12 336
	lw	%r26 %r10 332
	lw	%r26 %r4 328
	lw	%r26 %r2 324
	lw	%r26 %r13 320
	lw	%r26 %r17 316
	lw	%r26 %r18 312
	lw	%r26 %r16 308
	lw	%r26 %r3 304
	addi	%r0 %r5 1
	addi	%r0 %r1 0
	sw	%r26 %r8 368
	sw	%r26 %r6 364
	sw	%r26 %r15 360
	sw	%r26 %r14 356
	sw	%r26 %r7 352
	sw	%r26 %r9 348
	sw	%r26 %r11 344
	sw	%r26 %r12 340
	sw	%r26 %r10 336
	sw	%r26 %r5 332
	sw	%r26 %r4 328
	sw	%r26 %r2 324
	sw	%r26 %r13 320
	sw	%r26 %r17 316
	sw	%r26 %r18 312
	sw	%r26 %r16 308
	sw	%r26 %r3 304
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 372
	addi	%r26 %r26 376
	jal	min_caml_create_array
	addi	%r26 %r26 -376
	lw	%r26 %r28 372
	mov	%r1 %r5
	lw	%r26 %r8 368
	lw	%r26 %r6 364
	lw	%r26 %r15 360
	lw	%r26 %r14 356
	lw	%r26 %r7 352
	lw	%r26 %r9 348
	lw	%r26 %r11 344
	lw	%r26 %r12 340
	lw	%r26 %r10 336
	lw	%r26 %r5 332
	lw	%r26 %r4 328
	lw	%r26 %r2 324
	lw	%r26 %r13 320
	lw	%r26 %r17 316
	lw	%r26 %r18 312
	lw	%r26 %r16 308
	lw	%r26 %r3 304
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 304
	lw	%r26 %r27 8
	addi	%r27 %r27 32
	sw	%r26 %r27 8
	addi	%r0 %r30 read_screen_settings.0
	sw	%r26 %r30 308
	lw	%r26 %r30 308
	lw	%r26 %r31 304
	sw	%r31 %r30 0
	lw	%r26 %r30 68
	lw	%r26 %r31 304
	sw	%r31 %r30 28
	lw	%r26 %r30 4
	lw	%r26 %r31 304
	sw	%r31 %r30 24
	lw	%r26 %r30 304
	sw	%r30 %r18 20
	lw	%r26 %r30 216
	lw	%r26 %r31 304
	sw	%r31 %r30 16
	lw	%r26 %r30 304
	sw	%r30 %r16 12
	lw	%r26 %r30 60
	lw	%r26 %r31 304
	sw	%r31 %r30 8
	lw	%r26 %r30 304
	sw	%r30 %r9 4
	lw	%r26 %r27 8
	mov	%r27 %r19
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r30 read_light.0
	sw	%r26 %r30 312
	lw	%r26 %r30 312
	sw	%r19 %r30 0
	lw	%r26 %r30 4
	sw	%r19 %r30 16
	lw	%r26 %r30 80
	sw	%r19 %r30 12
	sw	%r19 %r9 8
	sw	%r19 %r12 4
	lw	%r26 %r27 8
	mov	%r27 %r21
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r30 rotate_quadratic_matrix.0
	sw	%r26 %r30 316
	lw	%r26 %r30 316
	sw	%r21 %r30 0
	lw	%r26 %r30 4
	sw	%r21 %r30 8
	sw	%r21 %r9 4
	lw	%r26 %r27 8
	mov	%r27 %r20
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r1 read_nth_object.0
	sw	%r20 %r1 0
	sw	%r20 %r21 8
	sw	%r20 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 320
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 solver_rect_surface.0
	sw	%r26 %r30 324
	lw	%r26 %r30 324
	lw	%r26 %r31 320
	sw	%r31 %r30 0
	lw	%r26 %r30 124
	lw	%r26 %r31 320
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 328
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 solver_rect.0
	lw	%r26 %r30 328
	sw	%r30 %r1 0
	lw	%r26 %r30 320
	lw	%r26 %r31 328
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 332
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 solver_second.0
	lw	%r26 %r30 332
	sw	%r30 %r1 0
	lw	%r26 %r30 124
	lw	%r26 %r31 332
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r22
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r1 solver.0
	sw	%r22 %r1 0
	lw	%r26 %r30 332
	sw	%r22 %r30 16
	lw	%r26 %r30 328
	sw	%r22 %r30 12
	lw	%r26 %r30 124
	sw	%r22 %r30 8
	sw	%r22 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 336
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 solver_rect_fast.0
	sw	%r26 %r30 340
	lw	%r26 %r30 340
	lw	%r26 %r31 336
	sw	%r31 %r30 0
	lw	%r26 %r30 124
	lw	%r26 %r31 336
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r23
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 solver_surface_fast.0
	sw	%r23 %r1 0
	lw	%r26 %r30 124
	sw	%r23 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r24
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 solver_second_fast.0
	sw	%r24 %r1 0
	lw	%r26 %r30 124
	sw	%r24 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r21
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r1 solver_fast.0
	sw	%r21 %r1 0
	sw	%r21 %r23 16
	sw	%r21 %r24 12
	lw	%r26 %r30 336
	sw	%r21 %r30 8
	sw	%r21 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r1
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 solver_second_fast2.0
	sw	%r26 %r30 344
	lw	%r26 %r30 344
	sw	%r1 %r30 0
	lw	%r26 %r30 124
	sw	%r1 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r23
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r30 solver_fast2.0
	sw	%r26 %r30 348
	lw	%r26 %r30 348
	sw	%r23 %r30 0
	sw	%r23 %r1 16
	lw	%r26 %r30 336
	sw	%r23 %r30 12
	lw	%r26 %r30 124
	sw	%r23 %r30 8
	sw	%r23 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r24
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 setup_startp_constants.0
	sw	%r24 %r1 0
	sw	%r24 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 352
	lw	%r26 %r27 8
	addi	%r27 %r27 16
	sw	%r26 %r27 8
	addi	%r0 %r1 setup_startp.0
	lw	%r26 %r30 352
	sw	%r30 %r1 0
	lw	%r26 %r30 352
	sw	%r30 %r3 12
	lw	%r26 %r30 352
	sw	%r30 %r24 8
	lw	%r26 %r30 24
	lw	%r26 %r31 352
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r29
	lw	%r26 %r27 8
	addi	%r27 %r27 28
	sw	%r26 %r27 8
	addi	%r0 %r1 shadow_check_and_group.0
	sw	%r29 %r1 0
	sw	%r29 %r21 24
	lw	%r26 %r30 124
	sw	%r29 %r30 20
	sw	%r29 %r10 16
	sw	%r29 %r2 12
	lw	%r26 %r30 80
	sw	%r29 %r30 8
	lw	%r26 %r30 152
	sw	%r29 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r25
	lw	%r26 %r27 8
	addi	%r27 %r27 28
	sw	%r26 %r27 8
	addi	%r0 %r1 shadow_check_one_or_matrix.0
	sw	%r25 %r1 0
	sw	%r25 %r21 24
	lw	%r26 %r30 124
	sw	%r25 %r30 20
	sw	%r25 %r29 16
	sw	%r25 %r2 12
	lw	%r26 %r30 152
	sw	%r25 %r30 8
	sw	%r25 %r11 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 356
	lw	%r26 %r27 8
	addi	%r27 %r27 36
	sw	%r26 %r27 8
	addi	%r0 %r30 solve_each_element.0
	sw	%r26 %r30 360
	lw	%r26 %r30 360
	lw	%r26 %r31 356
	sw	%r31 %r30 0
	lw	%r26 %r30 356
	sw	%r30 %r7 32
	lw	%r26 %r30 204
	lw	%r26 %r31 356
	sw	%r31 %r30 28
	lw	%r26 %r30 124
	lw	%r26 %r31 356
	sw	%r31 %r30 24
	lw	%r26 %r30 356
	sw	%r30 %r22 20
	lw	%r26 %r30 356
	sw	%r30 %r10 16
	lw	%r26 %r30 132
	lw	%r26 %r31 356
	sw	%r31 %r30 12
	lw	%r26 %r30 152
	lw	%r26 %r31 356
	sw	%r31 %r30 8
	lw	%r26 %r30 160
	lw	%r26 %r31 356
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 364
	lw	%r26 %r27 8
	addi	%r27 %r27 36
	sw	%r26 %r27 8
	addi	%r0 %r1 solve_each_element_fast.0
	lw	%r26 %r30 364
	sw	%r30 %r1 0
	lw	%r26 %r30 364
	sw	%r30 %r7 32
	lw	%r26 %r30 364
	sw	%r30 %r3 28
	lw	%r26 %r30 364
	sw	%r30 %r23 24
	lw	%r26 %r30 124
	lw	%r26 %r31 364
	sw	%r31 %r30 20
	lw	%r26 %r30 364
	sw	%r30 %r10 16
	lw	%r26 %r30 132
	lw	%r26 %r31 364
	sw	%r31 %r30 12
	lw	%r26 %r30 152
	lw	%r26 %r31 364
	sw	%r31 %r30 8
	lw	%r26 %r30 160
	lw	%r26 %r31 364
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r29
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r30 get_nvector_rect.0
	sw	%r26 %r30 368
	lw	%r26 %r30 368
	sw	%r29 %r30 0
	sw	%r29 %r14 8
	lw	%r26 %r30 132
	sw	%r29 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 372
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r30 get_nvector_plane.0
	sw	%r26 %r30 376
	lw	%r26 %r30 376
	lw	%r26 %r31 372
	sw	%r31 %r30 0
	lw	%r26 %r30 372
	sw	%r30 %r14 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 380
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r1 get_nvector_second.0
	lw	%r26 %r30 380
	sw	%r30 %r1 0
	lw	%r26 %r30 380
	sw	%r30 %r14 8
	lw	%r26 %r30 152
	lw	%r26 %r31 380
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 384
	lw	%r26 %r27 8
	addi	%r27 %r27 16
	sw	%r26 %r27 8
	addi	%r0 %r1 utexture.0
	lw	%r26 %r30 384
	sw	%r30 %r1 0
	lw	%r26 %r30 384
	sw	%r30 %r15 12
	lw	%r26 %r30 4
	lw	%r26 %r31 384
	sw	%r31 %r30 8
	lw	%r26 %r30 384
	sw	%r30 %r9 4
	lw	%r26 %r27 8
	mov	%r27 %r1
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r21 add_light.0
	sw	%r1 %r21 0
	sw	%r1 %r15 8
	sw	%r1 %r6 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 388
	lw	%r26 %r27 8
	addi	%r27 %r27 52
	sw	%r26 %r27 8
	addi	%r0 %r21 trace_reflections.0
	lw	%r26 %r30 388
	sw	%r30 %r21 0
	lw	%r26 %r30 388
	sw	%r30 %r7 48
	lw	%r26 %r30 388
	sw	%r30 %r23 44
	lw	%r26 %r30 124
	lw	%r26 %r31 388
	sw	%r31 %r30 40
	lw	%r26 %r30 364
	lw	%r26 %r31 388
	sw	%r31 %r30 36
	lw	%r26 %r30 388
	sw	%r30 %r25 32
	lw	%r26 %r30 388
	sw	%r30 %r4 28
	lw	%r26 %r30 112
	lw	%r26 %r31 388
	sw	%r31 %r30 24
	lw	%r26 %r30 388
	sw	%r30 %r14 20
	lw	%r26 %r30 132
	lw	%r26 %r31 388
	sw	%r31 %r30 16
	lw	%r26 %r30 160
	lw	%r26 %r31 388
	sw	%r31 %r30 12
	lw	%r26 %r30 388
	sw	%r30 %r11 8
	lw	%r26 %r30 388
	sw	%r30 %r1 4
	lw	%r26 %r27 8
	mov	%r27 %r21
	lw	%r26 %r27 8
	addi	%r27 %r27 112
	sw	%r26 %r27 8
	addi	%r0 %r30 trace_ray.0
	sw	%r26 %r30 392
	lw	%r26 %r30 392
	sw	%r21 %r30 0
	lw	%r26 %r30 384
	sw	%r21 %r30 108
	lw	%r26 %r30 388
	sw	%r21 %r30 104
	sw	%r21 %r7 100
	sw	%r21 %r15 96
	sw	%r21 %r3 92
	lw	%r26 %r30 204
	sw	%r21 %r30 88
	lw	%r26 %r30 124
	sw	%r21 %r30 84
	sw	%r21 %r22 80
	lw	%r26 %r30 356
	sw	%r21 %r30 76
	sw	%r21 %r25 72
	sw	%r21 %r24 68
	sw	%r21 %r6 64
	lw	%r26 %r30 112
	sw	%r21 %r30 60
	sw	%r21 %r10 56
	sw	%r21 %r14 52
	sw	%r21 %r5 48
	lw	%r26 %r30 24
	sw	%r21 %r30 44
	lw	%r26 %r30 80
	sw	%r21 %r30 40
	lw	%r26 %r30 132
	sw	%r21 %r30 36
	lw	%r26 %r30 152
	sw	%r21 %r30 32
	lw	%r26 %r30 160
	sw	%r21 %r30 28
	lw	%r26 %r30 380
	sw	%r21 %r30 24
	sw	%r21 %r29 20
	lw	%r26 %r30 372
	sw	%r21 %r30 16
	sw	%r21 %r12 12
	sw	%r21 %r11 8
	sw	%r21 %r1 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 396
	lw	%r26 %r27 8
	addi	%r27 %r27 76
	sw	%r26 %r27 8
	addi	%r0 %r1 trace_diffuse_ray.0
	lw	%r26 %r30 396
	sw	%r30 %r1 0
	lw	%r26 %r30 384
	lw	%r26 %r31 396
	sw	%r31 %r30 72
	lw	%r26 %r30 396
	sw	%r30 %r7 68
	lw	%r26 %r30 396
	sw	%r30 %r15 64
	lw	%r26 %r30 396
	sw	%r30 %r23 60
	lw	%r26 %r30 124
	lw	%r26 %r31 396
	sw	%r31 %r30 56
	lw	%r26 %r30 364
	lw	%r26 %r31 396
	sw	%r31 %r30 52
	lw	%r26 %r30 396
	sw	%r30 %r25 48
	lw	%r26 %r30 112
	lw	%r26 %r31 396
	sw	%r31 %r30 44
	lw	%r26 %r30 396
	sw	%r30 %r10 40
	lw	%r26 %r30 396
	sw	%r30 %r14 36
	lw	%r26 %r30 80
	lw	%r26 %r31 396
	sw	%r31 %r30 32
	lw	%r26 %r30 152
	lw	%r26 %r31 396
	sw	%r31 %r30 28
	lw	%r26 %r30 160
	lw	%r26 %r31 396
	sw	%r31 %r30 24
	lw	%r26 %r30 380
	lw	%r26 %r31 396
	sw	%r31 %r30 20
	lw	%r26 %r30 396
	sw	%r30 %r29 16
	lw	%r26 %r30 372
	lw	%r26 %r31 396
	sw	%r31 %r30 12
	lw	%r26 %r30 172
	lw	%r26 %r31 396
	sw	%r31 %r30 8
	lw	%r26 %r30 396
	sw	%r30 %r11 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 400
	lw	%r26 %r27 8
	addi	%r27 %r27 16
	sw	%r26 %r27 8
	addi	%r0 %r30 trace_diffuse_ray_80percent.0
	sw	%r26 %r30 404
	lw	%r26 %r30 404
	lw	%r26 %r31 400
	sw	%r31 %r30 0
	lw	%r26 %r30 396
	lw	%r26 %r31 400
	sw	%r31 %r30 12
	lw	%r26 %r30 352
	lw	%r26 %r31 400
	sw	%r31 %r30 8
	lw	%r26 %r30 248
	lw	%r26 %r31 400
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 408
	lw	%r26 %r27 8
	addi	%r27 %r27 12
	sw	%r26 %r27 8
	addi	%r0 %r30 calc_diffuse_using_5points.0
	sw	%r26 %r30 412
	lw	%r26 %r30 412
	lw	%r26 %r31 408
	sw	%r31 %r30 0
	lw	%r26 %r30 408
	sw	%r30 %r6 8
	lw	%r26 %r30 172
	lw	%r26 %r31 408
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 416
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r30 try_exploit_neighbors.0
	sw	%r26 %r30 420
	lw	%r26 %r30 420
	lw	%r26 %r31 416
	sw	%r31 %r30 0
	lw	%r26 %r30 400
	lw	%r26 %r31 416
	sw	%r31 %r30 16
	lw	%r26 %r30 416
	sw	%r30 %r6 12
	lw	%r26 %r30 172
	lw	%r26 %r31 416
	sw	%r31 %r30 8
	lw	%r26 %r30 408
	lw	%r26 %r31 416
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 424
	lw	%r26 %r27 8
	addi	%r27 %r27 8
	sw	%r26 %r27 8
	addi	%r0 %r1 write_ppm_header.0
	lw	%r26 %r30 424
	sw	%r30 %r1 0
	lw	%r26 %r30 424
	sw	%r30 %r8 4
	lw	%r26 %r27 8
	mov	%r27 %r3
	lw	%r26 %r27 8
	addi	%r27 %r27 20
	sw	%r26 %r27 8
	addi	%r0 %r1 pretrace_diffuse_rays.0
	sw	%r3 %r1 0
	lw	%r26 %r30 396
	sw	%r3 %r30 16
	lw	%r26 %r30 352
	sw	%r3 %r30 12
	lw	%r26 %r30 248
	sw	%r3 %r30 8
	lw	%r26 %r30 172
	sw	%r3 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r1
	lw	%r26 %r27 8
	addi	%r27 %r27 40
	sw	%r26 %r27 8
	addi	%r0 %r30 pretrace_pixels.0
	sw	%r26 %r30 428
	lw	%r26 %r30 428
	sw	%r1 %r30 0
	lw	%r26 %r30 68
	sw	%r1 %r30 36
	sw	%r1 %r21 32
	lw	%r26 %r30 204
	sw	%r1 %r30 28
	sw	%r1 %r16 24
	lw	%r26 %r30 196
	sw	%r1 %r30 20
	sw	%r1 %r6 16
	sw	%r1 %r17 12
	sw	%r1 %r3 8
	lw	%r26 %r30 180
	sw	%r1 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 432
	lw	%r26 %r27 8
	addi	%r27 %r27 28
	sw	%r26 %r27 8
	addi	%r0 %r30 pretrace_line.0
	sw	%r26 %r30 436
	lw	%r26 %r30 436
	lw	%r26 %r31 432
	sw	%r31 %r30 0
	lw	%r26 %r30 432
	sw	%r30 %r18 24
	lw	%r26 %r30 216
	lw	%r26 %r31 432
	sw	%r31 %r30 20
	lw	%r26 %r30 196
	lw	%r26 %r31 432
	sw	%r31 %r30 16
	lw	%r26 %r30 432
	sw	%r30 %r1 12
	lw	%r26 %r30 432
	sw	%r30 %r8 8
	lw	%r26 %r30 180
	lw	%r26 %r31 432
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 440
	lw	%r26 %r27 8
	addi	%r27 %r27 24
	sw	%r26 %r27 8
	addi	%r0 %r30 scan_pixel.0
	sw	%r26 %r30 444
	lw	%r26 %r30 444
	lw	%r26 %r31 440
	sw	%r31 %r30 0
	lw	%r26 %r30 416
	lw	%r26 %r31 440
	sw	%r31 %r30 20
	lw	%r26 %r30 400
	lw	%r26 %r31 440
	sw	%r31 %r30 16
	lw	%r26 %r30 440
	sw	%r30 %r6 12
	lw	%r26 %r30 440
	sw	%r30 %r8 8
	lw	%r26 %r30 172
	lw	%r26 %r31 440
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r3
	lw	%r26 %r27 8
	addi	%r27 %r27 16
	sw	%r26 %r27 8
	addi	%r0 %r1 calc_dirvec.0
	sw	%r3 %r1 0
	lw	%r26 %r30 4
	sw	%r3 %r30 12
	lw	%r26 %r30 248
	sw	%r3 %r30 8
	sw	%r3 %r9 4
	lw	%r26 %r27 8
	mov	%r27 %r6
	lw	%r26 %r27 8
	addi	%r27 %r27 24
	sw	%r26 %r27 8
	addi	%r0 %r30 setup_rect_reflection.0
	sw	%r26 %r30 448
	lw	%r26 %r30 448
	sw	%r6 %r30 0
	sw	%r6 %r4 20
	sw	%r6 %r10 16
	sw	%r6 %r5 12
	lw	%r26 %r30 24
	sw	%r6 %r30 8
	lw	%r26 %r30 80
	sw	%r6 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 452
	lw	%r26 %r27 8
	addi	%r27 %r27 24
	sw	%r26 %r27 8
	addi	%r0 %r1 setup_surface_reflection.0
	lw	%r26 %r30 452
	sw	%r30 %r1 0
	lw	%r26 %r30 452
	sw	%r30 %r4 20
	lw	%r26 %r30 452
	sw	%r30 %r10 16
	lw	%r26 %r30 452
	sw	%r30 %r5 12
	lw	%r26 %r30 24
	lw	%r26 %r31 452
	sw	%r31 %r30 8
	lw	%r26 %r30 80
	lw	%r26 %r31 452
	sw	%r31 %r30 4
	lw	%r26 %r27 8
	mov	%r27 %r1
	lw	%r26 %r27 8
	addi	%r27 %r27 16
	sw	%r26 %r27 8
	addi	%r0 %r4 setup_reflections.0
	sw	%r1 %r4 0
	lw	%r26 %r30 452
	sw	%r1 %r30 12
	sw	%r1 %r6 8
	sw	%r1 %r10 4
	lw	%r26 %r27 8
	mov	%r27 %r30
	sw	%r26 %r30 456
	lw	%r26 %r27 8
	addi	%r27 %r27 80
	sw	%r26 %r27 8
	addi	%r0 %r30 rt.0
	sw	%r26 %r30 460
	lw	%r26 %r30 460
	lw	%r26 %r31 456
	sw	%r31 %r30 0
	lw	%r26 %r30 424
	lw	%r26 %r31 456
	sw	%r31 %r30 76
	lw	%r26 %r30 456
	sw	%r30 %r13 72
	lw	%r26 %r30 456
	sw	%r30 %r1 68
	lw	%r26 %r30 440
	lw	%r26 %r31 456
	sw	%r31 %r30 64
	lw	%r26 %r30 196
	lw	%r26 %r31 456
	sw	%r31 %r30 60
	lw	%r26 %r30 304
	lw	%r26 %r31 456
	sw	%r31 %r30 56
	lw	%r26 %r30 456
	sw	%r30 %r20 52
	lw	%r26 %r30 456
	sw	%r30 %r19 48
	lw	%r26 %r30 432
	lw	%r26 %r31 456
	sw	%r31 %r30 44
	lw	%r26 %r30 112
	lw	%r26 %r31 456
	sw	%r31 %r30 40
	lw	%r26 %r30 456
	sw	%r30 %r10 36
	lw	%r26 %r30 24
	lw	%r26 %r31 456
	sw	%r31 %r30 32
	lw	%r26 %r30 456
	sw	%r30 %r2 28
	lw	%r26 %r30 80
	lw	%r26 %r31 456
	sw	%r31 %r30 24
	lw	%r26 %r30 456
	sw	%r30 %r8 20
	lw	%r26 %r30 180
	lw	%r26 %r31 456
	sw	%r31 %r30 16
	lw	%r26 %r30 248
	lw	%r26 %r31 456
	sw	%r31 %r30 12
	lw	%r26 %r30 456
	sw	%r30 %r3 8
	lw	%r26 %r30 456
	sw	%r30 %r11 4
	addi	%r0 %r1 128
	addi	%r0 %r30 128
	sw	%r26 %r30 464
	lw	%r26 %r29 456
	lw	%r26 %r2 464
	sw	%r26 %r28 472
	lw	%r29 %r30 0
	addi	%r26 %r26 476
	jalr	%r30
	addi	%r26 %r26 -476
	lw	%r26 %r28 472
	sw	%r26 %r1 468
	addi	%r0 %r1 0
return_point.67 :
	ret
kernel_sin.0 :
	mov.s	%f0 %f2
tail_b.0 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f5
	addi	%r0 %r1 l.5
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f3
	addi	%r0 %r1 l.7
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f0 %f3
	addi	%r0 %r1 l.9
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f4
	mul.s	%f5 %f3 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f3 0
	mul.s	%f2 %f3 %f2
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f1 %f0 %f0
return_point.0 :
	retl	
sin3.0 :
	mov.s	%f1 %f3
	mov.s	%f0 %f1
branching_b.0 :
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f0 0
	fble	%f1 %f0 tail_b.1
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f1
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f2 %f1
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f2 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
	j	return_point.1
tail_b.1 :
	mov.s	%f1 %f0
	mov.s	%f3 %f1
	j	kernel_sin.0
return_point.1 :
	retl	
cos3.0 :
	mov.s	%f1 %f3
	mov.s	%f0 %f1
branching_b.1 :
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f0 0
	fble	%f1 %f0 tail_b.3
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	mov.s	%f3 %f1
	j	kernel_sin.0
	j	return_point.2
tail_b.3 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
return_point.2 :
	retl	
sin.0 :
	mov.s	%f0 %f2
branching_b.2 :
	lw.s	%r29 %f3 4
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f0 0
	fble	%f0 %f2 tail_b.5
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f2 %f0 tail_b.6
	fble	%f3 %f2 branching_b.5
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	fble	%f0 %f2 tail_b.9
	mov.s	%f2 %f0
	j	sin3.0
	j	return_point.3
tail_b.9 :
	sub.s	%f2 %f3 %f0
	j	sin3.0
	j	return_point.3
branching_b.5 :
	sub.s	%f3 %f2 %f0
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f2 0
	fble	%f2 %f0 tail_b.7
	j	sin3.0
	j	return_point.3
tail_b.7 :
	sub.s	%f0 %f3 %f0
	j	sin3.0
	j	return_point.3
tail_b.6 :
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f0 0
	add.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.3
tail_b.5 :
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
return_point.3 :
	retl	
cos.0 :
branching_b.7 :
	lw.s	%r29 %f2 4
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f1 0
	fble	%f1 %f0 tail_b.11
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.12
	fble	%f2 %f0 branching_b.10
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f3 0
	fble	%f3 %f0 tail_b.15
	j	cos3.0
	j	return_point.4
tail_b.15 :
	sub.s	%f0 %f2 %f0
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	j	cos3.0
	j	return_point.4
branching_b.10 :
	sub.s	%f2 %f0 %f0
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f3 0
	fble	%f3 %f0 tail_b.13
	j	cos3.0
	j	return_point.4
tail_b.13 :
	sub.s	%f0 %f2 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	j	cos3.0
	j	return_point.4
tail_b.12 :
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.4
tail_b.11 :
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	lw	%r29 %r30 0
	jr	%r30
return_point.4 :
	retl	
kernel_atan.0 :
	mov.s	%f1 %f3
	mov.s	%f0 %f5
tail_b.17 :
	neg.s	%f5 %f0
	mul.s	%f5 %f0 %f6
	addi	%r0 %r1 l.51
	ilw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	addi	%r0 %r1 l.53
	ilw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f4
	addi	%r0 %r1 l.55
	ilw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f1
	mul.s	%f6 %f4 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r1 l.57
	ilw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f4
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r1 l.59
	ilw.s	%r1 %f1 0
	mul.s	%f5 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r1 l.61
	ilw.s	%r1 %f0 0
	mul.s	%f5 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f5 %f0
	add.s	%f0 %f2 %f0
	mul.s	%f3 %f0 %f0
return_point.5 :
	retl	
atan.0 :
	mov.s	%f0 %f1
branching_b.12 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fble	%f0 %f1 branching_b.13
	neg.s	%f1 %f3
	addi	%r0 %r1 l.64
	ilw.s	%r1 %f0 0
	fbl	%f3 %f0 tail_b.21
	addi	%r0 %r1 l.66
	ilw.s	%r1 %f0 0
	fbl	%f3 %f0 tail_b.22
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f3 %f0 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.70
	ilw.s	%r1 %f2 0
	j	kernel_atan.0
	j	return_point.6
tail_b.22 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f1
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	add.s	%f0 %f3 %f0
	div.s	%f0 %f1 %f0
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f2 0
	j	kernel_atan.0
	j	return_point.6
tail_b.21 :
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	mov.s	%f3 %f0
	j	kernel_atan.0
	j	return_point.6
branching_b.13 :
	addi	%r0 %r1 l.64
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.18
	addi	%r0 %r1 l.66
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.19
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.70
	ilw.s	%r1 %f2 0
	j	kernel_atan.0
	j	return_point.6
tail_b.19 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f2
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	div.s	%f0 %f2 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f2 0
	j	kernel_atan.0
	j	return_point.6
tail_b.18 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	mov.s	%f1 %f30
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	j	kernel_atan.0
return_point.6 :
	retl	
print_int.0 :
branching_b.17 :
	addi	%r0 %r3 100
	div	%r1 %r3 %r4
	addi	%r0 %r3 100
	mul	%r4 %r3 %r3
	sub	%r1 %r3 %r5
	addi	%r0 %r3 10
	div	%r5 %r3 %r5
	addi	%r0 %r3 100
	mul	%r4 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r1 10
	mul	%r5 %r1 %r1
	sub	%r3 %r1 %r3
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.24
	addi	%r0 %r1 0
	bl	%r1 %r5 tail_b.25
	addi	%r3 %r1 48
	out	%r1
	j	return_point.7
tail_b.25 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
	j	return_point.7
tail_b.24 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	addi	%r3 %r1 48
	out	%r1
return_point.7 :
	mov	%r2 %r1
	retl	
vecunit_sgn.0 :
	mov	%r2 %r3
	mov	%r1 %r2
branching_b.19 :
	lw.s	%r2 %f0 0
	mul.s	%f0 %f0 %f1
	lw.s	%r2 %f0 4
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f1
	lw.s	%r2 %f0 8
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.27
	addi	%r0 %r1 0
	j	branching_b.20
tail_b.27 :
	addi	%r0 %r1 1
branching_b.20 :
	addi	%r0 %r5 0
	beq	%r1 %r5 branching_b.21
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	j	tail_b.32
branching_b.21 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.29
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f0 0
	div.s	%f1 %f0 %f1
	j	tail_b.32
tail_b.29 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f1 %f0 %f1
tail_b.32 :
	lw.s	%r2 %f0 0
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	lw.s	%r2 %f0 4
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 4
	lw.s	%r2 %f0 8
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 8
return_point.8 :
	mov	%r4 %r1
	retl	
veciprod.0 :
tail_b.33 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f1
	lw.s	%r1 %f0 4
	lw.s	%r2 %f2 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f2
	lw.s	%r1 %f1 8
	lw.s	%r2 %f0 8
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
return_point.9 :
	retl	
vecaccum.0 :
	mov.s	%f0 %f2
tail_b.34 :
	lw.s	%r1 %f0 0
	lw.s	%r2 %f1 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r1 %f0 4
	lw.s	%r2 %f1 4
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	lw.s	%r2 %f1 8
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
return_point.10 :
	mov	%r3 %r1
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
	mov	%r2 %r4
	mov	%r1 %r2
tail_b.36 :
	lw.s	%r2 %f1 0
	lw.s	%r4 %f2 0
	lw.s	%r3 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r2 %f0 0
	lw.s	%r2 %f0 4
	lw.s	%r4 %f1 4
	lw.s	%r3 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r2 %f0 4
	lw.s	%r2 %f2 8
	lw.s	%r4 %f1 8
	lw.s	%r3 %f0 8
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f2 %f0
	sw.s	%r2 %f0 8
return_point.12 :
	retl	
read_screen_settings.0 :
tail_b.37 :
	lw	%r29 %r6 28
	lw	%r29 %r7 24
	lw	%r29 %r2 20
	lw	%r29 %r3 16
	lw	%r29 %r5 12
	lw	%r29 %r4 8
	lw	%r29 %r29 4
	fin	%f0
	sw.s	%r4 %f0 0
	fin	%f0
	sw.s	%r4 %f0 4
	fin	%f0
	sw.s	%r4 %f0 8
	fin	%f0
	addi	%r0 %r1 l.93
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r8 36
	sw.s	%r26 %f2 32
	sw.s	%r26 %f0 28
	sw	%r26 %r29 24
	sw	%r26 %r4 20
	sw	%r26 %r5 16
	sw	%r26 %r3 12
	sw	%r26 %r2 8
	sw	%r26 %r7 4
	sw	%r26 %r6 0
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f2
	lw	%r26 %r8 36
	lw.s	%r26 %f2 32
	lw.s	%r26 %f0 28
	lw	%r26 %r29 24
	lw	%r26 %r4 20
	lw	%r26 %r5 16
	lw	%r26 %r3 12
	lw	%r26 %r2 8
	lw	%r26 %r7 4
	lw	%r26 %r6 0
	sw	%r26 %r8 36
	sw.s	%r26 %f1 32
	sw.s	%r26 %f2 28
	sw	%r26 %r29 24
	sw	%r26 %r4 20
	sw	%r26 %r5 16
	sw	%r26 %r3 12
	sw	%r26 %r2 8
	sw	%r26 %r7 4
	sw	%r26 %r6 0
	mov	%r7 %r29
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r8 36
	lw.s	%r26 %f1 32
	lw.s	%r26 %f2 28
	lw	%r26 %r29 24
	lw	%r26 %r4 20
	lw	%r26 %r5 16
	lw	%r26 %r3 12
	lw	%r26 %r2 8
	lw	%r26 %r7 4
	lw	%r26 %r6 0
	fin	%f3
	addi	%r0 %r1 l.93
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f3 %f0
	sw	%r26 %r8 40
	sw.s	%r26 %f5 36
	sw.s	%r26 %f0 32
	sw.s	%r26 %f1 28
	sw.s	%r26 %f2 24
	sw	%r26 %r4 20
	sw	%r26 %r5 16
	sw	%r26 %r3 12
	sw	%r26 %r2 8
	sw	%r26 %r7 4
	sw	%r26 %r6 0
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f5
	lw	%r26 %r8 40
	lw.s	%r26 %f5 36
	lw.s	%r26 %f0 32
	lw.s	%r26 %f1 28
	lw.s	%r26 %f2 24
	lw	%r26 %r4 20
	lw	%r26 %r5 16
	lw	%r26 %r3 12
	lw	%r26 %r2 8
	lw	%r26 %r7 4
	lw	%r26 %r6 0
	sw	%r26 %r8 36
	sw.s	%r26 %f3 32
	sw.s	%r26 %f5 28
	sw.s	%r26 %f1 24
	sw.s	%r26 %f2 20
	sw	%r26 %r4 16
	sw	%r26 %r5 12
	sw	%r26 %r3 8
	sw	%r26 %r2 4
	sw	%r26 %r6 0
	mov	%r7 %r29
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f3
	lw	%r26 %r8 36
	lw.s	%r26 %f3 32
	lw.s	%r26 %f5 28
	lw.s	%r26 %f1 24
	lw.s	%r26 %f2 20
	lw	%r26 %r4 16
	lw	%r26 %r5 12
	lw	%r26 %r3 8
	lw	%r26 %r2 4
	lw	%r26 %r6 0
	mul.s	%f3 %f2 %f4
	addi	%r0 %r1 l.96
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f4 %f0
	sw.s	%r2 %f0 0
	addi	%r0 %r1 l.98
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r2 %f0 4
	mul.s	%f5 %f2 %f0
	addi	%r0 %r1 l.96
	ilw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f0
	sw.s	%r2 %f0 8
	sw.s	%r5 %f5 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r5 %f0 4
	neg.s	%f3 %f0
	sw.s	%r5 %f0 8
	neg.s	%f1 %f0
	mul.s	%f3 %f0 %f0
	sw.s	%r3 %f0 0
	neg.s	%f2 %f0
	sw.s	%r3 %f0 4
	neg.s	%f1 %f0
	mul.s	%f5 %f0 %f0
	sw.s	%r3 %f0 8
	lw.s	%r4 %f0 0
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	sw.s	%r6 %f0 0
	lw.s	%r4 %f0 4
	lw.s	%r2 %f1 4
	sub.s	%f1 %f0 %f0
	sw.s	%r6 %f0 4
	lw.s	%r4 %f0 8
	lw.s	%r2 %f1 8
	sub.s	%f1 %f0 %f0
	sw.s	%r6 %f0 8
return_point.13 :
	mov	%r8 %r1
	retl	
read_light.0 :
	mov	%r29 %r1
tail_b.38 :
	lw	%r1 %r29 16
	lw	%r1 %r5 12
	lw	%r1 %r4 8
	lw	%r1 %r1 4
	in	%r2
	fin	%f0
	addi	%r0 %r2 l.93
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw	%r26 %r3 24
	sw.s	%r26 %f1 20
	sw.s	%r26 %f0 16
	sw	%r26 %r1 12
	sw	%r26 %r4 8
	sw	%r26 %r5 4
	sw	%r26 %r29 0
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f1
	lw	%r26 %r3 24
	lw.s	%r26 %f1 20
	lw.s	%r26 %f0 16
	lw	%r26 %r1 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	lw	%r26 %r29 0
	neg.s	%f1 %f1
	sw.s	%r5 %f1 4
	fin	%f2
	addi	%r0 %r2 l.93
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f2 %f2
	sw	%r26 %r3 24
	sw.s	%r26 %f1 20
	sw.s	%r26 %f2 16
	sw	%r26 %r1 12
	sw	%r26 %r4 8
	sw	%r26 %r5 4
	sw	%r26 %r29 0
	mov	%r4 %r29
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f1
	lw	%r26 %r3 24
	lw.s	%r26 %f1 20
	lw.s	%r26 %f2 16
	lw	%r26 %r1 12
	lw	%r26 %r4 8
	lw	%r26 %r5 4
	lw	%r26 %r29 0
	sw	%r26 %r3 24
	sw.s	%r26 %f0 20
	sw.s	%r26 %f1 16
	sw.s	%r26 %f2 12
	sw	%r26 %r1 8
	sw	%r26 %r4 4
	sw	%r26 %r5 0
	mov.s	%f2 %f0
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r3 24
	lw.s	%r26 %f0 20
	lw.s	%r26 %f1 16
	lw.s	%r26 %f2 12
	lw	%r26 %r1 8
	lw	%r26 %r4 4
	lw	%r26 %r5 0
	mul.s	%f0 %f1 %f0
	sw.s	%r5 %f0 0
	sw	%r26 %r3 16
	sw.s	%r26 %f0 12
	sw.s	%r26 %f1 8
	sw	%r26 %r1 4
	sw	%r26 %r5 0
	mov	%r4 %r29
	mov.s	%f2 %f0
	sw	%r26 %r28 20
	lw	%r29 %r30 0
	addi	%r26 %r26 24
	jalr	%r30
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r3 16
	lw.s	%r26 %f0 12
	lw.s	%r26 %f1 8
	lw	%r26 %r1 4
	lw	%r26 %r5 0
	mul.s	%f0 %f1 %f0
	sw.s	%r5 %f0 8
	fin	%f0
	sw.s	%r1 %f0 0
return_point.14 :
	mov	%r3 %r1
	retl	
rotate_quadratic_matrix.0 :
	mov	%r2 %r3
tail_b.39 :
	lw	%r29 %r4 8
	lw	%r29 %r29 4
	lw.s	%r3 %f0 0
	sw	%r26 %r2 20
	sw.s	%r26 %f3 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	sw	%r26 %r28 24
	lw	%r29 %r30 0
	addi	%r26 %r26 28
	jalr	%r30
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f3
	lw	%r26 %r2 20
	lw.s	%r26 %f3 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 0
	sw	%r26 %r2 24
	sw.s	%r26 %f2 20
	sw.s	%r26 %f3 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f2
	lw	%r26 %r2 24
	lw.s	%r26 %f2 20
	lw.s	%r26 %f3 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 4
	sw	%r26 %r2 28
	sw.s	%r26 %f4 24
	sw.s	%r26 %f2 20
	sw.s	%r26 %f3 16
	sw	%r26 %r29 12
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
	lw.s	%r26 %f4 24
	lw.s	%r26 %f2 20
	lw.s	%r26 %f3 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 4
	sw	%r26 %r2 32
	sw.s	%r26 %f1 28
	sw.s	%r26 %f4 24
	sw.s	%r26 %f2 20
	sw.s	%r26 %f3 16
	sw	%r26 %r29 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f1
	lw	%r26 %r2 32
	lw.s	%r26 %f1 28
	lw.s	%r26 %f4 24
	lw.s	%r26 %f2 20
	lw.s	%r26 %f3 16
	lw	%r26 %r29 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 8
	sw	%r26 %r2 32
	sw.s	%r26 %f6 28
	sw.s	%r26 %f1 24
	sw.s	%r26 %f4 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f3 12
	sw	%r26 %r4 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f6
	lw	%r26 %r2 32
	lw.s	%r26 %f6 28
	lw.s	%r26 %f1 24
	lw.s	%r26 %f4 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f3 12
	lw	%r26 %r4 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	lw.s	%r3 %f0 8
	sw	%r26 %r2 32
	sw.s	%r26 %f11 28
	sw.s	%r26 %f6 24
	sw.s	%r26 %f1 20
	sw.s	%r26 %f4 16
	sw.s	%r26 %f2 12
	sw.s	%r26 %f3 8
	sw	%r26 %r3 4
	sw	%r26 %r1 0
	mov	%r4 %r29
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov.s	%f0 %f11
	lw	%r26 %r2 32
	lw.s	%r26 %f11 28
	lw.s	%r26 %f6 24
	lw.s	%r26 %f1 20
	lw.s	%r26 %f4 16
	lw.s	%r26 %f2 12
	lw.s	%r26 %f3 8
	lw	%r26 %r3 4
	lw	%r26 %r1 0
	mul.s	%f6 %f4 %f7
	mul.s	%f1 %f2 %f0
	mul.s	%f6 %f0 %f5
	mul.s	%f11 %f3 %f0
	sub.s	%f0 %f5 %f8
	mul.s	%f1 %f3 %f0
	mul.s	%f6 %f0 %f5
	mul.s	%f11 %f2 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f11 %f4 %f9
	mul.s	%f1 %f2 %f0
	mul.s	%f11 %f0 %f0
	mul.s	%f6 %f3 %f10
	add.s	%f10 %f0 %f10
	mul.s	%f1 %f3 %f0
	mul.s	%f11 %f0 %f0
	mul.s	%f6 %f2 %f6
	sub.s	%f6 %f0 %f12
	neg.s	%f1 %f6
	mul.s	%f4 %f2 %f11
	mul.s	%f4 %f3 %f13
	lw.s	%r1 %f3 0
	lw.s	%r1 %f2 4
	lw.s	%r1 %f4 8
	mul.s	%f7 %f7 %f0
	mul.s	%f0 %f3 %f1
	mul.s	%f9 %f9 %f0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f6 %f6 %f0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 0
	mul.s	%f8 %f8 %f0
	mul.s	%f0 %f3 %f1
	mul.s	%f10 %f10 %f0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f11 %f11 %f0
	mul.s	%f0 %f4 %f0
	add.s	%f0 %f1 %f0
	sw.s	%r1 %f0 4
	mul.s	%f5 %f5 %f0
	mul.s	%f0 %f3 %f1
	mul.s	%f12 %f12 %f0
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f13 %f13 %f1
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f0 0
	mul.s	%f8 %f3 %f1
	mul.s	%f5 %f1 %f14
	mul.s	%f10 %f2 %f1
	mul.s	%f12 %f1 %f1
	add.s	%f1 %f14 %f14
	mul.s	%f11 %f4 %f1
	mul.s	%f13 %f1 %f1
	add.s	%f1 %f14 %f1
	mul.s	%f1 %f0 %f0
	sw.s	%r3 %f0 0
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f1 0
	mul.s	%f7 %f3 %f0
	mul.s	%f5 %f0 %f5
	mul.s	%f9 %f2 %f0
	mul.s	%f12 %f0 %f0
	add.s	%f0 %f5 %f5
	mul.s	%f6 %f4 %f0
	mul.s	%f13 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 4
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f5 0
	mul.s	%f7 %f3 %f0
	mul.s	%f8 %f0 %f1
	mul.s	%f9 %f2 %f0
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f6 %f4 %f1
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f5 %f0
	sw.s	%r3 %f0 8
return_point.15 :
	mov	%r2 %r1
	retl	
read_nth_object.0 :
	mov	%r1 %r10
	mov	%r29 %r1
branching_b.22 :
	lw	%r1 %r29 8
	lw	%r1 %r6 4
	in	%r14
	addi	%r0 %r1 -1
	bne	%r14 %r1 branching_b.23
	addi	%r0 %r1 0
	j	return_point.16
branching_b.23 :
	in	%r13
	in	%r12
	in	%r3
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	min_caml_create_float_array
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r5
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	fin	%f0
	sw.s	%r5 %f0 0
	fin	%f0
	sw.s	%r5 %f0 4
	fin	%f0
	sw.s	%r5 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r1 36
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	mov	%r2 %r1
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	min_caml_create_float_array
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r1 36
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	fin	%f0
	sw.s	%r1 %f0 0
	fin	%f0
	sw.s	%r1 %f0 4
	fin	%f0
	sw.s	%r1 %f0 8
	fin	%f1
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	fbl	%f1 %f0 tail_b.40
	addi	%r0 %r8 0
	j	branching_b.24
tail_b.40 :
	addi	%r0 %r8 1
branching_b.24 :
	addi	%r0 %r2 2
	addi	%r0 %r4 l.32
	ilw.s	%r4 %f0 0
	sw	%r26 %r7 44
	sw	%r26 %r8 40
	sw	%r26 %r1 36
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	mov	%r2 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	min_caml_create_float_array
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r7
	lw	%r26 %r7 44
	lw	%r26 %r8 40
	lw	%r26 %r1 36
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	fin	%f0
	sw.s	%r7 %f0 0
	fin	%f0
	sw.s	%r7 %f0 4
	addi	%r0 %r4 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r15 48
	sw	%r26 %r7 44
	sw	%r26 %r8 40
	sw	%r26 %r1 36
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	mov	%r4 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r15
	lw	%r26 %r15 48
	lw	%r26 %r7 44
	lw	%r26 %r8 40
	lw	%r26 %r1 36
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	fin	%f0
	sw.s	%r15 %f0 0
	fin	%f0
	sw.s	%r15 %f0 4
	fin	%f0
	sw.s	%r15 %f0 8
	addi	%r0 %r2 3
	addi	%r0 %r4 l.32
	ilw.s	%r4 %f0 0
	sw	%r26 %r4 52
	sw	%r26 %r15 48
	sw	%r26 %r7 44
	sw	%r26 %r8 40
	sw	%r26 %r1 36
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	mov	%r2 %r1
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_float_array
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r4
	lw	%r26 %r4 52
	lw	%r26 %r15 48
	lw	%r26 %r7 44
	lw	%r26 %r8 40
	lw	%r26 %r1 36
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	addi	%r0 %r2 0
	bne	%r3 %r2 tail_b.42
	j	branching_b.25
tail_b.42 :
	fin	%f0
	addi	%r0 %r2 l.93
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	fin	%f1
	addi	%r0 %r2 l.93
	ilw.s	%r2 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r4 %f0 4
	fin	%f0
	addi	%r0 %r2 l.93
	ilw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f0
	sw.s	%r4 %f0 8
branching_b.25 :
	addi	%r0 %r2 2
	beq	%r13 %r2 tail_b.44
	mov	%r8 %r16
	j	branching_b.26
tail_b.44 :
	addi	%r0 %r16 1
branching_b.26 :
	addi	%r0 %r11 4
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r11 60
	sw	%r26 %r16 56
	sw	%r26 %r4 52
	sw	%r26 %r15 48
	sw	%r26 %r7 44
	sw	%r26 %r8 40
	sw	%r26 %r1 36
	sw	%r26 %r5 32
	sw	%r26 %r3 28
	sw	%r26 %r12 24
	sw	%r26 %r13 20
	sw	%r26 %r14 16
	sw	%r26 %r6 12
	sw	%r26 %r29 8
	sw	%r26 %r10 4
	sw	%r26 %r9 0
	mov	%r11 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_float_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r11
	lw	%r26 %r11 60
	lw	%r26 %r16 56
	lw	%r26 %r4 52
	lw	%r26 %r15 48
	lw	%r26 %r7 44
	lw	%r26 %r8 40
	lw	%r26 %r1 36
	lw	%r26 %r5 32
	lw	%r26 %r3 28
	lw	%r26 %r12 24
	lw	%r26 %r13 20
	lw	%r26 %r14 16
	lw	%r26 %r6 12
	lw	%r26 %r29 8
	lw	%r26 %r10 4
	lw	%r26 %r9 0
	mov	%r27 %r2
	addi	%r27 %r27 44
	sw	%r2 %r11 40
	sw	%r2 %r4 36
	sw	%r2 %r15 32
	sw	%r2 %r7 28
	sw	%r2 %r16 24
	sw	%r2 %r1 20
	sw	%r2 %r5 16
	sw	%r2 %r3 12
	sw	%r2 %r12 8
	sw	%r2 %r13 4
	sw	%r2 %r14 0
	slli	%r10 %r1 2
	add	%r6 %r1 %r31
	sw	%r31 %r2 0
	addi	%r0 %r1 3
	beq	%r13 %r1 branching_b.27
	addi	%r0 %r1 2
	beq	%r13 %r1 branching_b.46
	j	branching_b.47
branching_b.46 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.80
	addi	%r0 %r2 0
	j	tail_b.82
tail_b.80 :
	addi	%r0 %r2 1
	j	tail_b.82
branching_b.27 :
	lw.s	%r5 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.46
	addi	%r0 %r2 0
	j	branching_b.28
tail_b.46 :
	addi	%r0 %r2 1
branching_b.28 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.29
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	branching_b.33
branching_b.29 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.48
	addi	%r0 %r2 0
	j	branching_b.30
tail_b.48 :
	addi	%r0 %r2 1
branching_b.30 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.31
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.55
branching_b.31 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.50
	addi	%r0 %r2 0
	j	branching_b.32
tail_b.50 :
	addi	%r0 %r2 1
branching_b.32 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.52
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	j	tail_b.55
tail_b.52 :
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f0 0
tail_b.55 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
branching_b.33 :
	sw.s	%r5 %f0 0
	lw.s	%r5 %f1 4
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.57
	addi	%r0 %r2 0
	j	branching_b.34
tail_b.57 :
	addi	%r0 %r2 1
branching_b.34 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.35
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	branching_b.39
branching_b.35 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.59
	addi	%r0 %r1 0
	j	branching_b.36
tail_b.59 :
	addi	%r0 %r1 1
branching_b.36 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.37
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	j	tail_b.66
branching_b.37 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.61
	addi	%r0 %r1 0
	j	branching_b.38
tail_b.61 :
	addi	%r0 %r1 1
branching_b.38 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.63
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f2 0
	j	tail_b.66
tail_b.63 :
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f2 0
tail_b.66 :
	mul.s	%f1 %f1 %f0
	div.s	%f0 %f2 %f0
branching_b.39 :
	sw.s	%r5 %f0 4
	lw.s	%r5 %f1 8
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.68
	addi	%r0 %r2 0
	j	branching_b.40
tail_b.68 :
	addi	%r0 %r2 1
branching_b.40 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.41
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.79
branching_b.41 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.70
	addi	%r0 %r1 0
	j	branching_b.42
tail_b.70 :
	addi	%r0 %r1 1
branching_b.42 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.43
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.77
branching_b.43 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.72
	addi	%r0 %r1 0
	j	branching_b.44
tail_b.72 :
	addi	%r0 %r1 1
branching_b.44 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.74
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	j	tail_b.77
tail_b.74 :
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f0 0
tail_b.77 :
	mul.s	%f1 %f1 %f1
	div.s	%f1 %f0 %f0
tail_b.79 :
	sw.s	%r5 %f0 8
	j	branching_b.47
tail_b.82 :
	mov	%r5 %r1
	j	vecunit_sgn.0
branching_b.47 :
	addi	%r0 %r1 0
	bne	%r3 %r1 tail_b.84
	j	tail_b.86
tail_b.84 :
	mov	%r4 %r2
	mov	%r5 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.86 :
	addi	%r0 %r1 1
return_point.16 :
	retl	
read_net_item.0 :
	mov	%r1 %r2
branching_b.48 :
	in	%r3
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.88
	addi	%r2 %r1 1
	sw	%r26 %r1 8
	sw	%r26 %r3 4
	sw	%r26 %r2 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_net_item.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r26 %r3 4
	lw	%r26 %r2 0
	slli	%r2 %r2 2
	add	%r1 %r2 %r31
	sw	%r31 %r3 0
	j	return_point.17
tail_b.88 :
	addi	%r2 %r1 1
	addi	%r0 %r2 -1
	j	min_caml_create_array
return_point.17 :
	retl	
read_or_network.0 :
	mov	%r1 %r4
branching_b.49 :
	addi	%r0 %r1 0
	sw	%r26 %r2 4
	sw	%r26 %r4 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	read_net_item.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r2
	lw	%r26 %r2 4
	lw	%r26 %r4 0
	lw	%r2 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.90
	addi	%r4 %r1 1
	sw	%r26 %r1 8
	sw	%r26 %r2 4
	sw	%r26 %r4 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	read_or_network.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 8
	lw	%r26 %r2 4
	lw	%r26 %r4 0
	slli	%r4 %r3 2
	add	%r1 %r3 %r31
	sw	%r31 %r2 0
	j	return_point.18
tail_b.90 :
	addi	%r4 %r1 1
	j	min_caml_create_array
return_point.18 :
	retl	
solver_rect_surface.0 :
	mov	%r3 %r8
	mov	%r2 %r7
	mov	%r1 %r6
	mov.s	%f0 %f3
branching_b.50 :
	lw	%r29 %r3 4
	slli	%r8 %r1 2
	add	%r7 %r1 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f4 0
	fbeq	%f0 %f4 tail_b.92
	addi	%r0 %r1 0
	j	branching_b.51
tail_b.92 :
	addi	%r0 %r1 1
branching_b.51 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.52
	addi	%r0 %r1 0
	j	return_point.19
branching_b.52 :
	lw	%r6 %r9 16
	lw	%r6 %r6 24
	slli	%r8 %r1 2
	add	%r7 %r1 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f4 0
	fbl	%f0 %f4 tail_b.94
	addi	%r0 %r1 0
	j	branching_b.53
tail_b.94 :
	addi	%r0 %r1 1
branching_b.53 :
	addi	%r0 %r2 0
	beq	%r6 %r2 tail_b.96
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.97
	addi	%r0 %r2 0
	j	branching_b.55
tail_b.97 :
	addi	%r0 %r2 1
	j	branching_b.55
tail_b.96 :
	mov	%r1 %r2
branching_b.55 :
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.99
	j	branching_b.56
tail_b.99 :
	neg.s	%f0 %f0
branching_b.56 :
	sub.s	%f3 %f0 %f0
	slli	%r8 %r1 2
	add	%r7 %r1 %r31
	lw.s	%r31 %f3 0
	div.s	%f3 %f0 %f3
	slli	%r4 %r1 2
	add	%r7 %r1 %r31
	lw.s	%r31 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.101
	mov.s	%f0 %f1
	j	branching_b.57
tail_b.101 :
	neg.s	%f0 %f1
branching_b.57 :
	slli	%r4 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f0 0
	fbl	%f1 %f0 tail_b.103
	addi	%r0 %r2 0
	j	branching_b.58
tail_b.103 :
	addi	%r0 %r2 1
branching_b.58 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.105
	slli	%r5 %r1 2
	add	%r7 %r1 %r31
	lw.s	%r31 %f0 0
	mul.s	%f0 %f3 %f0
	add.s	%f2 %f0 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.106
	mov.s	%f1 %f0
	j	branching_b.60
tail_b.106 :
	neg.s	%f1 %f0
	j	branching_b.60
tail_b.105 :
	addi	%r0 %r1 0
	j	return_point.19
branching_b.60 :
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw.s	%r31 %f1 0
	fbl	%f0 %f1 tail_b.108
	addi	%r0 %r2 0
	j	branching_b.61
tail_b.108 :
	addi	%r0 %r2 1
branching_b.61 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.110
	sw.s	%r3 %f3 0
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
	sw	%r26 %r1 24
	sw	%r26 %r29 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f1 12
	sw.s	%r26 %f0 8
	sw	%r26 %r2 4
	sw	%r26 %r6 0
	mov	%r6 %r1
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
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
	sw	%r26 %r1 24
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
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r1 24
	lw	%r26 %r29 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f1 12
	lw.s	%r26 %f0 8
	lw	%r26 %r2 4
	lw	%r26 %r6 0
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.64
	addi	%r0 %r1 2
	j	return_point.20
branching_b.64 :
	addi	%r0 %r3 2
	addi	%r0 %r4 0
	addi	%r0 %r5 1
	sw	%r26 %r2 0
	mov	%r6 %r1
	mov.s	%f2 %f30
	mov.s	%f1 %f2
	mov.s	%f0 %f1
	mov.s	%f30 %f0
	sw	%r26 %r28 4
	lw	%r29 %r30 0
	addi	%r26 %r26 8
	jalr	%r30
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.113
	addi	%r0 %r1 3
	j	return_point.20
tail_b.113 :
	addi	%r0 %r1 0
return_point.20 :
	retl	
quadratic.0 :
	mov	%r1 %r2
	mov.s	%f1 %f5
	mov.s	%f0 %f4
branching_b.65 :
	mul.s	%f4 %f4 %f1
	lw	%r2 %r1 16
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f5 %f3
	lw	%r2 %r1 16
	lw.s	%r1 %f0 4
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f2 %f2 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f3 8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f3
	lw	%r2 %r3 12
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.117
	mul.s	%f2 %f5 %f1
	lw	%r2 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f1
	mul.s	%f4 %f2 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f2 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	j	return_point.21
tail_b.117 :
	mov.s	%f3 %f0
return_point.21 :
	retl	
bilinear.0 :
	mov	%r1 %r2
	mov.s	%f4 %f6
	mov.s	%f3 %f7
	mov.s	%f0 %f8
	mov.s	%f1 %f3
branching_b.66 :
	mul.s	%f7 %f8 %f0
	lw	%r2 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f3 %f4
	lw	%r2 %r1 16
	lw.s	%r1 %f1 4
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f2 %f1
	lw	%r2 %r1 16
	lw.s	%r1 %f4 8
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	lw	%r2 %r1 12
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.119
	mul.s	%f6 %f2 %f0
	mul.s	%f5 %f3 %f4
	add.s	%f4 %f0 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f4 0
	mul.s	%f4 %f0 %f4
	mul.s	%f5 %f8 %f0
	mul.s	%f7 %f2 %f2
	add.s	%f2 %f0 %f0
	lw	%r2 %r1 36
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f4 %f2
	mul.s	%f6 %f8 %f0
	mul.s	%f7 %f3 %f3
	add.s	%f3 %f0 %f3
	lw	%r2 %r1 36
	lw.s	%r1 %f0 8
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f2 %f2
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f0 0
	div.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f0
	j	return_point.22
tail_b.119 :
	mov.s	%f1 %f0
return_point.22 :
	retl	
solver_second.0 :
	mov	%r1 %r3
	mov.s	%f1 %f5
	mov.s	%f0 %f3
branching_b.67 :
	lw	%r29 %r4 4
	lw.s	%r2 %f4 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f0 8
	sw.s	%r26 %f4 24
	sw	%r26 %r4 20
	sw.s	%r26 %f2 16
	sw.s	%r26 %f5 12
	sw.s	%r26 %f3 8
	sw	%r26 %r2 4
	sw	%r26 %r3 0
	mov	%r3 %r1
	mov.s	%f0 %f2
	mov.s	%f4 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	quadratic.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov.s	%f0 %f4
	lw.s	%r26 %f4 24
	lw	%r26 %r4 20
	lw.s	%r26 %f2 16
	lw.s	%r26 %f5 12
	lw.s	%r26 %f3 8
	lw	%r26 %r2 4
	lw	%r26 %r3 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f4 %f0 tail_b.121
	addi	%r0 %r1 0
	j	branching_b.68
tail_b.121 :
	addi	%r0 %r1 1
branching_b.68 :
	addi	%r0 %r5 0
	beq	%r1 %r5 branching_b.69
	addi	%r0 %r1 0
	j	return_point.23
branching_b.69 :
	lw.s	%r2 %f6 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f0 8
	sw.s	%r26 %f0 24
	sw.s	%r26 %f4 20
	sw	%r26 %r4 16
	sw.s	%r26 %f2 12
	sw.s	%r26 %f5 8
	sw.s	%r26 %f3 4
	sw	%r26 %r3 0
	mov	%r3 %r1
	mov.s	%f5 %f4
	mov.s	%f2 %f5
	mov.s	%f0 %f2
	mov.s	%f6 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	bilinear.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 24
	lw.s	%r26 %f4 20
	lw	%r26 %r4 16
	lw.s	%r26 %f2 12
	lw.s	%r26 %f5 8
	lw.s	%r26 %f3 4
	lw	%r26 %r3 0
	sw.s	%r26 %f1 16
	sw.s	%r26 %f0 12
	sw.s	%r26 %f4 8
	sw	%r26 %r4 4
	sw	%r26 %r3 0
	mov	%r3 %r1
	mov.s	%f5 %f1
	mov.s	%f3 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	quadratic.0
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov.s	%f0 %f1
	lw.s	%r26 %f1 16
	lw.s	%r26 %f0 12
	lw.s	%r26 %f4 8
	lw	%r26 %r4 4
	lw	%r26 %r3 0
	lw	%r3 %r2 4
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.123
	j	branching_b.70
tail_b.123 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f2 0
	sub.s	%f2 %f1 %f1
branching_b.70 :
	mul.s	%f0 %f0 %f2
	mul.s	%f1 %f4 %f1
	sub.s	%f1 %f2 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	fbl	%f2 %f1 tail_b.125
	addi	%r0 %r1 0
	j	branching_b.71
tail_b.125 :
	addi	%r0 %r1 1
branching_b.71 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.127
	sqrt.s	%f1 %f1
	lw	%r3 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.128
	j	tail_b.130
tail_b.128 :
	neg.s	%f1 %f1
	j	tail_b.130
tail_b.127 :
	addi	%r0 %r1 0
	j	return_point.23
tail_b.130 :
	sub.s	%f0 %f1 %f0
	div.s	%f4 %f0 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r1 1
return_point.23 :
	retl	
solver.0 :
	mov	%r3 %r5
	mov	%r1 %r4
	mov	%r29 %r1
branching_b.73 :
	lw	%r1 %r6 16
	lw	%r1 %r29 12
	lw	%r1 %r3 8
	lw	%r1 %r1 4
	slli	%r4 %r4 2
	add	%r1 %r4 %r31
	lw	%r31 %r4 0
	lw.s	%r5 %f1 0
	lw	%r4 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f4
	lw.s	%r5 %f0 4
	lw	%r4 %r1 20
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f5
	lw.s	%r5 %f1 8
	lw	%r4 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f1 %f3
	lw	%r4 %r5 4
	addi	%r0 %r1 1
	beq	%r5 %r1 tail_b.132
	addi	%r0 %r1 2
	beq	%r5 %r1 branching_b.75
	mov	%r6 %r29
	mov	%r4 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f1
	mov.s	%f4 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.24
branching_b.75 :
	lw	%r4 %r4 16
	sw.s	%r26 %f2 20
	sw	%r26 %r4 16
	sw.s	%r26 %f3 12
	sw.s	%r26 %f5 8
	sw.s	%r26 %f4 4
	sw	%r26 %r3 0
	mov	%r2 %r1
	mov	%r4 %r2
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	veciprod.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f2
	lw.s	%r26 %f2 20
	lw	%r26 %r4 16
	lw.s	%r26 %f3 12
	lw.s	%r26 %f5 8
	lw.s	%r26 %f4 4
	lw	%r26 %r3 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f2 tail_b.133
	addi	%r0 %r1 0
	j	branching_b.76
tail_b.133 :
	addi	%r0 %r1 1
	j	branching_b.76
tail_b.132 :
	mov	%r4 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f1
	mov.s	%f4 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.24
branching_b.76 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.135
	lw.s	%r4 %f0 0
	mul.s	%f4 %f0 %f0
	lw.s	%r4 %f1 4
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	lw.s	%r4 %f1 8
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	div.s	%f2 %f0 %f0
	sw.s	%r3 %f0 0
	addi	%r0 %r1 1
	j	return_point.24
tail_b.135 :
	addi	%r0 %r1 0
return_point.24 :
	retl	
solver_rect_fast.0 :
	mov	%r3 %r4
	mov	%r2 %r5
	mov	%r1 %r6
	mov.s	%f2 %f5
	mov.s	%f1 %f4
	mov.s	%f0 %f3
branching_b.77 :
	lw	%r29 %r2 4
	lw.s	%r4 %f0 0
	sub.s	%f3 %f0 %f1
	lw.s	%r4 %f0 4
	mul.s	%f0 %f1 %f2
	lw.s	%r5 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.138
	mov.s	%f1 %f0
	j	branching_b.78
tail_b.138 :
	neg.s	%f1 %f0
branching_b.78 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 4
	fbl	%f0 %f1 tail_b.140
	addi	%r0 %r1 0
	j	branching_b.79
tail_b.140 :
	addi	%r0 %r1 1
branching_b.79 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.142
	lw.s	%r5 %f0 8
	mul.s	%f0 %f2 %f0
	add.s	%f5 %f0 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.143
	mov.s	%f1 %f0
	j	branching_b.81
tail_b.143 :
	neg.s	%f1 %f0
	j	branching_b.81
tail_b.142 :
	addi	%r0 %r3 0
branching_b.85 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.86
	sw.s	%r2 %f2 0
	addi	%r0 %r1 1
	j	return_point.25
branching_b.86 :
	lw.s	%r4 %f0 8
	sub.s	%f4 %f0 %f1
	lw.s	%r4 %f0 12
	mul.s	%f0 %f1 %f1
	lw.s	%r5 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f2
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f2 %f0 tail_b.152
	mov.s	%f2 %f0
	j	branching_b.87
tail_b.152 :
	neg.s	%f2 %f0
branching_b.87 :
	lw	%r6 %r1 16
	lw.s	%r1 %f2 0
	fbl	%f0 %f2 tail_b.154
	addi	%r0 %r3 0
	j	branching_b.88
tail_b.154 :
	addi	%r0 %r3 1
branching_b.88 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.156
	lw.s	%r5 %f0 8
	mul.s	%f0 %f1 %f0
	add.s	%f5 %f0 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	fbl	%f0 %f2 tail_b.157
	j	branching_b.90
tail_b.157 :
	neg.s	%f0 %f0
	j	branching_b.90
tail_b.156 :
	addi	%r0 %r1 0
branching_b.94 :
	addi	%r0 %r3 0
	beq	%r1 %r3 branching_b.95
	sw.s	%r2 %f1 0
	addi	%r0 %r1 2
	j	return_point.25
branching_b.95 :
	lw.s	%r4 %f0 16
	sub.s	%f5 %f0 %f0
	lw.s	%r4 %f1 20
	mul.s	%f1 %f0 %f2
	lw.s	%r5 %f0 0
	mul.s	%f0 %f2 %f0
	add.s	%f3 %f0 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.166
	mov.s	%f0 %f1
	j	branching_b.96
tail_b.166 :
	neg.s	%f0 %f1
branching_b.96 :
	lw	%r6 %r1 16
	lw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.168
	addi	%r0 %r3 0
	j	branching_b.97
tail_b.168 :
	addi	%r0 %r3 1
branching_b.97 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.170
	lw.s	%r5 %f0 4
	mul.s	%f0 %f2 %f0
	add.s	%f4 %f0 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.171
	j	branching_b.99
tail_b.171 :
	neg.s	%f0 %f0
	j	branching_b.99
tail_b.170 :
	addi	%r0 %r1 0
branching_b.103 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.180
	sw.s	%r2 %f2 0
	addi	%r0 %r1 3
	j	return_point.25
tail_b.180 :
	addi	%r0 %r1 0
	j	return_point.25
branching_b.99 :
	lw	%r6 %r1 16
	lw.s	%r1 %f1 4
	fbl	%f0 %f1 tail_b.173
	addi	%r0 %r3 0
	j	branching_b.100
tail_b.173 :
	addi	%r0 %r3 1
branching_b.100 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.175
	lw.s	%r4 %f1 20
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.176
	addi	%r0 %r3 0
	j	branching_b.102
tail_b.176 :
	addi	%r0 %r3 1
	j	branching_b.102
tail_b.175 :
	addi	%r0 %r1 0
	j	branching_b.103
branching_b.102 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.178
	addi	%r0 %r1 0
	j	branching_b.103
tail_b.178 :
	addi	%r0 %r1 1
	j	branching_b.103
branching_b.90 :
	lw	%r6 %r1 16
	lw.s	%r1 %f2 8
	fbl	%f0 %f2 tail_b.159
	addi	%r0 %r1 0
	j	branching_b.91
tail_b.159 :
	addi	%r0 %r1 1
branching_b.91 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.161
	lw.s	%r4 %f0 12
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	fbeq	%f0 %f2 tail_b.162
	addi	%r0 %r3 0
	j	branching_b.93
tail_b.162 :
	addi	%r0 %r3 1
	j	branching_b.93
tail_b.161 :
	addi	%r0 %r1 0
	j	branching_b.94
branching_b.93 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.164
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
	fbl	%f0 %f1 tail_b.145
	addi	%r0 %r3 0
	j	branching_b.82
tail_b.145 :
	addi	%r0 %r3 1
branching_b.82 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.147
	lw.s	%r4 %f1 4
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.148
	addi	%r0 %r1 0
	j	branching_b.84
tail_b.148 :
	addi	%r0 %r1 1
	j	branching_b.84
tail_b.147 :
	addi	%r0 %r3 0
	j	branching_b.85
branching_b.84 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.150
	addi	%r0 %r3 0
	j	branching_b.85
tail_b.150 :
	addi	%r0 %r3 1
solver_surface_fast.0 :
	mov.s	%f1 %f3
	mov.s	%f0 %f1
branching_b.104 :
	lw	%r29 %r4 4
	lw.s	%r2 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f4 0
	fbl	%f0 %f4 tail_b.184
	addi	%r0 %r3 0
	j	branching_b.105
tail_b.184 :
	addi	%r0 %r3 1
branching_b.105 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.186
	lw.s	%r2 %f0 4
	mul.s	%f1 %f0 %f1
	lw.s	%r2 %f0 8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	lw.s	%r2 %f1 12
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r4 %f0 0
	addi	%r0 %r1 1
	j	return_point.26
tail_b.186 :
	addi	%r0 %r1 0
return_point.26 :
	retl	
solver_second_fast.0 :
	mov	%r1 %r5
	mov.s	%f2 %f3
	mov.s	%f1 %f5
	mov.s	%f0 %f4
branching_b.106 :
	lw	%r29 %r3 4
	lw.s	%r2 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f1 %f0 tail_b.188
	addi	%r0 %r1 0
	j	branching_b.107
tail_b.188 :
	addi	%r0 %r1 1
branching_b.107 :
	addi	%r0 %r4 0
	beq	%r1 %r4 branching_b.108
	addi	%r0 %r1 0
	j	return_point.27
branching_b.108 :
	lw.s	%r2 %f0 4
	mul.s	%f4 %f0 %f2
	lw.s	%r2 %f0 8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f2 %f2
	lw.s	%r2 %f0 12
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f6
	sw.s	%r26 %f2 20
	sw.s	%r26 %f6 16
	sw.s	%r26 %f1 12
	sw	%r26 %r3 8
	sw	%r26 %r2 4
	sw	%r26 %r5 0
	mov	%r5 %r1
	mov.s	%f3 %f2
	mov.s	%f5 %f1
	mov.s	%f4 %f0
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	quadratic.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov.s	%f0 %f2
	lw.s	%r26 %f2 20
	lw.s	%r26 %f6 16
	lw.s	%r26 %f1 12
	lw	%r26 %r3 8
	lw	%r26 %r2 4
	lw	%r26 %r5 0
	lw	%r5 %r4 4
	addi	%r0 %r1 3
	beq	%r4 %r1 tail_b.190
	mov.s	%f2 %f0
	j	branching_b.109
tail_b.190 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
branching_b.109 :
	mul.s	%f6 %f6 %f2
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.192
	addi	%r0 %r1 0
	j	branching_b.110
tail_b.192 :
	addi	%r0 %r1 1
branching_b.110 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.194
	lw	%r5 %r4 24
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.195
	sqrt.s	%f1 %f0
	add.s	%f0 %f6 %f1
	lw.s	%r2 %f0 16
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 0
	j	tail_b.197
tail_b.195 :
	sqrt.s	%f1 %f0
	sub.s	%f0 %f6 %f1
	lw.s	%r2 %f0 16
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 0
	j	tail_b.197
tail_b.194 :
	addi	%r0 %r1 0
	j	return_point.27
tail_b.197 :
	addi	%r0 %r1 1
return_point.27 :
	retl	
solver_fast.0 :
	mov	%r3 %r6
	mov	%r2 %r5
	mov	%r1 %r4
	mov	%r29 %r1
branching_b.112 :
	lw	%r1 %r7 16
	lw	%r1 %r29 12
	lw	%r1 %r2 8
	lw	%r1 %r1 4
	slli	%r4 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r3 0
	lw.s	%r6 %f0 0
	lw	%r3 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f3
	lw.s	%r6 %f0 4
	lw	%r3 %r1 20
	lw.s	%r1 %f1 4
	sub.s	%f1 %f0 %f1
	lw.s	%r6 %f2 8
	lw	%r3 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f2 %f2
	lw	%r5 %r1 4
	slli	%r4 %r4 2
	add	%r1 %r4 %r31
	lw	%r31 %r4 0
	lw	%r3 %r1 4
	addi	%r0 %r6 1
	beq	%r1 %r6 tail_b.199
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.200
	mov	%r4 %r2
	mov	%r3 %r1
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.28
tail_b.200 :
	mov	%r7 %r29
	mov	%r4 %r2
	mov	%r3 %r1
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.28
tail_b.199 :
	lw	%r5 %r1 0
	mov	%r2 %r29
	mov	%r1 %r2
	mov	%r3 %r1
	mov	%r4 %r3
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
return_point.28 :
	retl	
solver_second_fast2.0 :
	mov	%r2 %r4
	mov	%r1 %r5
	mov.s	%f2 %f3
	mov.s	%f1 %f4
	mov.s	%f0 %f2
branching_b.114 :
	lw	%r29 %r2 4
	lw.s	%r4 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbeq	%f0 %f1 tail_b.202
	addi	%r0 %r6 0
	j	branching_b.115
tail_b.202 :
	addi	%r0 %r6 1
branching_b.115 :
	addi	%r0 %r1 0
	beq	%r6 %r1 branching_b.116
	addi	%r0 %r1 0
	j	return_point.29
branching_b.116 :
	lw.s	%r4 %f1 4
	mul.s	%f2 %f1 %f2
	lw.s	%r4 %f1 8
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f2 %f2
	lw.s	%r4 %f1 12
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f2 %f2
	lw.s	%r3 %f1 12
	mul.s	%f2 %f2 %f3
	mul.s	%f1 %f0 %f0
	sub.s	%f0 %f3 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f1 %f0 tail_b.204
	addi	%r0 %r3 0
	j	branching_b.117
tail_b.204 :
	addi	%r0 %r3 1
branching_b.117 :
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.206
	lw	%r5 %r3 24
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.207
	sqrt.s	%f0 %f0
	add.s	%f0 %f2 %f0
	lw.s	%r4 %f1 16
	mul.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	j	tail_b.209
tail_b.207 :
	sqrt.s	%f0 %f0
	sub.s	%f0 %f2 %f1
	lw.s	%r4 %f0 16
	mul.s	%f0 %f1 %f0
	sw.s	%r2 %f0 0
	j	tail_b.209
tail_b.206 :
	addi	%r0 %r1 0
	j	return_point.29
tail_b.209 :
	addi	%r0 %r1 1
return_point.29 :
	retl	
solver_fast2.0 :
	mov	%r2 %r3
	mov	%r29 %r2
branching_b.119 :
	lw	%r2 %r29 16
	lw	%r2 %r4 12
	lw	%r2 %r5 8
	lw	%r2 %r6 4
	slli	%r1 %r2 2
	add	%r6 %r2 %r31
	lw	%r31 %r8 0
	lw	%r8 %r7 40
	lw.s	%r7 %f0 0
	lw.s	%r7 %f1 4
	lw.s	%r7 %f2 8
	lw	%r3 %r2 4
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r2 0
	lw	%r8 %r6 4
	addi	%r0 %r1 1
	beq	%r6 %r1 tail_b.211
	addi	%r0 %r1 2
	beq	%r6 %r1 branching_b.121
	mov	%r7 %r3
	mov	%r8 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.30
branching_b.121 :
	lw.s	%r2 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.212
	addi	%r0 %r1 0
	j	branching_b.122
tail_b.212 :
	addi	%r0 %r1 1
	j	branching_b.122
tail_b.211 :
	lw	%r3 %r1 0
	mov	%r4 %r29
	mov	%r2 %r3
	mov	%r1 %r2
	mov	%r8 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.30
branching_b.122 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.214
	lw.s	%r2 %f1 0
	lw.s	%r7 %f0 12
	mul.s	%f0 %f1 %f0
	sw.s	%r5 %f0 0
	addi	%r0 %r1 1
	j	return_point.30
tail_b.214 :
	addi	%r0 %r1 0
return_point.30 :
	retl	
setup_rect_table.0 :
	mov	%r2 %r5
	mov	%r1 %r4
branching_b.123 :
	addi	%r0 %r1 6
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r3 8
	sw	%r26 %r5 4
	sw	%r26 %r4 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r3
	lw	%r26 %r3 8
	lw	%r26 %r5 4
	lw	%r26 %r4 0
	lw.s	%r4 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbeq	%f0 %f1 tail_b.217
	addi	%r0 %r2 0
	j	branching_b.124
tail_b.217 :
	addi	%r0 %r2 1
branching_b.124 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.125
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r3 %f0 4
	j	branching_b.129
branching_b.125 :
	lw	%r5 %r6 24
	lw.s	%r4 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.219
	addi	%r0 %r2 0
	j	branching_b.126
tail_b.219 :
	addi	%r0 %r2 1
branching_b.126 :
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.221
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.222
	addi	%r0 %r1 0
	j	branching_b.128
tail_b.222 :
	addi	%r0 %r1 1
	j	branching_b.128
tail_b.221 :
	mov	%r2 %r1
branching_b.128 :
	lw	%r5 %r2 16
	lw.s	%r2 %f0 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.224
	j	tail_b.226
tail_b.224 :
	neg.s	%f0 %f0
tail_b.226 :
	sw.s	%r3 %f0 0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	lw.s	%r4 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 4
branching_b.129 :
	lw.s	%r4 %f0 4
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbeq	%f0 %f1 tail_b.228
	addi	%r0 %r1 0
	j	branching_b.130
tail_b.228 :
	addi	%r0 %r1 1
branching_b.130 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.131
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r3 %f0 12
	j	branching_b.135
branching_b.131 :
	lw	%r5 %r1 24
	lw.s	%r4 %f0 4
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f1 0
	fbl	%f0 %f1 tail_b.230
	addi	%r0 %r2 0
	j	branching_b.132
tail_b.230 :
	addi	%r0 %r2 1
branching_b.132 :
	addi	%r0 %r6 0
	beq	%r1 %r6 tail_b.232
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.233
	addi	%r0 %r1 0
	j	branching_b.134
tail_b.233 :
	addi	%r0 %r1 1
	j	branching_b.134
tail_b.232 :
	mov	%r2 %r1
branching_b.134 :
	lw	%r5 %r2 16
	lw.s	%r2 %f0 4
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.235
	j	tail_b.237
tail_b.235 :
	neg.s	%f0 %f0
tail_b.237 :
	sw.s	%r3 %f0 8
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	lw.s	%r4 %f0 4
	div.s	%f0 %f1 %f0
	sw.s	%r3 %f0 12
branching_b.135 :
	lw.s	%r4 %f0 8
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbeq	%f0 %f1 tail_b.239
	addi	%r0 %r1 0
	j	branching_b.136
tail_b.239 :
	addi	%r0 %r1 1
branching_b.136 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.137
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r3 %f0 20
	j	tail_b.250
branching_b.137 :
	lw	%r5 %r2 24
	lw.s	%r4 %f1 8
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.241
	addi	%r0 %r6 0
	j	branching_b.138
tail_b.241 :
	addi	%r0 %r6 1
branching_b.138 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.243
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.244
	addi	%r0 %r1 0
	j	branching_b.140
tail_b.244 :
	addi	%r0 %r1 1
	j	branching_b.140
tail_b.243 :
	mov	%r6 %r1
branching_b.140 :
	lw	%r5 %r2 16
	lw.s	%r2 %f0 8
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.246
	j	tail_b.248
tail_b.246 :
	neg.s	%f0 %f0
tail_b.248 :
	sw.s	%r3 %f0 16
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	lw.s	%r4 %f1 8
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 20
tail_b.250 :
	mov	%r3 %r1
return_point.31 :
	retl	
setup_surface_table.0 :
	mov	%r2 %r3
	mov	%r1 %r4
branching_b.141 :
	addi	%r0 %r1 4
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r4 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r2
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r4 0
	lw.s	%r4 %f0 0
	lw	%r3 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	lw.s	%r4 %f1 4
	lw	%r3 %r1 16
	lw.s	%r1 %f2 4
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	lw.s	%r4 %f2 8
	lw	%r3 %r1 16
	lw.s	%r1 %f0 8
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.251
	addi	%r0 %r4 0
	j	branching_b.142
tail_b.251 :
	addi	%r0 %r4 1
branching_b.142 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.253
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	sw.s	%r2 %f0 0
	lw	%r3 %r1 16
	lw.s	%r1 %f0 0
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r2 %f0 4
	lw	%r3 %r1 16
	lw.s	%r1 %f0 4
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r2 %f0 8
	lw	%r3 %r1 16
	lw.s	%r1 %f0 8
	div.s	%f1 %f0 %f0
	neg.s	%f0 %f0
	sw.s	%r2 %f0 12
	j	tail_b.255
tail_b.253 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r2 %f0 0
tail_b.255 :
	mov	%r2 %r1
return_point.32 :
	retl	
setup_second_table.0 :
	mov	%r2 %r4
	mov	%r1 %r2
branching_b.143 :
	addi	%r0 %r3 5
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r5 8
	sw	%r26 %r4 4
	sw	%r26 %r2 0
	mov	%r3 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_create_float_array
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r5
	lw	%r26 %r5 8
	lw	%r26 %r4 4
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw.s	%r2 %f1 4
	lw.s	%r2 %f2 8
	sw.s	%r26 %f2 12
	sw	%r26 %r5 8
	sw	%r26 %r4 4
	sw	%r26 %r2 0
	mov	%r4 %r1
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	quadratic.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov.s	%f0 %f2
	lw.s	%r26 %f2 12
	lw	%r26 %r5 8
	lw	%r26 %r4 4
	lw	%r26 %r2 0
	lw.s	%r2 %f0 0
	lw	%r4 %r1 16
	lw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	neg.s	%f0 %f1
	lw.s	%r2 %f3 4
	lw	%r4 %r1 16
	lw.s	%r1 %f0 4
	mul.s	%f0 %f3 %f0
	neg.s	%f0 %f5
	lw.s	%r2 %f3 8
	lw	%r4 %r1 16
	lw.s	%r1 %f0 8
	mul.s	%f0 %f3 %f0
	neg.s	%f0 %f4
	sw.s	%r5 %f2 0
	lw	%r4 %r3 12
	addi	%r0 %r1 0
	bne	%r3 %r1 tail_b.256
	sw.s	%r5 %f1 4
	sw.s	%r5 %f5 8
	sw.s	%r5 %f4 12
	j	branching_b.144
tail_b.256 :
	lw.s	%r2 %f3 8
	lw	%r4 %r1 36
	lw.s	%r1 %f0 4
	mul.s	%f0 %f3 %f6
	lw.s	%r2 %f3 4
	lw	%r4 %r1 36
	lw.s	%r1 %f0 8
	mul.s	%f0 %f3 %f0
	add.s	%f0 %f6 %f0
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f3 0
	div.s	%f3 %f0 %f0
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 4
	lw.s	%r2 %f1 8
	lw	%r4 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f3
	lw.s	%r2 %f0 0
	lw	%r4 %r1 36
	lw.s	%r1 %f1 8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f1
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	sub.s	%f0 %f5 %f0
	sw.s	%r5 %f0 8
	lw.s	%r2 %f1 4
	lw	%r4 %r1 36
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	lw.s	%r2 %f1 0
	lw	%r4 %r1 36
	lw.s	%r1 %f3 4
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	sub.s	%f0 %f4 %f0
	sw.s	%r5 %f0 12
branching_b.144 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbeq	%f2 %f0 tail_b.258
	addi	%r0 %r1 0
	j	branching_b.145
tail_b.258 :
	addi	%r0 %r1 1
branching_b.145 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.260
	j	tail_b.262
tail_b.260 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f2 %f0 %f0
	sw.s	%r5 %f0 16
tail_b.262 :
	mov	%r5 %r1
return_point.33 :
	retl	
setup_startp_constants.0 :
	mov	%r2 %r7
	mov	%r1 %r6
branching_b.146 :
	lw	%r29 %r2 4
	addi	%r0 %r1 0
	ble	%r1 %r7 branching_b.147
	j	return_point.34
branching_b.147 :
	slli	%r7 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r4 0
	lw	%r4 %r5 40
	lw	%r4 %r2 4
	lw.s	%r6 %f1 0
	lw	%r4 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 0
	lw.s	%r6 %f1 4
	lw	%r4 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 4
	lw.s	%r6 %f1 8
	lw	%r4 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f1 %f0
	sw.s	%r5 %f0 8
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.263
	addi	%r0 %r1 2
	bl	%r1 %r2 branching_b.149
	j	tail_b.268
branching_b.149 :
	lw.s	%r5 %f0 0
	lw.s	%r5 %f1 4
	lw.s	%r5 %f2 8
	sw.s	%r26 %f0 24
	sw	%r26 %r3 20
	sw	%r26 %r2 16
	sw	%r26 %r5 12
	sw	%r26 %r7 8
	sw	%r26 %r6 4
	sw	%r26 %r29 0
	mov	%r4 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	quadratic.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 24
	lw	%r26 %r3 20
	lw	%r26 %r2 16
	lw	%r26 %r5 12
	lw	%r26 %r7 8
	lw	%r26 %r6 4
	lw	%r26 %r29 0
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.264
	j	tail_b.266
tail_b.264 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f0
	j	tail_b.266
tail_b.263 :
	lw	%r4 %r1 16
	lw.s	%r5 %f0 0
	lw.s	%r5 %f2 4
	lw.s	%r5 %f1 8
	lw.s	%r1 %f3 0
	mul.s	%f0 %f3 %f0
	lw.s	%r1 %f3 4
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	lw.s	%r1 %f2 8
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	sw.s	%r5 %f0 12
	j	tail_b.268
tail_b.266 :
	sw.s	%r5 %f0 12
tail_b.268 :
	addi	%r0 %r1 1
	sub	%r7 %r1 %r2
	mov	%r6 %r1
	lw	%r29 %r30 0
	jr	%r30
return_point.34 :
	mov	%r3 %r1
	retl	
setup_startp.0 :
	mov	%r1 %r5
tail_b.270 :
	lw	%r29 %r3 12
	lw	%r29 %r2 8
	lw	%r29 %r4 4
	lw.s	%r5 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r5 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r5 %f0 8
	sw.s	%r3 %f0 8
	lw	%r4 %r4 0
	addi	%r0 %r3 1
	sub	%r4 %r3 %r3
	mov	%r2 %r29
	mov	%r5 %r1
	mov	%r3 %r2
	lw	%r29 %r30 0
	jr	%r30
return_point.35 :
	retl	
is_rect_outside.0 :
	mov	%r1 %r3
	mov.s	%f1 %f3
	mov.s	%f0 %f1
branching_b.150 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.271
	mov.s	%f1 %f0
	j	branching_b.151
tail_b.271 :
	neg.s	%f1 %f0
branching_b.151 :
	lw	%r3 %r1 16
	lw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.273
	addi	%r0 %r1 0
	j	branching_b.152
tail_b.273 :
	addi	%r0 %r1 1
branching_b.152 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.275
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f3 %f0 tail_b.276
	mov.s	%f3 %f0
	j	branching_b.154
tail_b.276 :
	neg.s	%f3 %f0
	j	branching_b.154
tail_b.275 :
	addi	%r0 %r2 0
branching_b.158 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.159
	lw	%r3 %r1 24
	j	return_point.36
branching_b.159 :
	lw	%r3 %r1 24
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.285
	addi	%r0 %r1 0
	j	return_point.36
tail_b.285 :
	addi	%r0 %r1 1
return_point.36 :
	retl	
branching_b.154 :
	lw	%r3 %r1 16
	lw.s	%r1 %f1 4
	fbl	%f0 %f1 tail_b.278
	addi	%r0 %r1 0
	j	branching_b.155
tail_b.278 :
	addi	%r0 %r1 1
branching_b.155 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.280
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f2 %f0 tail_b.281
	mov.s	%f2 %f1
	j	branching_b.157
tail_b.281 :
	neg.s	%f2 %f1
	j	branching_b.157
tail_b.280 :
	addi	%r0 %r2 0
	j	branching_b.158
branching_b.157 :
	lw	%r3 %r1 16
	lw.s	%r1 %f0 8
	fbl	%f1 %f0 tail_b.283
	addi	%r0 %r2 0
	j	branching_b.158
tail_b.283 :
	addi	%r0 %r2 1
is_plane_outside.0 :
branching_b.160 :
	lw	%r1 %r2 16
	lw.s	%r2 %f3 0
	mul.s	%f0 %f3 %f3
	lw.s	%r2 %f0 4
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f1
	lw.s	%r2 %f0 8
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	lw	%r1 %r2 24
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.288
	addi	%r0 %r1 0
	j	branching_b.161
tail_b.288 :
	addi	%r0 %r1 1
branching_b.161 :
	addi	%r0 %r3 0
	beq	%r2 %r3 tail_b.290
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.291
	addi	%r0 %r1 0
	j	branching_b.163
tail_b.291 :
	addi	%r0 %r1 1
	j	branching_b.163
tail_b.290 :
branching_b.163 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.293
	addi	%r0 %r1 0
	j	return_point.37
tail_b.293 :
	addi	%r0 %r1 1
return_point.37 :
	retl	
is_second_outside.0 :
	mov	%r1 %r3
branching_b.164 :
	sw.s	%r26 %f0 4
	sw	%r26 %r3 0
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	quadratic.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw.s	%r26 %f0 4
	lw	%r26 %r3 0
	lw	%r3 %r1 4
	addi	%r0 %r2 3
	beq	%r1 %r2 tail_b.295
	mov.s	%f0 %f1
	j	branching_b.165
tail_b.295 :
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
branching_b.165 :
	lw	%r3 %r2 24
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.297
	addi	%r0 %r3 0
	j	branching_b.166
tail_b.297 :
	addi	%r0 %r3 1
branching_b.166 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.299
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.300
	addi	%r0 %r1 0
	j	branching_b.168
tail_b.300 :
	addi	%r0 %r1 1
	j	branching_b.168
tail_b.299 :
	mov	%r3 %r1
branching_b.168 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.302
	addi	%r0 %r1 0
	j	return_point.38
tail_b.302 :
	addi	%r0 %r1 1
return_point.38 :
	retl	
shadow_check_and_group.0 :
	mov	%r29 %r8
	mov	%r2 %r4
	mov	%r1 %r6
branching_b.169 :
	lw	%r8 %r29 24
	lw	%r8 %r10 20
	lw	%r8 %r9 16
	lw	%r8 %r2 12
	lw	%r8 %r7 8
	lw	%r8 %r5 4
	slli	%r6 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r1 -1
	beq	%r3 %r1 tail_b.304
	slli	%r6 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r3 0
	sw	%r26 %r4 32
	sw	%r26 %r2 28
	sw	%r26 %r3 24
	sw	%r26 %r5 20
	sw	%r26 %r7 16
	sw	%r26 %r9 12
	sw	%r26 %r10 8
	sw	%r26 %r6 4
	sw	%r26 %r8 0
	mov	%r3 %r1
	mov	%r5 %r3
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r4 32
	lw	%r26 %r2 28
	lw	%r26 %r3 24
	lw	%r26 %r5 20
	lw	%r26 %r7 16
	lw	%r26 %r9 12
	lw	%r26 %r10 8
	lw	%r26 %r6 4
	lw	%r26 %r8 0
	lw.s	%r10 %f1 0
	addi	%r0 %r1 0
	bne	%r2 %r1 branching_b.171
	addi	%r0 %r1 0
	j	branching_b.172
branching_b.171 :
	addi	%r0 %r1 l.194
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.305
	addi	%r0 %r1 0
	j	branching_b.172
tail_b.305 :
	addi	%r0 %r1 1
	j	branching_b.172
tail_b.304 :
	addi	%r0 %r1 0
return_point.39 :
	retl	
branching_b.172 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.173
	addi	%r0 %r1 l.196
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f2
	lw.s	%r7 %f0 0
	mul.s	%f2 %f0 %f0
	lw.s	%r5 %f1 0
	add.s	%f1 %f0 %f4
	lw.s	%r7 %f0 4
	mul.s	%f2 %f0 %f0
	lw.s	%r5 %f1 4
	add.s	%f1 %f0 %f1
	lw.s	%r7 %f0 8
	mul.s	%f2 %f0 %f0
	lw.s	%r5 %f2 8
	add.s	%f2 %f0 %f0
	addi	%r0 %r3 0
	sw	%r26 %r3 0
check_all_inside.3 :
	slli	%r3 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 -1
	beq	%r2 %r1 tail_b.310
	slli	%r2 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 20
	lw.s	%r2 %f2 0
	sub.s	%f2 %f4 %f3
	lw	%r1 %r2 20
	lw.s	%r2 %f2 4
	sub.s	%f2 %f1 %f5
	lw	%r1 %r2 20
	lw.s	%r2 %f2 8
	sub.s	%f2 %f0 %f2
	lw	%r1 %r5 4
	addi	%r0 %r2 1
	beq	%r5 %r2 tail_b.311
	addi	%r0 %r2 2
	beq	%r5 %r2 tail_b.312
	mov.s	%f5 %f1
	mov.s	%f3 %f0
	j	is_second_outside.0
	j	branching_b.177
tail_b.312 :
	mov.s	%f5 %f1
	mov.s	%f3 %f0
	j	is_plane_outside.0
	j	branching_b.177
tail_b.311 :
	mov.s	%f5 %f1
	mov.s	%f3 %f0
	j	is_rect_outside.0
	j	branching_b.177
tail_b.310 :
	addi	%r0 %r2 1
	j	branching_b.178
branching_b.173 :
	slli	%r3 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.308
	addi	%r6 %r1 1
	mov	%r8 %r29
	mov	%r4 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.39
tail_b.308 :
	addi	%r0 %r1 0
	j	return_point.39
branching_b.178 :
	lw	%r26 %r3 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.316
	addi	%r0 %r1 1
	j	return_point.39
tail_b.316 :
	addi	%r6 %r1 1
	mov	%r8 %r29
	mov	%r4 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.39
branching_b.177 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.314
	addi	%r0 %r2 0
	j	branching_b.178
tail_b.314 :
	addi	%r3 %r3 1
	j	check_all_inside.3
shadow_check_one_or_matrix.0 :
	mov	%r29 %r6
	mov	%r2 %r5
	mov	%r1 %r7
branching_b.179 :
	lw	%r6 %r29 24
	lw	%r6 %r1 20
	lw	%r6 %r8 16
	lw	%r6 %r11 12
	lw	%r6 %r3 8
	lw	%r6 %r4 4
	slli	%r7 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r9 0
	lw	%r9 %r10 0
	addi	%r0 %r2 -1
	beq	%r10 %r2 tail_b.318
	addi	%r0 %r2 99
	beq	%r10 %r2 tail_b.319
	sw	%r26 %r9 28
	sw	%r26 %r3 24
	sw	%r26 %r4 20
	sw	%r26 %r8 16
	sw	%r26 %r1 12
	sw	%r26 %r5 8
	sw	%r26 %r7 4
	sw	%r26 %r6 0
	mov	%r11 %r2
	mov	%r10 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r3
	lw	%r26 %r9 28
	lw	%r26 %r3 24
	lw	%r26 %r4 20
	lw	%r26 %r8 16
	lw	%r26 %r1 12
	lw	%r26 %r5 8
	lw	%r26 %r7 4
	lw	%r26 %r6 0
	addi	%r0 %r2 0
	bne	%r3 %r2 branching_b.182
	addi	%r0 %r2 0
	j	branching_b.187
branching_b.182 :
	lw.s	%r1 %f0 0
	addi	%r0 %r1 l.198
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.320
	addi	%r0 %r2 0
	j	branching_b.183
tail_b.320 :
	addi	%r0 %r2 1
	j	branching_b.183
tail_b.319 :
	addi	%r0 %r2 1
	j	branching_b.187
tail_b.318 :
	addi	%r0 %r1 0
return_point.40 :
	retl	
branching_b.183 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.322
	addi	%r0 %r2 1
	sw	%r26 %r2 0
shadow_check_one_or_group.2 :
	slli	%r2 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r3 -1
	beq	%r1 %r3 tail_b.323
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r3 0
	addi	%r0 %r1 0
	sw	%r26 %r3 32
	sw	%r26 %r2 28
	sw	%r26 %r9 24
	sw	%r26 %r4 20
	sw	%r26 %r8 16
	sw	%r26 %r5 12
	sw	%r26 %r7 8
	sw	%r26 %r6 4
	mov	%r8 %r29
	mov	%r3 %r2
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r3
	lw	%r26 %r3 32
	lw	%r26 %r2 28
	lw	%r26 %r9 24
	lw	%r26 %r4 20
	lw	%r26 %r8 16
	lw	%r26 %r5 12
	lw	%r26 %r7 8
	lw	%r26 %r6 4
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.324
	addi	%r0 %r1 1
	j	branching_b.186
tail_b.324 :
	addi	%r2 %r2 1
	j	shadow_check_one_or_group.2
tail_b.323 :
	addi	%r0 %r1 0
	j	branching_b.186
tail_b.322 :
	addi	%r0 %r2 0
	j	branching_b.187
branching_b.186 :
	lw	%r26 %r2 0
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.326
	addi	%r0 %r2 1
	j	branching_b.187
tail_b.326 :
	addi	%r0 %r2 0
branching_b.187 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.329
	addi	%r0 %r3 1
	sw	%r26 %r3 4
shadow_check_one_or_group.1 :
	slli	%r3 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 -1
	beq	%r1 %r2 tail_b.330
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 0
	sw	%r26 %r2 36
	sw	%r26 %r9 32
	sw	%r26 %r3 28
	sw	%r26 %r4 24
	sw	%r26 %r8 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r6 8
	mov	%r8 %r29
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov	%r1 %r2
	lw	%r26 %r2 36
	lw	%r26 %r9 32
	lw	%r26 %r3 28
	lw	%r26 %r4 24
	lw	%r26 %r8 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r6 8
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.331
	addi	%r0 %r2 1
	j	branching_b.190
tail_b.331 :
	addi	%r3 %r3 1
	j	shadow_check_one_or_group.1
tail_b.330 :
	addi	%r0 %r2 0
	j	branching_b.190
tail_b.329 :
	addi	%r7 %r1 1
	mov	%r6 %r29
	mov	%r5 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.40
branching_b.190 :
	lw	%r26 %r3 4
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.333
	addi	%r0 %r1 1
	j	return_point.40
tail_b.333 :
	addi	%r7 %r1 1
	mov	%r6 %r29
	mov	%r5 %r2
	lw	%r29 %r30 0
	jr	%r30
solve_each_element.0 :
	mov	%r3 %r9
	mov	%r2 %r10
	mov	%r1 %r2
branching_b.191 :
	lw	%r29 %r6 32
	lw	%r29 %r15 28
	lw	%r29 %r1 24
	lw	%r29 %r3 20
	lw	%r29 %r14 16
	lw	%r29 %r13 12
	lw	%r29 %r12 8
	lw	%r29 %r8 4
	slli	%r2 %r5 2
	add	%r10 %r5 %r31
	lw	%r31 %r5 0
	addi	%r0 %r7 -1
	beq	%r5 %r7 tail_b.335
	sw	%r26 %r10 52
	sw	%r26 %r4 48
	sw	%r26 %r11 44
	sw	%r26 %r5 40
	sw	%r26 %r8 36
	sw	%r26 %r12 32
	sw	%r26 %r13 28
	sw	%r26 %r14 24
	sw	%r26 %r1 20
	sw	%r26 %r15 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r2 4
	sw	%r26 %r29 0
	mov	%r3 %r29
	mov	%r9 %r2
	mov	%r5 %r1
	mov	%r15 %r3
	sw	%r26 %r28 56
	lw	%r29 %r30 0
	addi	%r26 %r26 60
	jalr	%r30
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r11
	lw	%r26 %r10 52
	lw	%r26 %r4 48
	lw	%r26 %r11 44
	lw	%r26 %r5 40
	lw	%r26 %r8 36
	lw	%r26 %r12 32
	lw	%r26 %r13 28
	lw	%r26 %r14 24
	lw	%r26 %r1 20
	lw	%r26 %r15 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r2 4
	lw	%r26 %r29 0
	addi	%r0 %r3 0
	bne	%r11 %r3 branching_b.193
	slli	%r5 %r1 2
	add	%r14 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.351
	addi	%r2 %r1 1
	mov	%r9 %r3
	mov	%r10 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.41
tail_b.351 :
	j	return_point.41
branching_b.193 :
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.336
	addi	%r0 %r1 0
	j	branching_b.194
tail_b.336 :
	addi	%r0 %r1 1
	j	branching_b.194
tail_b.335 :
	j	return_point.41
branching_b.194 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.338
	lw.s	%r6 %f0 0
	fbl	%f1 %f0 tail_b.339
	addi	%r0 %r1 0
	j	branching_b.196
tail_b.339 :
	addi	%r0 %r1 1
	j	branching_b.196
tail_b.338 :
tail_b.350 :
	addi	%r2 %r1 1
	mov	%r9 %r3
	mov	%r10 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.41
branching_b.196 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.341
	addi	%r0 %r1 l.196
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f6
	lw.s	%r9 %f0 0
	mul.s	%f6 %f0 %f0
	lw.s	%r15 %f1 0
	add.s	%f1 %f0 %f5
	lw.s	%r9 %f0 4
	mul.s	%f6 %f0 %f0
	lw.s	%r15 %f1 4
	add.s	%f1 %f0 %f4
	lw.s	%r9 %f0 8
	mul.s	%f6 %f0 %f1
	lw.s	%r15 %f0 8
	add.s	%f0 %f1 %f2
	addi	%r0 %r3 0
	sw	%r26 %r3 0
check_all_inside.2 :
	slli	%r3 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r7 0
	addi	%r0 %r1 -1
	beq	%r7 %r1 tail_b.342
	slli	%r7 %r1 2
	add	%r14 %r1 %r31
	lw	%r31 %r7 0
	lw	%r7 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f5 %f0
	lw	%r7 %r1 20
	lw.s	%r1 %f1 4
	sub.s	%f1 %f4 %f1
	lw	%r7 %r1 20
	lw.s	%r1 %f3 8
	sub.s	%f3 %f2 %f3
	lw	%r7 %r15 4
	addi	%r0 %r1 1
	beq	%r15 %r1 tail_b.343
	addi	%r0 %r1 2
	beq	%r15 %r1 tail_b.344
	mov	%r7 %r1
	mov.s	%f3 %f2
	j	is_second_outside.0
	j	branching_b.200
tail_b.344 :
	mov	%r7 %r1
	mov.s	%f3 %f2
	j	is_plane_outside.0
	j	branching_b.200
tail_b.343 :
	mov	%r7 %r1
	mov.s	%f3 %f2
	j	is_rect_outside.0
	j	branching_b.200
tail_b.342 :
	addi	%r0 %r7 1
	j	branching_b.201
tail_b.341 :
	j	tail_b.350
branching_b.201 :
	lw	%r26 %r3 0
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.348
	sw.s	%r6 %f6 0
	sw.s	%r12 %f5 0
	sw.s	%r12 %f4 4
	sw.s	%r12 %f2 8
	sw	%r8 %r5 0
	sw	%r13 %r11 0
	j	tail_b.350
tail_b.348 :
	j	tail_b.350
branching_b.200 :
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.346
	addi	%r0 %r7 0
	j	branching_b.201
tail_b.346 :
	addi	%r3 %r3 1
	j	check_all_inside.2
return_point.41 :
	mov	%r4 %r1
	retl	
solve_each_element_fast.0 :
	mov	%r29 %r7
	mov	%r3 %r6
	mov	%r2 %r12
	mov	%r1 %r13
branching_b.203 :
	lw	%r7 %r2 32
	lw	%r7 %r3 28
	lw	%r7 %r29 24
	lw	%r7 %r4 20
	lw	%r7 %r14 16
	lw	%r7 %r9 12
	lw	%r7 %r8 8
	lw	%r7 %r10 4
	lw	%r6 %r15 0
	slli	%r13 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r5 0
	addi	%r0 %r1 -1
	beq	%r5 %r1 tail_b.353
	sw	%r26 %r12 56
	sw	%r26 %r11 52
	sw	%r26 %r16 48
	sw	%r26 %r5 44
	sw	%r26 %r15 40
	sw	%r26 %r10 36
	sw	%r26 %r8 32
	sw	%r26 %r9 28
	sw	%r26 %r14 24
	sw	%r26 %r4 20
	sw	%r26 %r3 16
	sw	%r26 %r2 12
	sw	%r26 %r6 8
	sw	%r26 %r13 4
	sw	%r26 %r7 0
	mov	%r6 %r2
	mov	%r5 %r1
	sw	%r26 %r28 60
	lw	%r29 %r30 0
	addi	%r26 %r26 64
	jalr	%r30
	addi	%r26 %r26 -64
	lw	%r26 %r28 60
	mov	%r1 %r16
	lw	%r26 %r12 56
	lw	%r26 %r11 52
	lw	%r26 %r16 48
	lw	%r26 %r5 44
	lw	%r26 %r15 40
	lw	%r26 %r10 36
	lw	%r26 %r8 32
	lw	%r26 %r9 28
	lw	%r26 %r14 24
	lw	%r26 %r4 20
	lw	%r26 %r3 16
	lw	%r26 %r2 12
	lw	%r26 %r6 8
	lw	%r26 %r13 4
	lw	%r26 %r7 0
	addi	%r0 %r1 0
	bne	%r16 %r1 branching_b.205
	slli	%r5 %r1 2
	add	%r14 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 24
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.369
	addi	%r13 %r1 1
	mov	%r7 %r29
	mov	%r6 %r3
	mov	%r12 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.42
tail_b.369 :
	j	return_point.42
branching_b.205 :
	lw.s	%r4 %f1 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.354
	addi	%r0 %r4 0
	j	branching_b.206
tail_b.354 :
	addi	%r0 %r4 1
	j	branching_b.206
tail_b.353 :
	j	return_point.42
branching_b.206 :
	addi	%r0 %r1 0
	beq	%r4 %r1 tail_b.356
	lw.s	%r2 %f0 0
	fbl	%f1 %f0 tail_b.357
	addi	%r0 %r1 0
	j	branching_b.208
tail_b.357 :
	addi	%r0 %r1 1
	j	branching_b.208
tail_b.356 :
tail_b.368 :
	addi	%r13 %r1 1
	mov	%r7 %r29
	mov	%r6 %r3
	mov	%r12 %r2
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.42
branching_b.208 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.359
	addi	%r0 %r1 l.196
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f5
	lw.s	%r15 %f0 0
	mul.s	%f5 %f0 %f0
	lw.s	%r3 %f1 0
	add.s	%f1 %f0 %f3
	lw.s	%r15 %f0 4
	mul.s	%f5 %f0 %f0
	lw.s	%r3 %f1 4
	add.s	%f1 %f0 %f4
	lw.s	%r15 %f0 8
	mul.s	%f5 %f0 %f0
	lw.s	%r3 %f1 8
	add.s	%f1 %f0 %f6
	addi	%r0 %r3 0
	sw	%r26 %r3 0
check_all_inside.1 :
	slli	%r3 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r4 0
	addi	%r0 %r1 -1
	beq	%r4 %r1 tail_b.360
	slli	%r4 %r1 2
	add	%r14 %r1 %r31
	lw	%r31 %r4 0
	lw	%r4 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f3 %f1
	lw	%r4 %r1 20
	lw.s	%r1 %f0 4
	sub.s	%f0 %f4 %f2
	lw	%r4 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f6 %f0
	lw	%r4 %r1 4
	addi	%r0 %r15 1
	beq	%r1 %r15 tail_b.361
	addi	%r0 %r15 2
	beq	%r1 %r15 tail_b.362
	mov	%r4 %r1
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f30 %f1
	j	is_second_outside.0
	j	branching_b.212
tail_b.362 :
	mov	%r4 %r1
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f30 %f1
	j	is_plane_outside.0
	j	branching_b.212
tail_b.361 :
	mov	%r4 %r1
	mov.s	%f2 %f30
	mov.s	%f0 %f2
	mov.s	%f1 %f0
	mov.s	%f30 %f1
	j	is_rect_outside.0
	j	branching_b.212
tail_b.360 :
	addi	%r0 %r1 1
	j	branching_b.213
tail_b.359 :
	j	tail_b.368
branching_b.213 :
	lw	%r26 %r3 0
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.366
	sw.s	%r2 %f5 0
	sw.s	%r8 %f3 0
	sw.s	%r8 %f4 4
	sw.s	%r8 %f6 8
	sw	%r10 %r5 0
	sw	%r9 %r16 0
	j	tail_b.368
tail_b.366 :
	j	tail_b.368
branching_b.212 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.364
	addi	%r0 %r1 0
	j	branching_b.213
tail_b.364 :
	addi	%r3 %r3 1
	j	check_all_inside.1
return_point.42 :
	mov	%r11 %r1
	retl	
get_nvector_rect.0 :
	mov	%r1 %r6
branching_b.215 :
	lw	%r29 %r4 8
	lw	%r29 %r1 4
	lw	%r1 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r4 %f0 0
	sw.s	%r4 %f0 4
	sw.s	%r4 %f0 8
	addi	%r0 %r1 1
	sub	%r2 %r1 %r5
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	slli	%r1 %r1 2
	add	%r6 %r1 %r31
	lw.s	%r31 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbeq	%f0 %f1 tail_b.371
	addi	%r0 %r1 0
	j	branching_b.216
tail_b.371 :
	addi	%r0 %r1 1
branching_b.216 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.217
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.378
branching_b.217 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f1 %f0 tail_b.373
	addi	%r0 %r1 0
	j	branching_b.218
tail_b.373 :
	addi	%r0 %r1 1
branching_b.218 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.375
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	j	tail_b.378
tail_b.375 :
	addi	%r0 %r1 l.36
	ilw.s	%r1 %f0 0
tail_b.378 :
	neg.s	%f0 %f0
	slli	%r5 %r1 2
	add	%r4 %r1 %r31
	sw.s	%r31 %f0 0
return_point.43 :
	mov	%r3 %r1
	retl	
get_nvector_plane.0 :
tail_b.379 :
	lw	%r29 %r4 4
	lw	%r1 %r2 16
	lw.s	%r2 %f0 0
	neg.s	%f0 %f0
	sw.s	%r4 %f0 0
	lw	%r1 %r2 16
	lw.s	%r2 %f0 4
	neg.s	%f0 %f0
	sw.s	%r4 %f0 4
	lw	%r1 %r1 16
	lw.s	%r1 %f0 8
	neg.s	%f0 %f0
	sw.s	%r4 %f0 8
return_point.44 :
	mov	%r3 %r1
	retl	
get_nvector_second.0 :
branching_b.219 :
	lw	%r29 %r5 8
	lw	%r29 %r4 4
	lw.s	%r4 %f0 0
	lw	%r1 %r2 20
	lw.s	%r2 %f1 0
	sub.s	%f1 %f0 %f0
	lw.s	%r4 %f1 4
	lw	%r1 %r2 20
	lw.s	%r2 %f2 4
	sub.s	%f2 %f1 %f6
	lw.s	%r4 %f2 8
	lw	%r1 %r2 20
	lw.s	%r2 %f1 8
	sub.s	%f1 %f2 %f7
	lw	%r1 %r2 16
	lw.s	%r2 %f1 0
	mul.s	%f1 %f0 %f5
	lw	%r1 %r2 16
	lw.s	%r2 %f1 4
	mul.s	%f1 %f6 %f1
	lw	%r1 %r2 16
	lw.s	%r2 %f2 8
	mul.s	%f2 %f7 %f4
	lw	%r1 %r4 12
	addi	%r0 %r2 0
	beq	%r4 %r2 tail_b.380
	lw	%r1 %r2 36
	lw.s	%r2 %f2 8
	mul.s	%f2 %f6 %f2
	lw	%r1 %r2 36
	lw.s	%r2 %f3 4
	mul.s	%f3 %f7 %f3
	add.s	%f3 %f2 %f2
	addi	%r0 %r2 l.104
	ilw.s	%r2 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f5 %f2
	sw.s	%r5 %f2 0
	lw	%r1 %r2 36
	lw.s	%r2 %f2 8
	mul.s	%f2 %f0 %f3
	lw	%r1 %r2 36
	lw.s	%r2 %f2 0
	mul.s	%f2 %f7 %f2
	add.s	%f2 %f3 %f2
	addi	%r0 %r2 l.104
	ilw.s	%r2 %f3 0
	div.s	%f3 %f2 %f2
	add.s	%f2 %f1 %f1
	sw.s	%r5 %f1 4
	lw	%r1 %r2 36
	lw.s	%r2 %f1 4
	mul.s	%f1 %f0 %f1
	lw	%r1 %r2 36
	lw.s	%r2 %f0 0
	mul.s	%f0 %f6 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r2 l.104
	ilw.s	%r2 %f0 0
	div.s	%f0 %f1 %f0
	add.s	%f0 %f4 %f0
	sw.s	%r5 %f0 8
	j	tail_b.382
tail_b.380 :
	sw.s	%r5 %f5 0
	sw.s	%r5 %f1 4
	sw.s	%r5 %f4 8
tail_b.382 :
	lw	%r1 %r2 24
	mov	%r5 %r1
	j	vecunit_sgn.0
return_point.45 :
	mov	%r3 %r1
	retl	
utexture.0 :
	mov	%r2 %r7
	mov	%r1 %r5
	mov	%r29 %r1
branching_b.220 :
	lw	%r1 %r3 12
	lw	%r1 %r29 8
	lw	%r1 %r6 4
	lw	%r5 %r2 0
	lw	%r5 %r1 32
	lw.s	%r1 %f0 0
	sw.s	%r3 %f0 0
	lw	%r5 %r1 32
	lw.s	%r1 %f0 4
	sw.s	%r3 %f0 4
	lw	%r5 %r1 32
	lw.s	%r1 %f0 8
	sw.s	%r3 %f0 8
	addi	%r0 %r1 1
	beq	%r2 %r1 branching_b.221
	addi	%r0 %r1 2
	beq	%r2 %r1 tail_b.392
	addi	%r0 %r1 3
	beq	%r2 %r1 tail_b.393
	addi	%r0 %r1 4
	beq	%r2 %r1 branching_b.229
	j	return_point.46
branching_b.229 :
	lw.s	%r7 %f1 0
	lw	%r5 %r1 20
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f1
	lw	%r5 %r1 16
	lw.s	%r1 %f0 0
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f2
	lw.s	%r7 %f0 8
	lw	%r5 %r1 20
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f1
	lw	%r5 %r1 16
	lw.s	%r1 %f0 8
	sqrt.s	%f0 %f0
	mul.s	%f0 %f1 %f4
	mul.s	%f2 %f2 %f1
	mul.s	%f4 %f4 %f0
	add.s	%f0 %f1 %f3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f2 %f0 tail_b.394
	mov.s	%f2 %f1
	j	branching_b.230
tail_b.394 :
	neg.s	%f2 %f1
	j	branching_b.230
tail_b.393 :
	lw.s	%r7 %f0 0
	lw	%r5 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	lw.s	%r7 %f2 8
	lw	%r5 %r1 20
	lw.s	%r1 %f0 8
	sub.s	%f0 %f2 %f0
	mul.s	%f1 %f1 %f1
	mul.s	%f0 %f0 %f0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f0
	addi	%r0 %r1 l.239
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	floor.w.s	%f0 %f1
	sub.s	%f1 %f0 %f1
	addi	%r0 %r1 l.221
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r26 %f0 8
	sw	%r26 %r4 4
	sw	%r26 %r3 0
	mov	%r6 %r29
	sw	%r26 %r28 12
	lw	%r29 %r30 0
	addi	%r26 %r26 16
	jalr	%r30
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw.s	%r26 %f0 8
	lw	%r26 %r4 4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 4
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw.s	%r3 %f0 8
	j	return_point.46
tail_b.392 :
	lw.s	%r7 %f1 4
	addi	%r0 %r1 l.245
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sw	%r26 %r4 8
	sw.s	%r26 %f0 4
	sw	%r26 %r3 0
	sw	%r26 %r28 12
	lw	%r29 %r30 0
	addi	%r26 %r26 16
	jalr	%r30
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r4 8
	lw.s	%r26 %f0 4
	lw	%r26 %r3 0
	mul.s	%f0 %f0 %f1
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	sw.s	%r3 %f0 0
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f2 %f0
	sw.s	%r3 %f0 4
	j	return_point.46
branching_b.221 :
	lw.s	%r7 %f0 0
	lw	%r5 %r1 20
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f1
	addi	%r0 %r1 l.250
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	floor.w.s	%f0 %f2
	addi	%r0 %r1 l.252
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	sub.s	%f0 %f1 %f1
	addi	%r0 %r1 l.239
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.383
	addi	%r0 %r6 0
	j	branching_b.222
tail_b.383 :
	addi	%r0 %r6 1
branching_b.222 :
	lw.s	%r7 %f0 8
	lw	%r5 %r1 20
	lw.s	%r1 %f1 8
	sub.s	%f1 %f0 %f2
	addi	%r0 %r1 l.250
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f0
	floor.w.s	%f0 %f1
	addi	%r0 %r1 l.252
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f2 %f0
	addi	%r0 %r1 l.239
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.385
	addi	%r0 %r2 0
	j	branching_b.223
tail_b.385 :
	addi	%r0 %r2 1
branching_b.223 :
	addi	%r0 %r1 0
	beq	%r6 %r1 branching_b.224
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.389
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f0 0
	j	tail_b.391
tail_b.389 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.391
branching_b.224 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.387
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.391
tail_b.387 :
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f0 0
tail_b.391 :
	sw.s	%r3 %f0 4
	j	return_point.46
branching_b.230 :
	addi	%r0 %r1 l.214
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.396
	addi	%r0 %r2 0
	j	branching_b.231
tail_b.396 :
	addi	%r0 %r2 1
branching_b.231 :
	addi	%r0 %r1 0
	beq	%r2 %r1 branching_b.232
	addi	%r0 %r1 l.216
	ilw.s	%r1 %f1 0
	j	branching_b.233
branching_b.232 :
	div.s	%f2 %f4 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f0 %f1 tail_b.398
	j	tail_b.400
tail_b.398 :
	neg.s	%f0 %f0
tail_b.400 :
	sw.s	%r26 %f0 20
	sw.s	%r26 %f3 16
	sw	%r26 %r4 12
	sw	%r26 %r3 8
	sw	%r26 %r7 4
	sw	%r26 %r5 0
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	atan.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	lw.s	%r26 %f0 20
	lw.s	%r26 %f3 16
	lw	%r26 %r4 12
	lw	%r26 %r3 8
	lw	%r26 %r7 4
	lw	%r26 %r5 0
	addi	%r0 %r1 l.219
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r0 %r1 l.221
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f1
branching_b.233 :
	floor.w.s	%f1 %f0
	sub.s	%f0 %f1 %f1
	lw.s	%r7 %f0 4
	lw	%r5 %r1 20
	lw.s	%r1 %f2 4
	sub.s	%f2 %f0 %f0
	lw	%r5 %r1 16
	lw.s	%r1 %f2 4
	sqrt.s	%f2 %f2
	mul.s	%f2 %f0 %f4
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f3 %f0 tail_b.402
	mov.s	%f3 %f0
	j	branching_b.234
tail_b.402 :
	neg.s	%f3 %f0
branching_b.234 :
	addi	%r0 %r1 l.214
	ilw.s	%r1 %f2 0
	fbl	%f0 %f2 tail_b.404
	addi	%r0 %r1 0
	j	branching_b.235
tail_b.404 :
	addi	%r0 %r1 1
branching_b.235 :
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.236
	addi	%r0 %r1 l.216
	ilw.s	%r1 %f2 0
	j	branching_b.237
branching_b.236 :
	div.s	%f3 %f4 %f2
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f2 %f0 tail_b.406
	mov.s	%f2 %f0
	j	tail_b.408
tail_b.406 :
	neg.s	%f2 %f0
tail_b.408 :
	sw.s	%r26 %f2 12
	sw.s	%r26 %f1 8
	sw	%r26 %r4 4
	sw	%r26 %r3 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	atan.0
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	mov.s	%f0 %f2
	lw.s	%r26 %f2 12
	lw.s	%r26 %f1 8
	lw	%r26 %r4 4
	lw	%r26 %r3 0
	addi	%r0 %r1 l.219
	ilw.s	%r1 %f0 0
	mul.s	%f0 %f2 %f2
	addi	%r0 %r1 l.221
	ilw.s	%r1 %f0 0
	div.s	%f0 %f2 %f2
branching_b.237 :
	floor.w.s	%f2 %f0
	sub.s	%f0 %f2 %f2
	addi	%r0 %r1 l.229
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f3 0
	sub.s	%f1 %f3 %f1
	mul.s	%f1 %f1 %f1
	sub.s	%f1 %f0 %f1
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f0 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	sub.s	%f0 %f1 %f1
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.410
	addi	%r0 %r1 0
	j	branching_b.238
tail_b.410 :
	addi	%r0 %r1 1
branching_b.238 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.412
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	j	tail_b.414
tail_b.412 :
	mov.s	%f1 %f0
tail_b.414 :
	addi	%r0 %r1 l.235
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f0
	addi	%r0 %r1 l.237
	ilw.s	%r1 %f1 0
	div.s	%f1 %f0 %f0
	sw.s	%r3 %f0 8
return_point.46 :
	mov	%r4 %r1
	retl	
add_light.0 :
	mov.s	%f2 %f3
	mov.s	%f1 %f2
	mov.s	%f0 %f1
branching_b.239 :
	lw	%r29 %r2 8
	lw	%r29 %r5 4
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.416
	addi	%r0 %r1 0
	j	branching_b.240
tail_b.416 :
	addi	%r0 %r1 1
branching_b.240 :
	addi	%r0 %r4 0
	beq	%r1 %r4 tail_b.418
	mov	%r5 %r1
	mov.s	%f1 %f0
	j	vecaccum.0
	j	branching_b.241
tail_b.418 :
branching_b.241 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f0 %f2 tail_b.420
	addi	%r0 %r1 0
	j	branching_b.242
tail_b.420 :
	addi	%r0 %r1 1
branching_b.242 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.422
	mul.s	%f2 %f2 %f0
	mul.s	%f0 %f0 %f0
	mul.s	%f3 %f0 %f1
	lw.s	%r5 %f0 0
	add.s	%f1 %f0 %f0
	sw.s	%r5 %f0 0
	lw.s	%r5 %f0 4
	add.s	%f1 %f0 %f0
	sw.s	%r5 %f0 4
	lw.s	%r5 %f0 8
	add.s	%f1 %f0 %f0
	sw.s	%r5 %f0 8
	j	return_point.47
tail_b.422 :
return_point.47 :
	mov	%r3 %r1
	retl	
trace_reflections.0 :
	mov	%r29 %r14
	mov	%r2 %r11
	mov	%r1 %r15
	mov.s	%f1 %f3
	mov.s	%f0 %f2
branching_b.243 :
	lw	%r14 %r10 48
	lw	%r14 %r18 44
	lw	%r14 %r8 40
	lw	%r14 %r29 36
	lw	%r14 %r16 32
	lw	%r14 %r1 28
	lw	%r14 %r17 24
	lw	%r14 %r3 20
	lw	%r14 %r2 16
	lw	%r14 %r4 12
	lw	%r14 %r12 8
	lw	%r14 %r9 4
	addi	%r0 %r5 0
	ble	%r5 %r15 node_b.5
	j	return_point.48
node_b.5 :
	slli	%r15 %r5 2
	add	%r1 %r5 %r31
	lw	%r31 %r19 0
	lw	%r19 %r5 4
	addi	%r0 %r1 l.264
	ilw.s	%r1 %f0 0
	sw.s	%r10 %f0 0
	addi	%r0 %r13 0
	lw	%r17 %r20 0
	sw	%r26 %r13 0
trace_or_matrix_fast.2 :
	slli	%r13 %r1 2
	add	%r20 %r1 %r31
	lw	%r31 %r21 0
	lw	%r21 %r1 0
	addi	%r0 %r7 -1
	beq	%r1 %r7 tail_b.424
	addi	%r0 %r7 99
	beq	%r1 %r7 node_b.6
	sw	%r26 %r21 92
	sw	%r26 %r7 88
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r20 76
	sw	%r26 %r13 72
	sw	%r26 %r19 68
	sw	%r26 %r9 64
	sw	%r26 %r12 60
	sw	%r26 %r4 56
	sw	%r26 %r2 52
	sw	%r26 %r3 48
	sw	%r26 %r17 44
	sw	%r26 %r16 40
	sw	%r26 %r29 36
	sw	%r26 %r8 32
	sw	%r26 %r18 28
	sw	%r26 %r10 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r18 %r29
	mov	%r5 %r2
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r7
	lw	%r26 %r21 92
	lw	%r26 %r7 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r20 76
	lw	%r26 %r13 72
	lw	%r26 %r19 68
	lw	%r26 %r9 64
	lw	%r26 %r12 60
	lw	%r26 %r4 56
	lw	%r26 %r2 52
	lw	%r26 %r3 48
	lw	%r26 %r17 44
	lw	%r26 %r16 40
	lw	%r26 %r29 36
	lw	%r26 %r8 32
	lw	%r26 %r18 28
	lw	%r26 %r10 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	addi	%r0 %r1 0
	bne	%r7 %r1 branching_b.248
	j	tail_b.433
branching_b.248 :
	lw.s	%r8 %f0 0
	lw.s	%r10 %f1 0
	fbl	%f0 %f1 tail_b.427
	addi	%r0 %r7 0
	j	branching_b.249
tail_b.427 :
	addi	%r0 %r7 1
	j	branching_b.249
node_b.6 :
	addi	%r0 %r7 1
solve_one_or_network_fast.6 :
	slli	%r7 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r22 0
	addi	%r0 %r1 -1
	bne	%r22 %r1 tail_b.425
	j	tail_b.433
tail_b.425 :
	slli	%r22 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r22 0
	addi	%r0 %r1 0
	sw	%r26 %r21 92
	sw	%r26 %r7 88
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r20 76
	sw	%r26 %r13 72
	sw	%r26 %r19 68
	sw	%r26 %r9 64
	sw	%r26 %r12 60
	sw	%r26 %r4 56
	sw	%r26 %r2 52
	sw	%r26 %r3 48
	sw	%r26 %r17 44
	sw	%r26 %r16 40
	sw	%r26 %r29 36
	sw	%r26 %r8 32
	sw	%r26 %r18 28
	sw	%r26 %r10 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r5 %r3
	mov	%r22 %r2
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw	%r26 %r21 92
	lw	%r26 %r7 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r20 76
	lw	%r26 %r13 72
	lw	%r26 %r19 68
	lw	%r26 %r9 64
	lw	%r26 %r12 60
	lw	%r26 %r4 56
	lw	%r26 %r2 52
	lw	%r26 %r3 48
	lw	%r26 %r17 44
	lw	%r26 %r16 40
	lw	%r26 %r29 36
	lw	%r26 %r8 32
	lw	%r26 %r18 28
	lw	%r26 %r10 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	addi	%r7 %r7 1
	j	solve_one_or_network_fast.6
tail_b.424 :
branching_b.251 :
	lw	%r26 %r13 0
	lw.s	%r10 %f1 0
	addi	%r0 %r1 l.198
	ilw.s	%r1 %f0 0
	fbl	%f0 %f1 tail_b.434
	addi	%r0 %r7 0
	j	branching_b.252
tail_b.434 :
	addi	%r0 %r7 1
branching_b.252 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.436
	addi	%r0 %r1 l.267
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.437
	addi	%r0 %r1 0
	j	branching_b.254
tail_b.437 :
	addi	%r0 %r1 1
	j	branching_b.254
tail_b.436 :
	addi	%r0 %r1 0
branching_b.254 :
	addi	%r0 %r7 0
	beq	%r1 %r7 tail_b.439
	lw	%r4 %r1 0
	addi	%r0 %r4 4
	mul	%r1 %r4 %r1
	lw	%r2 %r2 0
	add	%r1 %r2 %r2
	lw	%r19 %r1 0
	beq	%r2 %r1 branching_b.256
	j	tail_b.443
branching_b.256 :
	addi	%r0 %r1 0
	lw	%r17 %r2 0
	sw	%r26 %r2 44
	sw	%r26 %r6 40
	sw	%r26 %r5 36
	sw	%r26 %r19 32
	sw	%r26 %r9 28
	sw	%r26 %r3 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r16 %r29
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov	%r1 %r2
	lw	%r26 %r2 44
	lw	%r26 %r6 40
	lw	%r26 %r5 36
	lw	%r26 %r19 32
	lw	%r26 %r9 28
	lw	%r26 %r3 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.440
	j	tail_b.443
tail_b.440 :
	lw	%r5 %r2 0
	sw.s	%r26 %f4 40
	sw	%r26 %r6 36
	sw	%r26 %r5 32
	sw	%r26 %r19 28
	sw	%r26 %r9 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r3 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f4
	lw.s	%r26 %f4 40
	lw	%r26 %r6 36
	lw	%r26 %r5 32
	lw	%r26 %r19 28
	lw	%r26 %r9 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	lw.s	%r19 %f1 8
	mul.s	%f2 %f1 %f0
	mul.s	%f4 %f0 %f4
	lw	%r5 %r2 0
	sw.s	%r26 %f0 40
	sw.s	%r26 %f4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r6 28
	sw	%r26 %r9 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r11 %r1
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	veciprod.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r6 28
	lw	%r26 %r9 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	mul.s	%f0 %f1 %f1
	mov	%r9 %r29
	mov.s	%f3 %f2
	mov.s	%f4 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.443
tail_b.439 :
tail_b.443 :
	addi	%r0 %r1 1
	sub	%r15 %r1 %r1
	mov	%r14 %r29
	mov	%r11 %r2
	mov.s	%f3 %f1
	mov.s	%f2 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.48
branching_b.249 :
	addi	%r0 %r1 0
	beq	%r7 %r1 tail_b.429
	addi	%r0 %r7 1
solve_one_or_network_fast.5 :
	slli	%r7 %r1 2
	add	%r21 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r22 -1
	bne	%r1 %r22 tail_b.430
	j	tail_b.433
tail_b.430 :
	slli	%r1 %r1 2
	add	%r12 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r22 0
	sw	%r26 %r7 92
	sw	%r26 %r21 88
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r20 76
	sw	%r26 %r13 72
	sw	%r26 %r19 68
	sw	%r26 %r9 64
	sw	%r26 %r12 60
	sw	%r26 %r4 56
	sw	%r26 %r2 52
	sw	%r26 %r3 48
	sw	%r26 %r17 44
	sw	%r26 %r16 40
	sw	%r26 %r29 36
	sw	%r26 %r8 32
	sw	%r26 %r18 28
	sw	%r26 %r10 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r11 12
	sw	%r26 %r15 8
	sw	%r26 %r14 4
	mov	%r5 %r3
	mov	%r1 %r2
	mov	%r22 %r1
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw	%r26 %r7 92
	lw	%r26 %r21 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r20 76
	lw	%r26 %r13 72
	lw	%r26 %r19 68
	lw	%r26 %r9 64
	lw	%r26 %r12 60
	lw	%r26 %r4 56
	lw	%r26 %r2 52
	lw	%r26 %r3 48
	lw	%r26 %r17 44
	lw	%r26 %r16 40
	lw	%r26 %r29 36
	lw	%r26 %r8 32
	lw	%r26 %r18 28
	lw	%r26 %r10 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r11 12
	lw	%r26 %r15 8
	lw	%r26 %r14 4
	addi	%r7 %r7 1
	j	solve_one_or_network_fast.5
tail_b.429 :
tail_b.433 :
	addi	%r13 %r13 1
	j	trace_or_matrix_fast.2
return_point.48 :
	mov	%r6 %r1
	retl	
trace_ray.0 :
	sw	%r26 %r29 8
	sw	%r26 %r1 0
	mov	%r3 %r17
	mov	%r2 %r18
	sw.s	%r26 %f0 4
	mov.s	%f1 %f2
branching_b.257 :
	lw	%r26 %r30 8
	lw	%r30 %r30 108
	sw	%r26 %r30 12
	lw	%r26 %r30 8
	lw	%r30 %r5 104
	lw	%r26 %r30 8
	lw	%r30 %r16 100
	lw	%r26 %r30 8
	lw	%r30 %r30 96
	sw	%r26 %r30 16
	lw	%r26 %r30 8
	lw	%r30 %r15 92
	lw	%r26 %r30 8
	lw	%r30 %r21 88
	lw	%r26 %r30 8
	lw	%r30 %r23 84
	lw	%r26 %r30 8
	lw	%r30 %r10 80
	lw	%r26 %r30 8
	lw	%r30 %r13 76
	lw	%r26 %r30 8
	lw	%r30 %r29 72
	lw	%r26 %r30 8
	lw	%r30 %r12 68
	lw	%r26 %r30 8
	lw	%r30 %r14 64
	lw	%r26 %r30 8
	lw	%r30 %r20 60
	lw	%r26 %r30 8
	lw	%r30 %r9 56
	lw	%r26 %r30 8
	lw	%r30 %r30 52
	sw	%r26 %r30 20
	lw	%r26 %r30 8
	lw	%r30 %r30 48
	sw	%r26 %r30 24
	lw	%r26 %r30 8
	lw	%r30 %r3 44
	lw	%r26 %r30 8
	lw	%r30 %r8 40
	lw	%r26 %r30 8
	lw	%r30 %r7 36
	lw	%r26 %r30 8
	lw	%r30 %r2 32
	lw	%r26 %r30 8
	lw	%r30 %r30 28
	sw	%r26 %r30 28
	lw	%r26 %r30 8
	lw	%r30 %r30 24
	sw	%r26 %r30 32
	lw	%r26 %r30 8
	lw	%r30 %r30 20
	sw	%r26 %r30 36
	lw	%r26 %r30 8
	lw	%r30 %r30 16
	sw	%r26 %r30 40
	lw	%r26 %r30 8
	lw	%r30 %r30 12
	sw	%r26 %r30 44
	lw	%r26 %r30 8
	lw	%r30 %r4 8
	lw	%r26 %r30 8
	lw	%r30 %r30 4
	sw	%r26 %r30 48
	addi	%r0 %r30 4
	sw	%r26 %r30 52
	lw	%r26 %r30 0
	lw	%r26 %r31 52
	ble	%r30 %r31 node_b.8
	j	return_point.49
node_b.8 :
	lw	%r17 %r30 8
	sw	%r26 %r30 56
	addi	%r0 %r1 l.264
	ilw.s	%r1 %f0 0
	sw.s	%r16 %f0 0
	addi	%r0 %r22 0
	lw	%r20 %r19 0
	sw	%r26 %r22 60
trace_or_matrix.1 :
	slli	%r22 %r1 2
	add	%r19 %r1 %r31
	lw	%r31 %r11 0
	lw	%r11 %r1 0
	addi	%r0 %r24 -1
	beq	%r1 %r24 tail_b.445
	addi	%r0 %r24 99
	beq	%r1 %r24 node_b.9
	sw	%r26 %r11 160
	sw	%r26 %r24 156
	sw	%r26 %r6 152
	sw	%r26 %r18 148
	sw	%r26 %r19 144
	sw	%r26 %r22 140
	sw	%r26 %r4 136
	sw	%r26 %r2 132
	sw	%r26 %r7 128
	sw	%r26 %r8 124
	sw	%r26 %r3 120
	sw	%r26 %r9 116
	sw	%r26 %r20 112
	sw	%r26 %r14 108
	sw	%r26 %r12 104
	sw	%r26 %r29 100
	sw	%r26 %r13 96
	sw	%r26 %r10 92
	sw	%r26 %r23 88
	sw	%r26 %r21 84
	sw	%r26 %r15 80
	sw	%r26 %r16 76
	sw	%r26 %r5 72
	sw.s	%r26 %f2 68
	sw	%r26 %r17 64
	mov	%r10 %r29
	mov	%r21 %r3
	mov	%r18 %r2
	sw	%r26 %r28 164
	lw	%r29 %r30 0
	addi	%r26 %r26 168
	jalr	%r30
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	mov	%r1 %r24
	lw	%r26 %r11 160
	lw	%r26 %r24 156
	lw	%r26 %r6 152
	lw	%r26 %r18 148
	lw	%r26 %r19 144
	lw	%r26 %r22 140
	lw	%r26 %r4 136
	lw	%r26 %r2 132
	lw	%r26 %r7 128
	lw	%r26 %r8 124
	lw	%r26 %r3 120
	lw	%r26 %r9 116
	lw	%r26 %r20 112
	lw	%r26 %r14 108
	lw	%r26 %r12 104
	lw	%r26 %r29 100
	lw	%r26 %r13 96
	lw	%r26 %r10 92
	lw	%r26 %r23 88
	lw	%r26 %r21 84
	lw	%r26 %r15 80
	lw	%r26 %r16 76
	lw	%r26 %r5 72
	lw.s	%r26 %f2 68
	lw	%r26 %r17 64
	addi	%r0 %r1 0
	bne	%r24 %r1 branching_b.262
	j	tail_b.454
branching_b.262 :
	lw.s	%r23 %f0 0
	lw.s	%r16 %f1 0
	fbl	%f0 %f1 tail_b.448
	addi	%r0 %r24 0
	j	branching_b.263
tail_b.448 :
	addi	%r0 %r24 1
	j	branching_b.263
node_b.9 :
	addi	%r0 %r24 1
solve_one_or_network.4 :
	slli	%r24 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r25 0
	addi	%r0 %r1 -1
	bne	%r25 %r1 tail_b.446
	j	tail_b.454
tail_b.446 :
	slli	%r25 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r25 0
	addi	%r0 %r1 0
	sw	%r26 %r11 160
	sw	%r26 %r24 156
	sw	%r26 %r6 152
	sw	%r26 %r18 148
	sw	%r26 %r19 144
	sw	%r26 %r22 140
	sw	%r26 %r4 136
	sw	%r26 %r2 132
	sw	%r26 %r7 128
	sw	%r26 %r8 124
	sw	%r26 %r3 120
	sw	%r26 %r9 116
	sw	%r26 %r20 112
	sw	%r26 %r14 108
	sw	%r26 %r12 104
	sw	%r26 %r29 100
	sw	%r26 %r13 96
	sw	%r26 %r10 92
	sw	%r26 %r23 88
	sw	%r26 %r21 84
	sw	%r26 %r15 80
	sw	%r26 %r16 76
	sw	%r26 %r5 72
	sw.s	%r26 %f2 68
	sw	%r26 %r17 64
	mov	%r13 %r29
	mov	%r18 %r3
	mov	%r25 %r2
	sw	%r26 %r28 164
	lw	%r29 %r30 0
	addi	%r26 %r26 168
	jalr	%r30
	addi	%r26 %r26 -168
	lw	%r26 %r28 164
	lw	%r26 %r11 160
	lw	%r26 %r24 156
	lw	%r26 %r6 152
	lw	%r26 %r18 148
	lw	%r26 %r19 144
	lw	%r26 %r22 140
	lw	%r26 %r4 136
	lw	%r26 %r2 132
	lw	%r26 %r7 128
	lw	%r26 %r8 124
	lw	%r26 %r3 120
	lw	%r26 %r9 116
	lw	%r26 %r20 112
	lw	%r26 %r14 108
	lw	%r26 %r12 104
	lw	%r26 %r29 100
	lw	%r26 %r13 96
	lw	%r26 %r10 92
	lw	%r26 %r23 88
	lw	%r26 %r21 84
	lw	%r26 %r15 80
	lw	%r26 %r16 76
	lw	%r26 %r5 72
	lw.s	%r26 %f2 68
	lw	%r26 %r17 64
	addi	%r24 %r24 1
	j	solve_one_or_network.4
tail_b.445 :
branching_b.265 :
	lw	%r26 %r22 60
	lw.s	%r16 %f30 0
	sw.s	%r26 %f30 64
	addi	%r0 %r30 l.198
	sw	%r26 %r30 68
	lw	%r26 %r30 68
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 72
	lw.s	%r26 %f30 72
	lw.s	%r26 %f31 64
	fbl	%f30 %f31 tail_b.455
	addi	%r0 %r30 0
	sw	%r26 %r30 76
	j	branching_b.266
tail_b.455 :
	addi	%r0 %r30 1
	sw	%r26 %r30 76
branching_b.266 :
	addi	%r0 %r1 0
	lw	%r26 %r30 76
	beq	%r30 %r1 tail_b.457
	addi	%r0 %r1 l.267
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f30 64
	fbl	%f30 %f0 tail_b.458
	addi	%r0 %r30 0
	sw	%r26 %r30 80
	j	branching_b.268
tail_b.458 :
	addi	%r0 %r30 1
	sw	%r26 %r30 80
	j	branching_b.268
tail_b.457 :
	addi	%r0 %r30 0
	sw	%r26 %r30 80
branching_b.268 :
	addi	%r0 %r30 0
	sw	%r26 %r30 84
	lw	%r26 %r30 80
	lw	%r26 %r31 84
	beq	%r30 %r31 branching_b.269
	lw	%r26 %r30 28
	lw	%r30 %r30 0
	sw	%r26 %r30 88
	lw	%r26 %r30 88
	slli	%r30 %r30 2
	sw	%r26 %r30 92
	lw	%r26 %r30 92
	add	%r9 %r30 %r31
	lw	%r31 %r30 0
	sw	%r26 %r30 96
	lw	%r26 %r30 96
	lw	%r30 %r4 8
	lw	%r26 %r30 96
	lw	%r30 %r1 28
	lw.s	%r1 %f0 0
	lw.s	%r26 %f30 4
	mul.s	%f30 %f0 %f3
	lw	%r26 %r30 96
	lw	%r30 %r30 4
	sw	%r26 %r30 100
	addi	%r0 %r30 1
	sw	%r26 %r30 104
	lw	%r26 %r30 100
	lw	%r26 %r31 104
	beq	%r30 %r31 tail_b.465
	addi	%r0 %r1 2
	lw	%r26 %r30 100
	beq	%r30 %r1 tail_b.466
	lw	%r26 %r29 32
	lw	%r26 %r1 96
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.274
tail_b.466 :
	lw	%r26 %r29 40
	lw	%r26 %r1 96
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.274
tail_b.465 :
	mov	%r18 %r1
	lw	%r26 %r29 36
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.274
branching_b.269 :
	addi	%r0 %r1 -1
	lw	%r26 %r30 0
	slli	%r30 %r30 2
	sw	%r26 %r30 116
	lw	%r26 %r30 56
	lw	%r26 %r31 116
	add	%r30 %r31 %r31
	sw	%r31 %r1 0
	addi	%r0 %r30 0
	sw	%r26 %r30 120
	lw	%r26 %r30 0
	lw	%r26 %r31 120
	bne	%r30 %r31 branching_b.270
	j	return_point.49
branching_b.270 :
	sw	%r26 %r6 132
	sw	%r26 %r14 128
	mov	%r8 %r2
	mov	%r18 %r1
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	veciprod.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	sw.s	%r26 %f0 124
	lw	%r26 %r6 132
	lw	%r26 %r14 128
	lw.s	%r26 %f30 124
	neg.s	%f30 %f30
	sw.s	%r26 %f30 128
	addi	%r0 %r30 l.32
	sw	%r26 %r30 132
	lw	%r26 %r30 132
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 136
	lw.s	%r26 %f30 136
	lw.s	%r26 %f31 128
	fbl	%f30 %f31 tail_b.460
	addi	%r0 %r30 0
	sw	%r26 %r30 140
	j	branching_b.271
tail_b.460 :
	addi	%r0 %r30 1
	sw	%r26 %r30 140
branching_b.271 :
	addi	%r0 %r30 0
	sw	%r26 %r30 144
	lw	%r26 %r30 140
	lw	%r26 %r31 144
	beq	%r30 %r31 tail_b.462
	lw.s	%r26 %f30 128
	mul.s	%f30 %f30 %f0
	lw.s	%r26 %f30 128
	mul.s	%f30 %f0 %f30
	sw.s	%r26 %f30 148
	lw.s	%r26 %f30 148
	lw.s	%r26 %f31 4
	mul.s	%f31 %f30 %f1
	lw	%r26 %r30 44
	lw.s	%r30 %f0 0
	mul.s	%f0 %f1 %f1
	lw.s	%r14 %f0 0
	add.s	%f1 %f0 %f0
	sw.s	%r14 %f0 0
	lw.s	%r14 %f0 4
	add.s	%f1 %f0 %f30
	sw.s	%r26 %f30 152
	lw.s	%r26 %f30 152
	sw.s	%r14 %f30 4
	lw.s	%r14 %f30 8
	sw.s	%r26 %f30 156
	lw.s	%r26 %f30 156
	add.s	%f1 %f30 %f30
	sw.s	%r26 %f30 160
	lw.s	%r26 %f30 160
	sw.s	%r14 %f30 8
	j	return_point.49
tail_b.462 :
	j	return_point.49
branching_b.274 :
	lw.s	%r2 %f0 0
	sw.s	%r21 %f0 0
	lw.s	%r2 %f30 4
	sw.s	%r26 %f30 164
	lw.s	%r26 %f30 164
	sw.s	%r21 %f30 4
	lw.s	%r2 %f0 8
	sw.s	%r21 %f0 8
	sw.s	%r26 %f3 228
	sw	%r26 %r4 224
	sw	%r26 %r6 220
	sw	%r26 %r18 216
	sw	%r26 %r2 212
	sw	%r26 %r7 208
	sw	%r26 %r8 204
	sw	%r26 %r3 200
	sw	%r26 %r20 196
	sw	%r26 %r12 192
	sw	%r26 %r29 188
	sw	%r26 %r15 184
	sw	%r26 %r16 180
	sw	%r26 %r5 176
	sw.s	%r26 %f2 172
	sw	%r26 %r17 168
	lw	%r26 %r29 12
	lw	%r26 %r1 96
	sw	%r26 %r28 232
	lw	%r29 %r30 0
	addi	%r26 %r26 236
	jalr	%r30
	addi	%r26 %r26 -236
	lw	%r26 %r28 232
	lw.s	%r26 %f3 228
	lw	%r26 %r4 224
	lw	%r26 %r6 220
	lw	%r26 %r18 216
	lw	%r26 %r2 212
	lw	%r26 %r7 208
	lw	%r26 %r8 204
	lw	%r26 %r3 200
	lw	%r26 %r20 196
	lw	%r26 %r12 192
	lw	%r26 %r29 188
	lw	%r26 %r15 184
	lw	%r26 %r16 180
	lw	%r26 %r5 176
	lw.s	%r26 %f2 172
	lw	%r26 %r17 168
	addi	%r0 %r30 4
	sw	%r26 %r30 168
	lw	%r26 %r30 88
	lw	%r26 %r31 168
	mul	%r30 %r31 %r30
	sw	%r26 %r30 172
	lw	%r7 %r30 0
	sw	%r26 %r30 176
	lw	%r26 %r30 172
	lw	%r26 %r31 176
	add	%r30 %r31 %r1
	lw	%r26 %r30 0
	slli	%r30 %r7 2
	lw	%r26 %r30 56
	add	%r30 %r7 %r31
	sw	%r31 %r1 0
	lw	%r17 %r1 4
	lw	%r26 %r30 0
	slli	%r30 %r7 2
	add	%r1 %r7 %r31
	lw	%r31 %r30 0
	sw	%r26 %r30 180
	lw.s	%r2 %f0 0
	lw	%r26 %r30 180
	sw.s	%r30 %f0 0
	lw.s	%r2 %f0 4
	lw	%r26 %r30 180
	sw.s	%r30 %f0 4
	lw.s	%r2 %f0 8
	lw	%r26 %r30 180
	sw.s	%r30 %f0 8
	lw	%r17 %r30 12
	sw	%r26 %r30 184
	lw	%r26 %r30 96
	lw	%r30 %r30 28
	sw	%r26 %r30 188
	lw	%r26 %r30 188
	lw.s	%r30 %f30 0
	sw.s	%r26 %f30 192
	addi	%r0 %r30 l.21
	sw	%r26 %r30 196
	lw	%r26 %r30 196
	ilw.s	%r30 %f0 0
	lw.s	%r26 %f30 192
	fbl	%f30 %f0 tail_b.468
	addi	%r0 %r30 0
	sw	%r26 %r30 200
	j	branching_b.275
tail_b.468 :
	addi	%r0 %r30 1
	sw	%r26 %r30 200
branching_b.275 :
	addi	%r0 %r1 0
	lw	%r26 %r30 200
	beq	%r30 %r1 tail_b.470
	addi	%r0 %r1 0
	lw	%r26 %r30 0
	slli	%r30 %r30 2
	sw	%r26 %r30 204
	lw	%r26 %r30 184
	lw	%r26 %r31 204
	add	%r30 %r31 %r31
	sw	%r31 %r1 0
	j	branching_b.276
tail_b.470 :
	addi	%r0 %r30 1
	sw	%r26 %r30 208
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	lw	%r26 %r30 184
	add	%r30 %r1 %r31
	lw	%r26 %r30 208
	sw	%r31 %r30 0
	lw	%r17 %r30 16
	sw	%r26 %r30 212
	lw	%r26 %r30 0
	slli	%r30 %r30 2
	sw	%r26 %r30 216
	lw	%r26 %r30 212
	lw	%r26 %r31 216
	add	%r30 %r31 %r31
	lw	%r31 %r30 0
	sw	%r26 %r30 220
	lw	%r26 %r30 16
	lw.s	%r30 %f0 0
	lw	%r26 %r30 220
	sw.s	%r30 %f0 0
	lw	%r26 %r30 16
	lw.s	%r30 %f0 4
	lw	%r26 %r30 220
	sw.s	%r30 %f0 4
	lw	%r26 %r30 16
	lw.s	%r30 %f0 8
	lw	%r26 %r30 220
	sw.s	%r30 %f0 8
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	lw	%r26 %r30 212
	add	%r30 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r7 l.273
	ilw.s	%r7 %f0 0
	mul.s	%f3 %f0 %f1
	lw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f30
	sw.s	%r26 %f30 224
	lw.s	%r26 %f30 224
	sw.s	%r1 %f30 0
	lw.s	%r1 %f30 4
	sw.s	%r26 %f30 228
	lw.s	%r26 %f30 228
	mul.s	%f1 %f30 %f0
	sw.s	%r1 %f0 4
	lw.s	%r1 %f0 8
	mul.s	%f1 %f0 %f0
	sw.s	%r1 %f0 8
	lw	%r17 %r7 28
	lw	%r26 %r30 0
	slli	%r30 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r30 0
	sw	%r26 %r30 232
	lw	%r26 %r30 20
	lw.s	%r30 %f30 0
	sw.s	%r26 %f30 236
	lw.s	%r26 %f30 236
	lw	%r26 %r30 232
	sw.s	%r30 %f30 0
	lw	%r26 %r30 20
	lw.s	%r30 %f0 4
	lw	%r26 %r30 232
	sw.s	%r30 %f0 4
	lw	%r26 %r30 20
	lw.s	%r30 %f30 8
	sw.s	%r26 %f30 240
	lw.s	%r26 %f30 240
	lw	%r26 %r30 232
	sw.s	%r30 %f30 8
branching_b.276 :
	addi	%r0 %r1 l.275
	ilw.s	%r1 %f30 0
	sw.s	%r26 %f30 244
	sw.s	%r26 %f0 308
	sw.s	%r26 %f3 304
	sw	%r26 %r4 300
	sw	%r26 %r6 296
	sw	%r26 %r18 292
	sw	%r26 %r2 288
	sw	%r26 %r8 284
	sw	%r26 %r3 280
	sw	%r26 %r20 276
	sw	%r26 %r12 272
	sw	%r26 %r29 268
	sw	%r26 %r15 264
	sw	%r26 %r16 260
	sw	%r26 %r5 256
	sw.s	%r26 %f2 252
	sw	%r26 %r17 248
	mov	%r18 %r1
	lw	%r26 %r2 20
	sw	%r26 %r28 312
	addi	%r26 %r26 316
	jal	veciprod.0
	addi	%r26 %r26 -316
	lw	%r26 %r28 312
	lw.s	%r26 %f0 308
	lw.s	%r26 %f3 304
	lw	%r26 %r4 300
	lw	%r26 %r6 296
	lw	%r26 %r18 292
	lw	%r26 %r2 288
	lw	%r26 %r8 284
	lw	%r26 %r3 280
	lw	%r26 %r20 276
	lw	%r26 %r12 272
	lw	%r26 %r29 268
	lw	%r26 %r15 264
	lw	%r26 %r16 260
	lw	%r26 %r5 256
	lw.s	%r26 %f2 252
	lw	%r26 %r17 248
	lw.s	%r26 %f30 244
	mul.s	%f0 %f30 %f30
	sw.s	%r26 %f30 248
	sw.s	%r26 %f3 312
	sw	%r26 %r4 308
	sw	%r26 %r6 304
	sw	%r26 %r18 300
	sw	%r26 %r2 296
	sw	%r26 %r8 292
	sw	%r26 %r3 288
	sw	%r26 %r20 284
	sw	%r26 %r12 280
	sw	%r26 %r29 276
	sw	%r26 %r15 272
	sw	%r26 %r16 268
	sw	%r26 %r5 264
	sw.s	%r26 %f2 260
	sw	%r26 %r17 256
	mov	%r18 %r1
	lw	%r26 %r2 20
	lw.s	%r26 %f0 248
	sw	%r26 %r28 316
	addi	%r26 %r26 320
	jal	vecaccum.0
	addi	%r26 %r26 -320
	lw	%r26 %r28 316
	sw	%r26 %r1 252
	lw.s	%r26 %f3 312
	lw	%r26 %r4 308
	lw	%r26 %r6 304
	lw	%r26 %r18 300
	lw	%r26 %r2 296
	lw	%r26 %r8 292
	lw	%r26 %r3 288
	lw	%r26 %r20 284
	lw	%r26 %r12 280
	lw	%r26 %r29 276
	lw	%r26 %r15 272
	lw	%r26 %r16 268
	lw	%r26 %r5 264
	lw.s	%r26 %f2 260
	lw	%r26 %r17 256
	lw	%r26 %r30 96
	lw	%r30 %r30 28
	sw	%r26 %r30 256
	lw	%r26 %r30 256
	lw.s	%r30 %f30 4
	sw.s	%r26 %f30 260
	lw.s	%r26 %f30 4
	lw.s	%r26 %f31 260
	mul.s	%f31 %f30 %f30
	sw.s	%r26 %f30 264
	addi	%r0 %r1 0
	lw	%r20 %r7 0
	sw	%r26 %r1 320
	sw.s	%r26 %f3 316
	sw	%r26 %r4 312
	sw	%r26 %r6 308
	sw	%r26 %r18 304
	sw	%r26 %r2 300
	sw	%r26 %r8 296
	sw	%r26 %r3 292
	sw	%r26 %r12 288
	sw	%r26 %r15 284
	sw	%r26 %r16 280
	sw	%r26 %r5 276
	sw.s	%r26 %f2 272
	sw	%r26 %r17 268
	mov	%r7 %r2
	sw	%r26 %r28 324
	lw	%r29 %r30 0
	addi	%r26 %r26 328
	jalr	%r30
	addi	%r26 %r26 -328
	lw	%r26 %r28 324
	lw	%r26 %r1 320
	lw.s	%r26 %f3 316
	lw	%r26 %r4 312
	lw	%r26 %r6 308
	lw	%r26 %r18 304
	lw	%r26 %r2 300
	lw	%r26 %r8 296
	lw	%r26 %r3 292
	lw	%r26 %r12 288
	lw	%r26 %r15 284
	lw	%r26 %r16 280
	lw	%r26 %r5 276
	lw.s	%r26 %f2 272
	lw	%r26 %r17 268
	addi	%r0 %r30 0
	sw	%r26 %r30 268
	lw	%r26 %r30 268
	beq	%r1 %r30 tail_b.472
	j	branching_b.277
tail_b.472 :
	sw.s	%r26 %f3 324
	sw	%r26 %r4 320
	sw	%r26 %r6 316
	sw	%r26 %r18 312
	sw	%r26 %r2 308
	sw	%r26 %r8 304
	sw	%r26 %r3 300
	sw	%r26 %r12 296
	sw	%r26 %r15 292
	sw	%r26 %r16 288
	sw	%r26 %r5 284
	sw.s	%r26 %f2 280
	sw	%r26 %r17 276
	mov	%r8 %r2
	lw	%r26 %r1 20
	sw	%r26 %r28 328
	addi	%r26 %r26 332
	jal	veciprod.0
	addi	%r26 %r26 -332
	lw	%r26 %r28 328
	sw.s	%r26 %f0 272
	lw.s	%r26 %f3 324
	lw	%r26 %r4 320
	lw	%r26 %r6 316
	lw	%r26 %r18 312
	lw	%r26 %r2 308
	lw	%r26 %r8 304
	lw	%r26 %r3 300
	lw	%r26 %r12 296
	lw	%r26 %r15 292
	lw	%r26 %r16 288
	lw	%r26 %r5 284
	lw.s	%r26 %f2 280
	lw	%r26 %r17 276
	lw.s	%r26 %f30 272
	neg.s	%f30 %f30
	sw.s	%r26 %f30 276
	lw.s	%r26 %f30 276
	mul.s	%f3 %f30 %f0
	sw.s	%r26 %f0 332
	sw.s	%r26 %f3 328
	sw	%r26 %r4 324
	sw	%r26 %r6 320
	sw	%r26 %r18 316
	sw	%r26 %r2 312
	sw	%r26 %r3 308
	sw	%r26 %r12 304
	sw	%r26 %r15 300
	sw	%r26 %r16 296
	sw	%r26 %r5 292
	sw.s	%r26 %f2 288
	sw	%r26 %r17 284
	mov	%r8 %r2
	mov	%r18 %r1
	sw	%r26 %r28 336
	addi	%r26 %r26 340
	jal	veciprod.0
	addi	%r26 %r26 -340
	lw	%r26 %r28 336
	sw.s	%r26 %f0 280
	lw.s	%r26 %f0 332
	lw.s	%r26 %f3 328
	lw	%r26 %r4 324
	lw	%r26 %r6 320
	lw	%r26 %r18 316
	lw	%r26 %r2 312
	lw	%r26 %r3 308
	lw	%r26 %r12 304
	lw	%r26 %r15 300
	lw	%r26 %r16 296
	lw	%r26 %r5 292
	lw.s	%r26 %f2 288
	lw	%r26 %r17 284
	lw.s	%r26 %f30 280
	neg.s	%f30 %f30
	sw.s	%r26 %f30 284
	lw	%r26 %r29 48
	lw.s	%r26 %f2 264
	lw.s	%r26 %f1 284
	lw	%r29 %r30 0
	jr	%r30
branching_b.277 :
	lw.s	%r2 %f30 0
	sw.s	%r26 %f30 292
	lw.s	%r26 %f30 292
	sw.s	%r15 %f30 0
	lw.s	%r2 %f0 4
	sw.s	%r15 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r15 %f0 8
	lw	%r3 %r30 0
	sw	%r26 %r30 296
	addi	%r0 %r30 1
	sw	%r26 %r30 300
	lw	%r26 %r30 296
	lw	%r26 %r31 300
	sub	%r30 %r31 %r30
	sw	%r26 %r30 304
	sw.s	%r26 %f3 340
	sw	%r26 %r4 336
	sw	%r26 %r6 332
	sw	%r26 %r18 328
	sw	%r26 %r16 324
	sw	%r26 %r5 320
	sw.s	%r26 %f2 316
	sw	%r26 %r17 312
	mov	%r12 %r29
	mov	%r2 %r1
	lw	%r26 %r2 304
	sw	%r26 %r28 344
	lw	%r29 %r30 0
	addi	%r26 %r26 348
	jalr	%r30
	addi	%r26 %r26 -348
	lw	%r26 %r28 344
	sw	%r26 %r1 308
	lw.s	%r26 %f3 340
	lw	%r26 %r4 336
	lw	%r26 %r6 332
	lw	%r26 %r18 328
	lw	%r26 %r16 324
	lw	%r26 %r5 320
	lw.s	%r26 %f2 316
	lw	%r26 %r17 312
	lw	%r26 %r30 24
	lw	%r30 %r30 0
	sw	%r26 %r30 312
	addi	%r0 %r30 1
	sw	%r26 %r30 316
	lw	%r26 %r30 312
	lw	%r26 %r31 316
	sub	%r30 %r31 %r1
	sw	%r26 %r4 344
	sw	%r26 %r6 340
	sw	%r26 %r18 336
	sw	%r26 %r16 332
	sw.s	%r26 %f2 328
	sw	%r26 %r17 324
	mov	%r5 %r29
	mov	%r18 %r2
	mov.s	%f3 %f0
	lw.s	%r26 %f1 264
	sw	%r26 %r28 348
	lw	%r29 %r30 0
	addi	%r26 %r26 352
	jalr	%r30
	addi	%r26 %r26 -352
	lw	%r26 %r28 348
	sw	%r26 %r1 320
	lw	%r26 %r4 344
	lw	%r26 %r6 340
	lw	%r26 %r18 336
	lw	%r26 %r16 332
	lw.s	%r26 %f2 328
	lw	%r26 %r17 324
	addi	%r0 %r1 l.277
	ilw.s	%r1 %f0 0
	lw.s	%r26 %f30 4
	fbl	%f0 %f30 tail_b.474
	addi	%r0 %r1 0
	j	branching_b.278
tail_b.474 :
	addi	%r0 %r1 1
branching_b.278 :
	addi	%r0 %r30 0
	sw	%r26 %r30 324
	lw	%r26 %r30 324
	beq	%r1 %r30 tail_b.476
	addi	%r0 %r1 4
	lw	%r26 %r30 0
	bl	%r30 %r1 tail_b.477
	j	branching_b.280
tail_b.477 :
	lw	%r26 %r30 0
	addi	%r30 %r1 1
	addi	%r0 %r30 -1
	sw	%r26 %r30 328
	slli	%r1 %r1 2
	lw	%r26 %r30 56
	add	%r30 %r1 %r31
	lw	%r26 %r30 328
	sw	%r31 %r30 0
	j	branching_b.280
tail_b.476 :
	j	return_point.49
branching_b.280 :
	addi	%r0 %r30 2
	sw	%r26 %r30 332
	lw	%r26 %r30 332
	beq	%r4 %r30 tail_b.479
	j	return_point.49
tail_b.479 :
	addi	%r0 %r30 l.11
	sw	%r26 %r30 336
	lw	%r26 %r30 336
	ilw.s	%r30 %f30 0
	sw.s	%r26 %f30 340
	lw	%r26 %r30 96
	lw	%r30 %r30 28
	sw	%r26 %r30 344
	lw	%r26 %r30 344
	lw.s	%r30 %f0 0
	lw.s	%r26 %f30 340
	sub.s	%f0 %f30 %f0
	lw.s	%r26 %f30 4
	mul.s	%f0 %f30 %f0
	lw	%r26 %r30 0
	addi	%r30 %r30 1
	sw	%r26 %r30 348
	lw.s	%r16 %f30 0
	sw.s	%r26 %f30 352
	lw.s	%r26 %f30 352
	add.s	%f30 %f2 %f30
	sw.s	%r26 %f30 356
	mov	%r17 %r3
	mov	%r18 %r2
	lw	%r26 %r29 8
	lw	%r26 %r1 348
	lw.s	%r26 %f1 356
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.49
branching_b.263 :
	addi	%r0 %r1 0
	beq	%r24 %r1 tail_b.450
	addi	%r0 %r24 1
solve_one_or_network.3 :
	slli	%r24 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r25 -1
	bne	%r1 %r25 tail_b.451
	j	tail_b.454
tail_b.451 :
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r25 0
	addi	%r0 %r1 0
	sw	%r26 %r24 464
	sw	%r26 %r11 460
	sw	%r26 %r6 456
	sw	%r26 %r18 452
	sw	%r26 %r19 448
	sw	%r26 %r22 444
	sw	%r26 %r4 440
	sw	%r26 %r2 436
	sw	%r26 %r7 432
	sw	%r26 %r8 428
	sw	%r26 %r3 424
	sw	%r26 %r9 420
	sw	%r26 %r20 416
	sw	%r26 %r14 412
	sw	%r26 %r12 408
	sw	%r26 %r29 404
	sw	%r26 %r13 400
	sw	%r26 %r10 396
	sw	%r26 %r23 392
	sw	%r26 %r21 388
	sw	%r26 %r15 384
	sw	%r26 %r16 380
	sw	%r26 %r5 376
	sw.s	%r26 %f2 372
	sw	%r26 %r17 368
	mov	%r13 %r29
	mov	%r18 %r3
	mov	%r25 %r2
	sw	%r26 %r28 468
	lw	%r29 %r30 0
	addi	%r26 %r26 472
	jalr	%r30
	addi	%r26 %r26 -472
	lw	%r26 %r28 468
	sw	%r26 %r1 364
	lw	%r26 %r24 464
	lw	%r26 %r11 460
	lw	%r26 %r6 456
	lw	%r26 %r18 452
	lw	%r26 %r19 448
	lw	%r26 %r22 444
	lw	%r26 %r4 440
	lw	%r26 %r2 436
	lw	%r26 %r7 432
	lw	%r26 %r8 428
	lw	%r26 %r3 424
	lw	%r26 %r9 420
	lw	%r26 %r20 416
	lw	%r26 %r14 412
	lw	%r26 %r12 408
	lw	%r26 %r29 404
	lw	%r26 %r13 400
	lw	%r26 %r10 396
	lw	%r26 %r23 392
	lw	%r26 %r21 388
	lw	%r26 %r15 384
	lw	%r26 %r16 380
	lw	%r26 %r5 376
	lw.s	%r26 %f2 372
	lw	%r26 %r17 368
	addi	%r24 %r24 1
	j	solve_one_or_network.3
tail_b.450 :
tail_b.454 :
	addi	%r22 %r22 1
	j	trace_or_matrix.1
return_point.49 :
	mov	%r6 %r1
	retl	
trace_diffuse_ray.0 :
	mov	%r29 %r2
	mov	%r1 %r3
	mov.s	%f0 %f2
node_b.11 :
	lw	%r2 %r17 72
	lw	%r2 %r22 68
	lw	%r2 %r11 64
	lw	%r2 %r21 60
	lw	%r2 %r4 56
	lw	%r2 %r29 52
	lw	%r2 %r8 48
	lw	%r2 %r1 44
	lw	%r2 %r7 40
	lw	%r2 %r13 36
	lw	%r2 %r14 32
	lw	%r2 %r12 28
	lw	%r2 %r20 24
	lw	%r2 %r18 20
	lw	%r2 %r15 16
	lw	%r2 %r16 12
	lw	%r2 %r10 8
	lw	%r2 %r2 4
	addi	%r0 %r5 l.264
	ilw.s	%r5 %f0 0
	sw.s	%r22 %f0 0
	addi	%r0 %r23 0
	lw	%r1 %r19 0
	sw	%r26 %r23 0
trace_or_matrix_fast.1 :
	slli	%r23 %r5 2
	add	%r19 %r5 %r31
	lw	%r31 %r5 0
	lw	%r5 %r24 0
	addi	%r0 %r6 -1
	beq	%r24 %r6 tail_b.482
	addi	%r0 %r6 99
	beq	%r24 %r6 node_b.12
	sw	%r26 %r9 100
	sw	%r26 %r5 96
	sw	%r26 %r24 92
	sw	%r26 %r3 88
	sw	%r26 %r19 84
	sw	%r26 %r23 80
	sw	%r26 %r2 76
	sw	%r26 %r10 72
	sw	%r26 %r16 68
	sw	%r26 %r15 64
	sw	%r26 %r18 60
	sw	%r26 %r20 56
	sw	%r26 %r12 52
	sw	%r26 %r14 48
	sw	%r26 %r13 44
	sw	%r26 %r7 40
	sw	%r26 %r1 36
	sw	%r26 %r8 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw	%r26 %r21 20
	sw	%r26 %r11 16
	sw	%r26 %r22 12
	sw	%r26 %r17 8
	sw.s	%r26 %f2 4
	mov	%r21 %r29
	mov	%r3 %r2
	mov	%r24 %r1
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r24
	lw	%r26 %r9 100
	lw	%r26 %r5 96
	lw	%r26 %r24 92
	lw	%r26 %r3 88
	lw	%r26 %r19 84
	lw	%r26 %r23 80
	lw	%r26 %r2 76
	lw	%r26 %r10 72
	lw	%r26 %r16 68
	lw	%r26 %r15 64
	lw	%r26 %r18 60
	lw	%r26 %r20 56
	lw	%r26 %r12 52
	lw	%r26 %r14 48
	lw	%r26 %r13 44
	lw	%r26 %r7 40
	lw	%r26 %r1 36
	lw	%r26 %r8 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw	%r26 %r21 20
	lw	%r26 %r11 16
	lw	%r26 %r22 12
	lw	%r26 %r17 8
	lw.s	%r26 %f2 4
	addi	%r0 %r6 0
	bne	%r24 %r6 branching_b.285
	j	tail_b.491
branching_b.285 :
	lw.s	%r4 %f1 0
	lw.s	%r22 %f0 0
	fbl	%f1 %f0 tail_b.485
	addi	%r0 %r6 0
	j	branching_b.286
tail_b.485 :
	addi	%r0 %r6 1
	j	branching_b.286
node_b.12 :
	addi	%r0 %r24 1
solve_one_or_network_fast.4 :
	slli	%r24 %r6 2
	add	%r5 %r6 %r31
	lw	%r31 %r25 0
	addi	%r0 %r6 -1
	bne	%r25 %r6 tail_b.483
	j	tail_b.491
tail_b.483 :
	slli	%r25 %r6 2
	add	%r2 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r25 0
	sw	%r26 %r9 100
	sw	%r26 %r5 96
	sw	%r26 %r24 92
	sw	%r26 %r3 88
	sw	%r26 %r19 84
	sw	%r26 %r23 80
	sw	%r26 %r2 76
	sw	%r26 %r10 72
	sw	%r26 %r16 68
	sw	%r26 %r15 64
	sw	%r26 %r18 60
	sw	%r26 %r20 56
	sw	%r26 %r12 52
	sw	%r26 %r14 48
	sw	%r26 %r13 44
	sw	%r26 %r7 40
	sw	%r26 %r1 36
	sw	%r26 %r8 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw	%r26 %r21 20
	sw	%r26 %r11 16
	sw	%r26 %r22 12
	sw	%r26 %r17 8
	sw.s	%r26 %f2 4
	mov	%r6 %r2
	mov	%r25 %r1
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r6
	lw	%r26 %r9 100
	lw	%r26 %r5 96
	lw	%r26 %r24 92
	lw	%r26 %r3 88
	lw	%r26 %r19 84
	lw	%r26 %r23 80
	lw	%r26 %r2 76
	lw	%r26 %r10 72
	lw	%r26 %r16 68
	lw	%r26 %r15 64
	lw	%r26 %r18 60
	lw	%r26 %r20 56
	lw	%r26 %r12 52
	lw	%r26 %r14 48
	lw	%r26 %r13 44
	lw	%r26 %r7 40
	lw	%r26 %r1 36
	lw	%r26 %r8 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw	%r26 %r21 20
	lw	%r26 %r11 16
	lw	%r26 %r22 12
	lw	%r26 %r17 8
	lw.s	%r26 %f2 4
	addi	%r24 %r24 1
	j	solve_one_or_network_fast.4
tail_b.482 :
branching_b.288 :
	lw	%r26 %r23 0
	lw.s	%r22 %f1 0
	addi	%r0 %r2 l.198
	ilw.s	%r2 %f0 0
	fbl	%f0 %f1 tail_b.492
	addi	%r0 %r4 0
	j	branching_b.289
tail_b.492 :
	addi	%r0 %r4 1
branching_b.289 :
	addi	%r0 %r2 0
	beq	%r4 %r2 tail_b.494
	addi	%r0 %r2 l.267
	ilw.s	%r2 %f0 0
	fbl	%f1 %f0 tail_b.495
	addi	%r0 %r2 0
	j	branching_b.291
tail_b.495 :
	addi	%r0 %r2 1
	j	branching_b.291
tail_b.494 :
	addi	%r0 %r2 0
branching_b.291 :
	addi	%r0 %r4 0
	beq	%r2 %r4 tail_b.497
	lw	%r20 %r2 0
	slli	%r2 %r2 2
	add	%r7 %r2 %r31
	lw	%r31 %r4 0
	lw	%r3 %r3 0
	lw	%r4 %r5 4
	addi	%r0 %r2 1
	beq	%r5 %r2 tail_b.498
	addi	%r0 %r2 2
	beq	%r5 %r2 tail_b.499
	mov	%r18 %r29
	mov	%r4 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.294
tail_b.499 :
	mov	%r16 %r29
	mov	%r4 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.294
tail_b.498 :
	mov	%r15 %r29
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.294
tail_b.497 :
return_point.50 :
	mov	%r9 %r1
	retl	
branching_b.294 :
	sw	%r26 %r9 36
	sw	%r26 %r4 32
	sw	%r26 %r10 28
	sw	%r26 %r14 24
	sw	%r26 %r13 20
	sw	%r26 %r1 16
	sw	%r26 %r8 12
	sw	%r26 %r11 8
	sw.s	%r26 %f2 4
	mov	%r17 %r29
	mov	%r12 %r2
	mov	%r4 %r1
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov	%r1 %r2
	lw	%r26 %r9 36
	lw	%r26 %r4 32
	lw	%r26 %r10 28
	lw	%r26 %r14 24
	lw	%r26 %r13 20
	lw	%r26 %r1 16
	lw	%r26 %r8 12
	lw	%r26 %r11 8
	lw.s	%r26 %f2 4
	addi	%r0 %r3 0
	lw	%r1 %r2 0
	sw	%r26 %r1 32
	sw	%r26 %r9 28
	sw	%r26 %r4 24
	sw	%r26 %r10 20
	sw	%r26 %r14 16
	sw	%r26 %r13 12
	sw	%r26 %r11 8
	sw.s	%r26 %f2 4
	mov	%r8 %r29
	mov	%r3 %r1
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	lw	%r26 %r1 32
	lw	%r26 %r9 28
	lw	%r26 %r4 24
	lw	%r26 %r10 20
	lw	%r26 %r14 16
	lw	%r26 %r13 12
	lw	%r26 %r11 8
	lw.s	%r26 %f2 4
	addi	%r0 %r2 0
	beq	%r1 %r2 branching_b.295
	j	return_point.50
branching_b.295 :
	sw.s	%r26 %f0 24
	sw	%r26 %r9 20
	sw	%r26 %r4 16
	sw	%r26 %r10 12
	sw	%r26 %r11 8
	sw.s	%r26 %f2 4
	mov	%r14 %r2
	mov	%r13 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 24
	lw	%r26 %r9 20
	lw	%r26 %r4 16
	lw	%r26 %r10 12
	lw	%r26 %r11 8
	lw.s	%r26 %f2 4
	neg.s	%f0 %f0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	fbl	%f1 %f0 tail_b.501
	addi	%r0 %r1 0
	j	branching_b.296
tail_b.501 :
	addi	%r0 %r1 1
branching_b.296 :
	addi	%r0 %r2 0
	beq	%r1 %r2 tail_b.503
	j	tail_b.505
tail_b.503 :
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
tail_b.505 :
	mul.s	%f0 %f2 %f1
	lw	%r4 %r1 28
	lw.s	%r1 %f0 0
	mul.s	%f0 %f1 %f0
	mov	%r11 %r2
	mov	%r10 %r1
	j	vecaccum.0
	j	return_point.50
branching_b.286 :
	addi	%r0 %r24 0
	beq	%r6 %r24 tail_b.487
	addi	%r0 %r24 1
solve_one_or_network_fast.3 :
	slli	%r24 %r6 2
	add	%r5 %r6 %r31
	lw	%r31 %r25 0
	addi	%r0 %r6 -1
	bne	%r25 %r6 tail_b.488
	j	tail_b.491
tail_b.488 :
	slli	%r25 %r6 2
	add	%r2 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r25 0
	sw	%r26 %r9 100
	sw	%r26 %r24 96
	sw	%r26 %r5 92
	sw	%r26 %r3 88
	sw	%r26 %r19 84
	sw	%r26 %r23 80
	sw	%r26 %r2 76
	sw	%r26 %r10 72
	sw	%r26 %r16 68
	sw	%r26 %r15 64
	sw	%r26 %r18 60
	sw	%r26 %r20 56
	sw	%r26 %r12 52
	sw	%r26 %r14 48
	sw	%r26 %r13 44
	sw	%r26 %r7 40
	sw	%r26 %r1 36
	sw	%r26 %r8 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw	%r26 %r21 20
	sw	%r26 %r11 16
	sw	%r26 %r22 12
	sw	%r26 %r17 8
	sw.s	%r26 %f2 4
	mov	%r6 %r2
	mov	%r25 %r1
	sw	%r26 %r28 104
	lw	%r29 %r30 0
	addi	%r26 %r26 108
	jalr	%r30
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r6
	lw	%r26 %r9 100
	lw	%r26 %r24 96
	lw	%r26 %r5 92
	lw	%r26 %r3 88
	lw	%r26 %r19 84
	lw	%r26 %r23 80
	lw	%r26 %r2 76
	lw	%r26 %r10 72
	lw	%r26 %r16 68
	lw	%r26 %r15 64
	lw	%r26 %r18 60
	lw	%r26 %r20 56
	lw	%r26 %r12 52
	lw	%r26 %r14 48
	lw	%r26 %r13 44
	lw	%r26 %r7 40
	lw	%r26 %r1 36
	lw	%r26 %r8 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw	%r26 %r21 20
	lw	%r26 %r11 16
	lw	%r26 %r22 12
	lw	%r26 %r17 8
	lw.s	%r26 %f2 4
	addi	%r24 %r24 1
	j	solve_one_or_network_fast.3
tail_b.487 :
tail_b.491 :
	addi	%r23 %r23 1
	j	trace_or_matrix_fast.1
trace_diffuse_ray_80percent.0 :
	mov	%r3 %r6
	mov	%r2 %r5
	mov	%r1 %r2
	mov	%r29 %r1
branching_b.297 :
	lw	%r1 %r29 12
	lw	%r1 %r3 8
	lw	%r1 %r7 4
	addi	%r0 %r1 0
	bne	%r2 %r1 node_b.14
	j	branching_b.301
node_b.14 :
	lw	%r7 %r9 0
	sw	%r26 %r4 28
	sw	%r26 %r6 24
	sw	%r26 %r5 20
	sw	%r26 %r9 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r3 %r29
	mov	%r6 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r4 28
	lw	%r26 %r6 24
	lw	%r26 %r5 20
	lw	%r26 %r9 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r8 118
iter_trace_diffuse_rays.6 :
	addi	%r0 %r1 0
	ble	%r1 %r8 branching_b.299
	j	branching_b.301
branching_b.299 :
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r8 28
	sw	%r26 %r6 24
	sw	%r26 %r5 20
	sw	%r26 %r9 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	veciprod.0
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r8 28
	lw	%r26 %r6 24
	lw	%r26 %r5 20
	lw	%r26 %r9 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.507
	addi	%r0 %r1 0
	j	branching_b.300
tail_b.507 :
	addi	%r0 %r1 1
branching_b.300 :
	addi	%r0 %r10 0
	beq	%r1 %r10 tail_b.509
	addi	%r8 %r1 1
	slli	%r1 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r10 l.287
	ilw.s	%r10 %f0 0
	div.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.511
tail_b.509 :
	slli	%r8 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r10 l.289
	ilw.s	%r10 %f0 0
	div.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
tail_b.511 :
	addi	%r0 %r1 2
	sub	%r8 %r1 %r8
	j	iter_trace_diffuse_rays.6
branching_b.301 :
	addi	%r0 %r1 1
	bne	%r2 %r1 node_b.15
	j	branching_b.305
node_b.15 :
	lw	%r7 %r9 4
	sw	%r26 %r4 28
	sw	%r26 %r9 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r3 %r29
	mov	%r6 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r4 28
	lw	%r26 %r9 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r10 118
iter_trace_diffuse_rays.5 :
	addi	%r0 %r1 0
	ble	%r1 %r10 branching_b.303
	j	branching_b.305
branching_b.303 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r10 28
	sw	%r26 %r9 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	veciprod.0
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r10 28
	lw	%r26 %r9 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.514
	addi	%r0 %r8 0
	j	branching_b.304
tail_b.514 :
	addi	%r0 %r8 1
branching_b.304 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.516
	addi	%r10 %r1 1
	slli	%r1 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r8 l.287
	ilw.s	%r8 %f0 0
	div.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.518
tail_b.516 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r8 0
	addi	%r0 %r1 l.289
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r8 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.518 :
	addi	%r0 %r1 2
	sub	%r10 %r1 %r10
	j	iter_trace_diffuse_rays.5
branching_b.305 :
	addi	%r0 %r1 2
	bne	%r2 %r1 node_b.16
	j	branching_b.309
node_b.16 :
	lw	%r7 %r8 8
	sw	%r26 %r4 28
	sw	%r26 %r8 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r3 %r29
	mov	%r6 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r4 28
	lw	%r26 %r8 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r10 118
iter_trace_diffuse_rays.4 :
	addi	%r0 %r1 0
	ble	%r1 %r10 branching_b.307
	j	branching_b.309
branching_b.307 :
	slli	%r10 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r10 28
	sw	%r26 %r8 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	veciprod.0
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r10 28
	lw	%r26 %r8 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.521
	addi	%r0 %r9 0
	j	branching_b.308
tail_b.521 :
	addi	%r0 %r9 1
branching_b.308 :
	addi	%r0 %r1 0
	beq	%r9 %r1 tail_b.523
	addi	%r10 %r1 1
	slli	%r1 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r9 l.287
	ilw.s	%r9 %f0 0
	div.s	%f0 %f1 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.525
tail_b.523 :
	slli	%r10 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r9 0
	addi	%r0 %r1 l.289
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r9 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.525 :
	addi	%r0 %r1 2
	sub	%r10 %r1 %r10
	j	iter_trace_diffuse_rays.4
branching_b.309 :
	addi	%r0 %r1 3
	bne	%r2 %r1 node_b.17
	j	branching_b.313
node_b.17 :
	lw	%r7 %r9 12
	sw	%r26 %r4 28
	sw	%r26 %r9 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r3 %r29
	mov	%r6 %r1
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r4 28
	lw	%r26 %r9 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r10 118
iter_trace_diffuse_rays.3 :
	addi	%r0 %r1 0
	ble	%r1 %r10 branching_b.311
	j	branching_b.313
branching_b.311 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw	%r26 %r4 36
	sw.s	%r26 %f1 32
	sw	%r26 %r10 28
	sw	%r26 %r9 24
	sw	%r26 %r6 20
	sw	%r26 %r5 16
	sw	%r26 %r7 12
	sw	%r26 %r3 8
	sw	%r26 %r29 4
	sw	%r26 %r2 0
	mov	%r5 %r2
	sw	%r26 %r28 40
	addi	%r26 %r26 44
	jal	veciprod.0
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	mov.s	%f0 %f1
	lw	%r26 %r4 36
	lw.s	%r26 %f1 32
	lw	%r26 %r10 28
	lw	%r26 %r9 24
	lw	%r26 %r6 20
	lw	%r26 %r5 16
	lw	%r26 %r7 12
	lw	%r26 %r3 8
	lw	%r26 %r29 4
	lw	%r26 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.528
	addi	%r0 %r8 0
	j	branching_b.312
tail_b.528 :
	addi	%r0 %r8 1
branching_b.312 :
	addi	%r0 %r1 0
	beq	%r8 %r1 tail_b.530
	addi	%r10 %r1 1
	slli	%r1 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r8 0
	addi	%r0 %r1 l.287
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r8 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.532
tail_b.530 :
	slli	%r10 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r8 0
	addi	%r0 %r1 l.289
	ilw.s	%r1 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r8 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.532 :
	addi	%r0 %r1 2
	sub	%r10 %r1 %r10
	j	iter_trace_diffuse_rays.3
branching_b.313 :
	addi	%r0 %r1 4
	bne	%r2 %r1 node_b.18
	j	return_point.51
node_b.18 :
	lw	%r7 %r1 16
	sw	%r26 %r4 16
	sw	%r26 %r1 12
	sw	%r26 %r6 8
	sw	%r26 %r5 4
	sw	%r26 %r29 0
	mov	%r3 %r29
	mov	%r6 %r1
	sw	%r26 %r28 20
	lw	%r29 %r30 0
	addi	%r26 %r26 24
	jalr	%r30
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r4 16
	lw	%r26 %r1 12
	lw	%r26 %r6 8
	lw	%r26 %r5 4
	lw	%r26 %r29 0
	addi	%r0 %r2 118
iter_trace_diffuse_rays.2 :
	addi	%r0 %r3 0
	ble	%r3 %r2 branching_b.315
	j	return_point.51
branching_b.315 :
	slli	%r2 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r3 0
	lw	%r3 %r3 0
	sw.s	%r26 %f0 24
	sw	%r26 %r4 20
	sw	%r26 %r2 16
	sw	%r26 %r1 12
	sw	%r26 %r6 8
	sw	%r26 %r5 4
	sw	%r26 %r29 0
	mov	%r5 %r2
	mov	%r3 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	veciprod.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw.s	%r26 %f0 24
	lw	%r26 %r4 20
	lw	%r26 %r2 16
	lw	%r26 %r1 12
	lw	%r26 %r6 8
	lw	%r26 %r5 4
	lw	%r26 %r29 0
	addi	%r0 %r3 l.32
	ilw.s	%r3 %f1 0
	fbl	%f0 %f1 tail_b.535
	addi	%r0 %r3 0
	j	branching_b.316
tail_b.535 :
	addi	%r0 %r3 1
branching_b.316 :
	addi	%r0 %r7 0
	beq	%r3 %r7 tail_b.537
	addi	%r2 %r3 1
	slli	%r3 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r7 0
	addi	%r0 %r3 l.287
	ilw.s	%r3 %f1 0
	div.s	%f1 %f0 %f0
	mov	%r7 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.539
tail_b.537 :
	slli	%r2 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r3 0
	addi	%r0 %r7 l.289
	ilw.s	%r7 %f1 0
	div.s	%f1 %f0 %f0
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.539 :
	addi	%r0 %r3 2
	sub	%r2 %r3 %r2
	j	iter_trace_diffuse_rays.2
return_point.51 :
	mov	%r4 %r1
	retl	
calc_diffuse_using_5points.0 :
	mov	%r4 %r10
	mov	%r3 %r9
	mov	%r2 %r3
tail_b.542 :
	lw	%r29 %r7 8
	lw	%r29 %r8 4
	slli	%r1 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r3 20
	addi	%r0 %r2 1
	sub	%r1 %r2 %r2
	slli	%r2 %r2 2
	add	%r9 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r11 20
	slli	%r1 %r2 2
	add	%r9 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r12 20
	addi	%r1 %r2 1
	slli	%r2 %r2 2
	add	%r9 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r4 20
	slli	%r1 %r2 2
	add	%r10 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r10 20
	slli	%r5 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r2 0
	lw.s	%r2 %f0 0
	sw.s	%r8 %f0 0
	lw.s	%r2 %f0 4
	sw.s	%r8 %f0 4
	lw.s	%r2 %f0 8
	sw.s	%r8 %f0 8
	slli	%r5 %r2 2
	add	%r11 %r2 %r31
	lw	%r31 %r2 0
	sw	%r26 %r6 32
	sw	%r26 %r10 28
	sw	%r26 %r4 24
	sw	%r26 %r12 20
	sw	%r26 %r8 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r1 0
	mov	%r8 %r1
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	vecadd.0
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r6 32
	lw	%r26 %r10 28
	lw	%r26 %r4 24
	lw	%r26 %r12 20
	lw	%r26 %r8 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r1 0
	slli	%r5 %r2 2
	add	%r12 %r2 %r31
	lw	%r31 %r2 0
	sw	%r26 %r6 28
	sw	%r26 %r10 24
	sw	%r26 %r4 20
	sw	%r26 %r8 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r1 0
	mov	%r8 %r1
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	vecadd.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r2
	lw	%r26 %r6 28
	lw	%r26 %r10 24
	lw	%r26 %r4 20
	lw	%r26 %r8 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r1 0
	slli	%r5 %r2 2
	add	%r4 %r2 %r31
	lw	%r31 %r2 0
	sw	%r26 %r6 24
	sw	%r26 %r10 20
	sw	%r26 %r8 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r1 0
	mov	%r8 %r1
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	vecadd.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r2
	lw	%r26 %r6 24
	lw	%r26 %r10 20
	lw	%r26 %r8 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r1 0
	slli	%r5 %r2 2
	add	%r10 %r2 %r31
	lw	%r31 %r2 0
	sw	%r26 %r6 20
	sw	%r26 %r8 16
	sw	%r26 %r7 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r1 0
	mov	%r8 %r1
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	vecadd.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r1 %r2
	lw	%r26 %r6 20
	lw	%r26 %r8 16
	lw	%r26 %r7 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r1 0
	slli	%r1 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 16
	slli	%r5 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	mov	%r8 %r3
	mov	%r7 %r1
	j	vecaccumv.0
return_point.52 :
	mov	%r6 %r1
	retl	
neighbors_are_available.0 :
	mov	%r5 %r6
	mov	%r2 %r7
	mov	%r4 %r2
	mov	%r3 %r4
	mov	%r1 %r3
branching_b.317 :
	slli	%r3 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r5 8
	slli	%r6 %r1 2
	add	%r5 %r1 %r31
	lw	%r31 %r5 0
	slli	%r3 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r7 2
	add	%r1 %r7 %r31
	lw	%r31 %r1 0
	beq	%r1 %r5 branching_b.318
	addi	%r0 %r1 0
	j	return_point.53
branching_b.318 :
	slli	%r3 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	beq	%r1 %r5 branching_b.319
	addi	%r0 %r1 0
	j	return_point.53
branching_b.319 :
	addi	%r0 %r1 1
	sub	%r3 %r1 %r1
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r2 8
	slli	%r6 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	beq	%r1 %r5 branching_b.320
	addi	%r0 %r1 0
	j	return_point.53
branching_b.320 :
	addi	%r3 %r1 1
	slli	%r1 %r1 2
	add	%r4 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 8
	slli	%r6 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	beq	%r1 %r5 tail_b.543
	addi	%r0 %r1 0
	j	return_point.53
tail_b.543 :
	addi	%r0 %r1 1
return_point.53 :
	retl	
try_exploit_neighbors.0 :
	mov	%r29 %r10
	mov	%r6 %r7
	mov	%r4 %r13
	mov	%r2 %r11
	mov	%r1 %r12
branching_b.321 :
	lw	%r10 %r8 16
	lw	%r10 %r4 12
	lw	%r10 %r9 8
	lw	%r10 %r29 4
	slli	%r12 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r15 0
	addi	%r0 %r1 4
	ble	%r7 %r1 branching_b.322
	j	return_point.54
branching_b.322 :
	addi	%r0 %r14 0
	lw	%r15 %r2 8
	slli	%r7 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	ble	%r14 %r1 branching_b.323
	j	return_point.54
branching_b.323 :
	sw	%r26 %r7 52
	sw	%r26 %r6 48
	sw	%r26 %r1 44
	sw	%r26 %r15 40
	sw	%r26 %r29 36
	sw	%r26 %r9 32
	sw	%r26 %r4 28
	sw	%r26 %r8 24
	sw	%r26 %r5 20
	sw	%r26 %r13 16
	sw	%r26 %r3 12
	sw	%r26 %r11 8
	sw	%r26 %r12 4
	sw	%r26 %r10 0
	mov	%r5 %r4
	mov	%r3 %r2
	mov	%r12 %r1
	mov	%r7 %r5
	mov	%r13 %r3
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	neighbors_are_available.0
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	lw	%r26 %r7 52
	lw	%r26 %r6 48
	lw	%r26 %r1 44
	lw	%r26 %r15 40
	lw	%r26 %r29 36
	lw	%r26 %r9 32
	lw	%r26 %r4 28
	lw	%r26 %r8 24
	lw	%r26 %r5 20
	lw	%r26 %r13 16
	lw	%r26 %r3 12
	lw	%r26 %r11 8
	lw	%r26 %r12 4
	lw	%r26 %r10 0
	addi	%r0 %r2 0
	beq	%r1 %r2 node_b.19
	lw	%r15 %r1 12
	slli	%r7 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.553
	mov	%r5 %r4
	mov	%r3 %r2
	mov	%r12 %r1
	mov	%r7 %r5
	mov	%r13 %r3
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.555
tail_b.553 :
	j	tail_b.555
node_b.19 :
	slli	%r12 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r2 0
do_without_neighbors.2 :
	addi	%r0 %r1 4
	ble	%r7 %r1 branching_b.325
	j	return_point.54
branching_b.325 :
	lw	%r2 %r1 8
	addi	%r0 %r5 0
	slli	%r7 %r3 2
	add	%r1 %r3 %r31
	lw	%r31 %r1 0
	ble	%r5 %r1 branching_b.326
	j	return_point.54
branching_b.326 :
	lw	%r2 %r3 12
	slli	%r7 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.548
	lw	%r2 %r1 20
	lw	%r2 %r10 28
	lw	%r2 %r11 4
	lw	%r2 %r3 16
	slli	%r7 %r5 2
	add	%r1 %r5 %r31
	lw	%r31 %r1 0
	lw.s	%r1 %f0 0
	sw.s	%r9 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r9 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r9 %f0 8
	lw	%r2 %r1 24
	lw	%r1 %r5 0
	slli	%r7 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r1 0
	slli	%r7 %r10 2
	add	%r11 %r10 %r31
	lw	%r31 %r10 0
	sw	%r26 %r3 24
	sw	%r26 %r7 20
	sw	%r26 %r2 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	sw	%r26 %r8 0
	mov	%r8 %r29
	mov	%r10 %r3
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 28
	lw	%r29 %r30 0
	addi	%r26 %r26 32
	jalr	%r30
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r3 24
	lw	%r26 %r7 20
	lw	%r26 %r2 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	lw	%r26 %r8 0
	slli	%r7 %r1 2
	add	%r3 %r1 %r31
	lw	%r31 %r1 0
	mov	%r9 %r3
	mov	%r1 %r2
	mov	%r4 %r1
	j	vecaccumv.0
	j	tail_b.550
tail_b.548 :
tail_b.550 :
	addi	%r7 %r7 1
	j	do_without_neighbors.2
tail_b.555 :
	addi	%r7 %r1 1
	mov	%r10 %r29
	mov	%r1 %r6
	mov	%r13 %r4
	mov	%r11 %r2
	mov	%r12 %r1
	lw	%r29 %r30 0
	jr	%r30
return_point.54 :
	mov	%r6 %r1
	retl	
write_ppm_header.0 :
tail_b.558 :
	lw	%r29 %r3 4
	addi	%r0 %r2 80
	out	%r2
	addi	%r0 %r2 51
	out	%r2
	addi	%r0 %r2 10
	out	%r2
	lw	%r3 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r3 0
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	print_int.0
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r2
	lw	%r26 %r1 4
	lw	%r26 %r3 0
	addi	%r0 %r2 32
	out	%r2
	lw	%r3 %r2 4
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r2 32
	out	%r2
	addi	%r0 %r2 255
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.0
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	addi	%r0 %r2 10
	out	%r2
return_point.55 :
	retl	
pretrace_diffuse_rays.0 :
	mov	%r2 %r8
	mov	%r1 %r7
branching_b.328 :
	lw	%r29 %r9 16
	lw	%r29 %r10 12
	lw	%r29 %r3 8
	lw	%r29 %r6 4
	addi	%r0 %r1 4
	ble	%r8 %r1 branching_b.329
	j	return_point.56
branching_b.329 :
	lw	%r7 %r1 8
	slli	%r8 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 0
	ble	%r2 %r1 branching_b.330
	j	return_point.56
branching_b.330 :
	lw	%r7 %r1 12
	slli	%r8 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.559
	lw	%r7 %r1 24
	lw	%r1 %r2 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw.s	%r6 %f0 0
	sw.s	%r6 %f0 4
	sw.s	%r6 %f0 8
	lw	%r7 %r1 28
	lw	%r7 %r11 4
	slli	%r2 %r2 2
	add	%r3 %r2 %r31
	lw	%r31 %r5 0
	slli	%r8 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r3 0
	slli	%r8 %r1 2
	add	%r11 %r1 %r31
	lw	%r31 %r1 0
	sw	%r26 %r1 32
	sw	%r26 %r3 28
	sw	%r26 %r5 24
	sw	%r26 %r4 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r8 8
	sw	%r26 %r7 4
	sw	%r26 %r29 0
	mov	%r10 %r29
	sw	%r26 %r28 36
	lw	%r29 %r30 0
	addi	%r26 %r26 40
	jalr	%r30
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r1 32
	lw	%r26 %r3 28
	lw	%r26 %r5 24
	lw	%r26 %r4 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r8 8
	lw	%r26 %r7 4
	lw	%r26 %r29 0
	addi	%r0 %r11 118
	sw	%r26 %r11 0
iter_trace_diffuse_rays.1 :
	addi	%r0 %r2 0
	ble	%r2 %r11 branching_b.332
	j	tail_b.566
branching_b.332 :
	slli	%r11 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r2 0
	sw.s	%r26 %f1 44
	sw	%r26 %r11 40
	sw	%r26 %r1 36
	sw	%r26 %r3 32
	sw	%r26 %r5 28
	sw	%r26 %r4 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	sw	%r26 %r8 12
	sw	%r26 %r7 8
	sw	%r26 %r29 4
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	veciprod.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov.s	%f0 %f1
	lw.s	%r26 %f1 44
	lw	%r26 %r11 40
	lw	%r26 %r1 36
	lw	%r26 %r3 32
	lw	%r26 %r5 28
	lw	%r26 %r4 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	lw	%r26 %r8 12
	lw	%r26 %r7 8
	lw	%r26 %r29 4
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	fbl	%f1 %f0 tail_b.560
	addi	%r0 %r2 0
	j	branching_b.333
tail_b.560 :
	addi	%r0 %r2 1
	j	branching_b.333
tail_b.559 :
tail_b.567 :
	addi	%r8 %r2 1
	mov	%r7 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.56
branching_b.333 :
	addi	%r0 %r10 0
	beq	%r2 %r10 tail_b.562
	addi	%r11 %r2 1
	slli	%r2 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r10 0
	addi	%r0 %r2 l.287
	ilw.s	%r2 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r9 %r29
	mov	%r10 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	tail_b.564
tail_b.562 :
	slli	%r11 %r2 2
	add	%r5 %r2 %r31
	lw	%r31 %r2 0
	addi	%r0 %r10 l.289
	ilw.s	%r10 %f0 0
	div.s	%f0 %f1 %f0
	mov	%r9 %r29
	mov	%r2 %r1
	lw	%r29 %r30 0
	jr	%r30
tail_b.564 :
	addi	%r0 %r2 2
	sub	%r11 %r2 %r11
	j	iter_trace_diffuse_rays.1
tail_b.566 :
	lw	%r26 %r11 0
	lw	%r7 %r1 20
	slli	%r8 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r1 0
	lw.s	%r6 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r6 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r6 %f0 8
	sw.s	%r1 %f0 8
	j	tail_b.567
return_point.56 :
	mov	%r4 %r1
	retl	
pretrace_pixels.0 :
	mov	%r29 %r11
	mov	%r3 %r4
	mov	%r2 %r5
	mov	%r1 %r9
	mov.s	%f2 %f3
	mov.s	%f1 %f4
	mov.s	%f0 %f2
branching_b.334 :
	lw	%r11 %r12 36
	lw	%r11 %r29 32
	lw	%r11 %r14 28
	lw	%r11 %r3 24
	lw	%r11 %r2 20
	lw	%r11 %r8 16
	lw	%r11 %r1 12
	lw	%r11 %r13 8
	lw	%r11 %r7 4
	addi	%r0 %r6 0
	ble	%r6 %r5 branching_b.335
	j	return_point.57
branching_b.335 :
	lw.s	%r2 %f0 0
	lw	%r7 %r2 0
	sub	%r5 %r2 %r2
	mtc1	%r2 %f1
	mul.s	%f1 %f0 %f1
	lw.s	%r3 %f0 0
	mul.s	%f0 %f1 %f0
	add.s	%f2 %f0 %f0
	sw.s	%r1 %f0 0
	lw.s	%r3 %f0 4
	mul.s	%f0 %f1 %f0
	add.s	%f4 %f0 %f0
	sw.s	%r1 %f0 4
	lw.s	%r3 %f0 8
	mul.s	%f0 %f1 %f0
	add.s	%f3 %f0 %f0
	sw.s	%r1 %f0 8
	addi	%r0 %r2 0
	sw	%r26 %r10 52
	sw	%r26 %r13 48
	sw	%r26 %r1 44
	sw	%r26 %r8 40
	sw	%r26 %r14 36
	sw	%r26 %r29 32
	sw	%r26 %r12 28
	sw.s	%r26 %f3 24
	sw.s	%r26 %f4 20
	sw.s	%r26 %f2 16
	sw	%r26 %r4 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r11 0
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	vecunit_sgn.0
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r2
	lw	%r26 %r10 52
	lw	%r26 %r13 48
	lw	%r26 %r1 44
	lw	%r26 %r8 40
	lw	%r26 %r14 36
	lw	%r26 %r29 32
	lw	%r26 %r12 28
	lw.s	%r26 %f3 24
	lw.s	%r26 %f4 20
	lw.s	%r26 %f2 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r11 0
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw.s	%r8 %f0 0
	sw.s	%r8 %f0 4
	sw.s	%r8 %f0 8
	lw.s	%r12 %f0 0
	sw.s	%r14 %f0 0
	lw.s	%r12 %f0 4
	sw.s	%r14 %f0 4
	lw.s	%r12 %f0 8
	sw.s	%r14 %f0 8
	addi	%r0 %r6 0
	addi	%r0 %r2 l.11
	ilw.s	%r2 %f0 0
	slli	%r5 %r2 2
	add	%r9 %r2 %r31
	lw	%r31 %r3 0
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f1 0
	sw	%r26 %r10 36
	sw	%r26 %r13 32
	sw	%r26 %r8 28
	sw.s	%r26 %f3 24
	sw.s	%r26 %f4 20
	sw.s	%r26 %f2 16
	sw	%r26 %r4 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r11 0
	mov	%r1 %r2
	mov	%r6 %r1
	sw	%r26 %r28 40
	lw	%r29 %r30 0
	addi	%r26 %r26 44
	jalr	%r30
	addi	%r26 %r26 -44
	lw	%r26 %r28 40
	lw	%r26 %r10 36
	lw	%r26 %r13 32
	lw	%r26 %r8 28
	lw.s	%r26 %f3 24
	lw.s	%r26 %f4 20
	lw.s	%r26 %f2 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r11 0
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	lw.s	%r8 %f0 0
	sw.s	%r1 %f0 0
	lw.s	%r8 %f0 4
	sw.s	%r1 %f0 4
	lw.s	%r8 %f0 8
	sw.s	%r1 %f0 8
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 24
	sw	%r1 %r4 0
	slli	%r5 %r1 2
	add	%r9 %r1 %r31
	lw	%r31 %r1 0
	addi	%r0 %r2 0
	sw	%r26 %r10 28
	sw.s	%r26 %f3 24
	sw.s	%r26 %f4 20
	sw.s	%r26 %f2 16
	sw	%r26 %r4 12
	sw	%r26 %r5 8
	sw	%r26 %r9 4
	sw	%r26 %r11 0
	mov	%r13 %r29
	sw	%r26 %r28 32
	lw	%r29 %r30 0
	addi	%r26 %r26 36
	jalr	%r30
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r10 28
	lw.s	%r26 %f3 24
	lw.s	%r26 %f4 20
	lw.s	%r26 %f2 16
	lw	%r26 %r4 12
	lw	%r26 %r5 8
	lw	%r26 %r9 4
	lw	%r26 %r11 0
	addi	%r0 %r1 1
	sub	%r5 %r1 %r3
	addi	%r4 %r2 1
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.570
	mov	%r2 %r1
	j	tail_b.572
tail_b.570 :
	addi	%r0 %r1 5
	sub	%r2 %r1 %r1
tail_b.572 :
	mov	%r11 %r29
	mov	%r3 %r2
	mov	%r1 %r3
	mov	%r9 %r1
	mov.s	%f4 %f1
	mov.s	%f2 %f0
	mov.s	%f3 %f2
	lw	%r29 %r30 0
	jr	%r30
return_point.57 :
	mov	%r10 %r1
	retl	
pretrace_line.0 :
	mov	%r3 %r5
	mov	%r2 %r7
	mov	%r29 %r2
	mov	%r1 %r3
tail_b.574 :
	lw	%r2 %r1 24
	lw	%r2 %r6 20
	lw	%r2 %r9 16
	lw	%r2 %r29 12
	lw	%r2 %r8 8
	lw	%r2 %r2 4
	lw.s	%r9 %f0 0
	lw	%r2 %r2 4
	sub	%r7 %r2 %r2
	mtc1	%r2 %f1
	mul.s	%f1 %f0 %f2
	lw.s	%r6 %f0 0
	mul.s	%f0 %f2 %f0
	lw.s	%r1 %f1 0
	add.s	%f1 %f0 %f3
	lw.s	%r6 %f0 4
	mul.s	%f0 %f2 %f1
	lw.s	%r1 %f0 4
	add.s	%f0 %f1 %f1
	lw.s	%r6 %f0 8
	mul.s	%f0 %f2 %f0
	lw.s	%r1 %f2 8
	add.s	%f2 %f0 %f2
	lw	%r8 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	mov	%r3 %r1
	mov	%r5 %r3
	mov.s	%f3 %f0
	lw	%r29 %r30 0
	jr	%r30
return_point.58 :
	mov	%r4 %r1
	retl	
scan_pixel.0 :
	mov	%r29 %r7
	mov	%r5 %r8
	mov	%r4 %r10
	mov	%r3 %r11
	mov	%r1 %r4
branching_b.336 :
	lw	%r7 %r5 20
	lw	%r7 %r29 16
	lw	%r7 %r12 12
	lw	%r7 %r6 8
	lw	%r7 %r3 4
	lw	%r6 %r1 0
	bl	%r4 %r1 branching_b.337
	j	return_point.59
branching_b.337 :
	slli	%r4 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	lw.s	%r1 %f0 0
	sw.s	%r12 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r12 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r12 %f0 8
	addi	%r2 %r13 1
	lw	%r6 %r1 4
	bl	%r13 %r1 branching_b.338
	addi	%r0 %r1 0
	j	branching_b.341
branching_b.338 :
	addi	%r0 %r1 0
	bl	%r1 %r2 branching_b.339
	addi	%r0 %r1 0
	j	branching_b.341
branching_b.339 :
	addi	%r4 %r1 1
	lw	%r6 %r6 0
	bl	%r1 %r6 branching_b.340
	addi	%r0 %r1 0
	j	branching_b.341
branching_b.340 :
	addi	%r0 %r1 0
	bl	%r1 %r4 tail_b.575
	addi	%r0 %r1 0
	j	branching_b.341
tail_b.575 :
	addi	%r0 %r1 1
branching_b.341 :
	addi	%r0 %r6 0
	beq	%r1 %r6 node_b.21
	addi	%r0 %r6 0
	mov	%r5 %r29
	mov	%r11 %r3
	mov	%r4 %r1
	mov	%r8 %r5
	mov	%r10 %r4
	lw	%r29 %r30 0
	jr	%r30
	j	branching_b.345
node_b.21 :
	slli	%r4 %r1 2
	add	%r10 %r1 %r31
	lw	%r31 %r14 0
	addi	%r0 %r5 0
do_without_neighbors.1 :
	addi	%r0 %r1 4
	ble	%r5 %r1 branching_b.343
	j	branching_b.345
branching_b.343 :
	lw	%r14 %r13 8
	addi	%r0 %r6 0
	slli	%r5 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r1 0
	ble	%r6 %r1 branching_b.344
	j	branching_b.345
branching_b.344 :
	lw	%r14 %r1 12
	slli	%r5 %r6 2
	add	%r1 %r6 %r31
	lw	%r31 %r6 0
	addi	%r0 %r1 0
	beq	%r6 %r1 tail_b.580
	lw	%r14 %r1 20
	lw	%r14 %r15 28
	lw	%r14 %r17 4
	lw	%r14 %r13 16
	slli	%r5 %r6 2
	add	%r1 %r6 %r31
	lw	%r31 %r1 0
	lw.s	%r1 %f0 0
	sw.s	%r3 %f0 0
	lw.s	%r1 %f0 4
	sw.s	%r3 %f0 4
	lw.s	%r1 %f0 8
	sw.s	%r3 %f0 8
	lw	%r14 %r1 24
	lw	%r1 %r16 0
	slli	%r5 %r1 2
	add	%r15 %r1 %r31
	lw	%r31 %r1 0
	slli	%r5 %r6 2
	add	%r17 %r6 %r31
	lw	%r31 %r6 0
	sw	%r26 %r13 48
	sw	%r26 %r5 44
	sw	%r26 %r14 40
	sw	%r26 %r9 36
	sw	%r26 %r3 32
	sw	%r26 %r12 28
	sw	%r26 %r29 24
	sw	%r26 %r8 20
	sw	%r26 %r10 16
	sw	%r26 %r11 12
	sw	%r26 %r2 8
	sw	%r26 %r4 4
	sw	%r26 %r7 0
	mov	%r6 %r3
	mov	%r1 %r2
	mov	%r16 %r1
	sw	%r26 %r28 52
	lw	%r29 %r30 0
	addi	%r26 %r26 56
	jalr	%r30
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	lw	%r26 %r13 48
	lw	%r26 %r5 44
	lw	%r26 %r14 40
	lw	%r26 %r9 36
	lw	%r26 %r3 32
	lw	%r26 %r12 28
	lw	%r26 %r29 24
	lw	%r26 %r8 20
	lw	%r26 %r10 16
	lw	%r26 %r11 12
	lw	%r26 %r2 8
	lw	%r26 %r4 4
	lw	%r26 %r7 0
	slli	%r5 %r1 2
	add	%r13 %r1 %r31
	lw	%r31 %r1 0
	mov	%r1 %r2
	mov	%r12 %r1
	j	vecaccumv.0
	j	tail_b.582
tail_b.580 :
tail_b.582 :
	addi	%r5 %r5 1
	j	do_without_neighbors.1
branching_b.345 :
	lw.s	%r12 %f0 0
	mfc1	%r3 %f0
	addi	%r0 %r1 255
	bl	%r1 %r3 tail_b.586
	addi	%r0 %r1 0
	bl	%r3 %r1 tail_b.587
	mov	%r3 %r1
	j	branching_b.347
tail_b.587 :
	addi	%r0 %r1 0
	j	branching_b.347
tail_b.586 :
	addi	%r0 %r1 255
branching_b.347 :
	sw	%r26 %r9 28
	sw	%r26 %r12 24
	sw	%r26 %r8 20
	sw	%r26 %r10 16
	sw	%r26 %r11 12
	sw	%r26 %r2 8
	sw	%r26 %r4 4
	sw	%r26 %r7 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	print_int.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r9 28
	lw	%r26 %r12 24
	lw	%r26 %r8 20
	lw	%r26 %r10 16
	lw	%r26 %r11 12
	lw	%r26 %r2 8
	lw	%r26 %r4 4
	lw	%r26 %r7 0
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r12 %f0 4
	mfc1	%r1 %f0
	addi	%r0 %r3 255
	bl	%r3 %r1 tail_b.589
	addi	%r0 %r3 0
	bl	%r1 %r3 tail_b.590
	j	branching_b.349
tail_b.590 :
	addi	%r0 %r1 0
	j	branching_b.349
tail_b.589 :
	addi	%r0 %r1 255
branching_b.349 :
	sw	%r26 %r9 28
	sw	%r26 %r12 24
	sw	%r26 %r8 20
	sw	%r26 %r10 16
	sw	%r26 %r11 12
	sw	%r26 %r2 8
	sw	%r26 %r4 4
	sw	%r26 %r7 0
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	print_int.0
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	lw	%r26 %r9 28
	lw	%r26 %r12 24
	lw	%r26 %r8 20
	lw	%r26 %r10 16
	lw	%r26 %r11 12
	lw	%r26 %r2 8
	lw	%r26 %r4 4
	lw	%r26 %r7 0
	addi	%r0 %r1 32
	out	%r1
	lw.s	%r12 %f0 8
	mfc1	%r3 %f0
	addi	%r0 %r1 255
	bl	%r1 %r3 tail_b.592
	addi	%r0 %r1 0
	bl	%r3 %r1 tail_b.593
	mov	%r3 %r1
	j	tail_b.595
tail_b.593 :
	addi	%r0 %r1 0
	j	tail_b.595
tail_b.592 :
	addi	%r0 %r1 255
tail_b.595 :
	sw	%r26 %r9 24
	sw	%r26 %r8 20
	sw	%r26 %r10 16
	sw	%r26 %r11 12
	sw	%r26 %r2 8
	sw	%r26 %r4 4
	sw	%r26 %r7 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	print_int.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	lw	%r26 %r9 24
	lw	%r26 %r8 20
	lw	%r26 %r10 16
	lw	%r26 %r11 12
	lw	%r26 %r2 8
	lw	%r26 %r4 4
	lw	%r26 %r7 0
	addi	%r0 %r1 10
	out	%r1
	addi	%r4 %r1 1
	mov	%r7 %r29
	mov	%r8 %r5
	mov	%r10 %r4
	mov	%r11 %r3
	lw	%r29 %r30 0
	jr	%r30
return_point.59 :
	mov	%r9 %r1
	retl	
create_float5x3array.0 :
tail_b.597 :
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_float_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r2 0
	addi	%r0 %r1 5
	sw	%r26 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r2 0
	addi	%r0 %r3 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r1 4
	sw	%r26 %r2 0
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	sw	%r2 %r1 4
	addi	%r0 %r3 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r1 4
	sw	%r26 %r2 0
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	sw	%r2 %r1 8
	addi	%r0 %r3 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r1 4
	sw	%r26 %r2 0
	mov	%r3 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	sw	%r2 %r1 12
	addi	%r0 %r1 3
	addi	%r0 %r3 l.32
	ilw.s	%r3 %f0 0
	sw	%r26 %r1 4
	sw	%r26 %r2 0
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	sw	%r2 %r1 16
	mov	%r2 %r1
return_point.60 :
	retl	
create_pixel.0 :
tail_b.598 :
	addi	%r0 %r2 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	mov	%r2 %r1
	sw	%r26 %r28 8
	addi	%r26 %r26 12
	jal	min_caml_create_float_array
	addi	%r26 %r26 -12
	lw	%r26 %r28 8
	mov	%r1 %r5
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	create_float5x3array.0
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r1 %r8
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	addi	%r0 %r1 5
	addi	%r0 %r2 0
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 16
	addi	%r26 %r26 20
	jal	min_caml_create_array
	addi	%r26 %r26 -20
	lw	%r26 %r28 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	addi	%r0 %r3 5
	addi	%r0 %r2 0
	sw	%r26 %r9 16
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	mov	%r3 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r9
	lw	%r26 %r9 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	sw	%r26 %r4 20
	sw	%r26 %r9 16
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 24
	addi	%r26 %r26 28
	jal	create_float5x3array.0
	addi	%r26 %r26 -28
	lw	%r26 %r28 24
	mov	%r1 %r4
	lw	%r26 %r4 20
	lw	%r26 %r9 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	sw	%r26 %r10 24
	sw	%r26 %r4 20
	sw	%r26 %r9 16
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	create_float5x3array.0
	addi	%r26 %r26 -32
	lw	%r26 %r28 28
	mov	%r1 %r10
	lw	%r26 %r10 24
	lw	%r26 %r4 20
	lw	%r26 %r9 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	addi	%r0 %r3 1
	addi	%r0 %r2 0
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r4 20
	sw	%r26 %r9 16
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	mov	%r3 %r1
	sw	%r26 %r28 32
	addi	%r26 %r26 36
	jal	min_caml_create_array
	addi	%r26 %r26 -36
	lw	%r26 %r28 32
	mov	%r1 %r3
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r4 20
	lw	%r26 %r9 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	sw	%r26 %r2 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r4 20
	sw	%r26 %r9 16
	sw	%r26 %r1 12
	sw	%r26 %r8 8
	sw	%r26 %r5 4
	sw	%r26 %r6 0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	create_float5x3array.0
	addi	%r26 %r26 -40
	lw	%r26 %r28 36
	mov	%r1 %r2
	lw	%r26 %r2 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r4 20
	lw	%r26 %r9 16
	lw	%r26 %r1 12
	lw	%r26 %r8 8
	lw	%r26 %r5 4
	lw	%r26 %r6 0
	mov	%r27 %r7
	addi	%r27 %r27 32
	sw	%r7 %r2 28
	sw	%r7 %r3 24
	sw	%r7 %r10 20
	sw	%r7 %r4 16
	sw	%r7 %r9 12
	sw	%r7 %r1 8
	sw	%r7 %r8 4
	sw	%r7 %r5 0
	mov	%r7 %r1
return_point.61 :
	retl	
calc_dirvec.0 :
	mov	%r29 %r5
	mov	%r3 %r7
	mov	%r1 %r3
	mov.s	%f1 %f5
	mov.s	%f0 %f1
branching_b.351 :
	lw	%r5 %r4 12
	lw	%r5 %r8 8
	lw	%r5 %r29 4
	addi	%r0 %r1 5
	ble	%r1 %r3 tail_b.599
	mul.s	%f5 %f5 %f1
	addi	%r0 %r1 l.277
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f4
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f4 %f0 %f0
	sw	%r26 %r6 40
	sw.s	%r26 %f0 36
	sw.s	%r26 %f4 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r7 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	sw	%r26 %r28 44
	addi	%r26 %r26 48
	jal	atan.0
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	lw	%r26 %r6 40
	lw.s	%r26 %f0 36
	lw.s	%r26 %f4 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r7 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	mul.s	%f2 %f0 %f1
	sw	%r26 %r6 44
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f4 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r7 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	mov	%r4 %r29
	mov.s	%f1 %f0
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r6 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f4 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r7 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	sw	%r26 %r6 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f0 36
	sw.s	%r26 %f4 32
	sw	%r26 %r29 28
	sw	%r26 %r4 24
	sw.s	%r26 %f3 20
	sw.s	%r26 %f2 16
	sw	%r26 %r7 12
	sw	%r26 %r2 8
	sw	%r26 %r3 4
	sw	%r26 %r5 0
	mov.s	%f1 %f0
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov.s	%f0 %f1
	lw	%r26 %r6 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f0 36
	lw.s	%r26 %f4 32
	lw	%r26 %r29 28
	lw	%r26 %r4 24
	lw.s	%r26 %f3 20
	lw.s	%r26 %f2 16
	lw	%r26 %r7 12
	lw	%r26 %r2 8
	lw	%r26 %r3 4
	lw	%r26 %r5 0
	div.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f5
	addi	%r3 %r3 1
	mul.s	%f5 %f5 %f1
	addi	%r0 %r1 l.277
	ilw.s	%r1 %f0 0
	add.s	%f0 %f1 %f0
	sqrt.s	%f0 %f4
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	div.s	%f4 %f0 %f0
	sw	%r26 %r6 44
	sw.s	%r26 %f0 40
	sw.s	%r26 %f4 36
	sw	%r26 %r3 32
	sw.s	%r26 %f5 28
	sw	%r26 %r29 24
	sw	%r26 %r4 20
	sw.s	%r26 %f3 16
	sw.s	%r26 %f2 12
	sw	%r26 %r7 8
	sw	%r26 %r2 4
	sw	%r26 %r5 0
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	atan.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r6 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f4 36
	lw	%r26 %r3 32
	lw.s	%r26 %f5 28
	lw	%r26 %r29 24
	lw	%r26 %r4 20
	lw.s	%r26 %f3 16
	lw.s	%r26 %f2 12
	lw	%r26 %r7 8
	lw	%r26 %r2 4
	lw	%r26 %r5 0
	mul.s	%f3 %f0 %f1
	sw	%r26 %r6 44
	sw.s	%r26 %f0 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f4 32
	sw	%r26 %r3 28
	sw.s	%r26 %f5 24
	sw	%r26 %r29 20
	sw.s	%r26 %f3 16
	sw.s	%r26 %f2 12
	sw	%r26 %r7 8
	sw	%r26 %r2 4
	sw	%r26 %r5 0
	mov	%r4 %r29
	mov.s	%f1 %f0
	sw	%r26 %r28 48
	lw	%r29 %r30 0
	addi	%r26 %r26 52
	jalr	%r30
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	lw	%r26 %r6 44
	lw.s	%r26 %f0 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f4 32
	lw	%r26 %r3 28
	lw.s	%r26 %f5 24
	lw	%r26 %r29 20
	lw.s	%r26 %f3 16
	lw.s	%r26 %f2 12
	lw	%r26 %r7 8
	lw	%r26 %r2 4
	lw	%r26 %r5 0
	sw	%r26 %r6 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f0 32
	sw.s	%r26 %f4 28
	sw	%r26 %r3 24
	sw.s	%r26 %f5 20
	sw.s	%r26 %f3 16
	sw.s	%r26 %f2 12
	sw	%r26 %r7 8
	sw	%r26 %r2 4
	sw	%r26 %r5 0
	mov.s	%f1 %f0
	sw	%r26 %r28 44
	lw	%r29 %r30 0
	addi	%r26 %r26 48
	jalr	%r30
	addi	%r26 %r26 -48
	lw	%r26 %r28 44
	mov.s	%f0 %f1
	lw	%r26 %r6 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f0 32
	lw.s	%r26 %f4 28
	lw	%r26 %r3 24
	lw.s	%r26 %f5 20
	lw.s	%r26 %f3 16
	lw.s	%r26 %f2 12
	lw	%r26 %r7 8
	lw	%r26 %r2 4
	lw	%r26 %r5 0
	div.s	%f1 %f0 %f0
	mul.s	%f4 %f0 %f1
	mov	%r5 %r29
	mov	%r3 %r1
	mov	%r7 %r3
	mov.s	%f5 %f0
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.62
tail_b.599 :
	mul.s	%f1 %f1 %f2
	mul.s	%f5 %f5 %f0
	add.s	%f0 %f2 %f0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f2 0
	add.s	%f2 %f0 %f0
	sqrt.s	%f0 %f0
	div.s	%f0 %f1 %f4
	div.s	%f0 %f5 %f3
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	div.s	%f0 %f1 %f1
	slli	%r2 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r2 0
	slli	%r7 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	sw.s	%r1 %f4 0
	sw.s	%r1 %f3 4
	sw.s	%r1 %f1 8
	addi	%r7 %r1 40
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f3 %f0
	sw.s	%r1 %f4 0
	sw.s	%r1 %f1 4
	sw.s	%r1 %f0 8
	addi	%r7 %r1 80
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f4 %f0
	neg.s	%f3 %f2
	sw.s	%r1 %f1 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f2 8
	addi	%r7 %r1 1
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f4 %f0
	neg.s	%f3 %f2
	neg.s	%f1 %f5
	sw.s	%r1 %f0 0
	sw.s	%r1 %f2 4
	sw.s	%r1 %f5 8
	addi	%r7 %r1 41
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f4 %f2
	neg.s	%f1 %f0
	sw.s	%r1 %f2 0
	sw.s	%r1 %f0 4
	sw.s	%r1 %f3 8
	addi	%r7 %r1 81
	slli	%r1 %r1 2
	add	%r2 %r1 %r31
	lw	%r31 %r1 0
	lw	%r1 %r1 0
	neg.s	%f1 %f0
	sw.s	%r1 %f0 0
	sw.s	%r1 %f4 4
	sw.s	%r1 %f3 8
return_point.62 :
	mov	%r6 %r1
	retl	
setup_rect_reflection.0 :
node_b.22 :
	lw	%r29 %r9 20
	lw	%r29 %r6 16
	lw	%r29 %r7 12
	lw	%r29 %r10 8
	lw	%r29 %r12 4
	addi	%r0 %r3 4
	mul	%r1 %r3 %r13
	lw	%r7 %r3 0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	lw	%r2 %r1 28
	lw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f5
	lw.s	%r12 %f0 0
	neg.s	%f0 %f1
	lw.s	%r12 %f0 4
	neg.s	%f0 %f3
	lw.s	%r12 %f0 8
	neg.s	%f0 %f4
	addi	%r13 %r5 1
	lw.s	%r12 %f2 0
	addi	%r0 %r1 3
	addi	%r0 %r2 l.32
	ilw.s	%r2 %f0 0
	sw	%r26 %r8 60
	sw	%r26 %r1 56
	sw.s	%r26 %f2 52
	sw	%r26 %r5 48
	sw.s	%r26 %f4 44
	sw.s	%r26 %f3 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r13 24
	sw	%r26 %r12 20
	sw	%r26 %r10 16
	sw	%r26 %r7 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	sw	%r26 %r4 0
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_float_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	lw	%r26 %r8 60
	lw	%r26 %r1 56
	lw.s	%r26 %f2 52
	lw	%r26 %r5 48
	lw.s	%r26 %f4 44
	lw.s	%r26 %f3 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r13 24
	lw	%r26 %r12 20
	lw	%r26 %r10 16
	lw	%r26 %r7 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
	lw	%r26 %r4 0
	lw	%r10 %r2 0
	sw	%r26 %r8 64
	sw	%r26 %r11 60
	sw	%r26 %r1 56
	sw.s	%r26 %f2 52
	sw	%r26 %r5 48
	sw.s	%r26 %f4 44
	sw.s	%r26 %f3 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r13 24
	sw	%r26 %r12 20
	sw	%r26 %r10 16
	sw	%r26 %r7 12
	sw	%r26 %r6 8
	sw	%r26 %r9 4
	sw	%r26 %r4 0
	mov	%r2 %r31
	mov	%r1 %r2
	mov	%r31 %r1
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r11
	lw	%r26 %r8 64
	lw	%r26 %r11 60
	lw	%r26 %r1 56
	lw.s	%r26 %f2 52
	lw	%r26 %r5 48
	lw.s	%r26 %f4 44
	lw.s	%r26 %f3 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r13 24
	lw	%r26 %r12 20
	lw	%r26 %r10 16
	lw	%r26 %r7 12
	lw	%r26 %r6 8
	lw	%r26 %r9 4
	lw	%r26 %r4 0
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r11 4
	sw	%r2 %r1 0
	mov	%r2 %r16
	sw.s	%r1 %f2 0
	sw.s	%r1 %f3 4
	sw.s	%r1 %f4 8
	lw	%r10 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r14
	sw	%r26 %r14 0
iter_setup_dirvec_constants.5 :
	addi	%r0 %r1 0
	ble	%r1 %r14 branching_b.353
	j	node_b.23
branching_b.353 :
	slli	%r14 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r17 0
	lw	%r16 %r1 4
	lw	%r16 %r15 0
	lw	%r17 %r11 4
	addi	%r0 %r2 1
	beq	%r11 %r2 tail_b.601
	addi	%r0 %r2 2
	beq	%r11 %r2 tail_b.602
	sw	%r26 %r8 72
	sw	%r26 %r11 68
	sw	%r26 %r1 64
	sw	%r26 %r14 60
	sw	%r26 %r16 56
	sw	%r26 %r5 52
	sw.s	%r26 %f4 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f5 36
	sw	%r26 %r3 32
	sw	%r26 %r13 28
	sw	%r26 %r12 24
	sw	%r26 %r10 20
	sw	%r26 %r7 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	mov	%r17 %r2
	mov	%r15 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_second_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r11
	lw	%r26 %r8 72
	lw	%r26 %r11 68
	lw	%r26 %r1 64
	lw	%r26 %r14 60
	lw	%r26 %r16 56
	lw	%r26 %r5 52
	lw.s	%r26 %f4 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f5 36
	lw	%r26 %r3 32
	lw	%r26 %r13 28
	lw	%r26 %r12 24
	lw	%r26 %r10 20
	lw	%r26 %r7 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	slli	%r14 %r2 2
	add	%r1 %r2 %r31
	sw	%r31 %r11 0
	j	tail_b.604
tail_b.602 :
	sw	%r26 %r8 72
	sw	%r26 %r2 68
	sw	%r26 %r1 64
	sw	%r26 %r14 60
	sw	%r26 %r16 56
	sw	%r26 %r5 52
	sw.s	%r26 %f4 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f5 36
	sw	%r26 %r3 32
	sw	%r26 %r13 28
	sw	%r26 %r12 24
	sw	%r26 %r10 20
	sw	%r26 %r7 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	mov	%r17 %r2
	mov	%r15 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_surface_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r2
	lw	%r26 %r8 72
	lw	%r26 %r2 68
	lw	%r26 %r1 64
	lw	%r26 %r14 60
	lw	%r26 %r16 56
	lw	%r26 %r5 52
	lw.s	%r26 %f4 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f5 36
	lw	%r26 %r3 32
	lw	%r26 %r13 28
	lw	%r26 %r12 24
	lw	%r26 %r10 20
	lw	%r26 %r7 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	slli	%r14 %r11 2
	add	%r1 %r11 %r31
	sw	%r31 %r2 0
	j	tail_b.604
tail_b.601 :
	sw	%r26 %r8 72
	sw	%r26 %r2 68
	sw	%r26 %r1 64
	sw	%r26 %r14 60
	sw	%r26 %r16 56
	sw	%r26 %r5 52
	sw.s	%r26 %f4 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f5 36
	sw	%r26 %r3 32
	sw	%r26 %r13 28
	sw	%r26 %r12 24
	sw	%r26 %r10 20
	sw	%r26 %r7 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	mov	%r17 %r2
	mov	%r15 %r1
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	setup_rect_table.0
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r2
	lw	%r26 %r8 72
	lw	%r26 %r2 68
	lw	%r26 %r1 64
	lw	%r26 %r14 60
	lw	%r26 %r16 56
	lw	%r26 %r5 52
	lw.s	%r26 %f4 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f5 36
	lw	%r26 %r3 32
	lw	%r26 %r13 28
	lw	%r26 %r12 24
	lw	%r26 %r10 20
	lw	%r26 %r7 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	slli	%r14 %r11 2
	add	%r1 %r11 %r31
	sw	%r31 %r2 0
tail_b.604 :
	addi	%r0 %r1 1
	sub	%r14 %r1 %r14
	j	iter_setup_dirvec_constants.5
node_b.23 :
	lw	%r26 %r14 0
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f5 8
	sw	%r1 %r16 4
	sw	%r1 %r5 0
	mov	%r1 %r2
	slli	%r3 %r1 2
	add	%r9 %r1 %r31
	sw	%r31 %r2 0
	addi	%r3 %r2 1
	addi	%r13 %r15 2
	lw.s	%r12 %f2 4
	addi	%r0 %r1 3
	addi	%r0 %r5 l.32
	ilw.s	%r5 %f0 0
	sw	%r26 %r8 68
	sw	%r26 %r11 64
	sw.s	%r26 %f2 60
	sw	%r26 %r15 56
	sw	%r26 %r2 52
	sw.s	%r26 %f4 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f5 36
	sw	%r26 %r3 32
	sw	%r26 %r13 28
	sw	%r26 %r12 24
	sw	%r26 %r10 20
	sw	%r26 %r7 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	sw	%r26 %r28 72
	addi	%r26 %r26 76
	jal	min_caml_create_float_array
	addi	%r26 %r26 -76
	lw	%r26 %r28 72
	mov	%r1 %r11
	lw	%r26 %r8 68
	lw	%r26 %r11 64
	lw.s	%r26 %f2 60
	lw	%r26 %r15 56
	lw	%r26 %r2 52
	lw.s	%r26 %f4 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f5 36
	lw	%r26 %r3 32
	lw	%r26 %r13 28
	lw	%r26 %r12 24
	lw	%r26 %r10 20
	lw	%r26 %r7 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	lw	%r10 %r1 0
	sw	%r26 %r8 72
	sw	%r26 %r5 68
	sw	%r26 %r11 64
	sw.s	%r26 %f2 60
	sw	%r26 %r15 56
	sw	%r26 %r2 52
	sw.s	%r26 %f4 48
	sw.s	%r26 %f3 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f5 36
	sw	%r26 %r3 32
	sw	%r26 %r13 28
	sw	%r26 %r12 24
	sw	%r26 %r10 20
	sw	%r26 %r7 16
	sw	%r26 %r6 12
	sw	%r26 %r9 8
	sw	%r26 %r4 4
	mov	%r11 %r2
	sw	%r26 %r28 76
	addi	%r26 %r26 80
	jal	min_caml_create_array
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	mov	%r1 %r5
	lw	%r26 %r8 72
	lw	%r26 %r5 68
	lw	%r26 %r11 64
	lw.s	%r26 %f2 60
	lw	%r26 %r15 56
	lw	%r26 %r2 52
	lw.s	%r26 %f4 48
	lw.s	%r26 %f3 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f5 36
	lw	%r26 %r3 32
	lw	%r26 %r13 28
	lw	%r26 %r12 24
	lw	%r26 %r10 20
	lw	%r26 %r7 16
	lw	%r26 %r6 12
	lw	%r26 %r9 8
	lw	%r26 %r4 4
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r5 4
	sw	%r1 %r11 0
	mov	%r1 %r5
	sw.s	%r11 %f1 0
	sw.s	%r11 %f2 4
	sw.s	%r11 %f4 8
	lw	%r10 %r11 0
	addi	%r0 %r1 1
	sub	%r11 %r1 %r16
	sw	%r26 %r16 4
iter_setup_dirvec_constants.4 :
	addi	%r0 %r1 0
	ble	%r1 %r16 branching_b.356
	j	node_b.24
branching_b.356 :
	slli	%r16 %r1 2
	add	%r6 %r1 %r31
	lw	%r31 %r17 0
	lw	%r5 %r14 4
	lw	%r5 %r18 0
	lw	%r17 %r11 4
	addi	%r0 %r1 1
	beq	%r11 %r1 tail_b.606
	addi	%r0 %r1 2
	beq	%r11 %r1 tail_b.607
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r14 68
	sw	%r26 %r16 64
	sw	%r26 %r5 60
	sw	%r26 %r15 56
	sw	%r26 %r2 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f1 44
	sw.s	%r26 %f5 40
	sw	%r26 %r3 36
	sw	%r26 %r13 32
	sw	%r26 %r12 28
	sw	%r26 %r10 24
	sw	%r26 %r7 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	mov	%r17 %r2
	mov	%r18 %r1
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	setup_second_table.0
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	mov	%r1 %r11
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r14 68
	lw	%r26 %r16 64
	lw	%r26 %r5 60
	lw	%r26 %r15 56
	lw	%r26 %r2 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f1 44
	lw.s	%r26 %f5 40
	lw	%r26 %r3 36
	lw	%r26 %r13 32
	lw	%r26 %r12 28
	lw	%r26 %r10 24
	lw	%r26 %r7 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	slli	%r16 %r1 2
	add	%r14 %r1 %r31
	sw	%r31 %r11 0
	j	tail_b.609
tail_b.607 :
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r14 68
	sw	%r26 %r16 64
	sw	%r26 %r5 60
	sw	%r26 %r15 56
	sw	%r26 %r2 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f1 44
	sw.s	%r26 %f5 40
	sw	%r26 %r3 36
	sw	%r26 %r13 32
	sw	%r26 %r12 28
	sw	%r26 %r10 24
	sw	%r26 %r7 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	mov	%r17 %r2
	mov	%r18 %r1
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	setup_surface_table.0
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r14 68
	lw	%r26 %r16 64
	lw	%r26 %r5 60
	lw	%r26 %r15 56
	lw	%r26 %r2 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f1 44
	lw.s	%r26 %f5 40
	lw	%r26 %r3 36
	lw	%r26 %r13 32
	lw	%r26 %r12 28
	lw	%r26 %r10 24
	lw	%r26 %r7 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	slli	%r16 %r11 2
	add	%r14 %r11 %r31
	sw	%r31 %r1 0
	j	tail_b.609
tail_b.606 :
	sw	%r26 %r8 76
	sw	%r26 %r1 72
	sw	%r26 %r14 68
	sw	%r26 %r16 64
	sw	%r26 %r5 60
	sw	%r26 %r15 56
	sw	%r26 %r2 52
	sw.s	%r26 %f3 48
	sw.s	%r26 %f1 44
	sw.s	%r26 %f5 40
	sw	%r26 %r3 36
	sw	%r26 %r13 32
	sw	%r26 %r12 28
	sw	%r26 %r10 24
	sw	%r26 %r7 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	mov	%r17 %r2
	mov	%r18 %r1
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	setup_rect_table.0
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	lw	%r26 %r8 76
	lw	%r26 %r1 72
	lw	%r26 %r14 68
	lw	%r26 %r16 64
	lw	%r26 %r5 60
	lw	%r26 %r15 56
	lw	%r26 %r2 52
	lw.s	%r26 %f3 48
	lw.s	%r26 %f1 44
	lw.s	%r26 %f5 40
	lw	%r26 %r3 36
	lw	%r26 %r13 32
	lw	%r26 %r12 28
	lw	%r26 %r10 24
	lw	%r26 %r7 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	slli	%r16 %r11 2
	add	%r14 %r11 %r31
	sw	%r31 %r1 0
tail_b.609 :
	addi	%r0 %r1 1
	sub	%r16 %r1 %r16
	j	iter_setup_dirvec_constants.4
node_b.24 :
	lw	%r26 %r16 4
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f5 8
	sw	%r1 %r5 4
	sw	%r1 %r15 0
	slli	%r2 %r2 2
	add	%r9 %r2 %r31
	sw	%r31 %r1 0
	addi	%r3 %r14 2
	addi	%r13 %r1 3
	lw.s	%r12 %f2 8
	addi	%r0 %r2 3
	addi	%r0 %r5 l.32
	ilw.s	%r5 %f0 0
	sw	%r26 %r8 60
	sw	%r26 %r5 56
	sw.s	%r26 %f2 52
	sw	%r26 %r1 48
	sw	%r26 %r14 44
	sw.s	%r26 %f3 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r7 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	mov	%r2 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	min_caml_create_float_array
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r5
	lw	%r26 %r8 60
	lw	%r26 %r5 56
	lw.s	%r26 %f2 52
	lw	%r26 %r1 48
	lw	%r26 %r14 44
	lw.s	%r26 %f3 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r7 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	lw	%r10 %r2 0
	sw	%r26 %r8 64
	sw	%r26 %r11 60
	sw	%r26 %r5 56
	sw.s	%r26 %f2 52
	sw	%r26 %r1 48
	sw	%r26 %r14 44
	sw.s	%r26 %f3 40
	sw.s	%r26 %f1 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r7 20
	sw	%r26 %r6 16
	sw	%r26 %r9 12
	sw	%r26 %r4 8
	mov	%r2 %r1
	mov	%r5 %r2
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	min_caml_create_array
	addi	%r26 %r26 -72
	lw	%r26 %r28 68
	mov	%r1 %r11
	lw	%r26 %r8 64
	lw	%r26 %r11 60
	lw	%r26 %r5 56
	lw.s	%r26 %f2 52
	lw	%r26 %r1 48
	lw	%r26 %r14 44
	lw.s	%r26 %f3 40
	lw.s	%r26 %f1 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r7 20
	lw	%r26 %r6 16
	lw	%r26 %r9 12
	lw	%r26 %r4 8
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw	%r2 %r11 4
	sw	%r2 %r5 0
	mov	%r2 %r12
	sw.s	%r5 %f1 0
	sw.s	%r5 %f3 4
	sw.s	%r5 %f2 8
	lw	%r10 %r2 0
	addi	%r0 %r5 1
	sub	%r2 %r5 %r11
	sw	%r26 %r11 8
iter_setup_dirvec_constants.3 :
	addi	%r0 %r2 0
	ble	%r2 %r11 branching_b.359
	j	tail_b.616
branching_b.359 :
	slli	%r11 %r2 2
	add	%r6 %r2 %r31
	lw	%r31 %r15 0
	lw	%r12 %r5 4
	lw	%r12 %r13 0
	lw	%r15 %r2 4
	addi	%r0 %r10 1
	beq	%r2 %r10 tail_b.611
	addi	%r0 %r10 2
	beq	%r2 %r10 tail_b.612
	sw	%r26 %r8 60
	sw	%r26 %r2 56
	sw	%r26 %r5 52
	sw	%r26 %r11 48
	sw	%r26 %r12 44
	sw	%r26 %r1 40
	sw	%r26 %r14 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	mov	%r15 %r2
	mov	%r13 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	setup_second_table.0
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r2
	lw	%r26 %r8 60
	lw	%r26 %r2 56
	lw	%r26 %r5 52
	lw	%r26 %r11 48
	lw	%r26 %r12 44
	lw	%r26 %r1 40
	lw	%r26 %r14 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	slli	%r11 %r10 2
	add	%r5 %r10 %r31
	sw	%r31 %r2 0
	j	tail_b.614
tail_b.612 :
	sw	%r26 %r8 60
	sw	%r26 %r2 56
	sw	%r26 %r5 52
	sw	%r26 %r11 48
	sw	%r26 %r12 44
	sw	%r26 %r1 40
	sw	%r26 %r14 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	mov	%r15 %r2
	mov	%r13 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	setup_surface_table.0
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r2
	lw	%r26 %r8 60
	lw	%r26 %r2 56
	lw	%r26 %r5 52
	lw	%r26 %r11 48
	lw	%r26 %r12 44
	lw	%r26 %r1 40
	lw	%r26 %r14 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	slli	%r11 %r10 2
	add	%r5 %r10 %r31
	sw	%r31 %r2 0
	j	tail_b.614
tail_b.611 :
	sw	%r26 %r8 60
	sw	%r26 %r2 56
	sw	%r26 %r5 52
	sw	%r26 %r11 48
	sw	%r26 %r12 44
	sw	%r26 %r1 40
	sw	%r26 %r14 36
	sw.s	%r26 %f5 32
	sw	%r26 %r3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r9 16
	sw	%r26 %r4 12
	mov	%r15 %r2
	mov	%r13 %r1
	sw	%r26 %r28 64
	addi	%r26 %r26 68
	jal	setup_rect_table.0
	addi	%r26 %r26 -68
	lw	%r26 %r28 64
	mov	%r1 %r2
	lw	%r26 %r8 60
	lw	%r26 %r2 56
	lw	%r26 %r5 52
	lw	%r26 %r11 48
	lw	%r26 %r12 44
	lw	%r26 %r1 40
	lw	%r26 %r14 36
	lw.s	%r26 %f5 32
	lw	%r26 %r3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r9 16
	lw	%r26 %r4 12
	slli	%r11 %r10 2
	add	%r5 %r10 %r31
	sw	%r31 %r2 0
tail_b.614 :
	addi	%r0 %r2 1
	sub	%r11 %r2 %r11
	j	iter_setup_dirvec_constants.3
tail_b.616 :
	lw	%r26 %r11 8
	mov	%r27 %r2
	addi	%r27 %r27 12
	sw.s	%r2 %f5 8
	sw	%r2 %r12 4
	sw	%r2 %r1 0
	slli	%r14 %r1 2
	add	%r9 %r1 %r31
	sw	%r31 %r2 0
	addi	%r3 %r1 3
	sw	%r7 %r1 0
return_point.63 :
	mov	%r8 %r1
	retl	
setup_surface_reflection.0 :
	mov	%r2 %r12
node_b.25 :
	lw	%r29 %r10 20
	lw	%r29 %r9 16
	lw	%r29 %r8 12
	lw	%r29 %r2 8
	lw	%r29 %r4 4
	addi	%r0 %r5 4
	mul	%r1 %r5 %r1
	addi	%r1 %r6 1
	lw	%r8 %r7 0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f1 0
	lw	%r12 %r1 28
	lw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f3
	lw	%r12 %r1 16
	sw	%r26 %r11 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f3 36
	sw	%r26 %r7 32
	sw	%r26 %r6 28
	sw	%r26 %r4 24
	sw	%r26 %r2 20
	sw	%r26 %r8 16
	sw	%r26 %r9 12
	sw	%r26 %r10 8
	sw	%r26 %r12 4
	sw	%r26 %r3 0
	mov	%r1 %r2
	mov	%r4 %r1
	sw	%r26 %r28 48
	addi	%r26 %r26 52
	jal	veciprod.0
	addi	%r26 %r26 -52
	lw	%r26 %r28 48
	mov.s	%f0 %f1
	lw	%r26 %r11 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f3 36
	lw	%r26 %r7 32
	lw	%r26 %r6 28
	lw	%r26 %r4 24
	lw	%r26 %r2 20
	lw	%r26 %r8 16
	lw	%r26 %r9 12
	lw	%r26 %r10 8
	lw	%r26 %r12 4
	lw	%r26 %r3 0
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f0 0
	lw	%r12 %r1 16
	lw.s	%r1 %f2 0
	mul.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f2
	lw.s	%r4 %f0 0
	sub.s	%f0 %f2 %f4
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f0 0
	lw	%r12 %r1 16
	lw.s	%r1 %f2 4
	mul.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	lw.s	%r4 %f2 4
	sub.s	%f2 %f0 %f0
	addi	%r0 %r1 l.104
	ilw.s	%r1 %f5 0
	lw	%r12 %r1 16
	lw.s	%r1 %f2 8
	mul.s	%f2 %f5 %f2
	mul.s	%f1 %f2 %f2
	lw.s	%r4 %f1 8
	sub.s	%f1 %f2 %f1
	addi	%r0 %r4 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f2 0
	sw	%r26 %r11 48
	sw	%r26 %r5 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f0 36
	sw.s	%r26 %f4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r2 16
	sw	%r26 %r8 12
	sw	%r26 %r9 8
	sw	%r26 %r10 4
	sw	%r26 %r3 0
	mov	%r4 %r1
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	min_caml_create_float_array
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r5
	lw	%r26 %r11 48
	lw	%r26 %r5 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f0 36
	lw.s	%r26 %f4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r2 16
	lw	%r26 %r8 12
	lw	%r26 %r9 8
	lw	%r26 %r10 4
	lw	%r26 %r3 0
	lw	%r2 %r1 0
	sw	%r26 %r11 52
	sw	%r26 %r4 48
	sw	%r26 %r5 44
	sw.s	%r26 %f1 40
	sw.s	%r26 %f0 36
	sw.s	%r26 %f4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r2 16
	sw	%r26 %r8 12
	sw	%r26 %r9 8
	sw	%r26 %r10 4
	sw	%r26 %r3 0
	mov	%r5 %r2
	sw	%r26 %r28 56
	addi	%r26 %r26 60
	jal	min_caml_create_array
	addi	%r26 %r26 -60
	lw	%r26 %r28 56
	mov	%r1 %r4
	lw	%r26 %r11 52
	lw	%r26 %r4 48
	lw	%r26 %r5 44
	lw.s	%r26 %f1 40
	lw.s	%r26 %f0 36
	lw.s	%r26 %f4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r2 16
	lw	%r26 %r8 12
	lw	%r26 %r9 8
	lw	%r26 %r10 4
	lw	%r26 %r3 0
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw	%r1 %r4 4
	sw	%r1 %r5 0
	mov	%r1 %r4
	sw.s	%r5 %f4 0
	sw.s	%r5 %f0 4
	sw.s	%r5 %f1 8
	lw	%r2 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r1
	sw	%r26 %r1 0
iter_setup_dirvec_constants.2 :
	addi	%r0 %r2 0
	ble	%r2 %r1 branching_b.362
	j	tail_b.622
branching_b.362 :
	slli	%r1 %r2 2
	add	%r9 %r2 %r31
	lw	%r31 %r5 0
	lw	%r4 %r12 4
	lw	%r4 %r13 0
	lw	%r5 %r14 4
	addi	%r0 %r2 1
	beq	%r14 %r2 tail_b.617
	addi	%r0 %r2 2
	beq	%r14 %r2 tail_b.618
	sw	%r26 %r11 48
	sw	%r26 %r2 44
	sw	%r26 %r12 40
	sw	%r26 %r1 36
	sw	%r26 %r4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r8 16
	sw	%r26 %r9 12
	sw	%r26 %r10 8
	sw	%r26 %r3 4
	mov	%r5 %r2
	mov	%r13 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	setup_second_table.0
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r2
	lw	%r26 %r11 48
	lw	%r26 %r2 44
	lw	%r26 %r12 40
	lw	%r26 %r1 36
	lw	%r26 %r4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r8 16
	lw	%r26 %r9 12
	lw	%r26 %r10 8
	lw	%r26 %r3 4
	slli	%r1 %r5 2
	add	%r12 %r5 %r31
	sw	%r31 %r2 0
	j	tail_b.620
tail_b.618 :
	sw	%r26 %r11 48
	sw	%r26 %r5 44
	sw	%r26 %r12 40
	sw	%r26 %r1 36
	sw	%r26 %r4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r8 16
	sw	%r26 %r9 12
	sw	%r26 %r10 8
	sw	%r26 %r3 4
	mov	%r5 %r2
	mov	%r13 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	setup_surface_table.0
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r5
	lw	%r26 %r11 48
	lw	%r26 %r5 44
	lw	%r26 %r12 40
	lw	%r26 %r1 36
	lw	%r26 %r4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r8 16
	lw	%r26 %r9 12
	lw	%r26 %r10 8
	lw	%r26 %r3 4
	slli	%r1 %r2 2
	add	%r12 %r2 %r31
	sw	%r31 %r5 0
	j	tail_b.620
tail_b.617 :
	sw	%r26 %r11 48
	sw	%r26 %r5 44
	sw	%r26 %r12 40
	sw	%r26 %r1 36
	sw	%r26 %r4 32
	sw.s	%r26 %f3 28
	sw	%r26 %r7 24
	sw	%r26 %r6 20
	sw	%r26 %r8 16
	sw	%r26 %r9 12
	sw	%r26 %r10 8
	sw	%r26 %r3 4
	mov	%r5 %r2
	mov	%r13 %r1
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	setup_rect_table.0
	addi	%r26 %r26 -56
	lw	%r26 %r28 52
	mov	%r1 %r5
	lw	%r26 %r11 48
	lw	%r26 %r5 44
	lw	%r26 %r12 40
	lw	%r26 %r1 36
	lw	%r26 %r4 32
	lw.s	%r26 %f3 28
	lw	%r26 %r7 24
	lw	%r26 %r6 20
	lw	%r26 %r8 16
	lw	%r26 %r9 12
	lw	%r26 %r10 8
	lw	%r26 %r3 4
	slli	%r1 %r2 2
	add	%r12 %r2 %r31
	sw	%r31 %r5 0
tail_b.620 :
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	j	iter_setup_dirvec_constants.2
tail_b.622 :
	lw	%r26 %r1 0
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw.s	%r1 %f3 8
	sw	%r1 %r4 4
	sw	%r1 %r6 0
	slli	%r7 %r2 2
	add	%r10 %r2 %r31
	sw	%r31 %r1 0
	addi	%r7 %r1 1
	sw	%r8 %r1 0
return_point.64 :
	mov	%r11 %r1
	retl	
setup_reflections.0 :
	mov	%r1 %r3
	mov	%r29 %r1
branching_b.364 :
	lw	%r1 %r6 12
	lw	%r1 %r29 8
	lw	%r1 %r1 4
	addi	%r0 %r2 0
	ble	%r2 %r3 branching_b.365
	j	return_point.65
branching_b.365 :
	slli	%r3 %r2 2
	add	%r1 %r2 %r31
	lw	%r31 %r2 0
	lw	%r2 %r5 8
	addi	%r0 %r1 2
	beq	%r5 %r1 branching_b.366
	j	return_point.65
branching_b.366 :
	lw	%r2 %r1 28
	lw.s	%r1 %f1 0
	addi	%r0 %r1 l.11
	ilw.s	%r1 %f0 0
	fbl	%f1 %f0 tail_b.623
	addi	%r0 %r1 0
	j	branching_b.367
tail_b.623 :
	addi	%r0 %r1 1
branching_b.367 :
	addi	%r0 %r5 0
	beq	%r1 %r5 tail_b.625
	lw	%r2 %r5 4
	addi	%r0 %r1 1
	beq	%r5 %r1 tail_b.626
	addi	%r0 %r1 2
	beq	%r5 %r1 tail_b.627
	j	return_point.65
tail_b.627 :
	mov	%r6 %r29
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.65
tail_b.626 :
	mov	%r3 %r1
	lw	%r29 %r30 0
	jr	%r30
	j	return_point.65
tail_b.625 :
return_point.65 :
	mov	%r4 %r1
	retl	
rt.0 :
	mov	%r2 %r22
	mov	%r1 %r12
	mov	%r29 %r1
node_b.26 :
	lw	%r1 %r16 76
	lw	%r1 %r14 72
	lw	%r1 %r10 68
	lw	%r1 %r3 64
	lw	%r1 %r21 60
	lw	%r1 %r29 56
	lw	%r1 %r19 52
	lw	%r1 %r20 48
	lw	%r1 %r11 44
	lw	%r1 %r17 40
	lw	%r1 %r8 36
	lw	%r1 %r9 32
	lw	%r1 %r5 28
	lw	%r1 %r13 24
	lw	%r1 %r4 20
	lw	%r1 %r23 16
	lw	%r1 %r7 12
	lw	%r1 %r15 8
	lw	%r1 %r18 4
	sw	%r4 %r12 0
	sw	%r4 %r22 4
	addi	%r0 %r1 2
	div	%r12 %r1 %r1
	sw	%r23 %r1 0
	addi	%r0 %r1 2
	div	%r22 %r1 %r1
	sw	%r23 %r1 4
	addi	%r0 %r1 l.332
	ilw.s	%r1 %f1 0
	mtc1	%r12 %f0
	div.s	%f0 %f1 %f0
	sw.s	%r21 %f0 0
	lw	%r4 %r12 0
	sw	%r26 %r6 80
	sw	%r26 %r5 76
	sw	%r26 %r1 72
	sw	%r26 %r12 68
	sw	%r26 %r18 64
	sw	%r26 %r15 60
	sw	%r26 %r7 56
	sw	%r26 %r4 52
	sw	%r26 %r13 48
	sw	%r26 %r9 44
	sw	%r26 %r8 40
	sw	%r26 %r17 36
	sw	%r26 %r11 32
	sw	%r26 %r20 28
	sw	%r26 %r19 24
	sw	%r26 %r29 20
	sw	%r26 %r3 16
	sw	%r26 %r10 12
	sw	%r26 %r14 8
	sw	%r26 %r16 4
	sw	%r26 %r2 0
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	create_pixel.0
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r6 80
	lw	%r26 %r5 76
	lw	%r26 %r1 72
	lw	%r26 %r12 68
	lw	%r26 %r18 64
	lw	%r26 %r15 60
	lw	%r26 %r7 56
	lw	%r26 %r4 52
	lw	%r26 %r13 48
	lw	%r26 %r9 44
	lw	%r26 %r8 40
	lw	%r26 %r17 36
	lw	%r26 %r11 32
	lw	%r26 %r20 28
	lw	%r26 %r19 24
	lw	%r26 %r29 20
	lw	%r26 %r3 16
	lw	%r26 %r10 12
	lw	%r26 %r14 8
	lw	%r26 %r16 4
	lw	%r26 %r2 0
	sw	%r26 %r6 76
	sw	%r26 %r5 72
	sw	%r26 %r21 68
	sw	%r26 %r18 64
	sw	%r26 %r15 60
	sw	%r26 %r7 56
	sw	%r26 %r4 52
	sw	%r26 %r13 48
	sw	%r26 %r9 44
	sw	%r26 %r8 40
	sw	%r26 %r17 36
	sw	%r26 %r11 32
	sw	%r26 %r20 28
	sw	%r26 %r19 24
	sw	%r26 %r29 20
	sw	%r26 %r3 16
	sw	%r26 %r10 12
	sw	%r26 %r14 8
	sw	%r26 %r16 4
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r12 %r1
	sw	%r26 %r28 80
	addi	%r26 %r26 84
	jal	min_caml_create_array
	addi	%r26 %r26 -84
	lw	%r26 %r28 80
	mov	%r1 %r21
	lw	%r26 %r6 76
	lw	%r26 %r5 72
	lw	%r26 %r21 68
	lw	%r26 %r18 64
	lw	%r26 %r15 60
	lw	%r26 %r7 56
	lw	%r26 %r4 52
	lw	%r26 %r13 48
	lw	%r26 %r9 44
	lw	%r26 %r8 40
	lw	%r26 %r17 36
	lw	%r26 %r11 32
	lw	%r26 %r20 28
	lw	%r26 %r19 24
	lw	%r26 %r29 20
	lw	%r26 %r3 16
	lw	%r26 %r10 12
	lw	%r26 %r14 8
	lw	%r26 %r16 4
	lw	%r26 %r2 0
	lw	%r4 %r12 0
	addi	%r0 %r1 2
	sub	%r12 %r1 %r22
	sw	%r26 %r22 0
init_line_elements.3 :
	addi	%r0 %r1 0
	ble	%r1 %r22 tail_b.631
	mov	%r21 %r12
	j	node_b.27
tail_b.631 :
	sw	%r26 %r6 88
	sw	%r26 %r5 84
	sw	%r26 %r1 80
	sw	%r26 %r22 76
	sw	%r26 %r21 72
	sw	%r26 %r18 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r17 40
	sw	%r26 %r11 36
	sw	%r26 %r20 32
	sw	%r26 %r19 28
	sw	%r26 %r29 24
	sw	%r26 %r3 20
	sw	%r26 %r10 16
	sw	%r26 %r14 12
	sw	%r26 %r16 8
	sw	%r26 %r2 4
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	create_pixel.0
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r6 88
	lw	%r26 %r5 84
	lw	%r26 %r1 80
	lw	%r26 %r22 76
	lw	%r26 %r21 72
	lw	%r26 %r18 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r17 40
	lw	%r26 %r11 36
	lw	%r26 %r20 32
	lw	%r26 %r19 28
	lw	%r26 %r29 24
	lw	%r26 %r3 20
	lw	%r26 %r10 16
	lw	%r26 %r14 12
	lw	%r26 %r16 8
	lw	%r26 %r2 4
	slli	%r22 %r12 2
	add	%r21 %r12 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 1
	sub	%r22 %r1 %r22
	j	init_line_elements.3
node_b.27 :
	lw	%r26 %r22 0
	lw	%r4 %r12 0
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r1 76
	sw	%r26 %r12 72
	sw	%r26 %r18 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r17 40
	sw	%r26 %r11 36
	sw	%r26 %r20 32
	sw	%r26 %r19 28
	sw	%r26 %r29 24
	sw	%r26 %r3 20
	sw	%r26 %r10 16
	sw	%r26 %r14 12
	sw	%r26 %r16 8
	sw	%r26 %r2 4
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	create_pixel.0
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r1 76
	lw	%r26 %r12 72
	lw	%r26 %r18 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r17 40
	lw	%r26 %r11 36
	lw	%r26 %r20 32
	lw	%r26 %r19 28
	lw	%r26 %r29 24
	lw	%r26 %r3 20
	lw	%r26 %r10 16
	lw	%r26 %r14 12
	lw	%r26 %r16 8
	lw	%r26 %r2 4
	sw	%r26 %r6 80
	sw	%r26 %r5 76
	sw	%r26 %r22 72
	sw	%r26 %r18 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r17 40
	sw	%r26 %r11 36
	sw	%r26 %r20 32
	sw	%r26 %r19 28
	sw	%r26 %r29 24
	sw	%r26 %r3 20
	sw	%r26 %r10 16
	sw	%r26 %r14 12
	sw	%r26 %r16 8
	sw	%r26 %r2 4
	mov	%r1 %r2
	mov	%r12 %r1
	sw	%r26 %r28 84
	addi	%r26 %r26 88
	jal	min_caml_create_array
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	mov	%r1 %r22
	lw	%r26 %r6 80
	lw	%r26 %r5 76
	lw	%r26 %r22 72
	lw	%r26 %r18 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r17 40
	lw	%r26 %r11 36
	lw	%r26 %r20 32
	lw	%r26 %r19 28
	lw	%r26 %r29 24
	lw	%r26 %r3 20
	lw	%r26 %r10 16
	lw	%r26 %r14 12
	lw	%r26 %r16 8
	lw	%r26 %r2 4
	lw	%r4 %r1 0
	addi	%r0 %r12 2
	sub	%r1 %r12 %r21
	sw	%r26 %r21 4
init_line_elements.2 :
	addi	%r0 %r1 0
	ble	%r1 %r21 tail_b.633
	mov	%r22 %r12
	j	node_b.28
tail_b.633 :
	sw	%r26 %r6 92
	sw	%r26 %r5 88
	sw	%r26 %r1 84
	sw	%r26 %r21 80
	sw	%r26 %r22 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r20 36
	sw	%r26 %r19 32
	sw	%r26 %r29 28
	sw	%r26 %r3 24
	sw	%r26 %r10 20
	sw	%r26 %r14 16
	sw	%r26 %r16 12
	sw	%r26 %r2 8
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	create_pixel.0
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw	%r26 %r6 92
	lw	%r26 %r5 88
	lw	%r26 %r1 84
	lw	%r26 %r21 80
	lw	%r26 %r22 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r20 36
	lw	%r26 %r19 32
	lw	%r26 %r29 28
	lw	%r26 %r3 24
	lw	%r26 %r10 20
	lw	%r26 %r14 16
	lw	%r26 %r16 12
	lw	%r26 %r2 8
	slli	%r21 %r12 2
	add	%r22 %r12 %r31
	sw	%r31 %r1 0
	addi	%r0 %r1 1
	sub	%r21 %r1 %r21
	j	init_line_elements.2
node_b.28 :
	lw	%r26 %r21 4
	lw	%r4 %r12 0
	sw	%r26 %r6 88
	sw	%r26 %r5 84
	sw	%r26 %r1 80
	sw	%r26 %r12 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r20 36
	sw	%r26 %r19 32
	sw	%r26 %r29 28
	sw	%r26 %r3 24
	sw	%r26 %r10 20
	sw	%r26 %r14 16
	sw	%r26 %r16 12
	sw	%r26 %r2 8
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	create_pixel.0
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r6 88
	lw	%r26 %r5 84
	lw	%r26 %r1 80
	lw	%r26 %r12 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r20 36
	lw	%r26 %r19 32
	lw	%r26 %r29 28
	lw	%r26 %r3 24
	lw	%r26 %r10 20
	lw	%r26 %r14 16
	lw	%r26 %r16 12
	lw	%r26 %r2 8
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r22 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r20 36
	sw	%r26 %r19 32
	sw	%r26 %r29 28
	sw	%r26 %r3 24
	sw	%r26 %r10 20
	sw	%r26 %r14 16
	sw	%r26 %r16 12
	sw	%r26 %r2 8
	mov	%r1 %r2
	mov	%r12 %r1
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	min_caml_create_array
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	mov	%r1 %r22
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r22 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r20 36
	lw	%r26 %r19 32
	lw	%r26 %r29 28
	lw	%r26 %r3 24
	lw	%r26 %r10 20
	lw	%r26 %r14 16
	lw	%r26 %r16 12
	lw	%r26 %r2 8
	lw	%r4 %r12 0
	addi	%r0 %r1 2
	sub	%r12 %r1 %r21
	sw	%r26 %r21 8
init_line_elements.1 :
	addi	%r0 %r1 0
	ble	%r1 %r21 tail_b.635
	mov	%r22 %r12
	j	node_b.29
tail_b.635 :
	sw	%r26 %r6 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r21 84
	sw	%r26 %r22 80
	sw	%r26 %r18 76
	sw	%r26 %r15 72
	sw	%r26 %r7 68
	sw	%r26 %r4 64
	sw	%r26 %r13 60
	sw	%r26 %r9 56
	sw	%r26 %r8 52
	sw	%r26 %r17 48
	sw	%r26 %r11 44
	sw	%r26 %r20 40
	sw	%r26 %r19 36
	sw	%r26 %r29 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r14 20
	sw	%r26 %r16 16
	sw	%r26 %r2 12
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	create_pixel.0
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	mov	%r1 %r12
	lw	%r26 %r6 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r21 84
	lw	%r26 %r22 80
	lw	%r26 %r18 76
	lw	%r26 %r15 72
	lw	%r26 %r7 68
	lw	%r26 %r4 64
	lw	%r26 %r13 60
	lw	%r26 %r9 56
	lw	%r26 %r8 52
	lw	%r26 %r17 48
	lw	%r26 %r11 44
	lw	%r26 %r20 40
	lw	%r26 %r19 36
	lw	%r26 %r29 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r14 20
	lw	%r26 %r16 16
	lw	%r26 %r2 12
	slli	%r21 %r1 2
	add	%r22 %r1 %r31
	sw	%r31 %r12 0
	addi	%r0 %r1 1
	sub	%r21 %r1 %r21
	j	init_line_elements.1
node_b.29 :
	lw	%r26 %r21 8
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r12 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r20 36
	sw	%r26 %r19 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r14 20
	sw	%r26 %r16 16
	sw	%r26 %r2 12
	sw	%r26 %r28 88
	lw	%r29 %r30 0
	addi	%r26 %r26 92
	jalr	%r30
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r12 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r20 36
	lw	%r26 %r19 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r14 20
	lw	%r26 %r16 16
	lw	%r26 %r2 12
	sw	%r26 %r6 80
	sw	%r26 %r5 76
	sw	%r26 %r12 72
	sw	%r26 %r18 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r17 40
	sw	%r26 %r11 36
	sw	%r26 %r19 32
	sw	%r26 %r3 28
	sw	%r26 %r10 24
	sw	%r26 %r14 20
	sw	%r26 %r16 16
	sw	%r26 %r2 12
	mov	%r20 %r29
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r6 80
	lw	%r26 %r5 76
	lw	%r26 %r12 72
	lw	%r26 %r18 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r17 40
	lw	%r26 %r11 36
	lw	%r26 %r19 32
	lw	%r26 %r3 28
	lw	%r26 %r10 24
	lw	%r26 %r14 20
	lw	%r26 %r16 16
	lw	%r26 %r2 12
	addi	%r0 %r21 0
	sw	%r26 %r21 12
read_object.1 :
	addi	%r0 %r1 60
	bl	%r21 %r1 branching_b.374
	j	node_b.30
branching_b.374 :
	sw	%r26 %r6 92
	sw	%r26 %r5 88
	sw	%r26 %r1 84
	sw	%r26 %r21 80
	sw	%r26 %r12 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r19 36
	sw	%r26 %r3 32
	sw	%r26 %r10 28
	sw	%r26 %r14 24
	sw	%r26 %r16 20
	sw	%r26 %r2 16
	mov	%r19 %r29
	mov	%r21 %r1
	sw	%r26 %r28 96
	lw	%r29 %r30 0
	addi	%r26 %r26 100
	jalr	%r30
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	lw	%r26 %r6 92
	lw	%r26 %r5 88
	lw	%r26 %r1 84
	lw	%r26 %r21 80
	lw	%r26 %r12 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r19 36
	lw	%r26 %r3 32
	lw	%r26 %r10 28
	lw	%r26 %r14 24
	lw	%r26 %r16 20
	lw	%r26 %r2 16
	addi	%r0 %r20 0
	beq	%r1 %r20 tail_b.637
	addi	%r21 %r21 1
	j	read_object.1
tail_b.637 :
	sw	%r9 %r21 0
node_b.30 :
	lw	%r26 %r21 12
	addi	%r0 %r19 0
	sw	%r26 %r19 16
read_and_network.1 :
	addi	%r0 %r1 0
	sw	%r26 %r6 92
	sw	%r26 %r5 88
	sw	%r26 %r20 84
	sw	%r26 %r19 80
	sw	%r26 %r12 76
	sw	%r26 %r18 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r16 24
	sw	%r26 %r2 20
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	read_net_item.0
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r20
	lw	%r26 %r6 92
	lw	%r26 %r5 88
	lw	%r26 %r20 84
	lw	%r26 %r19 80
	lw	%r26 %r12 76
	lw	%r26 %r18 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r16 24
	lw	%r26 %r2 20
	lw	%r20 %r21 0
	addi	%r0 %r1 -1
	beq	%r21 %r1 tail_b.640
	slli	%r19 %r1 2
	add	%r18 %r1 %r31
	sw	%r31 %r20 0
	addi	%r19 %r19 1
	j	read_and_network.1
tail_b.640 :
node_b.31 :
	lw	%r26 %r19 16
	addi	%r0 %r1 0
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r1 76
	sw	%r26 %r12 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r17 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r16 24
	sw	%r26 %r2 20
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	read_or_network.0
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r1 76
	lw	%r26 %r12 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r17 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r16 24
	lw	%r26 %r2 20
	sw	%r17 %r1 0
	sw	%r26 %r6 72
	sw	%r26 %r5 68
	sw	%r26 %r12 64
	sw	%r26 %r15 60
	sw	%r26 %r7 56
	sw	%r26 %r4 52
	sw	%r26 %r13 48
	sw	%r26 %r9 44
	sw	%r26 %r8 40
	sw	%r26 %r11 36
	sw	%r26 %r3 32
	sw	%r26 %r10 28
	sw	%r26 %r14 24
	sw	%r26 %r2 20
	mov	%r16 %r29
	sw	%r26 %r28 76
	lw	%r29 %r30 0
	addi	%r26 %r26 80
	jalr	%r30
	addi	%r26 %r26 -80
	lw	%r26 %r28 76
	lw	%r26 %r6 72
	lw	%r26 %r5 68
	lw	%r26 %r12 64
	lw	%r26 %r15 60
	lw	%r26 %r7 56
	lw	%r26 %r4 52
	lw	%r26 %r13 48
	lw	%r26 %r9 44
	lw	%r26 %r8 40
	lw	%r26 %r11 36
	lw	%r26 %r3 32
	lw	%r26 %r10 28
	lw	%r26 %r14 24
	lw	%r26 %r2 20
	addi	%r0 %r17 4
	sw	%r26 %r17 20
create_dirvecs.1 :
	addi	%r0 %r1 0
	ble	%r1 %r17 node_b.32
	j	node_b.33
node_b.32 :
	addi	%r0 %r19 120
	addi	%r0 %r1 3
	addi	%r0 %r16 l.32
	ilw.s	%r16 %f0 0
	sw	%r26 %r6 88
	sw	%r26 %r5 84
	sw	%r26 %r1 80
	sw	%r26 %r19 76
	sw	%r26 %r17 72
	sw	%r26 %r12 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r2 24
	sw	%r26 %r28 92
	addi	%r26 %r26 96
	jal	min_caml_create_float_array
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r6 88
	lw	%r26 %r5 84
	lw	%r26 %r1 80
	lw	%r26 %r19 76
	lw	%r26 %r17 72
	lw	%r26 %r12 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r2 24
	lw	%r9 %r16 0
	sw	%r26 %r6 92
	sw	%r26 %r5 88
	sw	%r26 %r16 84
	sw	%r26 %r1 80
	sw	%r26 %r19 76
	sw	%r26 %r17 72
	sw	%r26 %r12 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r2 24
	mov	%r1 %r2
	mov	%r16 %r1
	sw	%r26 %r28 96
	addi	%r26 %r26 100
	jal	min_caml_create_array
	addi	%r26 %r26 -100
	lw	%r26 %r28 96
	mov	%r1 %r16
	lw	%r26 %r6 92
	lw	%r26 %r5 88
	lw	%r26 %r16 84
	lw	%r26 %r1 80
	lw	%r26 %r19 76
	lw	%r26 %r17 72
	lw	%r26 %r12 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r2 24
	mov	%r27 %r18
	addi	%r27 %r27 8
	sw	%r18 %r16 4
	sw	%r18 %r1 0
	mov	%r18 %r1
	sw	%r26 %r6 84
	sw	%r26 %r5 80
	sw	%r26 %r1 76
	sw	%r26 %r17 72
	sw	%r26 %r12 68
	sw	%r26 %r15 64
	sw	%r26 %r7 60
	sw	%r26 %r4 56
	sw	%r26 %r13 52
	sw	%r26 %r9 48
	sw	%r26 %r8 44
	sw	%r26 %r11 40
	sw	%r26 %r3 36
	sw	%r26 %r10 32
	sw	%r26 %r14 28
	sw	%r26 %r2 24
	mov	%r1 %r2
	mov	%r19 %r1
	sw	%r26 %r28 88
	addi	%r26 %r26 92
	jal	min_caml_create_array
	addi	%r26 %r26 -92
	lw	%r26 %r28 88
	lw	%r26 %r6 84
	lw	%r26 %r5 80
	lw	%r26 %r1 76
	lw	%r26 %r17 72
	lw	%r26 %r12 68
	lw	%r26 %r15 64
	lw	%r26 %r7 60
	lw	%r26 %r4 56
	lw	%r26 %r13 52
	lw	%r26 %r9 48
	lw	%r26 %r8 44
	lw	%r26 %r11 40
	lw	%r26 %r3 36
	lw	%r26 %r10 32
	lw	%r26 %r14 28
	lw	%r26 %r2 24
	slli	%r17 %r16 2
	add	%r7 %r16 %r31
	sw	%r31 %r1 0
	slli	%r17 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r18 0
	addi	%r0 %r19 118
	sw	%r26 %r19 24
create_dirvec_elements.2 :
	addi	%r0 %r1 0
	ble	%r1 %r19 tail_b.642
	j	tail_b.644
tail_b.642 :
	addi	%r0 %r16 3
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	sw	%r26 %r6 96
	sw	%r26 %r5 92
	sw	%r26 %r1 88
	sw	%r26 %r19 84
	sw	%r26 %r18 80
	sw	%r26 %r17 76
	sw	%r26 %r12 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r11 44
	sw	%r26 %r3 40
	sw	%r26 %r10 36
	sw	%r26 %r14 32
	sw	%r26 %r2 28
	mov	%r16 %r1
	sw	%r26 %r28 100
	addi	%r26 %r26 104
	jal	min_caml_create_float_array
	addi	%r26 %r26 -104
	lw	%r26 %r28 100
	lw	%r26 %r6 96
	lw	%r26 %r5 92
	lw	%r26 %r1 88
	lw	%r26 %r19 84
	lw	%r26 %r18 80
	lw	%r26 %r17 76
	lw	%r26 %r12 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r11 44
	lw	%r26 %r3 40
	lw	%r26 %r10 36
	lw	%r26 %r14 32
	lw	%r26 %r2 28
	lw	%r9 %r16 0
	sw	%r26 %r6 100
	sw	%r26 %r5 96
	sw	%r26 %r20 92
	sw	%r26 %r1 88
	sw	%r26 %r19 84
	sw	%r26 %r18 80
	sw	%r26 %r17 76
	sw	%r26 %r12 72
	sw	%r26 %r15 68
	sw	%r26 %r7 64
	sw	%r26 %r4 60
	sw	%r26 %r13 56
	sw	%r26 %r9 52
	sw	%r26 %r8 48
	sw	%r26 %r11 44
	sw	%r26 %r3 40
	sw	%r26 %r10 36
	sw	%r26 %r14 32
	sw	%r26 %r2 28
	mov	%r1 %r2
	mov	%r16 %r1
	sw	%r26 %r28 104
	addi	%r26 %r26 108
	jal	min_caml_create_array
	addi	%r26 %r26 -108
	lw	%r26 %r28 104
	mov	%r1 %r20
	lw	%r26 %r6 100
	lw	%r26 %r5 96
	lw	%r26 %r20 92
	lw	%r26 %r1 88
	lw	%r26 %r19 84
	lw	%r26 %r18 80
	lw	%r26 %r17 76
	lw	%r26 %r12 72
	lw	%r26 %r15 68
	lw	%r26 %r7 64
	lw	%r26 %r4 60
	lw	%r26 %r13 56
	lw	%r26 %r9 52
	lw	%r26 %r8 48
	lw	%r26 %r11 44
	lw	%r26 %r3 40
	lw	%r26 %r10 36
	lw	%r26 %r14 32
	lw	%r26 %r2 28
	mov	%r27 %r16
	addi	%r27 %r27 8
	sw	%r16 %r20 4
	sw	%r16 %r1 0
	slli	%r19 %r1 2
	add	%r18 %r1 %r31
	sw	%r31 %r16 0
	addi	%r0 %r1 1
	sub	%r19 %r1 %r19
	j	create_dirvec_elements.2
tail_b.644 :
	lw	%r26 %r19 24
	addi	%r0 %r1 1
	sub	%r17 %r1 %r17
	j	create_dirvecs.1
node_b.33 :
	lw	%r26 %r17 20
	addi	%r0 %r18 9
	addi	%r0 %r19 0
	addi	%r0 %r2 0
	sw	%r26 %r18 28
	sw	%r26 %r19 32
	sw	%r26 %r2 36
calc_dirvec_rows.1 :
	addi	%r0 %r1 0
	ble	%r1 %r18 node_b.34
	j	node_b.35
node_b.34 :
	mtc1	%r18 %f0
	addi	%r0 %r1 l.59
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	addi	%r0 %r1 l.337
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f1 %f3
	addi	%r0 %r16 4
	sw	%r26 %r16 40
	sw	%r26 %r19 44
calc_dirvecs.2 :
	addi	%r0 %r1 0
	ble	%r1 %r16 branching_b.380
	j	branching_b.381
branching_b.380 :
	mtc1	%r16 %f0
	addi	%r0 %r1 l.59
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.337
	ilw.s	%r1 %f1 0
	sub.s	%f1 %f0 %f2
	addi	%r0 %r1 0
	addi	%r0 %r17 l.32
	ilw.s	%r17 %f0 0
	addi	%r0 %r17 l.32
	ilw.s	%r17 %f1 0
	sw	%r26 %r6 116
	sw	%r26 %r5 112
	sw.s	%r26 %f3 108
	sw	%r26 %r16 104
	sw	%r26 %r2 100
	sw	%r26 %r19 96
	sw	%r26 %r18 92
	sw	%r26 %r12 88
	sw	%r26 %r15 84
	sw	%r26 %r7 80
	sw	%r26 %r4 76
	sw	%r26 %r13 72
	sw	%r26 %r9 68
	sw	%r26 %r8 64
	sw	%r26 %r11 60
	sw	%r26 %r3 56
	sw	%r26 %r10 52
	sw	%r26 %r14 48
	mov	%r15 %r29
	mov	%r2 %r3
	mov	%r19 %r2
	sw	%r26 %r28 120
	lw	%r29 %r30 0
	addi	%r26 %r26 124
	jalr	%r30
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	lw	%r26 %r6 116
	lw	%r26 %r5 112
	lw.s	%r26 %f3 108
	lw	%r26 %r16 104
	lw	%r26 %r2 100
	lw	%r26 %r19 96
	lw	%r26 %r18 92
	lw	%r26 %r12 88
	lw	%r26 %r15 84
	lw	%r26 %r7 80
	lw	%r26 %r4 76
	lw	%r26 %r13 72
	lw	%r26 %r9 68
	lw	%r26 %r8 64
	lw	%r26 %r11 60
	lw	%r26 %r3 56
	lw	%r26 %r10 52
	lw	%r26 %r14 48
	mtc1	%r16 %f0
	addi	%r0 %r1 l.59
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.277
	ilw.s	%r1 %f1 0
	add.s	%f1 %f0 %f2
	addi	%r0 %r17 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.32
	ilw.s	%r1 %f1 0
	addi	%r2 %r1 2
	sw	%r26 %r6 116
	sw	%r26 %r5 112
	sw.s	%r26 %f3 108
	sw	%r26 %r16 104
	sw	%r26 %r2 100
	sw	%r26 %r19 96
	sw	%r26 %r18 92
	sw	%r26 %r12 88
	sw	%r26 %r15 84
	sw	%r26 %r7 80
	sw	%r26 %r4 76
	sw	%r26 %r13 72
	sw	%r26 %r9 68
	sw	%r26 %r8 64
	sw	%r26 %r11 60
	sw	%r26 %r3 56
	sw	%r26 %r10 52
	sw	%r26 %r14 48
	mov	%r15 %r29
	mov	%r1 %r3
	mov	%r19 %r2
	mov	%r17 %r1
	sw	%r26 %r28 120
	lw	%r29 %r30 0
	addi	%r26 %r26 124
	jalr	%r30
	addi	%r26 %r26 -124
	lw	%r26 %r28 120
	lw	%r26 %r6 116
	lw	%r26 %r5 112
	lw.s	%r26 %f3 108
	lw	%r26 %r16 104
	lw	%r26 %r2 100
	lw	%r26 %r19 96
	lw	%r26 %r18 92
	lw	%r26 %r12 88
	lw	%r26 %r15 84
	lw	%r26 %r7 80
	lw	%r26 %r4 76
	lw	%r26 %r13 72
	lw	%r26 %r9 68
	lw	%r26 %r8 64
	lw	%r26 %r11 60
	lw	%r26 %r3 56
	lw	%r26 %r10 52
	lw	%r26 %r14 48
	addi	%r0 %r1 1
	sub	%r16 %r1 %r16
	addi	%r19 %r17 1
	addi	%r0 %r1 5
	ble	%r1 %r17 tail_b.646
	mov	%r17 %r19
	j	tail_b.648
tail_b.646 :
	addi	%r0 %r1 5
	sub	%r17 %r1 %r19
tail_b.648 :
	j	calc_dirvecs.2
branching_b.381 :
	lw	%r26 %r16 40
	lw	%r26 %r19 44
	addi	%r0 %r1 1
	sub	%r18 %r1 %r18
	addi	%r19 %r16 2
	addi	%r0 %r1 5
	ble	%r1 %r16 tail_b.650
	mov	%r16 %r19
	j	tail_b.652
tail_b.650 :
	addi	%r0 %r1 5
	sub	%r16 %r1 %r19
tail_b.652 :
	addi	%r2 %r2 4
	j	calc_dirvec_rows.1
node_b.35 :
	lw	%r26 %r18 28
	lw	%r26 %r19 32
	lw	%r26 %r2 36
	addi	%r0 %r15 4
	sw	%r26 %r15 48
init_vecset_constants.1 :
	addi	%r0 %r1 0
	ble	%r1 %r15 node_b.36
	j	node_b.38
node_b.36 :
	slli	%r15 %r1 2
	add	%r7 %r1 %r31
	lw	%r31 %r16 0
	addi	%r0 %r18 119
	sw	%r26 %r18 52
init_dirvec_constants.2 :
	addi	%r0 %r1 0
	ble	%r1 %r18 node_b.37
	j	tail_b.661
node_b.37 :
	slli	%r18 %r1 2
	add	%r16 %r1 %r31
	lw	%r31 %r19 0
	lw	%r9 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r17
	sw	%r26 %r17 56
iter_setup_dirvec_constants.8 :
	addi	%r0 %r1 0
	ble	%r1 %r17 branching_b.385
	j	tail_b.659
branching_b.385 :
	slli	%r17 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r2 0
	lw	%r19 %r20 4
	lw	%r19 %r21 0
	lw	%r2 %r22 4
	addi	%r0 %r1 1
	beq	%r22 %r1 tail_b.654
	addi	%r0 %r1 2
	beq	%r22 %r1 tail_b.655
	sw	%r26 %r6 132
	sw	%r26 %r2 128
	sw	%r26 %r20 124
	sw	%r26 %r17 120
	sw	%r26 %r19 116
	sw	%r26 %r5 112
	sw	%r26 %r18 108
	sw	%r26 %r16 104
	sw	%r26 %r15 100
	sw	%r26 %r12 96
	sw	%r26 %r7 92
	sw	%r26 %r4 88
	sw	%r26 %r13 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	sw	%r26 %r14 60
	mov	%r21 %r1
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	setup_second_table.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	mov	%r1 %r2
	lw	%r26 %r6 132
	lw	%r26 %r2 128
	lw	%r26 %r20 124
	lw	%r26 %r17 120
	lw	%r26 %r19 116
	lw	%r26 %r5 112
	lw	%r26 %r18 108
	lw	%r26 %r16 104
	lw	%r26 %r15 100
	lw	%r26 %r12 96
	lw	%r26 %r7 92
	lw	%r26 %r4 88
	lw	%r26 %r13 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	lw	%r26 %r14 60
	slli	%r17 %r1 2
	add	%r20 %r1 %r31
	sw	%r31 %r2 0
	j	tail_b.657
tail_b.655 :
	sw	%r26 %r6 132
	sw	%r26 %r1 128
	sw	%r26 %r20 124
	sw	%r26 %r17 120
	sw	%r26 %r19 116
	sw	%r26 %r5 112
	sw	%r26 %r18 108
	sw	%r26 %r16 104
	sw	%r26 %r15 100
	sw	%r26 %r12 96
	sw	%r26 %r7 92
	sw	%r26 %r4 88
	sw	%r26 %r13 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	sw	%r26 %r14 60
	mov	%r21 %r1
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	setup_surface_table.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw	%r26 %r6 132
	lw	%r26 %r1 128
	lw	%r26 %r20 124
	lw	%r26 %r17 120
	lw	%r26 %r19 116
	lw	%r26 %r5 112
	lw	%r26 %r18 108
	lw	%r26 %r16 104
	lw	%r26 %r15 100
	lw	%r26 %r12 96
	lw	%r26 %r7 92
	lw	%r26 %r4 88
	lw	%r26 %r13 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	lw	%r26 %r14 60
	slli	%r17 %r2 2
	add	%r20 %r2 %r31
	sw	%r31 %r1 0
	j	tail_b.657
tail_b.654 :
	sw	%r26 %r6 132
	sw	%r26 %r1 128
	sw	%r26 %r20 124
	sw	%r26 %r17 120
	sw	%r26 %r19 116
	sw	%r26 %r5 112
	sw	%r26 %r18 108
	sw	%r26 %r16 104
	sw	%r26 %r15 100
	sw	%r26 %r12 96
	sw	%r26 %r7 92
	sw	%r26 %r4 88
	sw	%r26 %r13 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	sw	%r26 %r14 60
	mov	%r21 %r1
	sw	%r26 %r28 136
	addi	%r26 %r26 140
	jal	setup_rect_table.0
	addi	%r26 %r26 -140
	lw	%r26 %r28 136
	lw	%r26 %r6 132
	lw	%r26 %r1 128
	lw	%r26 %r20 124
	lw	%r26 %r17 120
	lw	%r26 %r19 116
	lw	%r26 %r5 112
	lw	%r26 %r18 108
	lw	%r26 %r16 104
	lw	%r26 %r15 100
	lw	%r26 %r12 96
	lw	%r26 %r7 92
	lw	%r26 %r4 88
	lw	%r26 %r13 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	lw	%r26 %r14 60
	slli	%r17 %r2 2
	add	%r20 %r2 %r31
	sw	%r31 %r1 0
tail_b.657 :
	addi	%r0 %r1 1
	sub	%r17 %r1 %r17
	j	iter_setup_dirvec_constants.8
tail_b.659 :
	lw	%r26 %r17 56
	addi	%r0 %r1 1
	sub	%r18 %r1 %r18
	j	init_dirvec_constants.2
tail_b.661 :
	lw	%r26 %r18 52
	addi	%r0 %r1 1
	sub	%r15 %r1 %r15
	j	init_vecset_constants.1
node_b.38 :
	lw	%r26 %r15 48
	lw.s	%r13 %f0 0
	sw.s	%r14 %f0 0
	lw.s	%r13 %f0 4
	sw.s	%r14 %f0 4
	lw.s	%r13 %f0 8
	sw.s	%r14 %f0 8
	lw	%r9 %r2 0
	addi	%r0 %r1 1
	sub	%r2 %r1 %r13
	sw	%r26 %r13 60
iter_setup_dirvec_constants.1 :
	addi	%r0 %r1 0
	ble	%r1 %r13 branching_b.388
	j	node_b.39
branching_b.388 :
	slli	%r13 %r1 2
	add	%r8 %r1 %r31
	lw	%r31 %r7 0
	lw	%r5 %r15 4
	lw	%r5 %r14 0
	lw	%r7 %r1 4
	addi	%r0 %r2 1
	beq	%r1 %r2 tail_b.663
	addi	%r0 %r2 2
	beq	%r1 %r2 tail_b.664
	sw	%r26 %r6 108
	sw	%r26 %r1 104
	sw	%r26 %r15 100
	sw	%r26 %r13 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r4 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	mov	%r7 %r2
	mov	%r14 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	setup_second_table.0
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	lw	%r26 %r6 108
	lw	%r26 %r1 104
	lw	%r26 %r15 100
	lw	%r26 %r13 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r4 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	slli	%r13 %r2 2
	add	%r15 %r2 %r31
	sw	%r31 %r1 0
	j	tail_b.666
tail_b.664 :
	sw	%r26 %r6 108
	sw	%r26 %r2 104
	sw	%r26 %r15 100
	sw	%r26 %r13 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r4 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	mov	%r7 %r2
	mov	%r14 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	setup_surface_table.0
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	mov	%r1 %r2
	lw	%r26 %r6 108
	lw	%r26 %r2 104
	lw	%r26 %r15 100
	lw	%r26 %r13 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r4 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	slli	%r13 %r1 2
	add	%r15 %r1 %r31
	sw	%r31 %r2 0
	j	tail_b.666
tail_b.663 :
	sw	%r26 %r6 108
	sw	%r26 %r2 104
	sw	%r26 %r15 100
	sw	%r26 %r13 96
	sw	%r26 %r5 92
	sw	%r26 %r12 88
	sw	%r26 %r4 84
	sw	%r26 %r9 80
	sw	%r26 %r8 76
	sw	%r26 %r11 72
	sw	%r26 %r3 68
	sw	%r26 %r10 64
	mov	%r7 %r2
	mov	%r14 %r1
	sw	%r26 %r28 112
	addi	%r26 %r26 116
	jal	setup_rect_table.0
	addi	%r26 %r26 -116
	lw	%r26 %r28 112
	mov	%r1 %r2
	lw	%r26 %r6 108
	lw	%r26 %r2 104
	lw	%r26 %r15 100
	lw	%r26 %r13 96
	lw	%r26 %r5 92
	lw	%r26 %r12 88
	lw	%r26 %r4 84
	lw	%r26 %r9 80
	lw	%r26 %r8 76
	lw	%r26 %r11 72
	lw	%r26 %r3 68
	lw	%r26 %r10 64
	slli	%r13 %r1 2
	add	%r15 %r1 %r31
	sw	%r31 %r2 0
tail_b.666 :
	addi	%r0 %r1 1
	sub	%r13 %r1 %r13
	j	iter_setup_dirvec_constants.1
node_b.39 :
	lw	%r26 %r13 60
	lw	%r9 %r1 0
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	sw	%r26 %r6 80
	sw	%r26 %r12 76
	sw	%r26 %r4 72
	sw	%r26 %r11 68
	sw	%r26 %r3 64
	mov	%r10 %r29
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r6 80
	lw	%r26 %r12 76
	lw	%r26 %r4 72
	lw	%r26 %r11 68
	lw	%r26 %r3 64
	addi	%r0 %r2 0
	addi	%r0 %r1 0
	sw	%r26 %r6 80
	sw	%r26 %r12 76
	sw	%r26 %r4 72
	sw	%r26 %r11 68
	sw	%r26 %r3 64
	mov	%r11 %r29
	mov	%r1 %r3
	mov	%r12 %r1
	sw	%r26 %r28 84
	lw	%r29 %r30 0
	addi	%r26 %r26 88
	jalr	%r30
	addi	%r26 %r26 -88
	lw	%r26 %r28 84
	lw	%r26 %r6 80
	lw	%r26 %r12 76
	lw	%r26 %r4 72
	lw	%r26 %r11 68
	lw	%r26 %r3 64
	addi	%r0 %r5 0
	addi	%r0 %r7 2
scan_line.1 :
	lw	%r4 %r1 4
	bl	%r5 %r1 branching_b.391
	j	return_point.66
branching_b.391 :
	lw	%r4 %r1 4
	addi	%r0 %r2 1
	sub	%r1 %r2 %r1
	bl	%r5 %r1 tail_b.668
	j	branching_b.392
tail_b.668 :
	addi	%r5 %r2 1
	mov	%r11 %r29
	mov	%r7 %r3
	mov	%r12 %r1
	lw	%r29 %r30 0
	jr	%r30
branching_b.392 :
	addi	%r0 %r1 0
	sw	%r26 %r6 88
	sw	%r26 %r7 84
	sw	%r26 %r5 80
	sw	%r26 %r12 76
	sw	%r26 %r4 72
	sw	%r26 %r11 68
	sw	%r26 %r3 64
	mov	%r3 %r29
	mov	%r12 %r4
	mov	%r5 %r2
	mov	%r12 %r5
	mov	%r12 %r3
	sw	%r26 %r28 92
	lw	%r29 %r30 0
	addi	%r26 %r26 96
	jalr	%r30
	addi	%r26 %r26 -96
	lw	%r26 %r28 92
	lw	%r26 %r6 88
	lw	%r26 %r7 84
	lw	%r26 %r5 80
	lw	%r26 %r12 76
	lw	%r26 %r4 72
	lw	%r26 %r11 68
	lw	%r26 %r3 64
	addi	%r5 %r5 1
	addi	%r7 %r2 2
	addi	%r0 %r1 5
	ble	%r1 %r2 tail_b.670
	mov	%r2 %r7
	j	tail_b.672
tail_b.670 :
	addi	%r0 %r1 5
	sub	%r2 %r1 %r7
tail_b.672 :
	j	scan_line.1
return_point.66 :
	mov	%r6 %r1
	retl	
