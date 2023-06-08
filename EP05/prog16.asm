# Programa 16
# Associações:
# x -> $s0
# y -> $s1
# z -> $s2

.text
.globl main
main:    
	lui $s0, 0x0018      # x = 0x00180000
	ori $s0, $s0, 0x6A00 # x = 0x00186A00 
	lui $s1, 0x0001      # y = 0x00010000
	ori $s1, $s1, 0x3880 # y = 0x00013880
	lui $s2, 0x0006      # z = 0x00060000
	ori $s2, $s2, 0x1A80 # z = 0x00061A80
	mult $s1, $s2        # (hilo) = x * y
	mflo $t0             # t0 = lo
	div $t0, $s2         # (x*y) / z
	mflo $t1             # t1 = lo
