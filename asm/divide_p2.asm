//Write an assembly program that divides some constant by powers of two and leaves the results in
//registers. Let’s use the 0x1C0 (decimal 448) as the dividend, and the constant 0x7 (decimal 7)
//as the divisor

//Hint: Right shift requires that we have the MSB set in our second operand.
//Take a look at euclid.asm to see how we use LUI to set bits in the upper byte