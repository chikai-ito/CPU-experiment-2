#data_section
l.12 :	# 3.141593
	.float	0x40490fdb
l.11 :	# -1.000000
	.float	0xbf800000
l.10 :	# 0.000000
	.float	0x0
l.9 :	# 6.283185
	.float	0x40c90fdb
l.8 :	# 1.570796
	.float	0x3fc90fdb
l.7 :	# 0.785398
	.float	0x3f490fdb
l.6 :	# 0.500000
	.float	0x3f000000
l.5 :	# 0.041664
	.float	0x3d2aa789
l.4 :	# 0.001370
	.float	0x3ab38106
l.3 :	# 1.000000
	.float	0x3f800000
l.2 :	# 0.166667
	.float	0x3e2aaaac
l.1 :	# 0.008333
	.float	0x3c088666
l.0 :	# 0.000196
	.float	0x394d64b6
#text_section
program_start :
	addi	%r0 %r28 return_point.5
tail_b.10 :
	ilw.s	%r0 %f0 l.12
	mov	%r27 %r2
	addi	%r27 %r27 8
	addi	%r0 %r1 sin2.0
	sw	%r2 %r1 0
	sw.s	%r2 %f0 4
	mov	%r27 %r29
	addi	%r27 %r27 12
	addi	%r0 %r1 sin.0
	sw	%r29 %r1 0
	sw	%r29 %r2 8
	sw.s	%r29 %f0 4
	fin	%f0
	lw	%r29 %r30 0
	jr	%r30
return_point.5 :
	add	%r0 %r0 %r0
	ret
kernel_sin.0 :
	mov.s	%f1 %f2
	mov.s	%f0 %f2
tail_b.0 :
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.0
	mul.s	%f2 %f0 %f4
	ilw.s	%r0 %f0 l.1
	mul.s	%f2 %f0 %f1
	mul.s	%f3 %f4 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.2
	mul.s	%f2 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f2 %f0 %f0
return_point.0 :
	retl
kernel_cos.0 :
	mov.s	%f1 %f3
tail_b.1 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.4
	ilw.s	%r0 %f2 l.5
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f0
	ilw.s	%r0 %f2 l.6
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f2 %f2
	ilw.s	%r0 %f0 l.3
	mul.s	%f1 %f2 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
return_point.1 :
	retl
sin3.0 :
	mov.s	%f0 %f1
branching_b.0 :
	ilw.s	%r0 %f0 l.7
	fbg	%f1 %f0 tail_b.3
	mov.s	%f1 %f0
	j	kernel_sin.0
tail_b.3 :
	ilw.s	%r0 %f0 l.8
	sub.s	%f1 %f0 %f0
	j	kernel_cos.0
sin2.0 :
	mov.s	%f1 %f3
branching_b.1 :
	lw.s	%r29 %f2 4
	ilw.s	%r0 %f1 l.8
	fbg	%f1 %f0 tail_b.5
	sub.s	%f0 %f2 %f0
	mov.s	%f3 %f1
	j	sin3.0
tail_b.5 :
	mov.s	%f3 %f1
	j	sin3.0
sin.0 :
	mov.s	%f0 %f2
branching_b.2 :
	lw	%r29 %r1 8
	lw.s	%r29 %f0 4
	ilw.s	%r0 %f1 l.9
	fbg	%f1 %f2 branching_b.3
	ilw.s	%r0 %f0 l.9
	sub.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.3 :
	ilw.s	%r0 %f1 l.10
	fbge	%f2 %f1 branching_b.4
	ilw.s	%r0 %f0 l.9
	add.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.4 :
	fbg	%f0 %f2 tail_b.9
	sub.s	%f0 %f2 %f0
	ilw.s	%r0 %f1 l.11
	mov	%r1 %r29
	lw	%r29 %r30 0
	jr	%r30
tail_b.9 :
	ilw.s	%r0 %f1 l.3
	mov	%r1 %r29
	mov.s	%f2 %f0
	lw	%r29 %r30 0
	jr	%r30
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
