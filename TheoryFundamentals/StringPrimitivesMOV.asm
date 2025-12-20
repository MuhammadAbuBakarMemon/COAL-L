INCLUDE Irvine32.inc

.data

source BYTE "Abu Bakar", 0
target BYTE SIZEOF source DUP (?)

.code
main PROC

cld

mov esi, OFFSET source 
mov edi, OFFSET target 
mov ecx, SIZEOF source

rep movsb

mov edx, OFFSET target 
CALL WriteString 
CALL Crlf 

main ENDP
END main
