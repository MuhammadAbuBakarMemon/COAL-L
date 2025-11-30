INCLUDE Irvine32.inc 

.data
pro BYTE "Enter a word: ", 0

consonants BYTE "Consonants: ", 0
vowels BYTE "Vowels: ", 0

maxLength = 80 
inputBuffer BYTE maxLength + 1 DUP(?)

vc DWORD 0
cc DWORD 0

.code 
main PROC 

MOV edx, OFFSET pro
CALL WriteString
MOV edx, OFFSET inputBuffer
MOV ecx, maxLength
CALL ReadString

MOV ecx, LENGTHOF inputBuffer
MOV esi, 0

L1: 
	MOV al, inputBuffer[esi * TYPE inputBuffer]
	inc esi

	CMP al, 'a'
	JE vow  

	CMP al, 'e'
	JE vow 

	CMP al, 'i'
	JE vow 

	CMP al, 'o'
	JE vow 

	CMP al, 'u'
	JE vow 

	CMP al, 'A'
	JE vow  

	CMP al, 'E'
	JE vow 

	CMP al, 'I'
	JE vow 

	CMP al, 'O'
	JE vow 

	CMP al, 'U'
	JE vow 

	CMP al, 65 
	JB ext

	CMP al, 123
	JA ext

	INC cc
	JMP ext

	vow:
		INC vc 
		JMP ext

	ext:

	Loop L1

MOV edx, OFFSET vowels
CALL WriteString 
MOV eax, vc
CALL WriteDec
CALL Crlf

MOV edx, OFFSET consonants
CALL WriteString 
MOV eax, cc
CALL WriteDec
CALL Crlf

exit 
main ENDP 
END main
