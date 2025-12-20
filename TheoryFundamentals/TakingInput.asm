INCLUDE Irvine32.inc

.data

res BYTE "Enter a string: ", 0Dh, 0Ah, 0
ssize = 500
inp BYTE ssize DUP (?)

filename BYTE 80 DUP(0)

.code
main PROC

mov edx, OFFSET filename 
mov ecx, SIZEOF filename - 1
CALL ReadString

COMMENT!
mov edx, OFFSET res
CALL WriteString 

mov edx, OFFSET inp
mov ecx, ssize
CALL ReadString 
CALL Crlf

mov edx, OFFSET inp
CALL WriteString 
CALL Crlf
!

main ENDP
END main
