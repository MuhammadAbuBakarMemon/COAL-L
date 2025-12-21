INCLUDE Irvine32.inc

COMMENT !
Q-6 : Convert the following High Level Language code to equivalent assembly language:
While (op1 <= op2)
{
if (op1 >= x && op1 =< y)
{
z += 10;
}
else
{
z -= 10;
}
op1--;
}
!

.data

res BYTE "The result is: ", 0Dh, 0Ah, 0
quest BYTE "Enter the Number: ", 0Dh, 0Ah, 0

op1 DWORD ?
op2 DWORD ?

x DWORD ?
y DWORD ?
z DWORD ?

.code
main PROC

	mov eax, op1
	mov ebx, op2

	_while:
		
		cmp eax, ebx
		jg _endwhile

		cmp eax, x
		jl _else

		cmp eax, y
		jg _else

		add z, 10
		jmp outside

		_else:
		sub z, 10

		outside:
		dec eax
		jmp _while

	_endwhile:
	mov op1, eax
	mov op2, ebx

	exit 
main ENDP


END main
