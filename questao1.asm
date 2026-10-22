.data
	msg1:.asciiz"\ndigite o comprimento do terreno:"
	msg2:.asciiz"\ndigite a largura do terreno:"
	msg3:.asciiz"\na area do terreno é:"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	mul $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	


