INCLUDE Irvine32.inc

.data


.code
main PROC

mov ecx, 10 

l1:
	mov eax, 100
	CALL RandomRange
	CALL WriteInt 
	CALL Crlf
	loop l1

main ENDP
END main
