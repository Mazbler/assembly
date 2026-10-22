.data
	valor:.asciiz "Digite a altura em cm: "
	menor:.asciiz "\nMenor altura: "
	maior:.asciiz "\nMaior altura: "
.text
main:
    li $t0, 0

    li $t1, 9999
    li $t2, 0

ler:
    li $v0, 4
    la $a0, valor
    syscall

    li $v0, 5
    syscall
    move $t3, $v0

    blt $t3, $t1, nova_menor

verifica_maior:
    bgt $t3, $t2, novo_maior

continua:
    addi $t0, $t0, 1

    li $t4, 15
    blt $t0, $t4, ler
    j resultado

nova_menor:
    move $t1, $t3
    j verifica_maior

novo_maior:
    move $t2, $t3
    j continua

resultado:

    li $v0, 4
    la $a0, menor
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 4
    la $a0, maior
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall
