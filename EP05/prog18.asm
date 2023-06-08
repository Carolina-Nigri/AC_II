# Programa 18
# Associações:
# x -> $s0
# y -> $s1

.text
.globl main
main: 
	lui $t0, 0x1001              # t0 = 0x10010000
	lw $s0, 0($t0)               # x = MEM[t0]
	lw $s1, 4($t0)               # y = MEM[t0+4] 
	addi $t1, $zero, 1           # t1 = 1
	beq $s1, $zero, fim          # if(y = 0) goto fim
	addi $t1, $s0, 0             # t1 = x
	addi $t3, $s1, -1            # t3 = y - 1
potencia:
	beq $t3, $zero, fim          # if(t3 = 0) goto fim
	addi $t4, $s0, -1            # t4 = x - 1
	addi $t2, $t1, 0             # t2 = t1 
multiplica: 
	beq $t4, $zero, fimPot       # if(t4 = 0) goto fimPot
	add $t1, $t1, $t2            # t1 = t1 + t2
	addi $t4, $t4, -1            # t4 = t4 - 1
	j multiplica                 # goto multiplica
fimPot:
	addi $t3, $t3, -1            # t3 = t3 - 1
	j potencia                   # goto potencia
fim:
	sw $t1, 8($t0)              # MEM[t0+8] = t1
.data
x: .word 3
y: .word 5
k: .word 0
