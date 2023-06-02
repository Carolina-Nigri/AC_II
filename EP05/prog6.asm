# Programa 6
# Associações:
# x -> $s0
# y -> $s1
# z -> $s2

.text
.globl main
main:                        
ori $t0, $zero, 0x7FFF # t0 = 0x00007FFF
sll $t0, $t0, 16       # t0 = 0x7FFF0000
ori $s0, $t0, 0xFFFF   #  x = 0x7FFFFFFF
ori $t0, $zero, 0x4    # t0 = 0x00000004
sll $t0, $t0, 16       # t0 = 0x00040000
ori $s1, $t0, 0x93E0   #  y = 0x000493E0
sll $t1, $s1, 2        # t1 = 4y
sub $s2, $s0, $t1      # z = x - 4y

