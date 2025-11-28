INCLUDE Irvine32.inc

.data 
var1 SBYTE -50
var2 BYTE 200

.code 
main PROC 

MOVZX eax, var2
MOVSX ebx, var1
;correct way for dry-running (calculating how a -ve integer is stored in memory {in hexa-decimal format} is this)
;first take the +ve number and convert to binary ---> 2's complement ---> then convert that to hexa decimal
CALL DumpRegs

exit 
main ENDP
END main
