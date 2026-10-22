.data
	basemaior:.asciiz"\n digite a base maior:"
	basemenor:.asciiz"\n digite a base menor:"
	altura:.asciiz"\n digite a altura:"
	resultado:.asciiz"\n a área do trapézio é de:"
.text
main:
	li $v0, 4
	la $a0, basemaior
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, basemenor
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	add $t3, $t0, $t1
	mul $t3, $t3, $t2
	div $t3, $t3, 2 
	
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall
	
	
