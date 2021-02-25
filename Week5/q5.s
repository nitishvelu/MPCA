.data
	A: .ASCIZ "PES University"
	B: .ASCIZ ""


.text
	LDR R1,=A
	LDR R3,=B
	LOOP: 
                LDRB R0,[R1],#1
                CMP R0,#0
                ADDNE R2,R2,#1
                BNE LOOP
        
        SUB R2, R2, #1
        LDR R1, =A
        
        LOOP2:
                LDRB R4, [R1, R2]
                STRB R4, [R3], #1
                SUB R2, R2, #1
                CMP R2, #-1
                BNE LOOP2
       
       SWI 0X011 
