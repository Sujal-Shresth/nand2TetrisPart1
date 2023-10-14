// Mul.asm
// Two numbers are stored in RAM[0], RAM[1]
// Multiply the numbers and store in RAM[2]

    @mul
    M = 0   // set mul = 0
    @i
    M = 0   //set i = 0

    (LOOP)
    @R0     
    D = M
    @i
    D = M - D   // calculate difference between RAM[1] and i
    @STOP
    D;JEQ       // end if difference is > 0

    @R1
    D = M
    @mul
    M = M + D   // set mul = mul + RAM[1]

    @R1
    D = A
    @i
    M = M + D   // i++

    @LOOP
    0;JMP       // loop it 

    (STOP)
    @mul
    D = M
    @R2
    M = D       // RAM[2] = mul
    
    (END)
    @END
    0;JMP       // end program