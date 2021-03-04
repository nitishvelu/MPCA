.text
    MOV R0, #0
    LOOP:
        SWI 0x201
        ADD R0,R0,#1
        MOV R4, #8000
        DELAY:
            SUB R4,R4,#1
            CMP R4,#0
            BNE DELAY
       	    CMP R0,#4

        BLE LOOP
        swi 0x011
