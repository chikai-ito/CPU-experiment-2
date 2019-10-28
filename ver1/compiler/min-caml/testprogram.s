#data_section
#text_section
program_start:
	addi	%r0 5 %r1
	addi	%r0 7 %r2
	sw	%r26 %r28 4
	addi	%r26 8 %r26	
	jal	g.14
	addi	%r0 8 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r0 8 %r2
	addi	%r0 9 %r3
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 8 %r26	
	jal	g.14
	addi	%r0 8 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	add	%r2 %r1 %r1
	addi	%r0 13 %r2
	addi	%r0 17 %r3
	sw	%r26 %r1 4
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 12
	addi	%r26 16 %r26	
	jal	g.14
	addi	%r0 16 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
	add	%r2 %r1 %r1
	ret
f.27:
	addi	%r1 2 %r1
	retl
g.14:
	sw	%r26 %r28 4
	addi	%r26 8 %r26	
	jal	f.27
	addi	%r0 8 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	addi	%r1 3 %r1
	retl
