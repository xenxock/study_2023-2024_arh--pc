%include 'in_out.asm'

SECTION .data
msg:	DB 'Введите значение x: ',0
div: 	DB 'Результат: ',0
	
SECTION .bss
x: 	RESB 80
	
SECTION .text
GLOBAL _start
	_start:
	
	mov eax, msg
	call sprintLF
	
	mov ecx, x
	mov edx, 80
	call sread
	
	mov eax,x
	call atoi
	
	xor edx,edx
	mov eax,x
	mov ebx,x
	mul ebx
	mul ebx
	xor edx,edx 
	mov ebx,2
	div ebx
	
	mov edi,eax
	inc edi
	
	mov eax,div
	call sprint
	mov eax,edi
	call iprintLF
	
	call quit 
