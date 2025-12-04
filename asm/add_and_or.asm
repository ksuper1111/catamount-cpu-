//Write an assembly program that determines if it’s safe to use bitwise OR to “add” two operands,
//and if so, performs the “addition.”
//For example, if our operands are 0b00001010 and 0b00000101 it is safe to use bitwise OR to produce a sum.
//This is because the two operands share no bits in common.
//However, if our operands are 0b00001101 and 0b00001011 it is not safe to use bitwise OR to produce a sum,
//because the two operands share bits in common.

//Your program should load two operands, 0xAA and 0x55 into registers R0, R1,
//respectively using LOADI. Then it check to see if the operation is safe.
//If it is, it should store the result of the OR in R2. If the operation is not safe,
//it should store zero in R2.

LOADI R0, #0XAA
LOADI R1, #0X55

AND R3, R0, R1      // (R0 & R1) stored in R3
BQE R3, #0, Safe    // if (R0 & R1) = 0 the addition is safe
BNE R3, #0, Unsafe  // if (R0 & R1) = 0 the addition is unsafe

Safe:
    OR R2, R0, R1   // (R0 | R1) stored in R2

Unsafe:
    LOADI R2, #0    // loads 0 into R2 when the addition is  unsafe