; This is a comment. Starting with semi-colon

global _start

section .text
;Writing Code in .text section
_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80
	;Above code will print on screen

	mov eax, 0x1
	mov ebx, 0x1
	int 0x80
	;Above code will exit

section .data
; Initialized data. Hello World string is initialized here.
	message: db "Hello World!", 0xA
	mlen 	equ $-message
