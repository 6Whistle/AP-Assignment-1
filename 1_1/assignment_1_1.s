	AREA	ARMex, CODE, READONLY
		ENTRY

Start

		LDR 		r1, TEMP			;Load TEMP->r1

		MOV		r0, #0x07
		STRB		r0, [r1]				;TEMP->0x07 save
		MOV		r0, #0x0A
		STRB		r0, [r1, #1]				;TEMP+1->0x0A07 save
		MOV		r0, #0x0B
		STRB		r0, [r1, #2]				;TEMP+2->0x0B0A07 save



		
		LDRB	r4, [r1]				;r0->TEMP( 0x07 )Load
		CMP		r4, #10
		
		MOVEQ	r5, #3				;if r4 = 10, r5 = 3
		MOVLT		r5, #2				;if r4 < 10, r5 = 2
		MOVGT	r5, #1				;if r4 > 10, r5 = 1
		
		LDRB	r4, [r1, #1]				;r0->TEMP+1( 0x0A ) Load
		CMP		r4, #10
		
		MOVEQ	r5, #3				;if r4 = 10, r5 = 3
		MOVLT		r5, #2				;if r4 < 10, r5 = 2
		MOVGT	r5, #1				;if r4 > 10, r5 = 1
		
		LDRB	r4, [r1, #2]				;r0->TEMP( 0x0B )Load
		CMP		r4, #10
		
		MOVEQ	r5, #3				;if r4 = 10, r5 = 3
		MOVLT		r5, #2				;if r4 < 10, r5 = 2
		MOVGT	r5, #1				;if r4 > 10, r5 = 1
	
		
TEMP		&	&0040000				;address of TEMP

			MOV pc, lr
			END