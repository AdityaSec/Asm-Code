; AND OR NOT XOR instructions

global _start

section .text
_start:
	mov eax, 0x1234
	and eax, 0x56
	and byte [sample1], 0x22	

	mov ebx, 0x1234
	or ebx, 0x56
	or byte [sample2], 0xbb

	mov ecx, 0x1234
	xor ecx, 0x56
	xor byte [sample1], 0x33

	mov edx, 0x1234
	not edx
	not byte [sample2]

	and eax, ebx
	or ecx, edx
	xor eax, eax   ; This technique is used a lot, used to clear the eax register. As XORing any value with itself results in 0.

	mov eax, 0x1
	mov ebx, 0x1
	int 0x80

section .data
	sample1	db	0x11
	sample2 db	0xaa
