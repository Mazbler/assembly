.data
	valor:.asciiz"digite o valor:"
	res:.asciiz"\no resultado é:"
.text
main:
	li $v0, 4
	la $a0, valor
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	bge $t0, 0, positivo
	
	mul $t0, $t0, 3
	j resultado
	
positivo:
	mul $t0, $t0, 2
	
resultado:
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
