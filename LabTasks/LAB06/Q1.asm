INCLUDE Irvine32.inc 

.data 

.data
m1 BYTE "Welcome", 0
m2 BYTE "You should not see this line", 0
m3 BYTE "Goodbye", 0

.code 
main PROC 

MOV edx, OFFSET m1
CALL WriteString 
CALL Crlf 

JMP skip
MOV edx, OFFSET m2
CALL WriteString 
CALL Crlf

skip:
MOV edx, OFFSET m3
CALL WriteString 
CALL Crlf

exit 
main ENDP 
END main
