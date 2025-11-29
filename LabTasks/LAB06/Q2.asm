INCLUDE Irvine32.inc 

.data 

.data
m1 BYTE "Welcome", 0
m2 BYTE "You should not see this line", 0
m3 BYTE "Goodbye", 0

.code 
main PROC 

MOV ecx, 11
MOV eax, 5

L1:
	CALL WriteInt
	CALL Crlf
	INC eax
	Loop L1

exit 
main ENDP 
END main
