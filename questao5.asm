.data
	cateto1:.asciiz"\n digite o valor do primeiro cateto:"
	cateto2:.asciiz"\n digite o valor do segundo cateto:"
	resultado:.asciiz"\n o valor da hipotenusa é:"
.text
main:
	li $v0, 4
	la $a0, cateto1
	syscall
	
	li $v0, 6
	syscall
	mov.s $f2, $f0
	
	li $v0, 4
	la $a0, cateto2
	syscall
	
	li $v0, 6
	syscall
	mov.s  $f4, $f0
	
	mul.s  $f6, $f2, $f2
	mul.s  $f8, $f4, $f4
	add.s  $f10, $f6, $f8
	sqrt.s $f12, $f10
	
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 2
	mov.s  $f12, $f12
	syscall
	
	li $v0, 10
	syscall
	
	
	