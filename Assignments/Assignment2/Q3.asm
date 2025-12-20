INCLUDE Irvine32.inc

COMMENT !

Q-3 : Implement the following pseudocode in x86 assembly language. All variables are 32-bit
signed integers.

sum = 0; i = 0;
while (i < count)
{
if (array[i] > 0)
sum = sum + array[i];
else
sum = sum - 1;
i = i + 1;
}
!

.data

sum SDWORD 0
i SDWORD 0
array SDWORD 50 DUP (?)

.code
main PROC

mov esi, OFFSET array
mov ecx, LENGTHOF array 

_while:

	cmp i, ecx
	jge _endwhile

	cmp DWORD PTR [esi], 0
	jle _else

	mov ebx, sum
	add ebx, DWORD PTR [esi]
	mov sum, ebx
	jmp outside

	_else:

		dec sum

	outside:
	inc i
	add esi, TYPE array
	jmp _while 

_endwhile:

main ENDP
END main
