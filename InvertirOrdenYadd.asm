.DATA 0100h
	DB 01h, 02h, 03h, 04h, 06h, 07h, 08h, 09h

.ORG	0000h
	LXI h, 0107h
	LXI d, 0109h
	MVI c, 08h

	doWhile:
		MOV a, m
		STAX d
		DCX h
		INX d
		DCR c
		JNZ doWhile

	LXI h, 0100h
	LXI d, 0109h
	MVI c, 08h

	do:
		LDAX d
		ADD m
		STAX d
		INX h
		INX d
		DCR c
		JNZ do

HLT