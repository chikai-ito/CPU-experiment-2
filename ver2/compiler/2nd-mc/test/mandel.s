#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
l.20 :	# 2.000000
	.float	0x40000000
l.19 :	# 0.250000
	.float	0x3e800000
l.18 :	# 0.076923
	.float	0x3d9d89d9
l.17 :	# 0.846154
	.float	0x3f589d8a
l.16 :	# 0.153846
	.float	0x3e1d89d9
l.15 :	# 255.000000
	.float	0x437f0000
l.14 :	# 4.000000
	.float	0x40800000
l.13 :	# 0.500000
	.float	0x3f000000
l.12 :	# 0.041664
	.float	0x3d2aa789
l.11 :	# 0.001370
	.float	0x3ab38106
l.10 :	# 0.166667
	.float	0x3e2aaaac
l.9 :	# 0.008333
	.float	0x3c088666
l.8 :	# 0.000196
	.float	0x394d64b6
l.7 :	# 0.785398
	.float	0x3f490fdb
l.6 :	# -1.000000
	.float	0xbf800000
l.5 :	# 1.570796
	.float	0x3fc90fdb
l.4 :	# 1.000000
	.float	0x3f800000
l.3 :	# 6.283185
	.float	0x40c90fdb
l.2 :	# 3.141593
	.float	0x40490fdb
l.1 :	# 0.000000
	.float	0x0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r1 0
	bne	%r1 %r27 program_end
	ilw.s	%r0 %f0 l.1
	sw.s	%r27 %f0 0
	ilw.s	%r0 %f0 l.1
	sw.s	%r27 %f0 4
	addi	%r27 %r27 8
	addi	%r0 %r1 8
	bne	%r1 %r27 program_end
	addi	%r0 %r1 512
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 2056
	bne	%r1 %r27 program_end
	addi	%r0 %r1 512
	addi	%r0 %r2 8
	jal	min_caml_create_array
	addi	%r0 %r1 4104
	bne	%r1 %r27 program_end
	addi	%r0 %r1 3
	addi	%r0 %r2 0
	jal	min_caml_create_array
	addi	%r0 %r1 4116
	bne	%r1 %r27 program_end
	addi	%r0 %r1 512
	addi	%r0 %r2 4104
	jal	min_caml_create_array
	addi	%r0 %r1 6164
	bne	%r1 %r27 program_end
	addi	%r0 %r1 512
	addi	%r0 %r2 4116
	jal	min_caml_create_array
	addi	%r0 %r28 program_end
main.1 :
preloop_b.3 :
	addi	%r0 %r5 60
	addi	%r0 %r3 512
	mov	%r0 %r4
	addi	%r0 %r1 512
malloc_loop.1 :
	beq	%r4 %r3 tail_b.15
tail_b.16 :
	ilw.s	%r0 %f0 l.1
	ilw.s	%r0 %f1 l.1
	mov	%r27 %r2
	addi	%r27 %r27 8
	sw.s	%r2 %f1 4
	sw.s	%r2 %f0 0
	sw	%r26 %r28 0
	jal	min_caml_create_array
	lw	%r26 %r28 0
	mov	%r1 %r6
	mov	%r30 %r1
	slli	%r4 %r2 2
	addi	%r2 %r2 2056
	sw	%r2 %r6 0
	addi	%r4 %r2 1
	mov	%r2 %r4
	j	malloc_loop.1
tail_b.15 :
postloop_b.3 :
preloop_b.4 :
	mov	%r0 %r6
	mov	%r0 %r2
init_loop_loop.1 :
	mtc1	%r6 %f0
	addi	%r3 %r1 -1
	mtc1	%r1 %f1
	div.s	%f1 %f0 %f0
	mtc1	%r2 %f2
	addi	%r3 %r1 -1
	mtc1	%r1 %f1
	div.s	%f1 %f2 %f2
	ilw.s	%r0 %f1 l.14
	mul.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.20
	sub.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.14
	mul.s	%f2 %f0 %f0
	ilw.s	%r0 %f2 l.20
	sub.s	%f2 %f0 %f0
	beq	%r6 %r3 tail_b.17
branching_b.14 :
	beq	%r2 %r3 tail_b.18
tail_b.19 :
	slli	%r6 %r1 2
	addi	%r1 %r1 2056
	lw	%r1 %r4 0
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw.s	%r1 %f0 4
	sw.s	%r1 %f1 0
	mov	%r1 %r7
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r7 0
	addi	%r2 %r2 1
	j	init_loop_loop.1
tail_b.18 :
	addi	%r6 %r1 1
	mov	%r1 %r6
	mov	%r0 %r2
	j	init_loop_loop.1
tail_b.17 :
postloop_b.4 :
preloop_b.5 :
	mov	%r0 %r2
malloc_2d_loop.1 :
	beq	%r2 %r3 tail_b.20
tail_b.21 :
	addi	%r0 %r1 3
	sw	%r26 %r2 0
	mov	%r0 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	lw	%r26 %r2 0
	sw	%r26 %r2 0
	mov	%r1 %r2
	mov	%r3 %r1
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r4
	mov	%r30 %r3
	lw	%r26 %r2 0
	sw	%r26 %r4 -12
	sw	%r26 %r2 -8
	sw	%r26 %r3 -4
	sw	%r26 %r5 0
	mov	%r3 %r2
	mov	%r0 %r1
	mov	%r4 %r3
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	malloc_1d.2
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r4 -12
	lw	%r26 %r2 -8
	lw	%r26 %r3 -4
	lw	%r26 %r5 0
	slli	%r2 %r1 2
	addi	%r1 %r1 6164
	sw	%r1 %r4 0
	addi	%r2 %r2 1
	j	malloc_2d_loop.1
tail_b.20 :
postloop_b.5 :
preloop_b.6 :
	addi	%r0 %r1 80
	out	%r1
	addi	%r0 %r1 51
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 49
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 49
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r1 50
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 53
	out	%r1
	addi	%r0 %r1 10
	out	%r1
	mov	%r0 %r7
	mov	%r0 %r2
compute_image_loop_loop.1 :
	beq	%r7 %r3 tail_b.22
branching_b.17 :
	beq	%r2 %r3 tail_b.23
tail_b.24 :
	slli	%r7 %r1 2
	addi	%r1 %r1 2056
	lw	%r1 %r1 0
	slli	%r2 %r4 2
	add	%r1 %r4 %r1
	lw	%r1 %r4 0
	mov	%r27 %r6
	addi	%r27 %r27 8
	addi	%r0 %r1 compute_pixel_loop.4
	sw	%r6 %r1 0
	sw	%r6 %r5 4
	ilw.s	%r0 %f1 l.1
	ilw.s	%r0 %f0 l.1
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw.s	%r1 %f0 4
	sw.s	%r1 %f1 0
	sw	%r26 %r2 -12
	sw	%r26 %r7 -8
	sw	%r26 %r3 -4
	sw	%r26 %r5 0
	mov	%r6 %r29
	mov	%r4 %r3
	mov	%r1 %r2
	mov	%r5 %r1
	sw	%r26 %r28 -16
	lw	%r29 %r30 0
	addi	%r26 %r26 -20
	jalr	%r30
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	lw	%r26 %r2 -12
	lw	%r26 %r7 -8
	lw	%r26 %r3 -4
	lw	%r26 %r5 0
	lw	%r1 %r8 8
	lw	%r1 %r9 4
	lw	%r1 %r1 0
	slli	%r7 %r4 2
	addi	%r4 %r4 6164
	lw	%r4 %r4 0
	slli	%r2 %r6 2
	add	%r4 %r6 %r4
	lw	%r4 %r6 0
	mov	%r6 %r4
	sw	%r4 %r1 0
	addi	%r6 %r1 4
	sw	%r1 %r9 0
	addi	%r6 %r1 8
	sw	%r1 %r8 0
	addi	%r2 %r2 1
	j	compute_image_loop_loop.1
tail_b.23 :
	addi	%r7 %r1 1
	mov	%r1 %r7
	mov	%r0 %r2
	j	compute_image_loop_loop.1
tail_b.22 :
postloop_b.6 :
preloop_b.7 :
	mov	%r0 %r5
	mov	%r0 %r6
print_image_loop_loop.1 :
	beq	%r5 %r3 tail_b.25
branching_b.19 :
	beq	%r6 %r3 tail_b.26
branching_b.20 :
	slli	%r5 %r1 2
	addi	%r1 %r1 6164
	lw	%r1 %r2 0
	slli	%r6 %r1 2
	add	%r2 %r1 %r1
	lw	%r1 %r7 0
	mov	%r7 %r1
	lw	%r1 %r2 0
	addi	%r0 %r1 100
	div	%r2 %r1 %r4
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r2 %r1 %r1
	addi	%r0 %r8 10
	div	%r1 %r8 %r8
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r2 %r1 %r1
	addi	%r0 %r2 10
	mul	%r8 %r2 %r2
	sub	%r1 %r2 %r2
	bl	%r0 %r4 tail_b.27
branching_b.21 :
	bl	%r0 %r8 tail_b.28
tail_b.29 :
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.22
tail_b.28 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.22
tail_b.27 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	branching_b.22
tail_b.26 :
	addi	%r5 %r5 1
	mov	%r0 %r6
	j	print_image_loop_loop.1
tail_b.25 :
postloop_b.7 :
return_point.3 :
program_end :
	add	%r0 %r0 %r0
	ret
branching_b.22 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r7 %r1 4
	lw	%r1 %r4 0
	addi	%r0 %r1 100
	div	%r4 %r1 %r8
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r4 %r1 %r1
	addi	%r0 %r2 10
	div	%r1 %r2 %r2
	addi	%r0 %r1 100
	mul	%r8 %r1 %r1
	sub	%r4 %r1 %r4
	addi	%r0 %r1 10
	mul	%r2 %r1 %r1
	sub	%r4 %r1 %r4
	bl	%r0 %r8 tail_b.30
branching_b.23 :
	bl	%r0 %r2 tail_b.31
tail_b.32 :
	addi	%r4 %r1 48
	out	%r1
	j	branching_b.24
tail_b.31 :
	addi	%r2 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	j	branching_b.24
tail_b.30 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
branching_b.24 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r7 %r1 8
	lw	%r1 %r7 0
	addi	%r0 %r1 100
	div	%r7 %r1 %r4
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r7 %r1 %r1
	addi	%r0 %r2 10
	div	%r1 %r2 %r8
	addi	%r0 %r1 100
	mul	%r4 %r1 %r1
	sub	%r7 %r1 %r2
	addi	%r0 %r1 10
	mul	%r8 %r1 %r1
	sub	%r2 %r1 %r2
	bl	%r0 %r4 tail_b.33
branching_b.25 :
	bl	%r0 %r8 tail_b.34
tail_b.35 :
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.36
tail_b.34 :
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.36
tail_b.33 :
	addi	%r4 %r1 48
	out	%r1
	addi	%r8 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
tail_b.36 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	print_image_loop_loop.1
cos.0 :
preloop_b.0 :
	mov.s	%f0 %f1
cos_loop.0 :
	ilw.s	%r0 %f0 l.2
	ilw.s	%r0 %f2 l.3
	fbg	%f2 %f1 branching_b.1
tail_b.0 :
	ilw.s	%r0 %f0 l.3
	sub.s	%f0 %f1 %f0
	mov.s	%f0 %f1
	j	cos_loop.0
branching_b.1 :
	ilw.s	%r0 %f2 l.1
	fbge	%f1 %f2 branching_b.2
tail_b.1 :
	ilw.s	%r0 %f0 l.3
	add.s	%f0 %f1 %f1
	j	cos_loop.0
branching_b.2 :
	fbg	%f0 %f1 branching_b.6
branching_b.3 :
	sub.s	%f0 %f1 %f3
	ilw.s	%r0 %f2 l.6
	ilw.s	%r0 %f1 l.5
	fbg	%f1 %f3 branching_b.5
branching_b.4 :
	sub.s	%f3 %f0 %f1
	ilw.s	%r0 %f4 l.4
	ilw.s	%r0 %f0 l.7
	fbg	%f1 %f0 tail_b.3
tail_b.2 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.11
	ilw.s	%r0 %f1 l.12
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.13
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	ilw.s	%r0 %f0 l.5
	sub.s	%f1 %f0 %f5
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.8
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f5 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f5 %f0 %f3
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f3 %f1
	ilw.s	%r0 %f0 l.4
	mul.s	%f5 %f0 %f3
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.7
	fbg	%f3 %f0 tail_b.5
tail_b.4 :
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.11
	ilw.s	%r0 %f3 l.12
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.13
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.4
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	ilw.s	%r0 %f0 l.5
	sub.s	%f3 %f0 %f4
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.8
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f4 %f0 %f5
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f5 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.4
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f4 l.4
	ilw.s	%r0 %f2 l.5
	fbg	%f2 %f1 branching_b.8
branching_b.7 :
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.6
	ilw.s	%r0 %f1 l.7
	fbg	%f0 %f1 tail_b.7
tail_b.6 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.11
	ilw.s	%r0 %f1 l.12
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.13
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	ilw.s	%r0 %f1 l.5
	sub.s	%f0 %f1 %f2
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f4
	ilw.s	%r0 %f0 l.8
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.4
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.7
	fbg	%f1 %f0 tail_b.9
tail_b.8 :
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.11
	ilw.s	%r0 %f1 l.12
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.13
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.4
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	ilw.s	%r0 %f0 l.5
	sub.s	%f1 %f0 %f3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f2
	ilw.s	%r0 %f0 l.8
	mul.s	%f3 %f0 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f3 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f3 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.4
	mul.s	%f3 %f1 %f1
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f4 %f0 %f0
postloop_b.0 :
return_point.0 :
	retl
malloc_1d.2 :
	mov	%r3 %r4
	mov	%r2 %r5
preloop_b.1 :
	mov	%r1 %r2
malloc_1d_loop.0 :
	beq	%r2 %r5 tail_b.10
tail_b.11 :
	addi	%r0 %r1 3
	sw	%r26 %r2 0
	mov	%r0 %r2
	sw	%r26 %r28 -4
	jal	min_caml_create_array
	lw	%r26 %r28 -4
	mov	%r1 %r3
	lw	%r26 %r2 0
	slli	%r2 %r1 2
	add	%r4 %r1 %r1
	sw	%r1 %r3 0
	addi	%r2 %r2 1
	j	malloc_1d_loop.0
tail_b.10 :
postloop_b.1 :
return_point.1 :
	retl
compute_pixel_loop.4 :
preloop_b.2 :
	lw	%r29 %r4 4
	mov	%r1 %r5
compute_pixel_loop_loop.2 :
	beq	%r5 %r0 tail_b.12
branching_b.11 :
	lw.s	%r2 %f1 4
	lw.s	%r2 %f0 0
	mul.s	%f0 %f0 %f0
	mul.s	%f1 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.14
	fbg	%f0 %f1 tail_b.14
tail_b.13 :
	mtc1	%r5 %f0
	mtc1	%r4 %f1
	div.s	%f1 %f0 %f4
	ilw.s	%r0 %f0 l.5
	mul.s	%f4 %f0 %f1
	ilw.s	%r0 %f3 l.15
	ilw.s	%r0 %f0 l.16
	ilw.s	%r0 %f2 l.17
	sw.s	%r26 %f2 -12
	sw.s	%r26 %f0 -8
	sw.s	%r26 %f3 -4
	sw.s	%r26 %f4 0
	mov.s	%f1 %f0
	sw	%r26 %r28 -16
	addi	%r26 %r26 -20
	jal	cos.0
	addi	%r26 %r26 20
	lw	%r26 %r28 -16
	mov.s	%f0 %f1
	lw.s	%r26 %f2 -12
	lw.s	%r26 %f0 -8
	lw.s	%r26 %f3 -4
	lw.s	%r26 %f4 0
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f0 %f3 %f2
	ilw.s	%r0 %f1 l.15
	ilw.s	%r0 %f3 l.18
	ilw.s	%r0 %f0 l.19
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f0 %f1 %f0
	mfc1	%r1 %f2
	addi	%r0 %r4 30
	mfc1	%r2 %f0
	mov	%r27 %r3
	addi	%r27 %r27 12
	sw	%r3 %r2 8
	sw	%r3 %r4 4
	sw	%r3 %r1 0
	mov	%r3 %r1
	j	postloop_b.2
tail_b.14 :
	lw.s	%r2 %f2 4
	lw.s	%r2 %f3 0
	lw.s	%r2 %f0 4
	lw.s	%r2 %f4 0
	mul.s	%f4 %f3 %f5
	mul.s	%f0 %f2 %f1
	sub.s	%f1 %f5 %f1
	mul.s	%f0 %f3 %f3
	mul.s	%f2 %f4 %f0
	add.s	%f0 %f3 %f3
	lw.s	%r3 %f0 4
	lw.s	%r3 %f2 0
	add.s	%f2 %f1 %f1
	add.s	%f0 %f3 %f0
	mov	%r27 %r1
	addi	%r27 %r27 8
	sw.s	%r1 %f0 4
	sw.s	%r1 %f1 0
	mov	%r1 %r2
	addi	%r5 %r1 -1
	mov	%r1 %r5
	j	compute_pixel_loop_loop.2
tail_b.12 :
	mov	%r27 %r1
	addi	%r27 %r27 12
	sw	%r1 %r0 8
	sw	%r1 %r0 4
	sw	%r1 %r0 0
postloop_b.2 :
return_point.2 :
	retl
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	beq     %r31 %r0 create_array_ret
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
create_array_ret :
	retl
min_caml_create_float_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	beq	%r31 %r0 create_float_array_ret
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
create_float_array_ret :
	retl
