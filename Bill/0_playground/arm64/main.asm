.section .data
    var:    .hword  2
    byt:    .byte   1
.section .bss
.section .text
.global _start
_start:
    mov     x1,     3
    ldr     x2,     =byt
    strb    [w2],   w1

    




/* syscall exit(int status) */
    mov w8, #93 
    svc #0

