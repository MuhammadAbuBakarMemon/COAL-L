INCLUDE Irvine32.inc 

.data
intArr SWORD 0, 0, 0, 150, 120, 35, -12, 66, 4, 0
res BYTE "The first non-zero value is: ", 0
disapp BYTE "All the elements in the array were zero elements....", 0

.code 
main PROC 

MOV esi, 0;
MOV ecx, LENGTHOF intArr

L1:
	MOVSX eax, intArr[esi * TYPE intArr] 
	CMP eax, 0
	JE forward
	JMP final
	Forward:
		inc esi
		Loop L1

MOV edx, OFFSET disapp
CALL WriteString 
JMP ext

Final: 
MOV edx, OFFSET res 
CALL WriteString
CALL WriteInt
CALL Crlf 

ext:

exit 
main ENDP 
END main
