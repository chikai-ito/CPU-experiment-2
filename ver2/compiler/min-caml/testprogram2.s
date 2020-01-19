#data_section
#text_section
program_start :
	addi	%r0 %r1 3
	addi	%r0 %r2 1
	addi	%r0 %r3 5
	addi	%r0 %r4 8
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	f.10
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
g.4:
	add	%r2 %r1 %r1
	retl
h.7:
	add	%r2 %r1 %r1
	retl
f.10:
	addi	%r0 %r25 0
	bg	%r3 %r25 ble_else.21
	mov	%r2 %r1
	mov	%r4 %r2
	j	h.7
ble_else.21:
	mov	%r4 %r2
	j	g.4
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
