section .data
	flot	dt	22.2
section .bss
	result	resd	1
section .text
global  _start 
_start:

	mov		edx,	12
	mov		[result], edx

	mov		rdi,	[result]






	mov		rax, 60					;60 = system exit
	syscall							;Poke the kernel
