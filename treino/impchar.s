.data

    caracter: .byte "a"

.text

main:li $v0, 4
    la $a0, caracter
    syscall
    li $v0, 10
    syscall
