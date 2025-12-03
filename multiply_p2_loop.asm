        LOADI  R0, 0x0001   ; 1
        LOADI  R1, 0x0000   ; address
        LOADI  R2, 0x0009   ; count (9 values)
        LOADI  R3, 0x0005   ; current = 5

loop:   ADD    R3, R3, R3   ; current = current * 2

        STORE  R3, [R1]     ; MEM[address] = current
        ADD    R1, R1, R0   ; address++

        SUB    R2, R2, R0   ; count--
        BNEZ   R2, loop     ; or your ISA's "branch if not zero"

        HALT
