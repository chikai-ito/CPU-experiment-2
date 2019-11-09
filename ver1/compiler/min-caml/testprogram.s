#data_section
#text_section
program_start b :
	addi	%r0 %r1 4
	addi	%r0 %r2 9
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.9 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	ret
h.17 :
	lw	%r24 %r2 4
	mul	%r2 %r1 %r1
	retl
k.19 :
	lw	%r24 %r2 4
	add	%r2 %r1 %r1
	retl
l.21 :
	lw	%r24 %r2 4
	add	%r1 %r2 %r1
	retl
g.14 :
	lw	%r24 %r1 8
	lw	%r24 %r2 4
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r3 h.17 
	sw	%r24 %r3 0
	sw	%r24 %r1 4
	mov	%r27 %r3
	addi	%r27 %r27 8
	addi	%r0 %r4 k.19 
	sw	%r3 %r4 0
	sw	%r3 %r2 4
	mov	%r27 %r4
	addi	%r27 %r27 8
	addi	%r0 %r5 l.21 
	sw	%r4 %r5 0
	sw	%r4 %r2 4
	sw	%r26 %r4 0
	sw	%r26 %r1 4
	sw	%r26 %r3 8
	mov	%r2 %r1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jal	%r23
	addi	%r0 %r25 16
	sub	%r26 %r25 %r26
	lw	%r26 %r28 12
	lw	%r26 %r2 4
