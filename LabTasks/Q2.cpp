INCLUDE Irvine32.inc

.data 
var1 SBYTE -50
var2 BYTE 200

.code 
main PROC 

MOVZX eax, var2
MOVSX ebx, var1
CALL DumpRegs

exit 
main ENDP
END main
