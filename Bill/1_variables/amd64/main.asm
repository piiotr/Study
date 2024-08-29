section .data
	; Integers 
	aByteVar	db	0h
	aWordVar	dw	0ffffh
	aDwordVar	dd 	012345678h
	aQwordVar 	dq	0123456789012345h

	; Floating point numbers 

	aDwordFloat	dd	123.45	; single precision floating point 
	aQwordFloat	dq	123.45 	; double precision floating point 
	aTwordFloat dt 	123.45 	; extended precision floating point (t - 10 bytes)

	; Character Variables 
	aChar	db	'A'
	aString db 	"hello there, I'm piotrek", 0h
	aString2 db	"Program error - Try again", 0ah, 0dh, 0h

	; Arrays 
	byteArray	db	10,20,30,40,50
	wordArray	dw	100, 200, 300, 400, 500	
	dwordArray	dd	1000, 2000, 3000, 4000, 5000
	qwordArray	dq	10000, 20000, 30000, 40000, 22h, 'A'
	charArray	db	'A', 'B', 'C'
	charArray2 	db 	'ABC'
	floatArray 	dt	123.45, 645.23

	;Repeating Array Initializer 
	bigByteArray	times	10000	db	99h
	bigByteArray2	db	0h 
					db  0h
					db  0h
section .bss
	; Integers 
	aByteVar2	resb	1
	aWordVar2	resw	20	;Reserve 20 words or 40 bytes 
	aDwordVar2	resd 	1
	aQwordVar2	resq	1

	allocMemory	times	10 	resb	1
	allocMemory2	resb	10




section .text
;Your program code goes here
	global  _start 
	_start:

	nop	
	;Your program code should go here
	

	nop
	;Do not remove/change the lines below
	;These exit out of the application and back
	;to linux in an orderly fashion
	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel
