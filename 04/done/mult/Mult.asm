@R2
M=0

@i
M=0

(LOOP)

    @R0
    D=M-D

    @END
    D;JEQ

    @R1
    D=M

    @R2
    M=D+M

    @i
    M=M+1
    D=M

    @R0
    D=M-D

    @LOOP
    D;JNE


(END)
    @END
    0;JMP