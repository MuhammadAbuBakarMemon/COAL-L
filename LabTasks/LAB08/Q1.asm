
INCLUDE Irvine32.inc 

.data
pro BYTE "Enter number: ", 0
PositiveNumbers DWORD 0
NegativeNumbers DWORD 0
Zeros DWORD 0

p BYTE "Positive Numbers: ", 0
z BYTE "Zeros: ", 0
n BYTE "Negative Numbers: ", 0

.code 
main PROC 

MOV ecx, 5

L1:
	MOV edx, OFFSET pro 
	CALL WriteString 
	CALL ReadInt
	PUSH EAX
	Loop L1

CALL Crlf

MOV ecx, 5

L2:
	POP EAX
	CMP EAX, 0
	JZ zero
	JG Pos
	
	INC NegativeNumbers
	JMP ext

	zero: 
		INC Zeros 
		JMP ext

	Pos:
		INC PositiveNumbers
		JMP ext

	ext: 
	Loop L2

MOV eax, PositiveNumbers
MOV edx, OFFSET p
CALL WriteString 
CALL WriteDec
CALL Crlf 

MOV eax, NegativeNumbers
MOV edx, OFFSET n
CALL WriteString 
CALL WriteDec
CALL Crlf 

MOV eax, Zeros
MOV edx, OFFSET z
CALL WriteString 
CALL WriteDec
CALL Crlf 

exit 
main ENDP 
END main
