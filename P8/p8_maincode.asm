# 0x7f68 0~7 represent user_key lb $xx, 0($s0)
# 0x7f70 sw $xx, 0($s1) represent led_light
# 0x7f60 ALUB preset lw $xx, 0($s2)
# 0x7f64 ALUA lw $xx, 0($s2)
# 0x7f50 Tube (sign no use) sw $xx, 0($s4)
# 0x7f30 UART data
ori $s0, $0, 0xfff1
mtc0 $s0, $12
loop:
	lw $s0, 0x7f68($0)
	lw $s1, 0x7f64($0) # alua
	lw $s2, 0x7f60($0) # alub preset
	andi $t3, $s0, 0x0001 # cnt or maths
	andi $t4, $s0, 0x0002 # uart or led tube
	andi $t6, $s0, 0x00fc # 1111 1100 alucontrol
	andi $t7, $s0, 0x0004 # high or low
	beq $t3, $0, maths  # 1 cnt ; 0 maths
	nop
cnt: 
	lw $s3, 0x7f08($0) # count
	# sw $s2, 0x7f04($0) # preset
	sw $s2, 0x7f04($0) # load preset
	beq $t7, $0, high
	nop
low:	 # model 0
	ori $t3, $0, 0x0009
	j preend
	nop
high: # model 2
	ori $t3, $0, 0x000d
preend:
	sw $t3, 0x7f00($0) # ctrl
	
	beq $t4, $0, cntled
	nop
cntuart:
	beq $t2, $s3, loop
	nop
pass:
	lw $t2, 0x7f08($0)
	sw $s3, 0($0)
	
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
	j loop
	nop
cntled:
	sw $s3, 0x7f50($0) # tube
	sw $s3, 0x7f70($0) # led_light	
	j loop
	nop
	
maths:
jia:
	ori $s6, $0, 4
	bne $t6, $s6, jian
	nop
	add $s3, $s1, $s2
	j print
	nop
jian:
	ori $s6, $0, 8
	bne $t6, $s6, cheng
	nop
	sub $s3, $s1, $s2
	j print
	nop
cheng:
	ori $s6, $0, 16
	bne $t6, $s6, chu
	nop
	mult $s1, $s2
	mflo $s3
	j print
	nop
chu:
	ori $s6, $0, 32
	bne $t6, $s6, qie
	nop
	div $s1, $s2
	mflo $s3
	j print
	nop
qie:
	ori $s6, $0, 64
	bne $t6, $s6, huo
	nop
	and $s3, $s1, $s2
	j print
	nop
huo:
	ori $s6, $0, 128
	bne $t6, $s6, loop
	nop
	or $s3, $s1, $s2
	j print 
	nop
	
print:
	beq $t4, $0, aluled
	nop
aluuart:
	beq $t2, $s3, loop
	nop
	sw $s3, 0($0)
	lw $t2, 0($0)
	
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
	j loop
	nop
aluled:
	sw $s3, 0x7f50($0) # tube
	sw $s3, 0x7f70($0) # led_light
	j loop
	nop
	
wait:
	lw $t1, 0x7f34($0)	
	andi $t1, $t1, 0x0020 # 
	beq $t1, $0, wait
	nop
	jr $31
	nop
.ktext	
	# timer
	lw $k1, 0x7f00($0)
	ori $k1, $k1, 0x0001
	sw $k1, 0x7f00($0)
 	# uart back
	lw $k0, 0x7f30($0)
	sw $k0, 0x7f30($0)
	eret
