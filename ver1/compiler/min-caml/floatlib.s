#data_section
l.243 :	# 0.333333
	.long	0x3eaaaaab
l.241 :	# 0.200000
	.long	0x3e4ccccd
l.239 :	# 0.142857
	.long	0x3e124925
l.237 :	# 0.111111
	.long	0x3de38e39
l.234 :	# 0.500000
	.long	0x3f000000
l.232 :	# 0.041667
	.long	0x3d2aaaab
l.230 :	# 0.001389
	.long	0x3ab60b61
l.228 :	# 0.000025
	.long	0x37d00d01
l.226 :	# 0.166667
	.long	0x3e2aaaab
l.224 :	# 0.008333
	.long	0x3c088889
l.222 :	# 0.000198
	.long	0x39500d01
l.220 :	# 0.000003
	.long	0x3638ef1d
l.218 :	# 1.000000
	.long	0x3f800000
#text_section
program_start b :
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f0 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	sin.106 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f1 0
	sw	%r26 %f0 0
	mov.s	%f1 %f0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	cos.108 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %f1 0
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f1 0
	sw	%r26 %f0 8
	mov.s	%f1 %f0
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	actan.110 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %f1 8
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f1 0
	sw	%r26 %f0 16
	mov.s	%f1 %f0
	sw	%r26 %r28 28
	addi	%r26 %r26 32
	jal	fhalf.112 
	addi	%r0 %r25 32
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %f1 16
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f1 0
	sw	%r26 %f0 24
	mov.s	%f1 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fsqr.114 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %f1 24
	add.s	%f1 %f0 %r1
	ret
fpow.103 :
	addi	%r0 %r25 0
	bne	%r1 %r25 be_else.289 
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f0 0
	retl
be_else.289 :
	addi	%r0 %r25 1
	sub	%r1 %r25 %r1
	sw	%r26 %f0 0
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	fpow.103 
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %f1 0
	mul.s	%f1 %f0 %f0
	retl
sin.106 :
	addi	%r0 %r1 l.220 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	sw	%r26 %f0 0
	sw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.103 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.222 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	lw	%r26 %f2 0
	sw	%r26 %f0 16
	sw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.103 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.224 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	lw	%r26 %f2 0
	sw	%r26 %f0 32
	sw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.103 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.226 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	lw	%r26 %f2 0
	sw	%r26 %f0 48
	sw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.103 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw	%r26 %f1 0
	add.s	%f0 %f1 %f0
	retl
cos.108 :
	addi	%r0 %r1 l.228 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 8
	sw	%r26 %f0 0
	sw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.103 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.230 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 6
	lw	%r26 %f2 0
	sw	%r26 %f0 16
	sw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.103 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.232 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 4
	lw	%r26 %f2 0
	sw	%r26 %f0 32
	sw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.103 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.234 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 2
	lw	%r26 %f2 0
	sw	%r26 %f0 48
	sw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.103 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.218 
	ilw.s	%r1 %f1 0
	add.s	%f0 %f1 %f0
	retl
actan.110 :
	addi	%r0 %r1 l.237 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 9
	sw	%r26 %f0 0
	sw	%r26 %f1 8
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	fpow.103 
	addi	%r0 %r25 24
	sub	%r26 %r25 %r26
	lw	%r26 %r28 20
	lw	%r26 %f1 8
	mul.s	%f1 %f0 %f0
	addi	%r0 %r1 l.239 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 7
	lw	%r26 %f2 0
	sw	%r26 %f0 16
	sw	%r26 %f1 24
	mov.s	%f2 %f0
	sw	%r26 %r28 36
	addi	%r26 %r26 40
	jal	fpow.103 
	addi	%r0 %r25 40
	sub	%r26 %r25 %r26
	lw	%r26 %r28 36
	lw	%r26 %f1 24
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 16
	sub.s	%f1 %f0 %f0
	addi	%r0 %r1 l.241 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 5
	lw	%r26 %f2 0
	sw	%r26 %f0 32
	sw	%r26 %f1 40
	mov.s	%f2 %f0
	sw	%r26 %r28 52
	addi	%r26 %r26 56
	jal	fpow.103 
	addi	%r0 %r25 56
	sub	%r26 %r25 %r26
	lw	%r26 %r28 52
	lw	%r26 %f1 40
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 32
	add.s	%f1 %f0 %f0
	addi	%r0 %r1 l.243 
	ilw.s	%r1 %f1 0
	addi	%r0 %r1 3
	lw	%r26 %f2 0
	sw	%r26 %f0 48
	sw	%r26 %f1 56
	mov.s	%f2 %f0
	sw	%r26 %r28 68
	addi	%r26 %r26 72
	jal	fpow.103 
	addi	%r0 %r25 72
	sub	%r26 %r25 %r26
	lw	%r26 %r28 68
	lw	%r26 %f1 56
	mul.s	%f1 %f0 %f0
	lw	%r26 %f1 48
	sub.s	%f1 %f0 %f0
	lw	%r26 %f1 0
	add.s	%f0 %f1 %f0
	retl
fhalf.112 :
	addi	%r0 %r1 l.234 
	ilw.s	%r1 %f1 0
	mul.s	%f1 %f0 %f0
	retl
fsqr.114 :
	mul.s	%f0 %f0 %f0
	retl
