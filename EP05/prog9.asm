# Programa 9
# Associações:
# x1 -> s0
# x2 -> s1
# x3 -> s2
# x4 -> s3
# soma -> s4

.text
.globl main
main:    
ori $t0, $zero, 0x1001 # t0 = 0x1001
sll $t0, $t0, 16       # t0 = 0x10010000
lw $s0, 0($t0)         # x1 = MEM[t0]
lw $s1, 4($t0)         # x2 = MEM[t0+4]
lw $s2, 8($t0)         # x3 = MEM[t0+8]
lw $s3, 12($t0)        # x4 = MEM[t0+12]
add $t1, $s0, $s1      # t1 = x1 + x2
add $t2, $s2, $s3      # t2 = x3 + x4
add $s4, $t1, $t2      # soma = x1 + x2 + x3 + x4
sw $s4, 16($t0)        # MEM[t0+16] = soma

.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1
