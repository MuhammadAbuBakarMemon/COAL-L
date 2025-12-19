INCLUDE Irvine32.inc

MAX EQU 10

.data

byteval DWORD 10d

.code
main PROC

COMMENT!

this is the error part 
compiler thinks that we have moved the value at byteVal 
it reads 
mov esi, byteVal
this line as 
mov esi, [byteVal]
so now esi hold a value 10 and not the address 

mov esi, byteVal
mov eax, [esi]

!

mov esi, byteVal
mov eax, esi
CALL WriteInt 
CALL Crlf

COMMENT !

now this above part works
!

mov esi, OFFSET byteVal
mov eax, [esi]
CALL WriteInt 
CALL Crlf

EXIT
main ENDP

END main
