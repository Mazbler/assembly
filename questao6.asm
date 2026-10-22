.data
	a:.asciiz"\n digite o valor A (inteiro):"
	b:.asciiz"\n digite o valor B (inteiro):"
	c:.asciiz"\n o valor de C é:"
.text
main:
	li $v0, 4
	la $a0, a
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, b
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beq $t0, $t1, iguais
	bne $t0, $t1, diferentes
	
	iguais:
		add $t2, $t0, $t1
		j mostrar
	
	diferentes:
		mul $t2, $t0, $t1
		
	mostrar:
		li $v0, 4
		la $a0, c
		syscall
	
		li $v0, 1
		move $a0, $t2
		syscall
	
		li $v0, 10
		syscall
	
	