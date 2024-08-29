.section .data
.section .bss
.section .text
.global _start

_start:
    mov     x0,     0xffffffffffffffff  // first number, lower-half 
    mov     x1,     0x00000000000001ff  // first number, upper-half

    mov     x2,     0x0000000000000001  // sec number, lower half
    mov     x3,     0x0000000000000100  // sec number, upper half 

    adds    x4,     x0, x2  // add lower half of two numbers, setting the carry flag 
    adc     x5,     x1, x3  // add upper half of two numbers + carry flag 

    mov     x7,     #0
    subs    x2,     x4,     #1  // Sub 1 from the lower half x4 into x2 

    sbc     x1,     x5,     x7  // Sub 0 from the upper half and the value in the carry

    








    
    
    
    
    
    mov x0, #0 
    mov w8, #93 
    svc #0

