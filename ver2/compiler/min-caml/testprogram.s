program_start :
tail_b.6 :
	in	%r1
	in	%r2
	sw	%r26 %r1 0
	sw	%r26 %r28 4
	addi	%r26 %r26 8
	jal	LR.2
	addi	%r26 %r26 -8
	lw	%r26 %r28 4
	lw	%r26 %r1 0
	addi	%r1 %r1 1
return_point :
	ret
