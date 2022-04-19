; Copying a string from Source to Destination

global _start

section .text
_start:
	mov ecx, sourcelen
	lea esi, [source]
	lea edi, [dest]
	
	rep movsb

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, dest	; Printing the copied content i.e. dest
	mov edx, sourcelen
	int 0x80

;Exit call
	mov eax, 0x1
	mov ebx, 0x1
	int 0x80

section .data
	source: db "Hello WOrld!", 0xA
	sourcelen equ $-source
	
section .bss
	dest:	resb 100
