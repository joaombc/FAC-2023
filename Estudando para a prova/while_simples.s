# i = 0;
# while (i < n){
#   A[i] = 0;
#   i++
# }

# i = $t0, n = $s0, A[] = $s1


            .text
main:
            add $t0, $t0, $zero
    loop:   slt $t2, $t0, $s0           # i < n
            beq $t2, $zero, exit        # se $t2 == 1 ent, quer dizer que o i < n, e continuará sem ir pelo label
            sll $t1, $t0, 2             # t1 = i*4
            add $t1, $s1, $t1           # t1 = end de A[i]
            sw $zero, 0($t1)            # salva 0 em A[i]
            addi $t0, $t0, 1            # i++
            j loop
    
    exit: