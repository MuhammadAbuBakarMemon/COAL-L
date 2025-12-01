INCLUDE Irvine32.inc 

.data

pro BYTE "Original Value: ", 0
res BYTE "Encrypted Value: ", 0

l = 8
n2 DWORD ?

inpBuffer BYTE l + 2 DUP (?)

.code 
main PROC 

MOV edx, OFFSET pro
CALL WriteString 

MOV ecx, SIZEOF inpBuffer 
MOV edx, OFFSET inpBuffer
CALL ReadString 
CALL Crlf 

MOV ecx, eax
MOV esi, 0
MOV bl, 0

parse: 
	SHL bl, 1
	MOV al, inpBuffer[esi * TYPE inpBuffer]
	TEST al, 1
	JZ skip
	OR bl, 1

	skip:
	inc esi
	Loop Parse

MOV al, bl

ROL al, 2
SHR al, 1

MOV edx, OFFSET res
CALL WriteString 
AND eax, 000000FFh
CALL WriteBin
CALL Crlf 

exit 
main ENDP 
END main
