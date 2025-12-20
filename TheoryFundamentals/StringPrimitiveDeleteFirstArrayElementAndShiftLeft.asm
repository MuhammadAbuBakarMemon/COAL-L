INCLUDE Irvine32.inc

.data

ray DWORD 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

.code
main PROC

CLD

mov esi, OFFSET ray + 4
mov edi, OFFSET ray
mov ecx, LENGTHOF ray - 1
rep movsd

mov ecx, LENGTHOF ray - 1
mov esi, OFFSET ray

l1: 
	mov eax, DWORD PTR [esi]
	add esi, TYPE ray
	CALL WriteDec
	CALL Crlf 
	loop l1

main ENDP
END main
