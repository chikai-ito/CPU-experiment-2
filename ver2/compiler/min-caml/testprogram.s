#data_section
l.7 :	# 3.140000
	.long	0x4048f5c3
#text_section
program_start :
	fin	%f0
	addi	%r0 %r1 l.7
	ilw.s	%r1 %f1 0
	fbge	%f1 %f0 fbl_else.10 
	addi	%r0 %r1 1
	j	fbl_cont.11 
fbl_else.10 :
	neg.s	%f1 %f1
	fbge	%f0 %f1 fbl_else.12 
	addi	%r0 %r1 2
	j	fbl_cont.13 
fbl_else.12 :
	addi	%r0 %r1 3
fbl_cont.13 :
fbl_cont.11 :
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
