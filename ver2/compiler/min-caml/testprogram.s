#data_section
#text_section
program_start :
	addi	%r0 %r1 1
	addi	%r0 %r2 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r2 loop.9
	sw	%r24 %r2 0
	sw	%r24 %r1 4
	addi	%r0 %r1 0
	sw	%r26 %r28 4
	lw	%r24 %r23 0
	addi	%r26 %r26 8	
	jalr	%r23
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
loop.9 :
	lw	%r24 %r2 4
	addi	%r0 %r3 10
	bg	%r3 %r1 ble_else.23 
	addi	%r0 %r1 0
	slli	%r1 %r1 2
	add	%r2 %r1 %r25
	lw	%r25 %r1 0
	retl
ble_else.23 :
	addi	%r0 %r2 1
	add	%r1 %r2 %r1
	lw	%r24 %r23 0
	jr	%r23
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
