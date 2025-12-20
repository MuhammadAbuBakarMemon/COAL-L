INCLUDE Irvine32.inc

COMMENT !

Implement this in assembly 

if (num1 > num2 && num3 != num4)
result = num1 + num3;
else if (num2 == num4)
result = num2 - num1;
else
result = 0;
!

.data

num1 SDWORD 2
num2 SDWORD 2
num3 SDWORD 2
num4 SDWORD 2
result SDWORD ?

.code
main PROC

mov eax, num1
cmp eax, num2
jle _elseif

mov eax, num3
cmp eax, num4
je _elseif

add eax, num1
mov result, eax
jmp _endif

_elseif:

	mov eax, num2 
	cmp eax, num4
	jne _else 

	sub eax, num1
	mov result, eax
	jmp _endif

_else:
	
	mov result, 0

_endif:

main ENDP
END main
