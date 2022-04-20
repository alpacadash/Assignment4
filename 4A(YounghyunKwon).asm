TITLE Move variables to the registers with direct-offset operands (4A(YounghyunKwon).asm)
;move the variables to the registers with direct-offset operands

; Younghyun Kwon
INCLUDE Irvine32.inc

.DATA
		Uarray WORD 1000h, 2000h, 3000h, 4000h
		Sarray SWORD -1, -2, -3, -4

.CODE
main	PROC
		movzx EAX, Uarray		;move the first Uarray to EAX
		movzx EBX, Uarray+2		;move the second Uarray(unsigned 16-bit value->+2 to the address) to EBX
		movzx ECX, Uarray+4		;move the third Uarray to ECX
		movzx EDX, Uarray+6		;move the fourth Uarray to EDX
		call DumpRegs			;display

		movsx EAX, Sarray		;move the first Sarray to EAX
		movsx EBX, Sarray+2		;move the second Sarray(signed 16-bit value->+2 to the address) to EBX
		movsx ECX, Sarray+4		;move the third Uarray to ECX
		movsx EDX, Sarray+6		;move the fourth Uarray to EDX
		call DumpRegs			;display

		exit
main	ENDP
		END		main
