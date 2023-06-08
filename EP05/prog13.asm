# Programa 13
# Associações:
# A -> s0

.text
.globl main
main:    
lui $t0, 0x1001     # t0 = 0x10010000
lw $s0, 0($t0)      # A = MEM[t0]
srl $t1, $s0, 31    # t1 = 00..(bit 32 de A) 
beq $t1, $zero, fim # if(A > 0) goto fim
sub $s0, $zero, $s0 # A = |A|  
sw $s0, 0($t0)      # MEM[t0] = A 
fim:

.data
A:  .word -2
