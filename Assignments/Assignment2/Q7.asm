INCLUDE Irvine32.inc

COMMENT !

Q-7: Write an assembly language program that checks whether a signed byte value in register
AL is positive, negative, or zero, and displays a message accordingly (use Irvine library
procedures).
INCLUDE Irvine32.inc

!

.data

positive BYTE "Value is Positive.", 0
negative BYTE "Value is Negative.", 0
zero BYTE "Value is Zero.", 0

pro BYTE "Enter value: ", 0


.code
main PROC

mov edx, OFFSET pro
CALL WriteString 
CALL Crlf
CALL ReadInt

	OR al, al
	jz ze
	js nega	
	jmp pos

	ze:
	mov edx, OFFSET Zero
	CALL WriteString
	CALL Crlf 
	jmp ext

	nega:
	mov edx, OFFSET Negative
	CALL WriteString
	CALL Crlf 
	jmp ext

	pos:
	mov edx, OFFSET Positive
	CALL WriteString
	CALL Crlf 

	ext:

	exit 
main ENDP


END main
