INCLUDE Irvine32.inc

.data 
MAX = 100
MIN EQU 10

v1 DWORD MAX
v2 DWORD MIN 

res1 BYTE "--- The Sum is: ---", 0

.code 
main PROC 

MOV eax, 0
MOV ebx, 0

MOV eax, v1
ADD eax, v2

MOV edx, OFFSET res1
CALL WriteString 
CALL Crlf

CALL WriteDec
CALL Crlf

exit 
main ENDP
END main
