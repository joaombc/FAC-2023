# int main(){
#   int a = 3;
#   int b = 2;
#   printf("%d\n", media(a,b));
#   return 0;
# }
# 
# int media(int a, intb){
#   return ((a+b)/2);
# }


# main              media
# $s0 = a           $a0 = a
# $s1 = b           $a1 = b

        .text
main:
        li $s0, 3
        li $s1, 2
        # carrega args
        move $a0, $s0
        move $a1, $s1
        # chama procedimento
        jal media
        # imprime resultado
        move $a0, $v0
        li $v0, 1
        syscall             # imprime media(int)

        li $v0, 11
        li $a0, 10
        syscall             # \n

media: 
        add $v0, $a0, $a1
        srl $v0, $v0, 1
        jr $ra