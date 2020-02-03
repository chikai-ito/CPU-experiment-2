#data_section
l.30 :	# 3.141593
	.float	0x40490fdb
l.25 :	# -1.000000
	.float	0xbf800000
l.21 :	# 0.000000
	.float	0x0
l.19 :	# 6.283185
	.float	0x40c90fdb
l.16 :	# 0.500000
	.float	0x3f000000
l.14 :	# 0.041664
	.float	0x3d2aa789
l.12 :	# 0.001370
	.float	0x3ab38106
l.10 :	# 1.570796
	.float	0x3fc90fdb
l.8 :	# 0.785398
	.float	0x3f490fdb
l.6 :	# 1.000000
	.float	0x3f800000
l.4 :	# 0.166667
	.float	0x3e2aaaac
l.2 :	# 0.008333
	.float	0x3c088666
l.0 :	# 0.000196
	.float	0x394d64b6
#text_section
program_start :
	addi	%r0 %r28 return_point.3
tail_b.9 :
	addi	%r0 %r1 l.30
	ilw.s	%r1 %f0 0
	mov	%r27 %r29
	addi	%r27 %r27 8
	addi	%r0 %r1 sin.0
	sw	%r29 %r1 0
	sw.s	%r29 %f0 4
	fin	%f0
	lw	%r29 %r30 0
	jr	%r30
kernel_sin.0 :
	mov.s	%f1 %f2
	mov.s	%f0 %f4
tail_b.0 :
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f3
	addi	%r0 %r1 l.0
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r0 %r1 l.2
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r1 l.4
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
return_point.0 :
	retl	
sin3.0 :
	mov.s	%f1 %f2
	mov.s	%f0 %f1
branching_b.0 :
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 tail_b.2
	mov.s	%f1 %f0
	mov.s	%f2 %f1
	j	kernel_sin.0
tail_b.2 :
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	addi	%r0 %r1 l.12
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.14
	ilw.s	%r1 %f0 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r1 l.16
	ilw.s	%r1 %f0 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
return_point.1 :
	retl	
sin.0 :
	mov.s	%f0 %f2
branching_b.1 :
	lw.s	%r29 %f0 4
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f1 0
	fbg	%f1 %f2 branching_b.2
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.2 :
	addi	%r0 %r1 l.21
	ilw.s	%r1 %f1 0
	fbge	%f2 %f1 branching_b.3
	addi	%r0 %r1 l.19
	ilw.s	%r1 %f0 0
	add.s	%f0 %f2 %f0
	lw	%r29 %r30 0
	jr	%r30
branching_b.3 :
	fbg	%f0 %f2 branching_b.5
	sub.s	%f0 %f2 %f3
	addi	%r0 %r1 l.25
	ilw.s	%r1 %f2 0
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f1 0
	fbg	%f1 %f3 tail_b.6
	sub.s	%f3 %f0 %f0
	mov.s	%f2 %f1
	j	sin3.0
tail_b.6 :
	mov.s	%f2 %f1
	mov.s	%f3 %f0
	j	sin3.0
branching_b.5 :
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f1 0
	fbg	%f1 %f2 tail_b.8
	sub.s	%f2 %f0 %f0
	mov.s	%f3 %f1
	j	sin3.0
tail_b.8 :
	mov.s	%f3 %f1
	mov.s	%f2 %f0
	j	sin3.0
