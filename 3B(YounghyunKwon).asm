TITLE Adding four 32-bit Integer Variables (3B(YounghyunKwon).asm)
;This program will contain four 32-bit integer variables and add these values together, saving the result in a variable The sum should still be in the EAX register when you call the library routine DumpRegs

; Younghyun Kwon
INCLUDE Irvine32.inc
.data
;declare the four variables
val1 dword 10000h

val2 dword 20000h

val3 dword 30000h

val4 dword 40000h

result dword ?

.code
main	PROC
		mov eax,val1		;move val1 to eax
		add eax,val2		;add val2 to eax
		add eax,val3		;add val3 to eax
		add eax,val4		;add val4 to eax
		mov result,eax		;store the sum in the result
		;the sum is still in eax
		call DumpRegs		;display registers

		exit
main	ENDP
		END		main