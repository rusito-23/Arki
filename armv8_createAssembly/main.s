	.text
	.org 0x0000

# EJ 2-A - N=23

Loop:

	SUB X24, X0, X23
	CBZ X24, Exit

	STUR X0, [X0, 0]
	ADD X0, X0, X1

	B Loop

Exit:
