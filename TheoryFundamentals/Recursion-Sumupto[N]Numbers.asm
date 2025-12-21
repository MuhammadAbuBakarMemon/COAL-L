INCLUDE Irvine32.inc

.data

res BYTE "The result is: ", 0Dh, 0Ah, 0

.code
main PROC

	mov ecx, 5
	mov eax, 0

	CALL Calcsum

	mov edx, OFFSET res 
	CALL WriteString
	CALL WriteInt
	CALL Crlf

	exit 
main ENDP

Calcsum PROC 

	cmp ecx, 0
	jz next

	add eax, ecx
	dec ecx
	CALL Calcsum

	next:
		ret 
Calcsum ENDP

END main
