BITS 32
extern printf

section .data
	out: db "%d", 10,0
	;num1: dd 2
	num2: dd 1
section .text
	global main
	main:
		push ebp
		mov ebp,esp
		
		;mov eax, 2
		mov ebx, 1
		loop:
			;mov ecx, eax
			;imul eax,ebx
			;mov DWORD[num1], ebx
			mov DWORD[num2], ebx
			;push eax
			push ebx
			;push ecx
			push out
			call printf
			;mov ebx, DWORD[num1]
			mov ebx, DWORD[num2]
			
			add ebx, 1
			cmp ebx,100
			jle loop
;		move esp, ebp
;		pop ebp	
