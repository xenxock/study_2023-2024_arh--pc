%include 	'in_out.asm'

SECTION	.data
	msg1:	DB 'Введите A, B и С: ',0h
	msg2:	DB 'Наименьшее число: ',0h

SECTION .bss
	min: resb 10
	A: resb 10
	B: resb 10
	C: resb 10
	
SECTION .text
GLOBAL _start
	_start:
	
	mov eax,msg1
	call sprintLF
	
	mov ecx,A
	mov edx,10
	call sread
	
	mov eax,A
	call atoi
	mov [A],eax
	
	
	mov ecx,B
	mov edx,10
	call sread
	
	mov eax,B
	call atoi
	mov [B],eax
	
	mov ecx,C
	mov edx,10
	call sread
	
	mov eax,C
	call atoi
	mov [C],eax
	
	mov ecx,[A]
	mov [min],ecx
	
	cmp ecx,[C]
	jl check_B
	mov ecx,[C]
	mov [min],ecx
	
	check_B:
		
	mov ecx,[min]
	cmp ecx,[B]
	jl fin
	mov ecx,[B]
	mov [min],ecx
	
	fin:
		mov eax, msg2
		call sprint
		mov eax,[min]
		call iprintLF
		call quit
