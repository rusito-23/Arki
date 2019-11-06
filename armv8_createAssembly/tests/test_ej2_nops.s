	.text
	.org 0x0000


SUB X23, X1, X1
ADD X0, XZR, X4
nop
nop
ADD X1, X0, X4
nop
nop
ADD X2, X1, X4
nop
nop
ADD X3, X2, X4
STUR X0, [X23, #0]
STUR X1, [X23, #8]
STUR X2, [X23, #16]
STUR X3, [X23, #24]
