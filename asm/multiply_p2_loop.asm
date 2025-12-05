
        LOADI   R0, #0x0001     ; R0 = 1   (increment value)
        LOADI   R1, #0x0000     ; R1 = 0   (memory address)
        LOADI   R2, #0x0009     ; R2 = 9   (loop counter)
        LOADI   R3, #0x0005     ; R3 = 5   (initial multiplicand)
        LOADI   R4, #0x0001

Loop:
        SHFT    R3, R3, R4      ; R3 = R3 << 1  (multiply by 2)
        STORE   R3, [R1]        ; MEM[R1] = R3
        ADD     R1, R1, R0      ; R1 = R1 + 1
        SUB     R2, R2, R0      ; R2 = R2 - 1
        BNE     Loop            ; repeat until R2 = 0;

        HALT
