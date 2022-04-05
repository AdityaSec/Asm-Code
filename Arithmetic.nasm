; Addition, Subtraction, Multiplication, Division based instructions

global _start

section .text
_start:
	; Addition
	mov eax, 0x10
	add eax, 0x20
	
	mov ebx, 0x1
	add eax, ebx

	mov eax, 0xffffffff
	adc eax, 0x10 	    ; add with carry
	
	; Carry Flag related
	clc ; clear carry flag, CF=0
	stc ; set carry flag, CF=1
	cmc ; compliment carry flag, CF=NOT(CF)

	; Subtraction
	mov eax, 0x10
	sub eax, 0x5
	stc
	sbb eax, 0x4	    ; subtract with borrow
	
	;Multiplication
	mov al, 0x10
	mov bl, 0x2
	mul bl	

	mov ax, 0x1122
	mov bx, 0x0002
	mul bx

	mov eax, 0x11223344
	mov ebx, 0x55667788
	mul ebx

	;Division
	mov dx, 0x0
	mov ax, 0x7788
	mov cx, 0x2
	div cx
	

	; exit program 
	mov eax, 1
	mov ebx, 10		
	int 0x80
