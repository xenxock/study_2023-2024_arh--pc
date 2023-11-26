%include 'in_out.asm'

SECTION .data
msg1: DB 'Функция: f(x)=4x-3',0
msg2: DB 'Значения функции: ',0
msg3: DB 'Результат: ',0

SECTION .text
GLOBAL _start
_start:
	mov eax,msg1
	call sprintLF
	 
	pop ecx
	
	pop edx
	
	sub ecx,1
	
	mov esi,0
	
	mov eax,msg2
	call sprintLF
	
next:
	cmp ecx,0
	jz _end
	
	pop eax
	call atoi
	
	call _function
	
	call iprintLF
	add esi, eax
	
	loop next

_end:
	mov eax,msg3
	call sprint
	mov eax,esi
	call iprintLF
	call quit

_function:
	mov ebx, 4
	mul ebx
	dec ebx
	sub eax,ebx
	ret
