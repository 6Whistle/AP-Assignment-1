	AREA	ARMex, CODE, READONLY
		ENTRY

Start
		MOV 	r0, #1						;Set data at r0 ~ r3
		MOV 	r1, #2
		MOV 	r2, #3
		MOV 	r3, #4
		LDR		r4, TEMP					;Load Temp->r4
		
		STRB 	r0, [r4]					;Store 0x01 at TEMP 
		STRB 	r1, [r4, #1]				;Store 0x02 at TEMP+1
		STRB 	r2, [r4, #2]				;Store 0x03 at TEMP+2
		STRB 	r3, [r4, #3]				;Store 0x04 at TEMP+3

		LDR		r5, [r4]					;r5 = 0x04030201

		STRB 	r3, [r4]					;Store 0x04 at TEMP
		STRB 	r2, [r4, #1]				;Store 0x03 at TEMP+1
		STRB 	r1, [r4, #2]				;Store 0x02 at TEMP+2
		STRB 	r0, [r4, #3]				;Store 0x01 at TEMP+3

		LDR		r6, [r4]					;r6 = 0x01020304
		
		

TEMP		& &00040000					;Address of TEMP
	MOV pc, lr

	END