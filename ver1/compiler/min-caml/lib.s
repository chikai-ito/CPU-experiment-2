min_caml_create_array :
	mov	%r1 %r3
	mov	%r27 %r1
create_array_loop :
	bne     %r3 %r0 create_array_cont
	beq	%r3 %r0	create_array_exit
	addi	%r27 %r27 4
create_array_exit :
	retl
create_array_cont :
	sw	%r27 %r2 0
	addi 	%r0 %r25 1
	sub	%r3 %r25 %r3
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
	addi	%r0 %r25 1
	sub	%r2 %r25 %r2
	addi	%r27 %r27 4
	j	create_float_array_loop
