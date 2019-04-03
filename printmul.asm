BITS 32
extern printf

section .data
	out: db "%d * %d = %d", 10,0
	num1: dd 1
	num2: dd 1
section .text
	global main
	main:
		push ebp
		mov ebp,esp
		
		mov eax, 1
		mov ebx, 1
		
		loop:
			mov ecx, eax
			imul eax,ebx
			mov DWORD[num1], ebx
			mov DWORD[num2], ecx
			push eax
			push ebx
			push ecx
			push out
			call printf
			mov ebx, DWORD[num1]
			mov eax, DWORD[num2]
			
			add ebx, 1
			cmp ebx,10
			jle loop
			mov ebx, 1
			add eax, 1
			cmp eax,10
			jle loop	
		mov esp,ebp
		pop ebp
