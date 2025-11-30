INCLUDE Irvine32.inc 

.data
pro BYTE "Enter 5 numbers: ", 0
rev BYTE "Reversed Order: ", 0
space BYTE " ",0

.code 
main PROC 

MOV ecx, 5

L1:
	MOV edx, OFFSET pro 
	CALL WriteString 
	CALL ReadDec
	PUSH EAX
	Loop L1

MOV ecx, 5

L2:
	MOV edx, OFFSET rev
	POP EAX
	CALL WriteDec
	MOV edx, OFFSET space
	CALL WriteString 
	Loop L2

CALL Crlf

exit 
main ENDP 
END main
