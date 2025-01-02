         BR main
input1:  .BLOCK 2
input2:  .BLOCK 2
input3:  .BLOCK 2

print1:  deco input1, d
         stop
print2:  deco input2, d
         stop
print3:  deco input3, d
         stop

vs1_3:   lda input1, d 
         suba input3, d
         BRGE print1
         BRLT print3 ; BR print3

vs2_3:   lda input2, d
         suba input3, d
         BRGE print2
         BRLT print3 ; BR print3

main:    deci input1, d
         deci input2, d
         deci input3, d
         lda input1, d
         suba input2, d
         BRGE vs1_3
         BRLT vs2_3 ; BR 2vs3

         .end