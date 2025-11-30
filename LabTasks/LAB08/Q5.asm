INCLUDE Irvine32.inc 

.data
pro BYTE "Enter a number: ", 0
res BYTE "Factorial: ", 0

SUM DWORD 0

.code 
main PROC 

MOV edx, OFFSET pro
CALL WriteString
CALL ReadDec

MOV ecx, eax 
MOV eax, 1

L1:
	MUL ecx
	Loop L1 

;MOV SUM, eax 

MOV edx, OFFSET res
CALL WriteString
;MOV EAX, sum
CALL WriteDec

exit 
main ENDP 
END main
