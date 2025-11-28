INCLUDE Irvine32.inc

.data 
num1 BYTE 25
num2 WORD 1200h
num3 DWORD ?

.code 
main PROC 

MOV al, num1

;the line below is incorrect as assmebly's MOVSX and MOVZX instructions can not write directly into memory, they can ont wite directly into registers
;MOVZX num3, al

MOVZX eax, al
MOV num3, eax
CALL WriteInt
CALL Crlf

MOV ax, num2
MOVZX eax, ax
MOV num3, eax
CALL WriteHex
CALL Crlf

exit 
main ENDP
END main
