INCLUDE Irvine32.inc

COMMENT !

Q-9: Implement the following C++ code in assembly language, using the flag registers(ZF and CF).
Assume that all variables are 16-bit Un-signed integers:
int array[] = {10,60,20,33,72,89,45,65,72,18};
int sample = 50;
int ArraySize = sizeof array / sizeof sample;
int index = 0; int sum = 0;
while( index < ArraySize )
{
if( array[index] <= sample )
{ sum += array[index]; }
index++; }

!

.data

array WORD 10,60,20,33,72,89,45,65,72,18
arraysize = ($ - array) / TYPE array
sample WORD 50 
index WORD 0
sum WORD 0

.code
main PROC

mov ebx, 0
mov ecx, 0

mov bx, index
mov cx, arraysize
mov esi, OFFSET array 

	_while:
	
		cmp bx, cx 
		jge _endwhile

		mov dx, sample 
		cmp [esi + ebx*2], dx
		jg _notif

		mov sample, dx

		mov ax, sum
		add ax, [esi + ebx*2]
		mov sum, ax

		_notif:
		mov sample,dx
		add bx, 1

		jmp _while 

	_endwhile:

	exit 
main ENDP

END main
