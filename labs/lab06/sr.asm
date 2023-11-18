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
	
	mov ebx,eax
	mul ebx
	mul ebx
	mov ebx,2
	div ebx
	inc eax
	
	mov edi,eax
	
	mov eax,div
	call sprint
	mov eax,edi
	call iprintLF
	
	call quit 
