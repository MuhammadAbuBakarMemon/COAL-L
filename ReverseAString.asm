INCLUDE Irvine32.inc

.data

aName BYTE "Abraham Lincon", 0 
nameSize = ($ - aName - 1)

.code
main PROC

mov ecx, nameSize 
mov esi, 0

l1:
	mov eax, DWORD PTR aName[esi]
	push eax

	; can not push a BYTE sized
	;push aName[esi]
	inc esi
	loop l1 

mov ecx, nameSize
mov esi, 0

l2:
	pop eax
	mov aName[esi], al

	;pop aName[esi]
	inc esi
	loop l2

mov edx, OFFSET aName
CALL WriteString 
CALL Crlf

EXIT
main ENDP

END main
