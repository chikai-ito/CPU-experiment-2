#data_section
#text_section
program_start :
	addi	%r0 %r28 return_point.0
tail_b.0 :
	fin	%f0
	fin	%f30
	sw.s	%r26 %f30 0
	fin	%f2
	fin	%f30
	sw.s	%r26 %f30 4
	fin	%f30
	sw.s	%r26 %f30 8
	fin	%f1
	lw.s	%r26 %f30 0
	add.s	%f30 %f0 %f30
	sw.s	%r26 %f30 12
	lw.s	%r26 %f30 12
	add.s	%f2 %f30 %f0
	lw.s	%r26 %f30 4
	add.s	%f30 %f0 %f0
	lw.s	%r26 %f30 8
	add.s	%f30 %f0 %f30
	sw.s	%r26 %f30 16
	lw.s	%r26 %f30 16
	add.s	%f1 %f30 %f0
return_point.0 :
	add	%r0 %r0 %r0
	ret
