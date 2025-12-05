
LOADI R0, #0xC0
LUI R0, #0x01       // the original constant operand, decimal 448
LOADI R1, #0x06
LUI R1, #0x80     // last operand used by SHFT

SHFT R2, R0, R1     // (448 / 2^1)
SHFT R3, R2, R1     // (448 / 2^2)
SHFT R4, R3, R1     // (448 / 2^3)
SHFT R5, R4, R1     // (448 / 2^4)
SHFT R6, R5, R1     // (448 / 2^5)
SHFT R7, R6, R1     // (448 / 2^6)

HALT
