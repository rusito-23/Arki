	.text
	.org 0x0000


	CBNZ X23, Loop
	NOP
	NOP
	NOP
	ADD X2, X8, #15

Loop:
	NOP
	NOP
	NOP
	ADD X3, X8, #15
