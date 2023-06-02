# Programa 7

.text
.globl main
main:                        
ori $8, $0, 0x01 # $8 = 0x1
sll $8, $8, 31   # $8 = 0x80000000
sra $8, $8, 31   # $8 = 0xFFFFFFFF
