INCLUDE Irvine32.inc 

.data 

.code 
main PROC 

COMMENT ! 
MOV al, 7Fh
ADD al, 1

CALL DumpRegs

Values of CPU Status Flag Registers  (EFLAGS)
ZF = 0
CF = 0
SF = 1
AC = 1
PF = 0
OF = 0
!

MOV al, 7Fh
SUB al, 80h

CALL DumpRegs

COMMENT ! 
Values of CPU Status Flag Registers  (EFLAGS)
ZF = 0
CF = 0
SF = 1
AC = 0
PF = 1
OF = 1
!

exit 
main ENDP 
END main
