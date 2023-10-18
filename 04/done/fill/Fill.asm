(START)

    @KBD
    D=M

    @BLACKEN
    D;JGT

    @WHITEN
    D;JEQ
    
    (BLACKEN)

        @i
        M=0

        (LOOP_B)     // 32*16 columns, 16 columns can be set to -1 at once, repeat this 8192 times

            @i
            D=M
            @SCREEN
            A=D+A
            M=-1

            @i
            M=M+1
            
            @8192
            D=A
            @i
            D=D-M

            @LOOP_B
            D;JGT

        @START
        0;JMP

    (WHITEN)

        @i
        M=0

        (LOOP_W)     // 32*16 columns, 16 columns can be set to -1 at once, repeat this 8192 times
            @i
            D=M
            @SCREEN
            A=D+A
            M=0

            @i
            M=M+1
            
            @8192
            D=A
            @i
            D=D-M

            @LOOP_W
            D;JGT

        @START
        0;JMP



