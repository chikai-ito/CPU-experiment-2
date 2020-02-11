#data_section
stack_init.0 :
	.int	0xffffff0
l.12 :	# -1.000000
	.float	0xbf800000
l.11 :	# 0.000000
	.float	0x0
l.10 :	# 6.283185
	.float	0x40c90fdb
l.9 :	# 3.141593
	.float	0x40490fdb
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
	ilw	%r0 %r26 stack_init.0
	fin	%f0
	fin	%f1
	fin	%f2
	fin	%f3
	fin	%f4
	fin	%f5
	sw.s	%r26 %f2 -0
	sw.s	%r26 %f5 -8
	sw.s	%r26 %f4 -16
	sw.s	%r26 %f3 -24
	sw.s	%r26 %f1 -32
	sw	%r26 %r28 -40
	addi	%r26 %r26 -44
	jal	sin.0 
	addi	%r26 %r26 44
	lw	%r26 %r28 -40
	lw.s	%r26 %f1 -32
	sw.s	%r26 %f0 -40
	mov.s	%f1 %f0
	sw	%r26 %r28 -48
	addi	%r26 %r26 -52
	jal	cos.0 
	addi	%r26 %r26 52
	lw	%r26 %r28 -48
	lw.s	%r26 %f1 -40
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -24
	sw.s	%r26 %f0 -48
	mov.s	%f1 %f0
	sw	%r26 %r28 -56
	addi	%r26 %r26 -60
	jal	cos.0 
	addi	%r26 %r26 60
	lw	%r26 %r28 -56
	lw.s	%r26 %f1 -48
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -16
	sw.s	%r26 %f0 -56
	mov.s	%f1 %f0
	sw	%r26 %r28 -64
	addi	%r26 %r26 -68
	jal	sin.0 
	addi	%r26 %r26 68
	lw	%r26 %r28 -64
	lw.s	%r26 %f1 -56
	mul.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -8
	sw.s	%r26 %f0 -64
	mov.s	%f1 %f0
	sw	%r26 %r28 -72
	addi	%r26 %r26 -76
	jal	cos.0 
	addi	%r26 %r26 76
	lw	%r26 %r28 -72
	lw.s	%r26 %f1 -64
	add.s	%f0 %f1 %f0
	lw.s	%r26 %f1 -0
	sw.s	%r26 %f0 -72
	mov.s	%f1 %f0
	sw	%r26 %r28 -80
	addi	%r26 %r26 -84
	jal	sin.0 
	addi	%r26 %r26 84
	lw	%r26 %r28 -80
	lw.s	%r26 %f1 -72
	add.s	%f0 %f1 %f0
	mov.s	%f0 %r1
program_end :
	add	%r0 %r0 %r0
	ret
kernel_sin.0 :
	mul.s	%f0 %f0 %f2
	neg.s	%f2 %f2
	ilw.s	%r0 %f3 l.0
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.1
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f4
	mul.s	%f2 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.3
	mul.s	%f0 %f4 %f0
	mul.s	%f2 %f3 %f2
	add.s	%f2 %f0 %f0
	mul.s	%f1 %f0 %f0
	retl
kernel_cos.0 :
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f2 l.4
	ilw.s	%r0 %f3 l.5
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.6
	mul.s	%f0 %f2 %f2
	add.s	%f2 %f3 %f2
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f2 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f1 %f0 %f0
	retl
sin3.0 :
	ilw.s	%r0 %f2 l.7
	fbg	%f0 %f2 fble_else.0 
	j	kernel_sin.0
fble_else.0 :
	ilw.s	%r0 %f2 l.8
	sub.s	%f0 %f2 %f0
	j	kernel_cos.0
cos3.0 :
	ilw.s	%r0 %f2 l.7
	fbg	%f0 %f2 fble_else.1 
	j	kernel_cos.0
fble_else.1 :
	ilw.s	%r0 %f2 l.8
	sub.s	%f0 %f2 %f0
	j	kernel_sin.0
sin2.0 :
	ilw.s	%r0 %f2 l.9
	ilw.s	%r0 %f3 l.8
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f2 %f0
	j	sin3.0
fble_else.2 :
	j	sin3.0
cos2.0 :
	ilw.s	%r0 %f2 l.9
	ilw.s	%r0 %f3 l.8
	fbg	%f3 %f0 fble_else.3 
	sub.s	%f0 %f2 %f0
	neg.s	%f1 %f1
	j	cos3.0
fble_else.3 :
	j	cos3.0
sin.0 :
	ilw.s	%r0 %f1 l.9
	ilw.s	%r0 %f2 l.10
	fbg	%f2 %f0 fble_else.4 
	ilw.s	%r0 %f1 l.10
	sub.s	%f1 %f0 %f0
	j	sin.0
fble_else.4 :
	ilw.s	%r0 %f2 l.11
	fbge	%f0 %f2 fbl_else.0 
	ilw.s	%r0 %f1 l.10
	add.s	%f1 %f0 %f0
	j	sin.0
fbl_else.0 :
	fbg	%f1 %f0 fble_else.5 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.12
	j	sin2.0
fble_else.5 :
	ilw.s	%r0 %f1 l.3
	j	sin2.0
cos.0 :
	ilw.s	%r0 %f1 l.9
	ilw.s	%r0 %f2 l.10
	fbg	%f2 %f0 fble_else.6 
	ilw.s	%r0 %f1 l.10
	sub.s	%f1 %f0 %f0
	j	cos.0
fble_else.6 :
	ilw.s	%r0 %f2 l.11
	fbge	%f0 %f2 fbl_else.1 
	ilw.s	%r0 %f1 l.10
	add.s	%f1 %f0 %f0
	j	cos.0
fbl_else.1 :
	fbg	%f1 %f0 fble_else.7 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.12
	j	cos2.0
fble_else.7 :
	ilw.s	%r0 %f1 l.3
	j	cos2.0
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	bne     %r31 %r0 create_array_cont
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
min_caml_create_float_array :
	bl	%r1 %r0 program_end	
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	bne	%r31 %r0 create_float_array_cont
	retl
create_float_array_cont :
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop

