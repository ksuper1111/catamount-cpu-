
LOADI R0, #0xAA
LOADI R1, #0x55

AND R3, R0, R1      // (R0 & R1) stored in R3
BEQ R3, #0, safe    // if (R0 & R1) = 0 the addition is safe

unsafe:
    LOADI R2, #0    // loads 0 into R2 when the addition is  unsafepyt
    HALT

safe:
    OR R2, R0, R1   // (R0 | R1) stored in R2
    HALT
