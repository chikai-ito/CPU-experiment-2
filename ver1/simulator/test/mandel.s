#data_section
#text_section
program_start :
	addi	%r0 %r1 100
	addi	%r0 %r2 3
	addi	%r0 %r3 255
	sw	%r26 %r1 0
	mov	%r2 %r1
	mov	%r3 %r2
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r1 %r2
	lw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_create_array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r2 loop0.83 
	sw	%r24 %r2 0
	lw	%r26 %r2 0
	sw	%r24 %r2 4
	addi	%r0 %r3 0
	sw	%r26 %r1 4
	mov	%r3 %r2
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	lw	%r26 %r1 4
	lw	%r1 %r2 4
	lw	%r2 %r2 4
	addi	%r0 %r3 33
	sw	%r2 %r3 0
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r2 loop2.92 
	sw	%r24 %r2 0
	lw	%r26 %r2 0
	sw	%r24 %r2 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	ret
print_int.70 :
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
	bg	%r2 %r25 ble_else.206 
	j	ble_cont.207 
ble_else.206 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.207 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.208 
	j	ble_cont.209 
ble_else.208 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.209 :
	addi	%r1 %r1 48
	out	%r1
	retl
loop0.83 :
	lw	%r24 %r3 4
	bg	%r3 %r2 ble_else.210 
	retl
ble_else.210 :
	addi	%r0 %r4 3
	addi	%r0 %r5 255
	sw	%r26 %r24 0
	sw	%r26 %r1 4
	sw	%r26 %r2 8
	sw	%r26 %r3 12
	mov	%r5 %r2
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	mov	%r1 %r2
	lw	%r26 %r1 12
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	min_caml_create_array
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r2 8
	addi	%r0 %r25 2
	sll	%r2 %r3 %r25
	lw	%r26 %r4 4
	sw	%r4 %r1 %r3
	addi	%r2 %r2 1
	lw	%r26 %r24 0
	mov	%r4 %r1
	lw	%r24 %r23 0
	jr	%r23
write_rgb.90 :
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.70 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.70 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.70 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
loop2.92 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.212 
	bg	%r4 %r3 ble_else.213 
	retl
ble_else.213 :
	addi	%r0 %r2 0
	addi	%r3 %r3 1
	lw	%r24 %r23 0
	jr	%r23
ble_else.212 :
	addi	%r0 %r25 2
	sll	%r2 %r4 %r25
	lw	%r1 %r4 %r4
	addi	%r0 %r25 2
	sll	%r3 %r5 %r25
	lw	%r4 %r4 %r5
	sw	%r26 %r3 0
	sw	%r26 %r1 4
	sw	%r26 %r24 8
	sw	%r26 %r2 12
	mov	%r4 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	write_rgb.90 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
	lw	%r26 %r1 12
	addi	%r1 %r2 1
	lw	%r26 %r1 4
	lw	%r26 %r3 0
	lw	%r26 %r24 8
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

