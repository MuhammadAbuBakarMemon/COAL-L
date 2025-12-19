INCLUDE Irvine32.inc

.data

intarray DWORD 10000h,20000h,30000h,40000h
temp DWORD 0d

.code
main PROC

mov ecx, 10
mov esi, 0

l1:
	
	mov temp, ecx
	mov ecx, 20

	l2:
		inc esi
		loop l2

	mov ecx, temp
	loop l1

mov eax, esi
CALL WriteDec
CALL Crlf 

EXIT
main ENDP

END main
