# Programa 20
# x -> $s0
# y -> $s1

.globl main
.text
par:
	mult $s0, $s0              # x^2
	mflo $t2                   # t2 = x^2
	mult $s0, $t2              # x^3
	mflo $t3                   # t3 = x^3
	mult $t2, $t2              # x^4
	mflo $t4                   # t4 = x^4   
	sll $t2, $t2, 1            # t2 = 2x^2           
	add $s1, $t3, $t4          # y = x^4 + x^3
	sub $s1, $s1, $t2          # y = x^4 + x^3 - 2x^2 
	j fim                      # goto fim
main:
	lui $t0, 0x1001            # t0 = 0x10010000
	lw $s0, 0($t0)             # x = MEM[t0]
	sll $t1, $s0, 31           # t1 = (bit 0 de x)..00 
	beq $t1, $zero, par        # if(x é par) goto par
impar:	
	mult $s0, $s0              # x^2
	mflo $t2                   # t2 = x^2
	mult $s0, $t2              # x^3
	mflo $t3                   # t3 = x^3
	mult $t2, $t3              # x^5
	mflo $t2                   # t2 = x^5              
	addi $s1, $t2, 1           # y = x^5 + 1
	sub $s1, $s1, $t3          # y = x^5 - x^3 + 1
fim:	
	sw $s1, 4($t0)             # MEM[t0+4] = y
.data
x: .word 4
y: .word 0
