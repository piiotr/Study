section .data
	integer1	dq		200h
	integer2	dq		55h
section .bss
section .text
global  _start 
	_start:

		mov		rax,	100h		
		add		rax, 	200h
		sub		rax,	100h

		mov		rax,	[integer1]
		add		rax,	[integer2]

;		add 	[integer1], [integer2] <- to nie zadziała. Jedna z tych wartosci musi byc w rejestrach cpu

		dec		rax
		inc		rax

		mov		rax,	0fffffffffffffffh
		add		rax, 	1
		jc		carryLabel
		
	
	carryLabel:
		nop

		












		jmp		_finish	
		
	_finish:
		mov		rax, 60					;60 = system exit
		mov		rdi, 0					;0 = return code
		syscall							;Poke the kernel
