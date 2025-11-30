INCLUDE Irvine32.inc

.data 
num1 WORD 1234h
num2 WORD 5678h

res1 BYTE "--- Before Swapping ---", 0
res2 BYTE "--- After Swapping ----", 0

.code 
main PROC 

MOV eax, 0
MOV ebx, 0

MOV edx, OFFSET res1
CALL WriteString
CALL Crlf

MOV ax, num1
MOV bx, num2

CALL DumpRegs
CALL Crlf

MOV edx, OFFSET res2
CALL WriteString
CALL Crlf

XCHG ax, bx

MOV num1, ax 

MOV num2, bx

CALL DumpRegs
CALL Crlf

exit 
main ENDP
END main
