INCLUDE Irvine32.inc 

.data
divisor BYTE 2
;t BYTE ?
m1 BYTE "Final Value of AX: ", 0
m2 BYTE "Final Value of BX: ", 0

.code 
main PROC 

MOV eax, 0
MOV ebx, 0

MOV AX,45 ; A = 45
MOV BX, 20 ; B = 20

CMP ax, bx 
JE equal_case
JA greater_case 
JB less_case

equal_case:
	DIV divisor
	; this commented part is corrrct but is just one way of solving these type of questions
	;MOV t, al
	;MOV bx, WORD PTR t

	MOVZX bx, al
	JMP final
	
greater_case:
	SUB ax, bx 
	JMP final
	

less_case:
	ADD ax, bx 
	
final:

MOV edx, OFFSET m1
CALL WriteString
CALL WriteDec
CALL Crlf

MOV eax, ebx
MOV edx, OFFSET m2
CALL WriteString
CALL WriteDec
CALL Crlf

exit 
main ENDP 
END main
