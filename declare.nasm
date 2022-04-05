; Declare Initialised and Uninitialised data.

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
; Initialized data. 
	decByte:	db 0xaa
	decByteSeries:	db 0xaa, 0xbb, 0xcc
	decWord:	dw 0xdd
	decDouble:	dd 0x12345678
	
	message: db "Declared Data!", 0xA
	mlen 	equ $-message

section .bss
; Uninitialised data.
	reserveByte:	resb 80
	reserveWord:	resw 5
