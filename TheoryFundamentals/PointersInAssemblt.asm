INCLUDE Irvine32.inc

MAX EQU 10

.data

bArray DWORD 500 DUP('A')
pArray DWORD  bArray

.code
main PROC

mov eax, bArray
CALL WriteHex

CALL CRlf

; this line below is incorrect for accessing the memory from a pointer
mov eax, [pArray]

; bit this line below 
mov eax, [pArray]
mov eax, [eax]

; and this line is the correct version 
;mov esi, pArray
;mov eax, [esi]
CALL WriteHex

EXIT
main ENDP

END main
