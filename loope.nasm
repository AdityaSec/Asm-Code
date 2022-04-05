; LOOP, LOOPE, LOOPNE instruction

global _start

section .text
_start:
	mov ecx, 0xa
	;jmp printHW

printHW:
	push ecx

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80	

	pop ecx
	loope printHW

	mov eax, 0x1
	mov ebx, 0x1
	int 0x80
	;Above code will exit

section .data
; Initialized data. Hello World string is initialized here.
	message: db "Hello World!", 0xA
	mlen 	equ $-message
