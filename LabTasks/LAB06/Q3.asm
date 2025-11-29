INCLUDE Irvine32.inc 

.data 
const DWORD 6

.data
p BYTE "*", 0

.code 
main PROC 
MOV al, p

MOV ecx, 5

L1:
	
	mov edx, ecx

	MOV ecx, const
	SUB ecx, edx
		
		L2:
			CALL WriteChar
			Loop L2

		CALL Crlf
	mov ecx, edx

	Loop L1


exit 
main ENDP 
END main
