#data_section
l.246 :	# 0.000000
	.long	0x0
l.240 :	# 4.000000
	.long	0x40800000
l.236 :	# 2.000000
	.long	0x40000000
#text_section
program_start :
	addi	%r0 %r1 1000
	addi	%r0 %r2 3
	addi	%r0 %r3 0
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
	jal	min_caml_create__array
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r2 loop0.112 
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
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r1 loop1.116 
	sw	%r24 %r1 0
	lw	%r26 %r1 0
	sw	%r24 %r1 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r4 4
	mov	%r4 %r1
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	mov	%r27 %r24
	addi	%r27 %r27 8
	addi	%r0 %r1 loop2.123 
	sw	%r24 %r1 0
	lw	%r26 %r1 0
	sw	%r24 %r1 4
	addi	%r0 %r2 0
	addi	%r0 %r3 0
	lw	%r26 %r1 4
	sw	%r26 %r28 12
	lw	%r24 %r23 0
	addi	%r26 %r26 16	
	jalr	%r23
	addi	%r26 %r26 -16
	lw	%r26 %r28 12
	ret
print_int.99 :
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
	bg	%r2 %r25 ble_else.295 
	j	ble_cont.296 
ble_else.295 :
	addi	%r2 %r2 48
	out	%r2
ble_cont.296 :
addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.297 
	j	ble_cont.298 
ble_else.297 :
	addi	%r3 %r2 48
	out	%r2
ble_cont.298 :
	addi	%r1 %r1 48
	out	%r1
	retl
diverge.101 :
	mul.s	%f0 %f0 %f4
	mul.s	%f1 %f1 %f5
	sub.s	%f4 %f5 %f4
	add.s	%f4 %f2 %f4
	addi	%r0 %r3 l.236 
	ilw.s	%r3 %f5 0
	mul.s	%f5 %f0 %f0
	mul.s	%f0 %f1 %f0
	sub.s	%f0 %f3 %f1
	mul.s	%f4 %f4 %f0
	mul.s	%f1 %f1 %f5
	add.s	%f0 %f5 %f0
	addi	%r0 %r3 l.236 
	ilw.s	%r3 %f5 0
	fbg	%f0 %f5 fble_else.299 
	bne	%r1 %r2 be_else.300 
	addi	%r0 %r1 0
	retl
be_else.300 :
	addi	%r1 %r1 1
	mov.s	%f4 %f0
	j	diverge.101 
fble_else.299 :
	addi	%r0 %r1 1
	retl
loop0.112 :
	lw	%r24 %r3 4
	bg	%r3 %r2 ble_else.301 
	retl
ble_else.301 :
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
loop1.116 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.303 
	bg	%r4 %r3 ble_else.304 
	retl
ble_else.304 :
	addi	%r0 %r2 0
	addi	%r3 %r3 1
	lw	%r24 %r23 0
	jr	%r23
ble_else.303 :
	addi	%r0 %r5 l.240 
	ilw.s	%r5 %f0 0
	mtc1	%r4 %f1
	div.s	%f0 %f1 %f0
	mtc1	%r2 %f1
	mul.s	%f0 %f1 %f0
	addi	%r0 %r5 l.236 
	ilw.s	%r5 %f1 0
	sub.s	%f0 %f1 %f0
	addi	%r0 %r5 l.240 
	ilw.s	%r5 %f1 0
	mtc1	%r4 %f2
	div.s	%f1 %f2 %f1
	mtc1	%r3 %f2
	mul.s	%f1 %f2 %f1
	addi	%r0 %r4 l.236 
	ilw.s	%r4 %f2 0
	sub.s	%f1 %f2 %f1
	addi	%r0 %r4 1000
	addi	%r0 %r25 2
	sll	%r2 %r5 %r25
	lw	%r1 %r5 %r5
	addi	%r0 %r6 l.246 
	ilw.s	%r6 %f2 0
	addi	%r0 %r6 l.246 
	ilw.s	%r6 %f3 0
	addi	%r0 %r6 0
	sw	%r26 %r2 0
	sw	%r26 %r1 4
	sw	%r26 %r24 8
	sw	%r26 %r5 12
	sw	%r26 %r3 16
	mov	%r4 %r2
	mov	%r6 %r1
	sw	%r26 %r28 20
	addi	%r26 %r26 24
	jal	diverge.101 
	addi	%r26 %r26 -24
	lw	%r26 %r28 20
addi	%r0 %r25 0
	bne	%r1 %r25 be_else.306 
	j	be_cont.307 
be_else.306 :
	lw	%r26 %r1 16
	addi	%r0 %r25 2
	sll	%r1 %r2 %r25
	lw	%r26 %r3 12
	lw	%r3 %r2 %r2
	addi	%r0 %r3 0
	sw	%r2 %r3 0
	addi	%r0 %r3 0
	sw	%r2 %r3 4
	addi	%r0 %r3 0
	sw	%r2 %r3 8
be_cont.307 :
	lw	%r26 %r1 16
	addi	%r1 %r3 1
	lw	%r26 %r1 4
	lw	%r26 %r2 0
	lw	%r26 %r24 8
	lw	%r24 %r23 0
	jr	%r23
write_rgb.121 :
	lw	%r1 %r2 0
	sw	%r26 %r1 0
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.99 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r2 4
	mov	%r2 %r1
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.99 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	out	%r1
	lw	%r26 %r1 0
	lw	%r1 %r1 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	print_int.99 
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 10
	out	%r1
	retl
loop2.123 :
	lw	%r24 %r4 4
	bg	%r4 %r2 ble_else.308 
	bg	%r4 %r3 ble_else.309 
	retl
ble_else.309 :
	addi	%r0 %r2 0
	addi	%r3 %r3 1
	j	min_caml_loop
ble_else.308 :
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
	jal	write_rgb.121 
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
	
