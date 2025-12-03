 LOADI  R0, 0x0003   ; 3
        LOADI  R1, 0x0006   ; greatest power (6)

        ADD    R2, R0, R0   ; 3 * 2^1 = 0x0006
        ADD    R3, R2, R2   ; 3 * 2^2 = 0x000C
        ADD    R4, R3, R3   ; 3 * 2^3 = 0x0018
        ADD    R5, R4, R4   ; 3 * 2^4 = 0x0030
        ADD    R6, R5, R5   ; 3 * 2^5 = 0x0060
        ADD    R7, R6, R6   ; 3 * 2^6 = 0x00C0

        HALT