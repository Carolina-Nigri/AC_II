# Programa 12
# Associações:
# x -> s0
# k -> s1

.text
.globl main
main:    
ori $t0, $zero, 0x1001 # t0 = 0x1001
sll $t0, $t0, 16       # t0 = 0x10010000
ori $t0, $t0, 0xC      # t0 = 0x1001000C
lw $s0, 0($t0)         # x = MEM[t0]
lw $t1, 0($s0)         # t1 = MEM[x]
lw $t1, 0($t1)         # t1 = MEM[MEM[x]]
lw $s1, 0($t1)         # k = MEM[ MEM[MEM[x]] ]
sll $s1, $s1, 1        # k = 2k
sw $s1, 0($t1)         # MEM[ MEM[MEM[x]] ] = 2k

.data
k:  .word 100000
p2: .word 0x10010000
p1: .word 0x10010004
x:  .word 0x10010008 
