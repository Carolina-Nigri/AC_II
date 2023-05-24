# Programa 3
# Associações:
# x -> $s0
# y -> $s1
# z -> $s2

.text
.globl main
main:
addi $s0, $zero, 3 # x = 3
addi $s1, $zero, 4 # y = 4
add $t0, $s0, $s0 # t0 = 2x
add $t0, $t0, $t0 # t0 = 4x
add $t0, $t0, $t0 # t0 = 8x
add $t0, $t0, $t0 # t0 = 16x
sub $t0, $t0, $s0 # t0 = 15x
add $t1, $s1, $s1 # t1 = 2y
add $t1, $t1, $t1 # t1 = 4y
add $t1, $t1, $t1 # t1 = 8y
add $t1, $t1, $t1 # t1 = 16y
add $t1, $t1, $t1 # t1 = 32y
add $t1, $t1, $t1 # t1 = 64y
add $t1, $t1, $s1 # t1 = 65y
add $t1, $t1, $s1 # t1 = 66y
add $t1, $t1, $s1 # t1 = 67y
add $t2, $t0, $t1 # t2 = t0 + t1
add $t2, $t2, $t2 # t2 = 2t2
add $s2, $t2, $t2 # z = 4t2

