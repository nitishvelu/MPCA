.TEXT

LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R3,#5
MOV R4,#0
loop:LDR R5,[R0],#4
LDR R6,[R1],#4
MUL R7,R5,R6
ADD R4,R4,R7
STR R7,[R2],#4
SUBS R3,R3,#1
cmp R3,#0
BNE loop
SWI 0X11

.DATA
A:.WORD 10, 20, 30, 40, 50
B:.WORD 10, 20, 30, 40, 50
C:.WORD 0
