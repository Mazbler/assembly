.data
	valor:.asciiz"\n digite um numero:"
	res:.asciiz"\n resultado:"
.text
main:
	li $v0, 4
	la $a0, valor
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	andi $t1, $t0, 1
	beq $t1, 0, par
	
	addi $t0, $t0, 8
	j resultado
	
par:
	addi $t0, $t0, 5
	
resultado:
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall