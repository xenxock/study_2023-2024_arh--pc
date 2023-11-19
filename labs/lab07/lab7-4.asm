%include 	'in_out.asm'

SECTION	.data
	msg1:	DB 'Введите x и a:',0h
	msg2:	DB 'Результат: ',0h

SECTION .bss
	x: resb 10
	a: resb 10
	
SECTION .text
GLOBAL _start
	_start:
	
	mov eax,msg1
	call sprintLF
	
	mov ecx,x
	mov edx,10
	call sread
	
	mov eax,x
	call atoi
	mov [x],eax
	
	mov ecx,a
	mov edx,10
	call sread
	
	mov eax,a
	call atoi
	mov [a],eax
	
	cmp eax,[x]
	je check_a
	jne check_b
	
	check_a:
		mov eax,[x]
		add eax,[a]
		mov [x],eax
		mov eax, msg2
		call sprint
		mov eax,[x]
		call iprintLF	
		call quit
	
	check_b:
		mov eax,[x]
		mov ebx,5
		mul ebx
		mov [x],eax
		mov eax, msg2
		call sprint
		mov eax,[x]
		call iprintLF	
		call quit
