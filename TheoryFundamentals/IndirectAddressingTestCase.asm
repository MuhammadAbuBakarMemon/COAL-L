INCLUDE Irvine32.inc

.data

byteval DWORD 0FFFFFFFFh, 20d, 30d
tvar DWORD 1d

.code
main PROC

mov esi, OFFSET byteVal
inc BYTE PTR [esi]

mov eax, [esi]
CALL WriteHex 
CALL Crlf 

EXIT
main ENDP

END main
