#data_section
#text_section
program_start :
	addi	%r0 %r1 100
	addi	%r0 %r2 3
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r27 %r24
	addi	%r27 %r27 16
	addi	%r0 %r2 loop.16 
	sw	%r24 %r2 0
	lw	%r26 %r2 0
	sw	%r24 %r2 8
	sw	%r24 %r1 4
	mov	%r27 %r3
	addi	%r27 %r27 16
	addi	%r0 %r4 loop1.18 
	sw	%r3 %r4 0
	sw	%r3 %r2 8
	sw	%r3 %r1 4
	addi	%r0 %r1 0
	sw	%r26 %r3 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 0
	lw	%r26 %r24 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	ret
loop.16 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	bg	%r2 %r1 ble_else.50 
	retl
ble_else.50 :
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	sw	%r3 %r1 %r2
	addi	%r1 %r1 1
	lw	%r24 %r23 0
	jr	%r23
loop1.18 :
	lw	%r24 %r2 8
	lw	%r24 %r3 4
	bg	%r2 %r1 ble_else.52 
	retl
ble_else.52 :
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r3 %r2 %r2
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	mov	%r2 %r1
	sw	%r26 %r28 12
	addi	%r26 %r26 16
	jal	min_caml_pint_int
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	addi	%r0 %r1 10
	out	%r1
	lw	%r26 %r1 4
	addi	%r1 %r1 1
	lw	%r26 %r24 0
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
	
