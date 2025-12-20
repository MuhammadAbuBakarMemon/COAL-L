INCLUDE Irvine32.inc

.data

str1 BYTE "Colour Output is easy!", 0

.code
main PROC

; mov eax, [foreground/text color] + ([background color] * 16) 
mov eax, yellow + (blue * 16)
CALL SetTextColor 
mov edx, OFFSET str1
CALL WriteString 
CALL Crlf

main ENDP
END main
