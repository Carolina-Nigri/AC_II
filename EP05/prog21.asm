# Programa 21
# x -> $s0
# y -> $s1

.globl main
.text
positivo:
	mult $s0, $s0              # x^2
	mflo $t2                   # t2 = x^2
	mult $s0, $t2              # x^3
	mflo $t2                   # t2 = x^3
	addi $s1, $t2, 1           # y = x^3 + 1
	j fim                      # goto fim
main:
	lui $t0, 0x1001            # t0 = 0x10010000
	lw $s0, 0($t0)             # x = MEM[t0]
	slt $t1, $zero, $s0        # if(x > 0) t1 = 1
	bne $t1, $zero, positivo   # if(t1 != 0) goto positivo
naoPositivo:	
	mult $s0, $s0              # x^2
	mflo $t2                   # t2 = x^2
	mult $t2, $t2              # x^4
	mflo $t2                   # t2 = x^4              
	addi $s1, $t2, -1          # y = x^4 - 1
fim:	
	sw $s1, 4($t0)             # MEM[t0+4] = y
.data
x: .word 4
y: .word 0
