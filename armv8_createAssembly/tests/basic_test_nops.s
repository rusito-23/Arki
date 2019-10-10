	.text
	.org 0x0000

# Carga de registros en memoria
	stur x0,[x0]
	stur x1,[x0,#8]
	stur x2,[x0,#16]
	stur x3,[x0,#24]
	stur x4,[x0,#32]
	stur x5,[x0,#40]
	stur x6,[x0,#48]

# Instructiones NOP
	nop
	nop
	nop
	nop
	nop

# Lectura de memoria en los registros
	ldur x7,[x0]
	ldur x8,[x0,#8]
	ldur x9,[x0,#16]
	ldur x10,[x0,#24]
	ldur x11,[x0,#32]
	ldur x12,[x0,#40]
	ldur x13,[x0,#48]

# Sumatoria de los registros
	sub x14,x14,x14
	cbz x14, Loop
	sub x15,x0,x1
Loop:
	add x15,x0,x1

# Instrucciones NOP
	nop
	nop

# Carga del resultado de la sumatoria en memoria
	stur x15, [x0,#56]
