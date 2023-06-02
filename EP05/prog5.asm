# Programa 5
# Associações:
# x -> $s0
# y -> $s1
# z -> $s2

.text
.globl main
main:
ori $t0, $zero, 0x1  # t0 = 0x00000001
sll $t0, $t0, 16     # t0 = 0x00010000
ori $s0, $t0, 0x86A0 # x = 0x000186A0
ori $t0, $zero, 0x3  # t0 = 0x00000003
sll $t0, $t0, 16     # t0 = 0x00030000
ori $s1, $t0, 0x0D40 # y = 0x00030D40
add $s2, $s0, $s1 # z = x + y

