.section .data
    msg: .ascii "Hello, ARM64!\n"
    len = . - msg

    dWordVar1:   .dword  0x100
    dWordVar2:   .dword  0x200

.section .bss

.section .text
.global _start

_start:
/* syscall write(int fd, const void *buf, size_t count) */
    mov x0, #1     
    ldr x1, =msg 
    ldr x2, =len 
    mov w8, #64 
    svc #0

    // adding literal values to register
    mov     x0,     #100
    mov     x1,     #200
    add     x0,     x0,     x1

    mov     x0,     #100
    add     x0,     x0,     #200

    sub     x0,     x0,     #300
    sub     x0,     x0,     x1

    // loading value from memory
    ldr     x3,     =dWordVar1
    ldr     x0,     [x3]

    ldr     x3,     =dWordVar2
    ldr     x1,     [x3]
    
    // ading value from memory
    add     x0,     x0,     x1

    // there is not dec and inc in ARM 

    mov     w0,     #0xffffffff
    add     w0,     w0,     #1



    


/* syscall exit(int status) */
    mov x0, #0 
    mov w8, #93 
    svc #0

