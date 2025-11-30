INCLUDE Irvine32.inc 

.data
pro BYTE "Enter 5 numbers: ", 0
larg BYTE "Largest Number: ", 0
smal BYTE "Smallest Number: ", 0

space BYTE " ",0

Small DWORD 0FFFFFFFFh
large DWORD 0

.code 
main PROC 

MOV ecx, 5

L1:
	MOV edx, OFFSET pro 
	CALL WriteString 
	CALL ReadDec
	PUSH eax
	Loop L1

MOV ecx, 5

L2:
	
	POP eax

	CMP eax, large
	JBE skipla
	MOV large, eax 

	skipla:
		CMP eax, small
		JAE skipsa
		MOV small, eax

		skipsa:

	Loop L2

	MOV edx, OFFSET larg
	CALL WriteString
	MOV eax, large
	CALL WriteDec
	CALL Crlf

	MOV edx, OFFSET smal
	CALL WriteString 
	MOV eax, small
	CALL WriteDec
	CALL Crlf

exit 
main ENDP 
END main
