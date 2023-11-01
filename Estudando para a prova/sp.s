        .text
main:

        addi $sp, $sp, -12
        sw $t0, 0($sp)
        sw $t1, 4($sp)
        sw $t2, 8($sp)

        lw $t0, 4($sp)
        lw $t1, 0($sp)
        lw $t2, 8($sp)

        addi $sp, $sp, 12
        