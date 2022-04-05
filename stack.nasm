; Stack 

global _start			

section .text
_start:

	mov eax, 0x10
	mov ebx, [sample] 
	mov ecx, [anydata]
	push eax
	push ebx
	push cx
	push ecx
	pop edx
	pop ecx
	pop ebx
	
	; exit the program
	mov eax, 1
	mov ebx, 0		
	int 0x80


section .data
anydata: dd 0x12345678
sample:	db 0xaa, 0xbb

