.data

    caracter: .byte "a"

.text

    li $v0, 4
    la $a0, caracter
    syscall
    li $v0, 10
    syscall