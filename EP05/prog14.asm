# Programa 14
# Associações:
# A -> s0

.text
.globl main
main:    
lui $t0, 0x1001     # t0 = 0x10010000
lw $s0, 0($t0)      # A = MEM[t0]
sll $t1, $s0, 31    # t1 = (bit 0 de A)..00 
beq $t1, $zero, fim # if(A é par) goto fim
addi $t1, $zero, 1  # t1 = 1 (A é ímpar)
fim:
sw $t1, 4($t0)      # MEM[t0+4] = t1 

.data
A:  .word 3
