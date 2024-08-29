section .data
section .bss
section .text
global  _start 
	_start:
	
	
	mov		rdx,	 00000000000001ffh	; Upper half of our extended #1
	mov		rax, 	0ffffffffffffffffh  ; Lower half of our extended #1
	; jeśli pierwsza cyfra to litera to musi zaczac sie od zera

	mov		rbx,	000000000000100h	; Upper half of extended #2
	mov		rcx,	000000000000001h	; Lower half of extended #2

	add		rax,	rcx					; Add the lower #2 to lower #1, setting the carry flag 
	adc 	rdx,	rbx					; Add the upper #2 to upper #2, including the carry 

	sub		rax,	1h					; Sub from lower #1 
	sbb		rdx,	0h					; Sub from upper half 0 and 1 from the carry flag 



	
	
	
	
	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel
