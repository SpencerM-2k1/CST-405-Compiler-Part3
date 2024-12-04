.text
.globl main
main:
	l.s $f0, float_const_0 #ASSIGN FLOAT VALUE
	s.s $f0, f6
	li $t0, 1 #ASSIGN INT VALUE
	sw $t0, i6
	lw $t0, i6 #LOAD INT
	sw $t0, ifTest_1.forcePrint_var
	l.s $f0, f6 #LOAD FLOAT
	s.s $f0, ifTest_1.x_var
	jal ifTest_func #FUNCTION CALL
	l.s $f0, float_const_1 #ASSIGN FLOAT VALUE
	s.s $f0, f7
	li $t0, 1 #ASSIGN INT VALUE
	sw $t0, i7
	lw $t0, i7 #LOAD INT
	sw $t0, ifTest_1.forcePrint_var
	l.s $f0, f7 #LOAD FLOAT
	s.s $f0, ifTest_1.x_var
	jal ifTest_func #FUNCTION CALL
	l.s $f0, float_const_2 #ASSIGN FLOAT VALUE
	s.s $f0, f8
	li $t0, 0 #ASSIGN INT VALUE
	sw $t0, i8
	lw $t0, i8 #LOAD INT
	sw $t0, ifTest_1.forcePrint_var
	l.s $f0, f8 #LOAD FLOAT
	s.s $f0, ifTest_1.x_var
	jal ifTest_func #FUNCTION CALL
	l.s $f0, float_const_3 #ASSIGN FLOAT VALUE
	s.s $f0, f9
	li $t0, 1 #ASSIGN INT VALUE
	sw $t0, i9
	lw $t0, i9 #LOAD INT
	sw $t0, ifTest_1.forcePrint_var
	l.s $f0, f9 #LOAD FLOAT
	s.s $f0, ifTest_1.x_var
	jal ifTest_func #FUNCTION CALL
	li $t0, 5 #ASSIGN INT VALUE
	sw $t0, i10
	lw $t0, i10 #NEGATIVE INT
	sub $t0, $zero, $t0
	sw $t0, i11
	lw $t0, i11 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 0 #ASSIGN INT VALUE
	sw $t0, i12
	lw $t0, i12 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	l.s $f0, float_const_4 #ASSIGN FLOAT VALUE
	s.s $f0, f10
	li $t0, 90 #ASSIGN INT VALUE
	sw $t0, i13
	lw $t0, i13 #CONVERT INT TO FLOAT
	mtc1 $t0, $f0
	cvt.s.w $f0, $f0
	s.s $f0, f11
	l.s $f0, f10 #LOAD FLOAT FOR RELATIONAL OP
	l.s $f1, f11
	c.lt.s $f0, $f1
	bc1f floatCompare0_setTrue
	li $t0, 0
	b floatCompare0_end
floatCompare0_setTrue:
	li $t0, 1
floatCompare0_end:
	sw $t0, i14
	li $t0, 0 #ASSIGN INT VALUE
	sw $t0, i15
	lw $t0, i14 #LOAD INT FOR RELATIONAL OP
	lw $t1, i15
	sne $t0, $t0, $zero 
	sne $t1, $t1, $zero 
	or $t2, $t0, $t1 
	sw $t2, i16
	lw $t0, i16 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c2
	sb $t0, 0($t1)
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c3
	sb $t0, 0($t1)
	la $t3, c2 #LOAD INT FOR RELATIONAL OP
	lb $t0, 0($t3)
	la $t3, c3
	lb $t1, 0($t3)
	seq $t2, $t0, $t1
	sb $t2, i17
	lw $t0, i17 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c4
	sb $t0, 0($t1)
	li $t0, 67 #ASSIGN CHAR VALUE
	la $t1, c5
	sb $t0, 0($t1)
	la $t4, c4 #LOAD INT FOR RELATIONAL OP
	lb $t0, 0($t4)
	la $t4, c5
	lb $t1, 0($t4)
	seq $t2, $t0, $t1
	sb $t2, i18
	lw $t0, i18 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c6
	sb $t0, 0($t1)
	li $t0, 98 #ASSIGN CHAR VALUE
	la $t1, c7
	sb $t0, 0($t1)
	la $t5, c6 #LOAD INT FOR RELATIONAL OP
	lb $t0, 0($t5)
	la $t5, c7
	lb $t1, 0($t5)
	sne $t2, $t0, $t1
	sb $t2, i19
	lw $t0, i19 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c8
	sb $t0, 0($t1)
	li $t0, 66 #ASSIGN CHAR VALUE
	la $t1, c9
	sb $t0, 0($t1)
	la $t6, c8 #LOAD INT FOR RELATIONAL OP
	lb $t0, 0($t6)
	la $t6, c9
	lb $t1, 0($t6)
	sne $t2, $t0, $t1
	sb $t2, i20
	lw $t0, i20 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 8 #ASSIGN INT VALUE
	sw $t0, i21
	lw $t0, i21 #NEGATIVE INT
	sub $t0, $zero, $t0
	sw $t0, i22
	lw $t0, i22 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	l.s $f0, float_const_5 #ASSIGN FLOAT VALUE
	s.s $f0, f12
	l.s $f0, f12 #NEGATIVE FLOAT
	neg.s $f0, $f0
	s.s $f0, f13
	l.s $f2, f13 #WRITE FLOAT
	mov.s $f12, $f2
	li $v0, 2
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 0 #ASSIGN INT VALUE
	sw $t0, i23
	lw $t0, i23 #LOAD INT FOR RELATIONAL OP
	li $t1, 1
	sltu $t0, $zero, $t0
	xor $t2, $t0, $t1
	sw $t2, i24
	lw $t0, i24 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 1 #ASSIGN INT VALUE
	sw $t0, i25
	lw $t0, i25 #LOAD INT FOR RELATIONAL OP
	li $t1, 1
	sltu $t0, $zero, $t0
	xor $t2, $t0, $t1
	sw $t2, i26
	lw $t0, i26 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $t0, 101 #ASSIGN INT VALUE
	sw $t0, i27
	lw $t0, i27 #LOAD INT FOR RELATIONAL OP
	li $t1, 1
	sltu $t0, $zero, $t0
	xor $t2, $t0, $t1
	sw $t2, i28
	lw $t0, i28 #WRITE INT
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	li $v0, 10 #EXIT
	syscall
ifTest_func:
	addi $sp, $sp, -4 #FUNCTION START
	sw $ra, 0($sp)
	l.s $f2, ifTest_1.x_var #LOAD FLOAT
	s.s $f2, f0
	li $t0, 90 #ASSIGN INT VALUE
	sw $t0, i0
	lw $t0, i0 #CONVERT INT TO FLOAT
	mtc1 $t0, $f2
	cvt.s.w $f2, $f2
	s.s $f2, f1
	l.s $f2, f0 #LOAD FLOAT FOR RELATIONAL OP
	l.s $f3, f1
	c.lt.s $f2, $f3
	bc1f floatCompare1_setTrue
	li $t0, 0
	b floatCompare1_end
floatCompare1_setTrue:
	li $t0, 1
floatCompare1_end:
	sw $t0, i1
	lw $t0, i1 #IF FALSE
	beq $t0, $zero, L0
	l.s $f2, ifTest_1.x_var #LOAD FLOAT
	s.s $f2, f2
	l.s $f2, f2 #WRITE FLOAT
	mov.s $f12, $f2
	li $v0, 2
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	j L1 #GOTO
L0:
	l.s $f2, ifTest_1.x_var #LOAD FLOAT
	s.s $f2, f3
	li $t0, 70 #ASSIGN INT VALUE
	sw $t0, i2
	lw $t0, i2 #CONVERT INT TO FLOAT
	mtc1 $t0, $f2
	cvt.s.w $f2, $f2
	s.s $f2, f4
	l.s $f2, f3 #LOAD FLOAT FOR RELATIONAL OP
	l.s $f3, f4
	c.eq.s $f2, $f3
	bc1t floatCompare2_setTrue
	li $t0, 0
	b floatCompare2_end
floatCompare2_setTrue:
	li $t0, 1
floatCompare2_end:
	sw $t0, i3
	lw $t0, ifTest_1.forcePrint_var #LOAD INT
	sw $t0, i4
	lw $t0, i3 #LOAD INT FOR RELATIONAL OP
	lw $t1, i4
	sne $t0, $t0, $zero 
	sne $t1, $t1, $zero 
	and $t2, $t0, $t1 
	sw $t2, i5
	lw $t0, i5 #IF FALSE
	beq $t0, $zero, L2
	li $t0, 70 #ASSIGN CHAR VALUE
	la $t1, c0
	sb $t0, 0($t1)
	la $t1, c0 #WRITE CHAR
	lb $t0, 0($t1)
	move $a0, $t0
	li $v0, 11
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	l.s $f2, ifTest_1.x_var #LOAD FLOAT
	s.s $f2, f5
	l.s $f2, f5 #WRITE FLOAT
	mov.s $f12, $f2
	li $v0, 2
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	j L3 #GOTO
L2:
	li $t0, 45 #ASSIGN CHAR VALUE
	la $t1, c1
	sb $t0, 0($t1)
	la $t1, c1 #WRITE CHAR
	lb $t0, 0($t1)
	move $a0, $t0
	li $v0, 11
	syscall
	li $v0, 4
	la $a0, newline
	syscall
L3:
L1:
	lw $ra, 0($sp) #RETURN
	addi $sp, $sp, 4
	jr $ra

.data
   newline: .asciiz "\n"
   returnInt: .word 0
   returnFloat: .float 0.0
   returnChar: .byte 0
	ifTest_1.x_var: .float 0.0
	ifTest_1.forcePrint_var: .word 0

	main_0.inputVal_var: .word 0
	i0: .word 0
	i1: .word 0
	i2: .word 0
	i3: .word 0
	i4: .word 0
	i5: .word 0
	i6: .word 0
	i7: .word 0
	i8: .word 0
	i9: .word 0
	i10: .word 0
	i11: .word 0
	i12: .word 0
	i13: .word 0
	i14: .word 0
	i15: .word 0
	i16: .word 0
	i17: .word 0
	i18: .word 0
	i19: .word 0
	i20: .word 0
	i21: .word 0
	i22: .word 0
	i23: .word 0
	i24: .word 0
	i25: .word 0
	i26: .word 0
	i27: .word 0
	i28: .word 0
	f0: .float 0.0
	f1: .float 0.0
	f2: .float 0.0
	f3: .float 0.0
	f4: .float 0.0
	f5: .float 0.0
	f6: .float 0.0
	f7: .float 0.0
	f8: .float 0.0
	f9: .float 0.0
	f10: .float 0.0
	f11: .float 0.0
	f12: .float 0.0
	f13: .float 0.0
	c0: .byte 0
	c1: .byte 0
	c2: .byte 0
	c3: .byte 0
	c4: .byte 0
	c5: .byte 0
	c6: .byte 0
	c7: .byte 0
	c8: .byte 0
	c9: .byte 0
	float_const_0: .float 100.000000
	float_const_1: .float 70.000000
	float_const_2: .float 100.000000
	float_const_3: .float 80.000000
	float_const_4: .float 100.000000
	float_const_5: .float 3.141000
