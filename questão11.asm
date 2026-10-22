.data
	valor:.asciiz "Digite um numero (negativo para terminar): "
	erro:.asciiz "Numero invalido! Digite um valor entre 0 e 100.\n"
	res0:.asciiz "\n[0-25]: "
	res1:.asciiz "\n[26-50]: "
	res2:.asciiz "\n[51-75]: "
	res3:.asciiz "\n[76-100]: "
.text
main:
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t3, 0

ler_numero:
    li $v0, 4
    la $a0, valor
    syscall

    li $v0, 5
    syscall
    move $t4, $v0

    bltz $t4, finalizar

    li $t5, 100
    bgt $t4, $t5, invalido

    li $t5, 25
    ble $t4, $t5, intervalo0

    li $t5, 50
    ble $t4, $t5, intervalo1

    li $t5, 75
    ble $t4, $t5, intervalo2

    addi $t3, $t3, 1
    j ler_numero

intervalo0:
    addi $t0, $t0, 1
    j ler_numero

intervalo1:
    addi $t1, $t1, 1
    j ler_numero

intervalo2:
    addi $t2, $t2, 1
    j ler_numero

invalido:
    li $v0, 4
    la $a0, erro
    syscall
    j ler_numero

finalizar:
    li $v0, 4
    la $a0, res0
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, res1
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, res2
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, res3
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall
