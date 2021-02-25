.TEXT
    LDR R1,=A
	LOOP:
		LDRB R0,[R1],#1
		CMP R0,#0
		BEQ END
                SWI 0X00
		B LOOP

        END:
                SWI 0X11
.DATA

    A:.ASCIZ "Subject Code  Marks\nSUBJECT1      90\nSUBJECT2      93\nSUBJECT3      78\n\nTOTAL MARKS SCORED :  261 / 300\nPERCENTAGE :  87%\nGRADE: A"
    
