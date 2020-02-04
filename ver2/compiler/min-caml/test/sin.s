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
	ilw.s	%r0 %f3 l.0
	fin	%f9
	fin	%f7
	fin	%f2
	fin	%f6
	fin	%f5
	fin	%f4
	sw.s	%r26 %f9 0
sin.3 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f9 branching_b.1
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f9 %f9
	j	sin.3
branching_b.1 :
	ilw.s	%r0 %f0 l.2
	fbge	%f9 %f0 branching_b.2
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f9 %f9
	j	sin.3
branching_b.2 :
	fbg	%f3 %f9 branching_b.6
	sub.s	%f3 %f9 %f11
	ilw.s	%r0 %f10 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f11 branching_b.5
	sub.s	%f11 %f3 %f11
	ilw.s	%r0 %f0 l.5
	fbg	%f11 %f0 tail_b.3
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.9
	mul.s	%f11 %f0 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f11 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f11 %f0 %f0
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f11 %f1 %f1
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f8
	j	postloop_b.0
tail_b.3 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f11 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f8
	j	postloop_b.0
branching_b.5 :
	ilw.s	%r0 %f0 l.5
	fbg	%f11 %f0 tail_b.5
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f11 %f0 %f8
	ilw.s	%r0 %f0 l.10
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.11
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.3
	mul.s	%f11 %f0 %f0
	mul.s	%f1 %f8 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f8
	j	postloop_b.0
tail_b.5 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f11 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.8
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f8 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f10 %f0 %f8
	j	postloop_b.0
branching_b.6 :
	ilw.s	%r0 %f8 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f9 branching_b.8
	sub.s	%f9 %f3 %f10
	ilw.s	%r0 %f0 l.5
	fbg	%f10 %f0 tail_b.7
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.9
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f10 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f8
	j	postloop_b.0
tail_b.7 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f10 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f8
	j	postloop_b.0
branching_b.8 :
	ilw.s	%r0 %f0 l.5
	fbg	%f9 %f0 tail_b.9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.9
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.11
	mul.s	%f9 %f1 %f1
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f9 %f0 %f0
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f8
	j	postloop_b.0
tail_b.9 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f9 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f8
postloop_b.0 :
	lw.s	%r26 %f9 0
preloop_b.1 :
	sw.s	%r26 %f7 4
cos.3 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f7 branching_b.10
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f7 %f7
	j	cos.3
branching_b.10 :
	ilw.s	%r0 %f0 l.2
	fbge	%f7 %f0 branching_b.11
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f7 %f7
	j	cos.3
branching_b.11 :
	fbg	%f3 %f7 branching_b.15
	sub.s	%f3 %f7 %f1
	ilw.s	%r0 %f9 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.14
	sub.s	%f1 %f3 %f9
	ilw.s	%r0 %f1 l.3
	ilw.s	%r0 %f0 l.5
	fbg	%f9 %f0 tail_b.13
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f9 l.7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f9 %f9
	add.s	%f9 %f0 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.1
tail_b.13 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f9 %f0 %f11
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.9
	mul.s	%f11 %f0 %f10
	ilw.s	%r0 %f0 l.10
	mul.s	%f11 %f0 %f12
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f12 %f10
	ilw.s	%r0 %f0 l.11
	mul.s	%f11 %f0 %f12
	mul.s	%f9 %f10 %f0
	add.s	%f0 %f12 %f0
	ilw.s	%r0 %f10 l.3
	mul.s	%f11 %f10 %f10
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f10 %f0
	mul.s	%f1 %f0 %f0
	j	postloop_b.1
branching_b.14 :
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.15
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.1
tail_b.15 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.9
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f10 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f10 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f12
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f0 %f1
	mul.s	%f11 %f12 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.1
branching_b.15 :
	ilw.s	%r0 %f10 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f7 branching_b.17
	sub.s	%f7 %f3 %f1
	ilw.s	%r0 %f10 l.12
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.17
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.8
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
	j	postloop_b.1
tail_b.17 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f11
	mul.s	%f11 %f11 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.9
	mul.s	%f11 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f11 %f0 %f12
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f12 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f11 %f0 %f0
	mul.s	%f9 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f11 %f0 %f11
	mul.s	%f9 %f1 %f0
	add.s	%f0 %f11 %f0
	mul.s	%f10 %f0 %f0
	j	postloop_b.1
branching_b.17 :
	ilw.s	%r0 %f0 l.5
	fbg	%f7 %f0 tail_b.19
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f9 l.7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	ilw.s	%r0 %f9 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f9 %f0
	mul.s	%f10 %f0 %f0
	j	postloop_b.1
tail_b.19 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f7 %f0 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f11
	ilw.s	%r0 %f0 l.9
	mul.s	%f9 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f9 %f0 %f0
	mul.s	%f11 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f9 %f1 %f1
	mul.s	%f11 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f10 %f0 %f0
postloop_b.1 :
	lw.s	%r26 %f7 4
preloop_b.2 :
	add.s	%f0 %f8 %f1
	sw.s	%r26 %f6 8
cos.2 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f6 branching_b.19
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f6 %f6
	j	cos.2
branching_b.19 :
	ilw.s	%r0 %f0 l.2
	fbge	%f6 %f0 branching_b.20
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f6 %f6
	j	cos.2
branching_b.20 :
	fbg	%f3 %f6 branching_b.24
	sub.s	%f3 %f6 %f8
	ilw.s	%r0 %f7 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f8 branching_b.23
	sub.s	%f8 %f3 %f7
	ilw.s	%r0 %f9 l.3
	ilw.s	%r0 %f0 l.5
	fbg	%f7 %f0 tail_b.23
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f7 l.7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.8
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.2
tail_b.23 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f7 %f0 %f7
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.9
	mul.s	%f7 %f0 %f8
	ilw.s	%r0 %f0 l.10
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f8
	ilw.s	%r0 %f0 l.11
	mul.s	%f7 %f0 %f0
	mul.s	%f10 %f8 %f8
	add.s	%f8 %f0 %f0
	ilw.s	%r0 %f8 l.3
	mul.s	%f7 %f8 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.2
branching_b.23 :
	ilw.s	%r0 %f0 l.5
	fbg	%f8 %f0 tail_b.25
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f9 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f8 %f9 %f9
	add.s	%f9 %f0 %f0
	ilw.s	%r0 %f9 l.8
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f9 %f9
	ilw.s	%r0 %f0 l.3
	mul.s	%f8 %f9 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.2
tail_b.25 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f8 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.9
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f8 l.10
	mul.s	%f10 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f8
	ilw.s	%r0 %f0 l.11
	mul.s	%f10 %f0 %f11
	mul.s	%f9 %f8 %f0
	add.s	%f0 %f11 %f8
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f0 %f0
	mul.s	%f9 %f8 %f8
	add.s	%f8 %f0 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.2
branching_b.24 :
	ilw.s	%r0 %f9 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f6 branching_b.26
	sub.s	%f6 %f3 %f8
	ilw.s	%r0 %f7 l.12
	ilw.s	%r0 %f0 l.5
	fbg	%f8 %f0 tail_b.27
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f8 l.7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.3
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.2
tail_b.27 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f8 %f0 %f10
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.9
	mul.s	%f10 %f0 %f0
	ilw.s	%r0 %f8 l.10
	mul.s	%f10 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f0
	ilw.s	%r0 %f8 l.11
	mul.s	%f10 %f8 %f8
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f8 %f11
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f0 %f8
	mul.s	%f9 %f11 %f0
	add.s	%f0 %f8 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.2
branching_b.26 :
	ilw.s	%r0 %f0 l.5
	fbg	%f6 %f0 tail_b.29
	mul.s	%f6 %f6 %f0
	neg.s	%f0 %f8
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f7 l.7
	mul.s	%f8 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.8
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f7
	ilw.s	%r0 %f0 l.3
	mul.s	%f8 %f7 %f7
	add.s	%f7 %f0 %f0
	mul.s	%f9 %f0 %f0
	j	postloop_b.2
tail_b.29 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f6 %f0 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f10
	ilw.s	%r0 %f0 l.9
	mul.s	%f8 %f0 %f0
	ilw.s	%r0 %f7 l.10
	mul.s	%f8 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.11
	mul.s	%f8 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f8 %f7 %f7
	mul.s	%f10 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f9 %f0 %f0
postloop_b.2 :
	lw.s	%r26 %f6 8
preloop_b.3 :
	add.s	%f0 %f1 %f6
	sw.s	%r26 %f5 12
sin.2 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f5 branching_b.28
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f5 %f5
	j	sin.2
branching_b.28 :
	ilw.s	%r0 %f0 l.2
	fbge	%f5 %f0 branching_b.29
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f5 %f5
	j	sin.2
branching_b.29 :
	fbg	%f3 %f5 branching_b.33
	sub.s	%f3 %f5 %f1
	ilw.s	%r0 %f8 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.32
	sub.s	%f1 %f3 %f9
	ilw.s	%r0 %f0 l.5
	fbg	%f9 %f0 tail_b.33
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f9 %f0 %f0
	ilw.s	%r0 %f7 l.10
	mul.s	%f9 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.11
	mul.s	%f9 %f0 %f0
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f9 %f7 %f7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
tail_b.33 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f9 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
branching_b.32 :
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.35
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f9
	ilw.s	%r0 %f0 l.9
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f7 l.10
	mul.s	%f1 %f7 %f7
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.11
	mul.s	%f1 %f0 %f0
	mul.s	%f9 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f1 %f7 %f1
	mul.s	%f9 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
tail_b.35 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f7 l.7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.8
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
branching_b.33 :
	ilw.s	%r0 %f8 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f5 branching_b.35
	sub.s	%f5 %f3 %f10
	ilw.s	%r0 %f0 l.5
	fbg	%f10 %f0 tail_b.37
	mul.s	%f10 %f10 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.9
	mul.s	%f10 %f0 %f9
	ilw.s	%r0 %f0 l.10
	mul.s	%f10 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f10 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f9
	ilw.s	%r0 %f0 l.3
	mul.s	%f10 %f0 %f1
	mul.s	%f7 %f9 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
tail_b.37 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f10 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f7 l.7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f7
	ilw.s	%r0 %f0 l.8
	mul.s	%f1 %f7 %f7
	add.s	%f7 %f0 %f0
	ilw.s	%r0 %f7 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
branching_b.35 :
	ilw.s	%r0 %f0 l.5
	fbg	%f5 %f0 tail_b.39
	mul.s	%f5 %f5 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f0 l.9
	mul.s	%f5 %f0 %f0
	ilw.s	%r0 %f1 l.10
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.11
	mul.s	%f5 %f1 %f1
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f5 %f0 %f0
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.3
tail_b.39 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f5 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f7
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f7 %f0 %f0
	add.s	%f0 %f1 %f1
	ilw.s	%r0 %f0 l.3
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f0 %f0
	mul.s	%f8 %f0 %f0
postloop_b.3 :
	lw.s	%r26 %f5 12
preloop_b.4 :
	mul.s	%f0 %f6 %f6
	sw.s	%r26 %f4 16
cos.1 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f4 branching_b.37
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f4 %f4
	j	cos.1
branching_b.37 :
	ilw.s	%r0 %f0 l.2
	fbge	%f4 %f0 branching_b.38
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f4 %f4
	j	cos.1
branching_b.38 :
	fbg	%f3 %f4 branching_b.42
	sub.s	%f3 %f4 %f5
	ilw.s	%r0 %f0 l.12
	ilw.s	%r0 %f1 l.4
	fbg	%f1 %f5 branching_b.41
	sub.s	%f5 %f3 %f1
	ilw.s	%r0 %f8 l.3
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.43
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f5 l.7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.4
tail_b.43 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f1
	neg.s	%f1 %f5
	ilw.s	%r0 %f1 l.9
	mul.s	%f0 %f1 %f7
	ilw.s	%r0 %f1 l.10
	mul.s	%f0 %f1 %f1
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f1 %f9
	ilw.s	%r0 %f1 l.11
	mul.s	%f0 %f1 %f7
	mul.s	%f5 %f9 %f1
	add.s	%f1 %f7 %f1
	ilw.s	%r0 %f7 l.3
	mul.s	%f0 %f7 %f7
	mul.s	%f5 %f1 %f0
	add.s	%f0 %f7 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.4
branching_b.41 :
	ilw.s	%r0 %f1 l.5
	fbg	%f5 %f1 tail_b.45
	mul.s	%f5 %f5 %f1
	neg.s	%f1 %f7
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f5 l.7
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f5 %f1
	ilw.s	%r0 %f5 l.8
	mul.s	%f7 %f1 %f1
	add.s	%f1 %f5 %f5
	ilw.s	%r0 %f1 l.3
	mul.s	%f7 %f5 %f5
	add.s	%f5 %f1 %f1
	mul.s	%f0 %f1 %f0
	j	postloop_b.4
tail_b.45 :
	ilw.s	%r0 %f1 l.4
	sub.s	%f5 %f1 %f8
	mul.s	%f8 %f8 %f1
	neg.s	%f1 %f5
	ilw.s	%r0 %f1 l.9
	mul.s	%f8 %f1 %f7
	ilw.s	%r0 %f1 l.10
	mul.s	%f8 %f1 %f1
	mul.s	%f5 %f7 %f7
	add.s	%f7 %f1 %f7
	ilw.s	%r0 %f1 l.11
	mul.s	%f8 %f1 %f9
	mul.s	%f5 %f7 %f1
	add.s	%f1 %f9 %f1
	ilw.s	%r0 %f7 l.3
	mul.s	%f8 %f7 %f7
	mul.s	%f5 %f1 %f1
	add.s	%f1 %f7 %f1
	mul.s	%f0 %f1 %f0
	j	postloop_b.4
branching_b.42 :
	ilw.s	%r0 %f8 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f4 branching_b.44
	sub.s	%f4 %f3 %f0
	ilw.s	%r0 %f7 l.12
	ilw.s	%r0 %f1 l.5
	fbg	%f0 %f1 tail_b.47
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f5
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f5 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.4
tail_b.47 :
	ilw.s	%r0 %f1 l.4
	sub.s	%f0 %f1 %f8
	mul.s	%f8 %f8 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f8 %f0 %f9
	ilw.s	%r0 %f0 l.10
	mul.s	%f8 %f0 %f5
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f5 %f5
	ilw.s	%r0 %f0 l.11
	mul.s	%f8 %f0 %f0
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f9
	ilw.s	%r0 %f0 l.3
	mul.s	%f8 %f0 %f5
	mul.s	%f1 %f9 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f7 %f0 %f0
	j	postloop_b.4
branching_b.44 :
	ilw.s	%r0 %f0 l.5
	fbg	%f4 %f0 tail_b.49
	mul.s	%f4 %f4 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f5 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f1 %f5 %f5
	add.s	%f5 %f0 %f0
	ilw.s	%r0 %f5 l.8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	ilw.s	%r0 %f5 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f5 %f0
	mul.s	%f8 %f0 %f0
	j	postloop_b.4
tail_b.49 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f4 %f0 %f9
	mul.s	%f9 %f9 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f1 l.9
	mul.s	%f9 %f1 %f5
	ilw.s	%r0 %f1 l.10
	mul.s	%f9 %f1 %f7
	mul.s	%f0 %f5 %f1
	add.s	%f1 %f7 %f5
	ilw.s	%r0 %f1 l.11
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f5 %f5
	add.s	%f5 %f1 %f5
	ilw.s	%r0 %f1 l.3
	mul.s	%f9 %f1 %f1
	mul.s	%f0 %f5 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f8 %f0 %f0
postloop_b.4 :
	lw.s	%r26 %f4 16
preloop_b.5 :
	add.s	%f0 %f6 %f4
	sw.s	%r26 %f2 20
sin.1 :
	ilw.s	%r0 %f0 l.1
	fbg	%f0 %f2 branching_b.46
	ilw.s	%r0 %f0 l.1
	sub.s	%f0 %f2 %f2
	j	sin.1
branching_b.46 :
	ilw.s	%r0 %f0 l.2
	fbge	%f2 %f0 branching_b.47
	ilw.s	%r0 %f0 l.1
	add.s	%f0 %f2 %f2
	j	sin.1
branching_b.47 :
	fbg	%f3 %f2 branching_b.51
	sub.s	%f3 %f2 %f1
	ilw.s	%r0 %f5 l.12
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f1 branching_b.50
	sub.s	%f1 %f3 %f3
	ilw.s	%r0 %f0 l.5
	fbg	%f3 %f0 tail_b.53
	mul.s	%f3 %f3 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.9
	mul.s	%f3 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f3 %f0 %f0
	mul.s	%f6 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f3 %f0 %f7
	mul.s	%f6 %f1 %f0
	add.s	%f0 %f7 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f3 %f1 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
tail_b.53 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f3 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f3 l.7
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.8
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
branching_b.50 :
	ilw.s	%r0 %f0 l.5
	fbg	%f1 %f0 tail_b.55
	mul.s	%f1 %f1 %f0
	neg.s	%f0 %f6
	ilw.s	%r0 %f0 l.9
	mul.s	%f1 %f0 %f0
	ilw.s	%r0 %f3 l.10
	mul.s	%f1 %f3 %f3
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.11
	mul.s	%f1 %f0 %f0
	mul.s	%f6 %f3 %f3
	add.s	%f3 %f0 %f0
	ilw.s	%r0 %f3 l.3
	mul.s	%f1 %f3 %f1
	mul.s	%f6 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
tail_b.55 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f1 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f1 l.6
	ilw.s	%r0 %f0 l.7
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
branching_b.51 :
	ilw.s	%r0 %f5 l.3
	ilw.s	%r0 %f0 l.4
	fbg	%f0 %f2 branching_b.53
	sub.s	%f2 %f3 %f7
	ilw.s	%r0 %f0 l.5
	fbg	%f7 %f0 tail_b.57
	mul.s	%f7 %f7 %f0
	neg.s	%f0 %f1
	ilw.s	%r0 %f0 l.9
	mul.s	%f7 %f0 %f3
	ilw.s	%r0 %f0 l.10
	mul.s	%f7 %f0 %f6
	mul.s	%f1 %f3 %f0
	add.s	%f0 %f6 %f0
	ilw.s	%r0 %f3 l.11
	mul.s	%f7 %f3 %f3
	mul.s	%f1 %f0 %f0
	add.s	%f0 %f3 %f3
	ilw.s	%r0 %f0 l.3
	mul.s	%f7 %f0 %f6
	mul.s	%f1 %f3 %f0
	add.s	%f0 %f6 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
tail_b.57 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f7 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.8
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
branching_b.53 :
	ilw.s	%r0 %f0 l.5
	fbg	%f2 %f0 tail_b.59
	mul.s	%f2 %f2 %f0
	neg.s	%f0 %f3
	ilw.s	%r0 %f0 l.9
	mul.s	%f2 %f0 %f1
	ilw.s	%r0 %f0 l.10
	mul.s	%f2 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f1
	ilw.s	%r0 %f0 l.11
	mul.s	%f2 %f0 %f0
	mul.s	%f3 %f1 %f1
	add.s	%f1 %f0 %f0
	ilw.s	%r0 %f1 l.3
	mul.s	%f2 %f1 %f1
	mul.s	%f3 %f0 %f0
	add.s	%f0 %f1 %f0
	mul.s	%f5 %f0 %f0
	j	postloop_b.5
tail_b.59 :
	ilw.s	%r0 %f0 l.4
	sub.s	%f2 %f0 %f0
	mul.s	%f0 %f0 %f0
	neg.s	%f0 %f0
	ilw.s	%r0 %f3 l.6
	ilw.s	%r0 %f1 l.7
	mul.s	%f0 %f3 %f3
	add.s	%f3 %f1 %f1
	ilw.s	%r0 %f3 l.8
	mul.s	%f0 %f1 %f1
	add.s	%f1 %f3 %f1
	ilw.s	%r0 %f3 l.3
	mul.s	%f0 %f1 %f0
	add.s	%f0 %f3 %f0
	mul.s	%f5 %f0 %f0
postloop_b.5 :
	lw.s	%r26 %f2 20
tail_b.60 :
	add.s	%f0 %f4 %f0
	mov.s	%f0 %f0
return_point.0 :
	add	%r0 %r0 %r0
	ret
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
