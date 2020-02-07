#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	in	%r3
	in	%r2
f.1 :
	addi	%r0 %r1 0
	beq	%r3 %r1 branching_b.1
	addi	%r0 %r1 0
	beq	%r3 %r1 tail_b.4
	addi	%r3 %r1 20
	j	postloop_b.1
tail_b.4 :
	addi	%r0 %r1 1
	sub	%r3 %r1 %r3
	j	f.1
branching_b.1 :
	addi	%r0 %r1 0
	beq	%r2 %r1 tail_b.0
	addi	%r2 %r2 5
	j	preloop_b.1
tail_b.0 :
	addi	%r0 %r2 10
preloop_b.1 :
g.2 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.2
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	j	g.2
tail_b.2 :
	addi	%r0 %r1 1
postloop_b.0 :
postloop_b.1 :
tail_b.6 :
	addi	%r1 %r1 1
return_point.0 :
	add	%r0 %r0 %r0
	ret
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
