entry_point.0 :
node_b.0 :
	in	%r30
	sw	%r26 %r30 0
	in	%r1
	addi	%r0 %r2 1
f.1 :
	addi	%r0 %r3 0
	lw	%r26 %r30 0
	beq	%r30 %r3 branching_b.1
branching_b.3 :
	addi	%r0 %r3 0
	lw	%r26 %r30 0
	beq	%r30 %r3 tail_b.4
tail_b.5 :
	addi	%r0 %r1 20
	lw	%r26 %r30 0
	add	%r30 %r1 %r1
tail_b.6 :
	add	%r2 %r1 %r1
return_point.0 :
	ret
tail_b.4 :
	addi	%r0 %r3 1
	lw	%r26 %r30 0
	sub	%r30 %r3 %r30
	sw	%r26 %r30 0
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	j	f.1
branching_b.1 :
	addi	%r0 %r3 0
	beq	%r1 %r3 tail_b.0
tail_b.1 :
	addi	%r0 %r3 5
	add	%r1 %r3 %r1
node_b.1 :
g.2 :
	addi	%r0 %r3 0
	ble	%r3 %r1 tail_b.2
tail_b.3 :
	addi	%r0 %r3 1
	sub	%r1 %r3 %r1
	j	g.2
tail_b.2 :
	addi	%r0 %r1 1
	j	tail_b.6
tail_b.0 :
	addi	%r0 %r1 10
	j	node_b.1
