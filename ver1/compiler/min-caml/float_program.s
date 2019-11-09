#data_section
l.28 :	# 4.000000
	.long	0x40800000
l.25 :	# 1.000000
	.long	0x3f800000
l.23 :	# 1.500000
	.long	0x3fc00000
l.21 :	# 0.166667
	.long	0x3e2aaaab
#text_section
program_start b :
	addi	%r0 %r1 l.23 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.10 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 l.25 
	ilw.s	%r1 %f1 0
	fbg	%f0 %f1 fble_else.31 
	addi	%r0 %r1 l.28 
	ilw.s	%r1 %r1 0
	j	fble_cont.32 
fble_else.31 :
	addi	%r0 %r1 l.23 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.10 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
fble_cont.32 :
	ret
f.10 :
	addi	%r0 %r1 l.21 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f1
	mul.s	%f1 %f0 %f1
	mul.s	%f1 %f0 %f0
	retl
