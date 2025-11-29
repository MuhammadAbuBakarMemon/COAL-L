INCLUDE Irvine32.inc 

.data 

arr1 BYTE 10,20,30,40
arr2 WORD 100h,200h,300h
arr3 DWORD 5 DUP(0)

.code 
main PROC 

; a part

MOV ax, LENGTHOF arr1
MOV bx, LENGTHOF arr2
MOV cx, LENGTHOF arr3

CALL DumpRegs 

; b part 

MOV ax, SIZEOF arr1
MOV bx, SIZEOF arr2
MOV cx, SIZEOF arr3

CALL DumpRegs 

; c part
; solved above

exit 
main ENDP 
END main
