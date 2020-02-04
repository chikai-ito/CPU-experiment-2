#data_section
l.37 :	# -1.000000
	.float	0xbf800000
l.24 :	# 0.166667
	.float	0x3e2aaaac
l.22 :	# 0.008333
	.float	0x3c088666
l.20 :	# 0.000196
	.float	0x394d64b6
l.17 :	# 0.500000
	.float	0x3f000000
l.15 :	# 0.041664
	.float	0x3d2aa789
l.13 :	# 0.001370
	.float	0x3ab38106
l.10 :	# 0.785398
	.float	0x3f490fdb
l.8 :	# 1.570796
	.float	0x3fc90fdb
l.6 :	# 1.000000
	.float	0x3f800000
l.4 :	# 0.000000
	.float	0x0
l.2 :	# 6.283185
	.float	0x40c90fdb
l.0 :	# 3.141593
	.float	0x40490fdb
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	addi	%r0 %r1 l.0
	ilw.s	%r1 %f4 0
	fin	%f2
	sw.s	%r26 %f2 0
sin.1 :
	addi	%r0 %r1 l.2
	ilw.s	%r1 %f0 0
	fbg	%f0 %f2 branching_b.1
	addi	%r0 %r1 l.2
	ilw.s	%r1 %f0 0
	sub.s	%f0 %f2 %f2
	j	sin.1
branching_b.1 :
	addi	%r0 %r1 l.4
	ilw.s	%r1 %f0 0
	fbge	%f2 %f0 branching_b.2
	addi	%r0 %r1 l.2
	ilw.s	%r1 %f0 0
	add.s	%f0 %f2 %f2
	j	sin.1
branching_b.2 :
	fbg	%f4 %f2 branching_b.6
	sub.s	%f4 %f2 %f0
	addi	%r0 %r1 l.37
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f1 0
	fbg	%f1 %f0 branching_b.5
	sub.s	%f0 %f4 %f4
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f0 0
	fbg	%f4 %f0 tail_b.3
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f5
	addi	%r0 %r1 l.20
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f6
	addi	%r0 %r1 l.22
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f1
	mul.s	%f5 %f6 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f1 0
	mul.s	%f4 %f1 %f1
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f0 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.3 :
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f0 0
	sub.s	%f4 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.5 :
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 tail_b.5
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f5
	addi	%r0 %r1 l.20
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f4
	addi	%r0 %r1 l.22
	ilw.s	%r1 %f1 0
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f4 %f4
	add.s	%f4 %f1 %f1
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f4
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f4 %f1
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f4 0
	mul.s	%f0 %f4 %f0
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.5 :
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f1 0
	sub.s	%f0 %f1 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f4
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f0 0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f1 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f1 0
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.6 :
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f3 0
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f0 0
	fbg	%f0 %f2 branching_b.8
	sub.s	%f2 %f4 %f1
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f0 0
	fbg	%f1 %f0 tail_b.7
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f4
	addi	%r0 %r1 l.20
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.22
	ilw.s	%r1 %f5 0
	mul.s	%f1 %f5 %f5
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f5 %f5
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f0 %f0
	mul.s	%f4 %f5 %f5
	add.s	%f5 %f0 %f0
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f5 0
	mul.s	%f1 %f5 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.7 :
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f0 0
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f4
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f4 %f4
	add.s	%f4 %f0 %f4
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f1 %f4 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
branching_b.8 :
	addi	%r0 %r1 l.10
	ilw.s	%r1 %f0 0
	fbg	%f2 %f0 tail_b.9
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f4
	addi	%r0 %r1 l.20
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	addi	%r0 %r1 l.22
	ilw.s	%r1 %f1 0
	mul.s	%f2 %f1 %f1
	mul.s	%f4 %f0 %f0
	add.s	%f0 %f1 %f1
	addi	%r0 %r1 l.24
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f1
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f0 0
	mul.s	%f2 %f0 %f0
	mul.s	%f4 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f3 %f0 %f0
	j	postloop_b.0
tail_b.9 :
	addi	%r0 %r1 l.8
	ilw.s	%r1 %f0 0
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	addi	%r0 %r1 l.13
	ilw.s	%r1 %f0 0
	addi	%r0 %r1 l.15
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r1 l.17
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	addi	%r0 %r1 l.6
	ilw.s	%r1 %f4 0
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f4 %f0
	mul.s	%f3 %f0 %f0
postloop_b.0 :
	lw.s	%r26 %f2 0
return_point.0 :
	add	%r0 %r0 %r0
	ret
