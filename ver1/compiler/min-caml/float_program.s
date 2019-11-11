#data_section
l.29 :	# 4.000000
	.long	0x40800000
l.26 :	# 1.000000
	.long	0x3f800000
l.24 :	# 1.500000
	.long	0x3fc00000
l.22 :	# 6.000000
	.long	0x40c00000
#text_section
program_start :
	addi	%r0 %r1 l.24 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.10 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 l.26 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.32 
	addi	%r0 %r1 l.29 
	ilw.s	%r1 %r1 0
	j	fble_cont.33 
fble_else.32 :
	addi	%r0 %r1 l.24 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.10 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
fble_cont.33 :
	ret
f.10 :
	fin	%f1
	addi	%r0 %r1 l.22 
	ilw.s	%r1 %f2 0
	div.s	%f1 %f2 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f1 %f0 %f0
	retl
