#data_section
#text_section
program_start:
	addi	%r0 1 %r1
	addi	%r0 2 %r2
	addi	%r0 3 %r3
	addi	%r0 4 %r4
	addi	%r0 5 %r5
	addi	%r0 6 %r6
	addi	%r0 7 %r7
	addi	%r0 8 %r8
	sw	%r26 %r28 4
	addi	%r26 8 %r26	
	jal	f.18
	addi	%r0 8 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	ret
g.15:
	add	%r1 %r2 %r1
	retl
f.18:
	sw	%r26 %r8 0
	sw	%r26 %r7 4
	sw	%r26 %r6 8
	sw	%r26 %r5 12
	sw	%r26 %r4 16
	sw	%r26 %r3 20
	sw	%r26 %r28 28
	addi	%r26 32 %r26	
	jal	g.15
	addi	%r0 32 %r25
	sub	%r26 %r25 %r26
	lw	%r26 %r28 28
	lw	%r26 %r2 20
	add	%r1 %r2 %r1
	lw	%r26 %r2 16
	add	%r1 %r2 %r1
	lw	%r26 %r2 12
	add	%r1 %r2 %r1
	lw	%r26 %r2 8
	add	%r1 %r2 %r1
	lw	%r26 %r2 4
	add	%r1 %r2 %r1
	lw	%r26 %r2 0
	add	%r1 %r2 %r1
	retl
