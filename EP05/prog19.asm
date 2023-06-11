# Programa 19
# x -> $s0
# y -> $s1

.globl main
.text
bitsSignif:
	sra $t6, $a0, 31           # t6 = a0 >> 31
	sra $a0, $a0, 1            # a0 = a0 >> 1
	addi $v0, $v0, 1           # v0 = v0 + 1
	bne $a0, $t6, bitsSignif   # if(a0 != t6) goto bitsSignif
	jr $ra                     # return
main:
	lui $t2, 0x1001            # t2 = 0x10010000
	lw $s0, 0($t2)             # x = MEM[t2]
	lw $s1, 4($t2)             # y = MEM[t2+4]
	addi $a0, $s0, 0           # a0 = x
	jal bitsSignif             # call bitsSignif
	addi $t0, $v0, 0           # t0 = bitsSignif(x)
	addi $v0, $zero, 0         # v0 = 0  
	addi $a0, $s1, 0           # a0 = y
	jal bitsSignif             # call bitsSignif
	addi $t1, $v0, 0           # t1 = bitsSignif(y)
	mult $s0, $s1              # x * y -> (hilo)
	addi $t3, $zero, 32        # t3 = 32
	add $t4, $t0, $t1          # t4 = t0 + t1
	slt $t5, $t4, $t3          # if(t4 < 32) t5 = 1
	bne $t5, $zero, fim        # if(t5 != 0) goto fim
	mfhi $s3                   # s3 = hi
fim:	
	mflo $s2                   # s2 = lo 

.data
x: .word 0x7FFFFFFF
y: .word -3200
