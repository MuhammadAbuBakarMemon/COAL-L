INCLUDE Irvine32.inc 

.data
arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20

res BYTE "The requested value [", 0
found BYTE "] was found in the array", 0
nfound BYTE "] was not found in the array", 0

prompt BYTE "Enter the value to search for: ", 0

.code 
main PROC 

MOV eax, 0
MOV edx, OFFSET prompt
CALL WriteString 
CALL ReadInt

MOV ecx, LENGTHOF arr
MOV esi, 0

MOV edx, OFFSET res
CALL WriteString 
CALL WriteDec

L1:
	MOVSX ebx, arr[esi * TYPE arr]
	CMP ebx, eax
	JE F
	inc esi
	Loop L1

JMP NF

F:
	MOV edx, OFFSET found
	CALL WriteString 
	CALL Crlf 
	JMP skip

nf:		
	MOV edx, OFFSET nfound
	CALL WriteString 
	CALL Crlf 

skip: 

exit 
main ENDP 
END main
