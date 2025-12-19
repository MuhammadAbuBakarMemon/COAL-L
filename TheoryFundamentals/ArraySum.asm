INCLUDE Irvine32.inc

.data

intarray DWORD 10000h,20000h,30000h,40000h

.code
main PROC

mov ecx, LENGTHOF intarray
mov edi, OFFSET intarray
mov eax, 0

l1:
	add eax, [edi]
	add edi, TYPE intarray
	loop l1 

CALL WriteHex
CALL Crlf 

EXIT
main ENDP

END main
