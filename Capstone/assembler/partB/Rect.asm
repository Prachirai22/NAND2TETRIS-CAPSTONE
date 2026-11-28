    @16
    D=A
    @rowsLeft
    M=D
    @SCREEN
    D=A
    @pixelAddr
    M=D

(DRAW_ROW)
    @pixelAddr
    A=M
    M=-1

    @32
    D=A
    @pixelAddr
    M=D+M

    @rowsLeft
    MD=M-1
    @DRAW_ROW
    D;JGT

(HALT)
    @HALT
    0;JMP
