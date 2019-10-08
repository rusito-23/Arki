	.text
	.org 0x0000

# EJ 2-A - N=23

loop:

	SUB X24, X0, X23
	CBZ X24, exit

	STUR X0, [X0, 0]
	ADD X0, X0, X1

	B loop

exit:
