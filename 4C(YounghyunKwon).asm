TITLE Caculating the arithmetic expression (4C(YounghyunKwon).asm)
;caculate the following arithmetic expression and write the hexadecimal value of EAX

; Younghyun Kwon
INCLUDE Irvine32.inc

.DATA
		val1 SDWORD 8
		val2 SDWORD -15
		val3 SDWORD 20

.CODE
main	PROC

		mov EAX, val2		;EAX = FFFFFFF1h
		neg EAX				;EAX = 0000000Fh
		add EAX, 7			;EAX = 00000016h
		sub EAX, val3		;EAX = 00000002h
		add EAX, val1		;EAX = 0000000Ah
		call DumpRegs

		exit
main	ENDP
		END		main