#data_section
hp_init.0 :
	.int	0x0
sp_init.0 :
	.int	0xffffff0
#text_section
program_start :
	ilw	%r0 %r26 sp_init.0
	ilw	%r0 %r27 hp_init.0
	addi	%r0 %r28 program_end
main.0 :
preloop_b.1 :
	addi	%r0 %r2 10
	mov	%r0 %r6
sum2_loop.1 :
	beq	%r6 %r2 tail_b.5
branching_b.4 :
	addi	%r0 %r1 100
	div	%r6 %r1 %r3
	addi	%r0 %r1 100
	mul	%r3 %r1 %r1
	sub	%r6 %r1 %r1
	addi	%r0 %r4 10
	div	%r1 %r4 %r5
	addi	%r0 %r1 100
	mul	%r3 %r1 %r1
	sub	%r6 %r1 %r4
	addi	%r0 %r1 10
	mul	%r5 %r1 %r1
	sub	%r4 %r1 %r4
	bl	%r0 %r3 tail_b.6
branching_b.5 :
	bl	%r0 %r5 tail_b.7
tail_b.8 :
	addi	%r4 %r1 48
	out	%r1
	j	tail_b.9
tail_b.7 :
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	j	tail_b.9
tail_b.6 :
	addi	%r3 %r1 48
	out	%r1
	addi	%r5 %r1 48
	out	%r1
	addi	%r4 %r1 48
	out	%r1
	j	tail_b.9
tail_b.5 :
postloop_b.1 :
return_point.1 :
program_end :
	add	%r0 %r0 %r0
	ret
tail_b.9 :
	addi	%r0 %r1 32
	out	%r1
	addi	%r0 %r3 10
	sw	%r26 %r6 -4
	sw	%r26 %r2 0
	mov	%r0 %r1
	sw	%r26 %r28 -8
	addi	%r26 %r26 -12
	jal	sum1.0
	addi	%r26 %r26 12
	lw	%r26 %r28 -8
	lw	%r26 %r6 -4
	lw	%r26 %r2 0
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	sum2_loop.1
sum1.0 :
	mov	%r2 %r4
preloop_b.0 :
	mov	%r1 %r6
sum1_loop.0 :
	beq	%r6 %r4 tail_b.0
branching_b.1 :
	add	%r6 %r3 %r5
	addi	%r0 %r1 100
	div	%r5 %r1 %r7
	addi	%r0 %r1 100
	mul	%r7 %r1 %r1
	sub	%r5 %r1 %r2
	addi	%r0 %r1 10
	div	%r2 %r1 %r1
	addi	%r0 %r2 100
	mul	%r7 %r2 %r2
	sub	%r5 %r2 %r5
	addi	%r0 %r2 10
	mul	%r1 %r2 %r2
	sub	%r5 %r2 %r2
	bl	%r0 %r7 tail_b.1
branching_b.2 :
	bl	%r0 %r1 tail_b.2
tail_b.3 :
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.4
tail_b.2 :
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.4
tail_b.1 :
	addi	%r7 %r5 48
	out	%r5
	addi	%r1 %r1 48
	out	%r1
	addi	%r2 %r1 48
	out	%r1
	j	tail_b.4
tail_b.0 :
postloop_b.0 :
return_point.0 :
	retl
tail_b.4 :
	addi	%r0 %r1 10
	out	%r1
	addi	%r6 %r1 1
	mov	%r1 %r6
	j	sum1_loop.0
#libraries
min_caml_create_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_array_loop :
	beq     %r31 %r0 create_array_ret
	sw	%r27 %r2 0
	addi 	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_array_loop
create_array_ret :
	retl
min_caml_create_float_array :
	bl	%r1 %r0 program_end
	mov	%r1 %r30
	mov	%r1 %r31
	mov	%r27 %r1
create_float_array_loop :
	beq	%r31 %r0 create_float_array_ret
	sw.s	%r27 %f0 0
	addi	%r31 %r31 -1
	addi	%r27 %r27 4
	j	create_float_array_loop
create_float_array_ret :
	retl
