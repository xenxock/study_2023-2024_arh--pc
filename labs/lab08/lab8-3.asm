%include 'in_out.asm'

SECTION .data
msg: DB 'Результат: ',0

SECTION .text
GLOBAL _start
_start:
	pop ecx
	
	pop edx
	
	sub ecx,1
	
	mov esi,1
	
	cmp ecx,0
	jz _o
	
next:
	cmp ecx,0
	jz _end
	
	pop eax
	call atoi
	mul esi
	mov esi,eax
	
	loop next

	
_end:
	mov eax,msg
	call sprint
	mov eax,esi
	call iprintLF
	call quit

_o:
	mov esi,0
	jmp _end
