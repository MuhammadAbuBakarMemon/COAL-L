INCLUDE Irvine32.inc 

.data
on BYTE "Bit 0 is ON.", 0
off BYTE "Bit 0 is OFF.", 0

.code 
main PROC 

MOV al, 4
MOV bl, 21
MOV cl, 93

AND al, 01010101b
AND bl, 01010101b
AND cl, 01010101b

OR al, 01010101b
OR bl, 01010101b
OR cl, 01010101b

XOR al, 10101010b
XOR bl, 10101010b
XOR cl, 10101010b

TEST al, 1
JNZ nzal
MOV edx, OFFSET off
CALL WriteString 
CALL Crlf

nzal:
	MOV edx, OFFSET on
	CALL WriteString 
	CALL Crlf



exit 
main ENDP 
END main
