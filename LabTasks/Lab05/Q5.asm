INCLUDE Irvine32.inc 

.data 

.data
arrayD DWORD 1000h,2000h,3000h,4000h

.code 
main PROC 

; a part

MOV esi, 2

MOV eax, arrayD[esi * TYPE arrayD]

MOV esi, LENGTHOF arrayD
dec esi
MOV ebx, arrayD[esi * TYPE arrayD]

CALL DumpRegs 

; b part 


; c part
; solved above

exit 
main ENDP 
END main
