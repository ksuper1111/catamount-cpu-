        LOADI  R0, 0x0001
        LOADI  R1, 0x0000
        LOADI  R2, 0x0009
        LOADI  R3, 0x0005

 loop:   ADD    R3, R3, R3

        STORE  R3, [R1]
        ADD    R1, R1, R0

        SUB    R2, R2, R0
        BNEZ   R2, loop

        HALT
