.section .data
    msg:    .ascii  "Hello\n"
    len = . - msg
    
    // Integers 
    aByte:      .byte      18
    aByte2:     .byte      0xff
    aHword:     .hword     0xffff
    aHword2:    .hword     22
    aWord:      .word      0xfffffff
    aDword:     .dword     34
    aDword2:    .dword     0xff6754

    // Floating points:
    float16b:   .float16   123.45
    float32b:   .float     13.4545
    float64b:   .double    123.3434343434

    //Strings: 

    someString:     .ascii     "No elo" // not null terminated 
    someString2:    .asciz     "No elo" // null terminated 

    //Arrays: 
    array1:     .skip   50 // an array of 50 bytes 
    array2:     .word   10, 20, 30, 40 
    array3:     .byte   1, 2, 'a', 3

    




.section .bss
.section .text
.global _start

_start:


/* syscall exit(int status) */
    mov x0, #0 
    mov w8, #93 
    svc #0

