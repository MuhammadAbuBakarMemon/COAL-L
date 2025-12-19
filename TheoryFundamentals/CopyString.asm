INCLUDE Irvine32.inc

.data

source BYTE "This is the source string",0
target BYTE SIZEOF source DUP(?)
const BYTE SIZEOF source

.code
main PROC

mov ecx, SIZEOF source
mov edi, OFFSET source

mov eax, 0

l1:
	mov bl, [edi]

	COMMENT !
	mov dl, const
	sub dl, cl
	movzx eax, dl
	!

	mov target[eax], bl
	inc edi
	inc eax
	loop l1

mov edx, OFFSET target
CALL WriteString
CALL Crlf

EXIT
main ENDP

END main
