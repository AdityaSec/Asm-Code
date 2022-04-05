; Moving data using lea & xchg 

global _start			

section .text
_start:

	; lea instruction
	lea eax, [sample]
	lea ebx, [eax] 

	; xchg instruction
	mov eax, 0x11223344
	mov ebx, 0xaabbccdd
	xchg eax, ebx
	
	; exit the program
	mov eax, 1
	mov ebx, 0		
	int 0x80


section .data
anydata: dd 0x11111111
sample:	db 0xaa, 0xbb

