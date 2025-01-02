          ;input two numbers, either 0 or positive, and output their product
          BR input
input1:  .BLOCK 2
input2:  .BLOCK 2
sum:     .BLOCK 2
         lda 0x0000, i
         sta sum, d

input:   deci input1, d
         deci input2, d

cal:     lda sum, d
         adda input1, d
         sta sum, d
         
while:   lda input2, d
         suba 0x0001, i
         BREQ end
         sta input2 ,d
         BR cal         

end:     deco sum, d
         STOP
         .END
