INCLUDE Irvine32.inc 

.data 

.data
arrayB BYTE 11h,22h,33h
arrayW WORD 4444h,5555h,6666h

.code 
main PROC 

; a part

COMMENT #
MOV esi, OFFSET arrayB
MOV eax, [esi]
inc BYTE PTR [esi]

MOV eax, [esi]
inc BYTE PTR [esi]
; another way to write the line 19 implicity is given at line 21 commented out version
; inc BYTE [esi]
MOV ebx, [esi]

inc BYTE PTR [esi]
MOV ecx, [esi]

CALL DumpRegs 
#

; This commented out oart is entirely incorrect our task was to just store the values of the array into regsiters 
; the commands  we have written are updating those values, the values stored at those locations....

MOV esi, OFFSET arrayB
MOV eax, [esi]
inc esi 
MOV ebx, [esi]
inc esi
MOV ecx, [esi]

CALL DumpRegs 

; b part 

MOV esi, OFFSET arrayW
MOV eax, [esi]
add esi, 2
MOV ebx, [esi]
add esi, 2
MOV ecx, [esi]

CALL DumpRegs


; c part
; solved above

exit 
main ENDP 
END main
