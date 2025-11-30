INCLUDE Irvine32.inc 

.data
pro BYTE "Enter two numbers: ", 0
a DWORD ?
b DWORD ?

t BYTE "Condition True.", 0
f BYTE "Condition False.", 0

.code 
main PROC 

MOV edx, OFFSET pro
CALL WriteString
CALL ReadInt 
MOV a, eax
CALL ReadInt
MOV b, eax

MOV ebx, 100

CMP a, eax
JLE other 
CMP a, ebx
JGE other

MOV edx, OFFSET t
CALL WriteString 
CALL Crlf
JMP final

other: 
	MOV edx, OFFSET f
	CALL WriteString
	CALL Crlf 
	
final:

exit 
main ENDP 
END main
