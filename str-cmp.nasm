; Comparision of Strings

global _start

section .text
_start:
	
	mov ecx, sourcelen
	lea esi, [source]
	lea edi, [comparision]
	
	repe cmpsb

	jz PrintEqual

	mov ecx, output2
	mov edx, outlen2

	jmp Printresult

PrintEqual:
	mov ecx, output1
	mov edx, outlen1
	
Printresult:
	mov eax, 0x4
	mov ebx, 0x1
	int 0x80

;Exit call
	mov eax, 0x1
	mov ebx, 0x1
	int 0x80

section .data
	source: db "Hello WOrld!", 0xA
	sourcelen equ $-source
	
	comparision: db "Hello world!", 0xA	

	output1: db "Equal Strings", 0xA
	outlen1 equ $-output1
	
	output2: db "UnEqual Strings", 0xA
	outlen2 equ $-output2
