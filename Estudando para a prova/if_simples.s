# if (i == j)
#    f = g + h;
# else
#    f = g - h

# $s0, $s1, $s2, $s3, $s4
#  f    g    h    i    j

        .text
main:
        beq $s3, $s4, sum
        sub $s0, $s1, $s2
        j fim
sum:    add $s0, $s1, $s2
fim:    
