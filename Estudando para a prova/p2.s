        .text
main:

        #if conditions:
        slt $t1, $t0, $t2       #se $t0 < $t2, ent $t1 = 1, se não $t1 = 0

        stlu $t1, $t0, $t2      #stlu pode retornar valores diferentes de slt, uma vez que 
                                #ele ignora o valor negativo

                                #ex
        slt reg, -100, 99       # reg = 1
        sltu reg, -100, 99      # reg = 0


        #desvio de condicional

        #branch if equal
        beq $t0, $t1, label       # se t0 == t1 desvia o fluxo para alguma label
        
        #branch if not equal
        bne $t0, $t1, label       # se t0 != t1 desvia o fluxo para alguma label

        # E se eu queiser um >= ?
        slt $t0, reg1, reg2       # se o meu reg1 < reg2, ent $t0 = 1,
        beq $t0, $zero, label     # ent $t0 != 0, logo reg1>=reg2 

        bge $t1, $t2, label       # branch if greater or equal
        bgt $t1, $t2, label       # branch if greater than
        ble $t1, $t2, label       # branch if less or equal
        blt $t1, $t2, label       # branch if less than 

        # desvio incondicional
        j label                   # desvia para a label

        