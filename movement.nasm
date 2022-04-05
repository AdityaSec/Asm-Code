; Moving using mov instruction 

global _start			

section .text
_start:

	; Case-1(a) Immediate data to Register 
	mov eax, 0xaaaadddd
	mov al, 0xbb
	mov ah, 0xcc
	mov ax, 0xdddd

	mov ebx, 0
	mov ecx, 0

	; Case-2 Register to Register 
	mov ebx, eax
	mov cl, al
	mov ch, ah
	mov cx, ax

	mov eax, 0
	mov ebx, 0
	mov ecx, 0

	; Case-3(a) Memory into Register 
	mov al, [sample]
	mov ah, [sample +1]
	mov ecx, [anydata]
	
	; Case-3(b) Register into Memory 
	mov eax, 0x33445566
	mov byte [sample], al	
	mov word [sample], ax
	mov dword [sample], eax

	; Case-1(b) Immediate data to Memory 
	mov dword [anydata], 0x33445566

	; exit the program 
	mov eax, 1
	mov ebx, 0		
	int 0x80


section .data
anydata: dd 0x11111111
sample:	db 0xaa, 0xbb




