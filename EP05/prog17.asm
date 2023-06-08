# Programa 17
# Associações:
# x -> $s0
# y -> $s1
# k -> $s2

.text
.globl main
main: 
	lui $t0, 0x1001              # t0 = 0x10010000
	lw $s0, 0($t0)               # x = MEM[t0]
	lw $s1, 4($t0)               # y = MEM[t0+4] 
	addi $t1, $s1, 0             # t1 = y
multiplica: 
	add $s2, $s2, $s0            # k = k + x
	addi $t1, $t1, -1            # t1 = t1 - 1
	bne $t1, $zero, multiplica   # if(t1 != 0) goto multiplica
fim:
	sw $s2, 8($t0)              # MEM[t0+8] = k
.data
x: .word 10
y: .word 4
k: .word 0
