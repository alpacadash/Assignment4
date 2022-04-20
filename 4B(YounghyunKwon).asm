TITLE Reverse the elements (4B(YounghyunKwon).asm)
;reverse the elements of the integer array

; Younghyun Kwon
INCLUDE Irvine32.inc

.DATA
		array WORD 10h, 20h, 30h, 40h, 50h, 60h, 70h

.CODE
main	PROC

		mov ESI, OFFSET array
		mov ECX, LENGTHOF array
		mov EBX, TYPE array
		call DumpMem			;display the elements of the array

		mov ESI, 0									;assign ESI 0
		mov EDI, (LENGTHOF array - 1)*TYPE array	;assign EDI a value needed to reach the last elements
		mov ECX, LENGTHOF array/2					;assign ECX the number of iterations needed

L1:
		mov AX, [array+ESI]			;move the target element to AX
		xchg AX, [array+EDI]		;exchange AX and the opposite element
		mov [array+ESI], AX			;move AX containing the opposite element to the target element
		
		add ESI, TYPE array			;change the target to the next
		sub EDI, TYPE array			;change the opposite target to the next
		loop L1						;iterate until ECX gets 0

		mov ESI, OFFSET array
		mov ECX, LENGTHOF array
		mov EBX, TYPE array
		call DumpMem				;display the reversed array

		exit
main	ENDP
		END		main