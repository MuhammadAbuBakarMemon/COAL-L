INCLUDE Irvine32.inc 

.data
prompt BYTE "Enter a Number: ", 0
s DWORD 4

res BYTE "Valid Non-Zero Numbers entered were: ", 0

.code 
main PROC 

MOV ecx, 5


L1:
	MOV edx, OFFSET prompt
	CALL WriteString 
	CALL ReadInt 
	Loopnz L1

CALL crlf
SUB S, ecx
MOV eax, 0
MOV eax, S

MOV edx, OFFSET res
CALL WriteString
CALL WriteDec
CALL Crlf 

exit 
main ENDP 
END main
