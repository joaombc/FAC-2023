.text

        li $t0, 32
        li $t1, 5


        div $t0, $t1

        #colocar a parte inteira em $s0

        mflo $s0

        #colocar o resto em $s1

        mfhi $s1