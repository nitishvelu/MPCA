.data
	A: .ASCIZ "Myname"


.text
	LDR R1,=A
	LOOP: 
                LDRB R0,[R1],#1
                CMP R0,#0
                BEQ END
                ADD R10,R10,#1
                BNE LOOP
	END:
	        SWI 0x011

