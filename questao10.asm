.data
	valor1:.asciiz"digite o primeiro numero:"
	valor2:.asciiz"\ndigite o segundo numero:"
	res:. asciiz"\no resultado é:"
.text
main:
	li $v0, 4
	la $a0, valor1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, valor2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	bgt $t0, $t1, maior
	
	move $t2, $t1
	move $t3, $t0
	j resultado
	
maior:
	move $t2, $t0
	move $t3, $t1
resultado:
	div $t4, $t2, $t3
	mul $t5, $t4, $t3
	sub $t6, $t2, $t5
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10
	syscall
	
	
