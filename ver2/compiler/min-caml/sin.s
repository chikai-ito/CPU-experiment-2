#data_section
l.12 :	# -1.000000
	.float	0xbf800000
l.11 :	# 0.166667
	.float	0x3e2aaaac
l.10 :	# 0.008333
	.float	0x3c088666
l.9 :	# 0.000196
	.float	0x394d64b6
l.8 :	# 0.500000
	.float	0x3f000000
l.7 :	# 0.041664
	.float	0x3d2aa789
l.6 :	# 0.001370
	.float	0x3ab38106
l.5 :	# 0.785398
	.float	0x3f490fdb
l.4 :	# 1.570796
	.float	0x3fc90fdb
l.3 :	# 1.000000
	.float	0x3f800000
l.2 :	# 0.000000
	.float	0x0
l.1 :	# 6.283185
	.float	0x40c90fdb
l.0 :	# 3.141593
	.float	0x40490fdb
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	addi	%r0 %r31 l.0
	ilw.s	%r31 %f3 0
	fin	%f4
	sw.s	%r26 %f4 0
sin.1 :
	addi	%r0 %r31 l.1
	ilw.s	%r31 %f0 0
	fbg	%f0 %f4 branching_b.1
	addi	%r0 %r31 l.1
	ilw.s	%r31 %f0 0
	sub.s	%f0 %f4 %f4
	j	sin.1
branching_b.1 :
	addi	%r0 %r31 l.2
	ilw.s	%r31 %f0 0
	fbge	%f4 %f0 branching_b.2
	addi	%r0 %r31 l.1
	ilw.s	%r31 %f0 0
	add.s	%f0 %f4 %f4
	j	sin.1
branching_b.2 :
	fbg	%f3 %f4 branching_b.6
	sub.s	%f3 %f4 %f1
	addi	%r0 %r31 l.12
	ilw.s	%r31 %f5 0
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f0 0
	fbg	%f0 %f1 branching_b.5
	sub.s	%f1 %f3 %f3
	addi	%r0 %r31 l.5
	ilw.s	%r31 %f0 0
	fbg	%f3 %f0 tail_b.3
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f2
	addi	%r0 %r31 l.9
	ilw.s	%r31 %f0 0
	mul.s	%f3 %f0 %f1
	addi	%r0 %r31 l.10
	ilw.s	%r31 %f0 0
	mul.s	%f3 %f0 %f6
	mul.s	%f2 %f1 %f0
	add.s	%f0 %f6 %f1
	addi	%r0 %r31 l.11
	ilw.s	%r31 %f0 0
	mul.s	%f3 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f0 0
	mul.s	%f3 %f0 %f0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f0 0
	sub.s	%f3 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	addi	%r0 %r31 l.6
	ilw.s	%r31 %f0 0
	addi	%r0 %r31 l.7
	ilw.s	%r31 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r31 l.8
	ilw.s	%r31 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f0 0
	mul.s	%f2 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	addi	%r0 %r31 l.5
	ilw.s	%r31 %f0 0
	fbg	%f1 %f0 tail_b.5
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f3
	addi	%r0 %r31 l.9
	ilw.s	%r31 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r31 l.10
	ilw.s	%r31 %f2 0
	mul.s	%f1 %f2 %f2
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f2 %f2
	addi	%r0 %r31 l.11
	ilw.s	%r31 %f0 0
	mul.s	%f1 %f0 %f6
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f6 %f2
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f0 0
	mul.s	%f1 %f0 %f1
	mul.s	%f3 %f2 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f0 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f2
	addi	%r0 %r31 l.6
	ilw.s	%r31 %f0 0
	addi	%r0 %r31 l.7
	ilw.s	%r31 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r31 l.8
	ilw.s	%r31 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f1 0
	mul.s	%f2 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f2 0
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f0 0
	fbg	%f0 %f4 branching_b.8
	sub.s	%f4 %f3 %f0
	addi	%r0 %r31 l.5
	ilw.s	%r31 %f1 0
	fbg	%f0 %f1 tail_b.7
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f5
	addi	%r0 %r31 l.9
	ilw.s	%r31 %f1 0
	mul.s	%f0 %f1 %f6
	addi	%r0 %r31 l.10
	ilw.s	%r31 %f1 0
	mul.s	%f0 %f1 %f3
	mul.s	%f5 %f6 %f1
	add.s	%f1 %f3 %f3
	addi	%r0 %r31 l.11
	ilw.s	%r31 %f1 0
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f3 %f3
	add.s	%f3 %f1 %f3
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f1 0
	mul.s	%f0 %f1 %f0
	mul.s	%f5 %f3 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	addi	%r0 %r31 l.6
	ilw.s	%r31 %f3 0
	addi	%r0 %r31 l.7
	ilw.s	%r31 %f0 0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f3
	addi	%r0 %r31 l.8
	ilw.s	%r31 %f0 0
	mul.s	%f1 %f3 %f3
	add.s	%f3 %f0 %f0
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f3 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	addi	%r0 %r31 l.5
	ilw.s	%r31 %f0 0
	fbg	%f4 %f0 tail_b.9
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f3
	addi	%r0 %r31 l.9
	ilw.s	%r31 %f0 0
	mul.s	%f4 %f0 %f1
	addi	%r0 %r31 l.10
	ilw.s	%r31 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r31 l.11
	ilw.s	%r31 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f0 0
	mul.s	%f4 %f0 %f5
	mul.s	%f3 %f1 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f2 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	addi	%r0 %r31 l.4
	ilw.s	%r31 %f0 0
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	addi	%r0 %r31 l.6
	ilw.s	%r31 %f0 0
	addi	%r0 %r31 l.7
	ilw.s	%r31 %f1 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r31 l.8
	ilw.s	%r31 %f1 0
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r31 l.3
	ilw.s	%r31 %f0 0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f2 %f0 %f0
postloop_b.0 :
	lw.s	%r26 %f4 0
return_point.0 :
	add	%r0 %r0 %r0
	ret
