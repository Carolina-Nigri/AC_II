# Programa 11
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
sub $t1, $s0, $s1      # t1 = x - z
ori $t2, $zero, 0x4    # t2 = 0x4
sll $t2, $t2, 16       # t2 = 0x00040000
ori $t2, $t2, 0x93E0   # t2 = 0x000493E0
add $s2, $t1, $t2      # y = x – z + 300000
sw $s2, 8($t0)         # MEM[t0+8] = y

.data
x: .word 100000
z: .word 200000
y: .word 0 # esse valor deverá ser sobrescrito após a execução do programa.
