.data

    msg: .word 40 

.text
main: li $v0, 1
      lw $a0, msg
      syscall
      li $v0, 10
      syscall
    