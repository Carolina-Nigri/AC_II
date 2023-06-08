# Programa 15
# Associações:
# vetor[0] -> $s0
# i -> $s1
# soma -> $s2

.text
.globl main
main:    
	lui $s0, 0x1001      # s0 = vetor[0]
	addi $s1, $zero, 100 # i = 100
	addi $s2, $zero, 0   # soma = 0
loop:
	addi $s1, $s1, -1    # i = i - 1
	sll $t0, $s1, 1      # t0 = 2i
	addi $t0, $t0, 1     # t0 = 2i + 1
	add $s2, $s2, $t0    # soma = soma + vetor[i]
	sll $t1, $s1, 2      # t1 = 4i     
	add $t1, $s0, $t1    # t1 = end(vetor[i])
	sw $t0, 0($t1)       # vetor[i] = 2i + 1
	bne $s1, $zero, loop # if(i != 0) goto loop
