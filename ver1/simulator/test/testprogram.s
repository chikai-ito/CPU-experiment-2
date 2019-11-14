#data_section
#text_section
program_start :
	in	%r1
	in	%r2
	add	%r1 %r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.24 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
print_int.24 :
	addi	%r0 %r2 100
	div	%r1 %r2 %r2
	addi	%r0 %r3 100
	mul	%r2 %r3 %r3
	sub	%r1 %r3 %r3
	addi	%r0 %r4 10
	div	%r3 %r4 %r3
	addi	%r0 %r4 100
	mul	%r2 %r4 %r4
	sub	%r1 %r4 %r1
	addi	%r0 %r4 10
	mul	%r3 %r4 %r4
	sub	%r1 %r4 %r1
addi	%r0 %r25 0
	bg	%r2 %r25 ble_else.56 
	j	ble_cont.57 
ble_else.56 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.57 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.58 
	j	ble_cont.59 
ble_else.58 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.59 :
	addi	%r1 %r1 48
	out	%r1
	retl
