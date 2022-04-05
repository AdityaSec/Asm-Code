; This is a comment. Starting with semi-colon

global _start

section .text
;Writing Code in .text section
_start:
	jmp printHW
	mov eax, 0x5
		mov ebx, 0x6

printHW:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	cmp edx, 0xc
	jmp otherFunc
	int 0x80
	;Above code will print on screen

	mov eax, 0x1
	mov ebx, 0x1
	int 0x80
	;Above code will exit

otherFunc:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message1
	mov edx, mlen1
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
	message1: db "Unconditonal Jump Taken!", 0xA
	mlen1 	equ $-message1
