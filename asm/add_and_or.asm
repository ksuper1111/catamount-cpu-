
LOADI R0, #0xAA
LOADI R1, #0x55

AND R3, R0, R1      // (R0 & R1) stored in R3
BQE R3, #0, Safe    // if (R0 & R1) = 0 the addition is safe
BNE R3, #0, Unsafe  // if (R0 & R1) = 0 the addition is unsafe

Safe:
    OR R2, R0, R1   // (R0 | R1) stored in R2

Unsafe:
    LOADI R2, #0    // loads 0 into R2 when the addition is  unsafe

HALT