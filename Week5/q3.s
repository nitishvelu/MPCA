.text
	LDR R1,=A
	LDR R2,=B
	
	loop: LDRB R0,[R1],#1
		  CMP R0,#0
		  BEQ END
		  STRB R0,[R2],#1
		  B loop
		  
	END: STRB R0,[R2] 
		 SWI 0x011

.data
	A: .ASCIZ "nitish"
	B: .ASCIZ ""
