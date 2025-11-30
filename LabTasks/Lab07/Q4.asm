INCLUDE Irvine32.inc 

.data
prompt BYTE "Enter a numberr from 1 to 7 inclusive: ", 0
mon BYTE "=> Monday", 0
tue BYTE "=> Tuesdays", 0
wed BYTE "=> Wednesday", 0
thurs BYTE "=> Thursday", 0
fri BYTE "=> Friday", 0
sat BYTE "=> Saturday", 0
sun BYTE "=> Sunday", 0

inv BYTE "Error! Number outside the specified range was entered////", 0

.code 
main PROC 

MOV edx, OFFSET prompt
CALL WriteString
CALL Crlf 
CALL ReadDec

CMP eax, 1
JE mo

CMP eax, 2
JE tu

CMP eax, 3
JE we

CMP eax, 4
JE th

CMP eax, 5
JE fr

CMP eax, 6
JE sa

CMP eax, 7
JE su

MOV edx, OFFSET inv
CALL WriteString
JMP skip

mo:
	CALL WriteDec
	MOV edx, OFFSET mon
	CALL WriteString
	JMP skip

tu:
	CALL WriteDec
	MOV edx, OFFSET tue
	CALL WriteString
	JMP skip

we:
	CALL WriteDec
	MOV edx, OFFSET wed
	CALL WriteString
	JMP skip

th:
	CALL WriteDec
	MOV edx, OFFSET thurs
	CALL WriteString
	JMP skip

fr:
	CALL WriteDec
	MOV edx, OFFSET fri
	CALL WriteString
	JMP skip

sa:
	CALL WriteDec
	MOV edx, OFFSET sat
	CALL WriteString
	JMP skip

su:
	CALL WriteDec
	MOV edx, OFFSET sun
	CALL WriteString
	JMP skip

skip:
	CALL Crlf

exit 
main ENDP 
END main
