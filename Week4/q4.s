.text
	LDR R1,=A
	LDR R2,=B
	LDRB R3,[R2] ;Letter to be searched for
	MOV R5,#0
	
	LOOP: LDRB R4,[R1],#1
		  CMP R4,#0
		  BEQ RESULT
		  
		  CMP R4,R3
		  ADDEQ R5,R5,#1
		  B LOOP
		  
	RESULT: CMP R5,#0
			BNE FOUND
			LDR R0,=C
			SWI 0x02
			LDR R0,=B
			SWI 0x02
			LDR R0,=E
			SWI 0x02
			B END
			
	FOUND:
		   LDR R0,=C
		   SWI 0x02
		   LDR R0,=B
		   SWI 0x02
		   LDR R0,=D
	       SWI 0x02
		   B END
		
	END: ADD R5,R5,#48
	     LDR R7,=F
		 STRB R5,[R7]
		 LDR R0,=F
		 SWI 0x02
		 SWI 0x011
.data
	A: .ASCIZ "Hello World"
	B: .ASCIZ "o"
	C: .ASCIZ "Character "
	D: .ASCIZ " is Present.\n"
	E: .ASCIZ " is not Present.\n"
	F: .ASCIZ ""
