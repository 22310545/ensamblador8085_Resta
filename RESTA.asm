.DATA	1000H
	DB 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H

.ORG	0100H
	LXI H, 0FFFH

	CUENTA:
		INX H
		MOV A, M
		INR C
		INR A
		DCR A
		JNZ CUENTA

	DCR C
	DCX H
	MOV B, C
	LXI D, 1100H

	ACOMODA:
		MOV A, M
		STAX D
		DCX H
		INX D
		DCR B
		JNZ ACOMODA

	LXI D, 10FFH

	RESTA:
		INX D
		INX H
		LDAX D
		SUB M
		STAX D
		DCR C
		JNZ RESTA

HLT