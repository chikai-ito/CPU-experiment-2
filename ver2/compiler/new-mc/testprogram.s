#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.0
preloop_b.0 :
	in	%r3
	in	%r2
	sw	%r26 %r3 0
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
	sw	%r26 %r2 4
g.2 :
	addi	%r0 %r1 0
	ble	%r1 %r2 tail_b.2
	addi	%r0 %r1 1
	sub	%r2 %r1 %r2
	j	g.2
tail_b.2 :
	addi	%r0 %r1 1
postloop_b.0 :
	lw	%r26 %r2 4
postloop_b.1 :
	lw	%r26 %r3 0
tail_b.6 :
	addi	%r1 %r1 1
return_point.0 :
	ret
