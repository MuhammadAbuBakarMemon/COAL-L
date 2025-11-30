INCLUDE Irvine32.inc 

.data
Marks DWORD 45, 78, 90, 32, 60, 49, 85
p BYTE "Passed Students: ", 0
f BYTE  "Failed Students: ", 0

pc DWORD 0
fc DWORD 0

.code 
main PROC 

CALL counting

MOV edx, OFFSET p
CALL WriteString 
MOV eax, pc
CALL WriteDec
CALL Crlf

MOV edx, OFFSET f
CALL WriteString 
MOV eax, fc
CALL WriteDec
CALL Crlf
	

exit 
main ENDP 

counting PROC USES ecx eax

MOV ecx, LENGTHOF Marks
	
MOV esi, 0

L1:
	MOV eax, Marks[esi * TYPE Marks]
	INC esi 

	CMP eax, 50 
	JGE pass
	INC fc
	JMP ext

	pass:
		INC pc

	ext:

	Loop L1 

	ret
counting ENDP

END main
