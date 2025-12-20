INCLUDE Irvine32.inc

.data

myarray BYTE 10, 20, 30, 40
res BYTE "The result is: ", 0

.code

ArraySum PROTO 

main PROC

CALL ArraySum

EXIT
main ENDP

ArraySum PROC 
	mov ecx, LENGTHOF myarray
	mov eax, 0
	mov esi, OFFSET myarray

	l1:
		add al, BYTE PTR [esi]
		add esi, TYPE myarray
		loop l1

	mov edx, OFFSET res 
	CALL WriteString 
	CALL WriteDec
	
	ret
ArraySum ENDP

END main
