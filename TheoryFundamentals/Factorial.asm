INCLUDE Irvine32.inc

.data

res BYTE "The result is: ", 0Dh, 0Ah, 0
quest BYTE "Enter the Number: ", 0Dh, 0Ah, 0

.code
main PROC

	mov edx, OFFSET quest
	CALL WriteString
	CALL ReadInt

	push eax

	CALL Factorial

	mov edx, OFFSET res 
	CALL WriteString
	CALL WriteInt 
	CALL Crlf 

	exit 
main ENDP

Factorial PROC 

	push ebp
	mov ebp, esp

	;mov eax, [ebp+8]
	cmp eax, 0
	je basecase

	dec eax

	push eax
	CALL Factorial

	mov ebx, [ebp+8]
	mul ebx
	jmp endcase

	basecase:
		mov eax, 1

	endcase:
		pop ebp
		ret 4

Factorial ENDP

END main
