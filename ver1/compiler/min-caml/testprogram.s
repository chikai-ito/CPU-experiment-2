#data_section
#text_section
program_start :
	addi	%r0 %r1 80
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_print_char
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 32
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_print_char
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	addi	%r0 %r1 55
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	min_caml_print_char
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	ret
