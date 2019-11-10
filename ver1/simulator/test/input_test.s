#data_section
#text_section
program_start :
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_int.28 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	read_int.28 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	lw	%r26 %r2 0
	add	%r2 %r1 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.26 
	addi	%r0 %r25 8
	sub	%r26 %r25 %r26
	lw	%r26 %r28 4
	ret
print_int.26 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r2
	sub	%r1 %r2 %r1
	addi	%r0 %r2 10
	mul	%r3 %r2 %r2
	sub	%r1 %r2 %r1
	addi	%r1 %r1 48
	out	%r1
	retl
read_int.28 :
	in	%r1
	retl
