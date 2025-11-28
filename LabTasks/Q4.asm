INCLUDE Irvine32.inc

.data 
Xval DWORD 25
Yval DWORD 15
Zval DWORD 40
Rval DWORD ?

res1 BYTE "--- The expression mounts to ---", 0

.code 
main PROC 

MOV eax, 0
MOV ebx, 0

MOV eax, Xval
ADD eax, Yval 
SUB eax, Zval

NEG eax
MOV Rval, eax

MOV edx, OFFSET res1
CALL WriteString 
CALL Crlf

CALL WriteDec
CALL Crlf

exit 
main ENDP
END main
