.text
main:       
            li $v0, 5
            syscall
            move $t0, $v0           #i

            li $v0, 5
            syscall
            move $t1, $v0           #j

            li $v0, 5
            syscall
            move $t2, $v0           #n

            #a[8] = n + a[j]

            sll $t1, $t1, 2         #j*4
            add $t1, $s0, $t1       #endereco de A[j]
            lw $t3, 0($t1)          # carrega A[j] em $t3


            add $t3, $t3, $t2       # A[j] + N

            addi $t1, $s0, 32       # Endereço de A[8] (8 * 4)
            sw $t3, 0($t1)          # Armazena o resultado em A[8]

            li $v0, 10
            syscall
