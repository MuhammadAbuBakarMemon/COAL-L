INCLUDE Irvine32.inc 

.data

f BYTE "First Number: ", 0
s BYTE "Second Number: ", 0

p BYTE "Product: ", 0

n1 DWORD ?
n2 DWORD ?

.code 
main PROC 

MOV edx, OFFSET f
CALL WriteString 
CALL ReadDec
MOV n1, eax

MOV edx, OFFSET s
CALL WriteString 
CALL ReadDec
MOV n2, eax

MOV eax, 0
MOV ebx, n1 
MOV ecx, n2 

MultiplicationLoop: 

	CMP ebx, 0
	JE Finished

	TEST ebx, 1
	JZ skipAddition

	ADD eax, ecx

	skipAddition: 
		SHL ecx, 1
		SHR ebx, 1

	JMP MultiplicationLoop

Finished:
	MOV edx, OFFSET p
	CALL WriteString 
	CALL WriteDec
	CALL Crlf 

exit 
main ENDP 
END main
