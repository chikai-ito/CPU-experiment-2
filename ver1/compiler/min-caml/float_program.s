#data_section
l.21:	# 2.100000
	.long	0xcccccccd
	.long	0x4000cccc
l.19:	# 1.100000
	.long	0x9999999a
	.long	0x3ff19999
#text_section
program_start:
	addi	%r0 10 %r1
	addi	%r0 l.19 %r2
	ld.s	%r2 %f0 0
	addi	%r0 l.21 %r2
	ld.s	%r2 %f2 0
	sw	%r26 %r28 4
	addi	%r26 8 %r26	
	jal	f.8
	addi	%r0 8 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	ret
f.8:
	addi	%r0 0 %r25
	bne	%r1 %r25 be_else.24
	retl
be_else.24:
	addi	%r0 1 %r25
	sub	%r1 %r25 %r1
	add.s	%f0 %f2 %f0
	mov.s	%f2 %f30
	mov.s	%f3 %f31
	mov.s	%f0 %f2
	mov.s	%f1 %f3
	mov.s	%f30 %f0
	mov.s	%f31 %f1
	j	f.8
