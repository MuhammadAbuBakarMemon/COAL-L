INCLUDE Irvine32.inc 

.data
res1 BYTE "largest (Unsigned) = ", 0
res2 BYTE "Largest (Signed) = ", 0
CONST DWORD 4

prompt BYTE "Enter Number ", 0
colon BYTE ": ", 0

n1 DWORD ?
n2 DWORD ?
n3 DWORD ?

.code 
main PROC 

MOV ecx, 3

L1: 
	MOV edx, OFFSET prompt
	CALL WriteString
	MOV eax, CONST 
	SUB eax, ecx
	CALL WriteDec
	MOV edx, OFFSET colon
	CALL WriteString 
	CALL ReadInt
	PUSH EAX
	Loop L1

POP n3
POP n2
POP n1

MOV eax, n1

CMP eax, n2
JAE case1
MOV eax, n2

case1:
	CMP eax, n3 
	JAE r1
	MOV eax, n3

r1: 
	MOV edx, OFFSET res1
	CALL WriteString
	CALL WriteDec
	CALL Crlf

MOV eax, n1
CMP eax, n2 
JGE case2
MOV eax, n2

case2: 
	CMP eax, n3
	JGE r2
	MOV eax, n3

r2:
	MOV edx, OFFSET res2
	CALL WriteString 
	CALL WriteInt
	CALL Crlf

exit 
main ENDP 
END main
