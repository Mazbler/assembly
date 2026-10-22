.data
	valor1:.asciiz"digite o primeiro numero:"
	valor2:.asciiz"\ndigite o segundo numero:"
	res:.asciiz"\no resultado é:"
.text
main:
	li $v0, 4
	la $a0, valor1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
segundo:
	li $v0, 4
	la $a0, valor2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0

	beq $t1, 0, segundo
	
	div $t0, $t1
	mflo $t2
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	