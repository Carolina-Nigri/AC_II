# Programa 10
# Associações:
# x -> s0
# z -> s1
# y -> s2

.text
.globl main
main:    
ori $t0, $zero, 0x1001 # t0 = 0x1001
sll $t0, $t0, 16       # t0 = 0x10010000
lw $s0, 0($t0)         # x = MEM[t0]
lw $s1, 4($t0)         # z = MEM[t0+4]
sll $t1, $s0, 7        # t1 = 128x
sub $t1, $t1, $s0      # t1 = 127x
sll $t2, $s1, 6        # t2 = 64z
add $t2, $t2, $s1      # t2 = 65z
sub $t3, $t1, $t2      # t3 = t1 - t2
addi $s2, $t3, 1       # y = 127x – 65z + 1
sw $s2, 8($t0)         # MEM[t0+8] = y

.data
x: .word 5
z: .word 7
y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa
