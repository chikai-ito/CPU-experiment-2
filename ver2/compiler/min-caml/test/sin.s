#data_section
l.12 :	# 3.141593
	.float	0x40490fdb
l.11 :	# -1.000000
	.float	0xbf800000
l.10 :	# 0.166667
	.float	0x3e2aaaac
l.9 :	# 0.008333
	.float	0x3c088666
l.8 :	# 0.000196
	.float	0x394d64b6
l.7 :	# 0.500000
	.float	0x3f000000
l.6 :	# 0.041664
	.float	0x3d2aa789
l.5 :	# 0.001370
	.float	0x3ab38106
l.4 :	# 0.785398
	.float	0x3f490fdb
l.3 :	# 1.570796
	.float	0x3fc90fdb
l.2 :	# 1.000000
	.float	0x3f800000
l.1 :	# 0.000000
	.float	0x0
l.0 :	# 6.283185
	.float	0x40c90fdb
#text_section
program_start :
	ilw.s	%r0 %f0 1
	mov	%r27 %r30
	addi	%r27 %r27 8
	ilw	%r0 %r1 sin.0
	sw	%r30 %r1 0
	sw.s	%r30 %f0 4
	fin	%f0
	sw	%r26 %r28 0
	lw	%r30 %r29 0
	addi	%r26 %r26 4	
	jalr	%r29
	addi	%r26 %r26 -4
	lw	%r26 %r28 0
	ret
sin.0 :
	lw.s	%r30 %f1 4
	ilw.s	%r0 %f2 l.0
	fbg	%f2 %f0 fble_else.0 
	ilw.s	%r0 %f1 l.0
	sub.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fble_else.0 :
	ilw.s	%r0 %f2 l.1
	fbge	%f0 %f2 fbl_else.0 
	ilw.s	%r0 %f1 l.0
	add.s	%f1 %f0 %f0
	lw	%r30 %r29 0
	jr	%r29
fbl_else.0 :
	fbg	%f1 %f0 fble_else.1 
	sub.s	%f1 %f0 %f0
	ilw.s	%r0 %f2 l.11
	ilw.s	%r0 %f3 l.3
	fbg	%f3 %f0 fble_else.2 
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.3 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.9
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.3 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.5
	ilw.s	%r0 %f3 l.6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.2 :
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.4 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.9
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.4 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.5
	ilw.s	%r0 %f3 l.6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.1 :
	ilw.s	%r0 %f2 l.2
	ilw.s	%r0 %f3 l.3
	fbg	%f3 %f0 fble_else.5 
	sub.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.6 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.9
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.6 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.5
	ilw.s	%r0 %f3 l.6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.5 :
	ilw.s	%r0 %f1 l.4
	fbg	%f0 %f1 fble_else.7 
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f1
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f3 %f3
	ilw.s	%r0 %f4 l.9
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.10
	mul.s	%f0 %f4 %f4
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f4 %f3
	ilw.s	%r0 %f4 l.2
	mul.s	%f0 %f4 %f0
	mul.s	%f1 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	retl
fble_else.7 :
	ilw.s	%r0 %f1 l.3
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.5
	ilw.s	%r0 %f3 l.6
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.7
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.2
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
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
