%include	'in_out.asm'

SECTION .data
filename:	DB 'name.txt',0h
msg:		DB 'Как Вас зовут: ',0h
write:		DB 'Меня зовут ',0h

SECTION .bss
name resb 255

SECTION .text
GLOBAL _start
	_start:
	
	mov eax,msg
	call sprint
	
	mov ecx, name
	mov edx, 255
	call sread
	
	mov ecx,0777o
	mov ebx,filename
	mov eax,8
	int 80h
	
	mov esi, eax
	
	mov edx, 24
	mov ecx, write
	mov ebx, esi
	mov eax, 4
	int 80h
	
	mov eax,name
	call slen
	mov edx, eax
	mov ecx, name
	mov ebx, esi
	mov eax, 4
	int 80h
	
	mov ebx,esi
	mov eax,6
	int 80h
	
	call quit
