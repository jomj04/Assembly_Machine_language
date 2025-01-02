         BR while
input:   .BLOCK 2
max:     .BLOCK 2
         lda 0x0000, i
         sta max, d

while:   deci input, d
         lda input, d
         BREQ end
         suba max, d
         BRLT while
         lda input, d
         sta max, d
         BR while

end:     deco max, d
         STOP
         .END