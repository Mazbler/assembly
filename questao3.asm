.data
	horas:.asciiz"\n digite a quantidade de horas trabalhadas:"
	horasEX:.asciiz"\n digite a quantidade de horas extras:"
	desconto:.asciiz"\n digite o valor de desconto:"
	salario:.asciiz"\n o salario bruto é de:"
	salarioBT:.asciiz"\n o salario liquido é de:"
.text
main:
	li $v0, 4
	la $a0, horas
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, horasEX
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, desconto
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $t3, 10
	mul $t4, $t3, $t0
	
	li $t3, 15
	mul $t5, $t3, $t1
	
	add $t6, $t4, $t5
	
	sub $t7, $t6, $t2
	
	li $v0, 4
	la $a0, salario
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 4
	la $a0, salarioBT
	syscall
	
	li $v0, 1
	move $a0, $t7
	syscall
	
	li $v0, 10
	syscall