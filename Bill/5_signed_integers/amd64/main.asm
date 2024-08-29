section .data
section .bss
	savedByte	resb	1
section .text
global  _start 
	_start:

	mov		al,	00000001b
	mov		[savedByte], al

	mov		al,	10000001b
	mov		[savedByte], al

	mov		rax, 0
	sub		rax, 1












	
	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel






;//	0 0 0 0 0 0 0 1 = 1 
;//	1 0 0 0 0 0 0 1 = 129 // traktuję to jako liczbę bez znaku 

;	// jak stworzyć liczbę ze znakiem? 
;	// 2's complement 

;	// 256 (maksymalny rozmiar byte) - wartosc 1 0 0 0 0 0 0 1 (129) = 127 i dodać minusa 
	
;	1 0 0 0 0 0 0 1 = -127 

;	127 + 129 = 256 



