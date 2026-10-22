.data
	pequeno:.asciiz"\n digite a quantidade de peças pequenas:"
	medio:.asciiz"\n digite a quantidade de peças medias:"
	grande:.asciiz"\n digite a quantidade de peças grandes:"
	res:.asciiz"\n o valor arrecadado é de:"
.text
main:
	li $v0, 4
	la $a0, pequeno
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, medio
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, grande
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $t3, 10
	mul $t4, $t0, $t3
	
	li $t3, 12
	mul $t5, $t1, $t3
	
	li $t3, 15
	mul $t6, $t2, $t3
	
	add $t7, $t4, $t5
	add $t7, $t7, $t6
	
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t7
	syscall
	
	li $v0, 10
	syscall
	
	