BITS 32
extern printf
extern scanf
section .data
	userMsg: db "Please enter the limit:", 10,0

;	limit: times 4 db 0
	first: dd 1
	second: dd 1
	next: dd 0
	formatin:db "%d",0
	out: db "%d",10,0

section .bss
	limit:resd 1
section .text
 global main:
main:
	;push ebp
	;mov ebp,esp
	
	push userMsg
	call printf
	add esp, 4

	push limit
	push formatin
	call scanf
	add esp, 8
	
	mov eax, [limit]
	mov edi, 1
	;mov ebx, 1	
	;mov DWORD[first], 0
	;push ebx
	;push out
	;call printf
	;add esp, 8
		mov ebx, DWORD[first]
		mov ecx, DWORD[second]
		mov edx, DWORD[next]

	loop:
		push ebx
		mov DWORD[first], ebx
		mov DWORD[second], ecx
		mov DWORD[next], edx
		push out
		call printf
		add esp, 8
		mov ebx, DWORD[first]
		mov ecx, DWORD[second]
		mov edx, DWORD[next]
		add ebx, ecx
		mov edx, ebx 	
		mov ebx, ecx
		mov ecx, edx
				
		add edi, 1
		cmp edi,[limit]
		jle loop		
	
;	mov esp,ebp
	;pop ebp
