; Procedures

global _start

section .text


print2:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg2
	mov edx, mlen2
	int 0x80
	ret


_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg1
	mov edx, mlen1
	int 0x80

	call print2

	mov eax, 0x1
	mov ebx, 0x1
	int 0x80

section .data
msg1:	db	"Inside Procedure 1", 0xA
mlen1	equ	$-msg1	
msg2:	db	"Inside Procedure 2", 0xA
mlen2	equ	$-msg2
