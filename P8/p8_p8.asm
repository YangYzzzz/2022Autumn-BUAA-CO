.macro push(%int)
	sw %int, 0($sp)
	addi $sp, $sp, -4
.end_macro
.macro pop(%int)
	addi $sp, $sp, 4
	lw %int, 0($sp)
.end_macro
ori $s0, $0, 0xfff1
ori $sp, $0, 0x2ffc
mtc0 $s0, $12
ori $s4, 2
lui $s5, 0x5f
ori $s5, $s5, 0x5e10
loop:
	lw $s0, 0x7f68($0)
	lw $s2, 0x7f64($0) # alua
	lw $s1, 0x7f60($0) # alub 
	andi $t0, $s0, 0x0001 # cnt or maths
	andi $t1, $s0, 0x0002 # uart or led tube
	andi $t2, $s0, 0x0004 # high or low
	andi $t3, $s0, 0x0008
	beq $t0, $0, jian
	nop
jia:
	add $s1, $s1, $s2
	jal print
	nop
	jal minute
	nop
	lw $s6, 0x7f68($0)
	beq $s6, $s0, jia
	nop
	j loop
	nop
jian:
	beq $t1, $0, cheng
	nop
	sub $s1, $s1, $s2
	jal print
	nop
	jal minute
	nop
	lw $s6, 0x7f68($0)
	beq $s6, $s0, jian
	nop
	j loop
	nop
cheng:
	beq $t2, $0, chu
	nop
	mult $s1, $s2
	mflo $s1
	jal print
	nop
	jal minute
	nop
	lw $s6, 0x7f68($0)
	beq $s6, $s0, cheng
	nop
	j loop
	nop
chu:
	beq $t3, $0, loop
	nop
	div $s1, $s2
	mflo $s1
	jal print
	nop
	jal minute
	nop
	lw $s6, 0x7f68($0)
	beq $s6, $s0, chu
	nop
	j loop
	nop
	
	
print:
	push($ra)
	div $s1, $s4 # s1 / 2
	mfhi $t5
	bne $t5, $0, aluled # ji
	nop
aluuart:
	sw $s1, 0($0)
	lb $s3, 3($0)
	sw $s3, 0x7f30($0)
	jal wait
	nop
	lb $s3, 2($0)
	sw $s3, 0x7f30($0)
	jal wait
	nop
	lb $s3, 1($0)
	sw $s3, 0x7f30($0)
	jal wait
	nop
	lb $s3, 0($0)
	sw $s3, 0x7f30($0)
	jal wait
	nop
	pop($ra)
	beq $s1, $0, loop
	nop
	jr $ra
	nop
aluled:
	sw $s1, 0x7f50($0) # tube
	sw $s1, 0x7f70($0) # led_light
	pop($ra)
	beq $s1, $0, loop
	nop
	jr $ra
	nop
		
minute:
	push($t0)
	ori $t0, $0, 0
loop1:
	beq $t0, $s5, loop1_end
	addi $t0, $t0, 1
	j loop1
	nop
loop1_end:
	pop($t0)
	jr $ra
	nop	
				
wait:
	lw $t4, 0x7f34($0)	
	andi $t4, $t4, 0x0020 # 
	beq $t4, $0, wait
	nop
	jr $ra
	nop	


.ktext
	lui $a0, 0x146
	ori $a0, $0, 0x206d
	ori $k1, $0, 67
	lw $k0, 0x7f30($0)
	beq $k0, $k1, end
	nop
	eret
end:
	sw $a0, 0x7f50($0) # tube
	sw $a0, 0x7f70($0) # led_light
	j end
	nop