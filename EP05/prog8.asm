# Programa 8

.text
.globl main
main:                        
ori $8, $0, 0x1234   #  $8 = 0x1234 
sll $8, $8, 16       #  $8 = 0x12340000
ori $8, $8, 0x5678   #  $8 = 0x12345678
ori $13, $8, 0xFFFF  # $13 = 0x1234FFFF
srl $13, $13, 16     # $13 = 0x1234
srl $9, $13, 8       # $9 = 0x12
andi $10, $13, 0xFF  # $10 = 0x34
andi $14, $8, 0xFFFF # $14 = 0x5678
srl $11, $14, 8      # $11 = 0x56
andi $12, $14, 0xFF  # $12 = 0x78 
