.text

    li $t0, 50 # $t0 = 50
    li $t1, 20 # $t1 = 20
    mul $s0, $t0, $t1 # $s0 = 100

    li $v0, 1
    add $a0, $zero, $s0
    syscall

    