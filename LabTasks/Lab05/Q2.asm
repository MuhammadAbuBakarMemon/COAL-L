INCLUDE Irvine32.inc 

.data 

myByte BYTE 12h
myWord WORD 1234h
myDword DWORD 12345678h

.code 
main PROC 

; a part
MOV esi, OFFSET myByte 
CALL DumpRegs 

MOV esi, OFFSET myWord
CALL DumpRegs

MOV esi, OFFSET myDword
CALL DumpRegs

; b part 

MOV eax, 0
MOV AX, WORD PTR myDword
CALL WriteHex

; c part

MOV ebx, 0

MOV bx, TYPE myByte
CALL DumpRegs

MOV bx, TYPE myWord
CALL DumpRegs

MOV bx, TYPE myDword
CALL DumpRegs

exit 
main ENDP 
END main
