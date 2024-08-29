.section .data
    msg: .ascii "Hello, ARM64!\n"
    len = . - msg
    dWordVar:   .dword      0x1122334455667788
    wordVar:    .word       0xaabbccdd
    byteVar:    .byte       'A' // you cant move it into x register, only w is acceptable 
    sByteVar:   .byte       -10
    hWordVar:   .hword      999
    dWordVar2:  .dword      0
.section .bss
.section .text
.global _start
_start:
    mov x0, #1     
    ldr x1, =msg 
    ldr x2, =len 
    mov w8, #64 
    svc #0

    // Move some literals or immediate values into registers 
    mov     x0,     #100    // Move the decimal value 100 into x0
    mov     x1,     #0x100  // Move the hexadecimal into x1

    // Move some registers values into other registers 
    mov     x3,     x0
    mov     x4,     x1

    //Move data from variables into registers 
    // 1 Move the address of the variable into a register 
    // 2 Dereference that register and put that data into a registers 
    // Dereferencing means: take the address that you have for a variable and get the data at that address 

    ldr     x3,     =dWordVar   // Put address of dWordVar into x3
    ldr     x0,     [x3]

    // Move a word into x0 (even it says w0 it is still moved to x0 just like with eax and rax in x86_64)
    ldr     x3,     =wordVar    
    ldr     w0,     [x3]
    
    // Move a byte into w0
    ldr     x3,     =byteVar
    ldrb    w0,     [x3]

    // Move a signed byte into x0
    ldr     x3,     =sByteVar
    ldrsb   w0,     [x3]

    ldr     x3,     =hWordVar
    ldrh    w0,     [x3] // unsigned 
    ldrsh   w0,     [x3] // signed 
    // shb - uzywane tylko w przypadku wartosci byte 

    // move from register to memory 
    ldr     x3,     =dWordVar2
    str     x0,     [x3] // destination is on the right

    // move byte from register to memory
    strb    w0,     [x3]
    strh    w0,     [x3]

    // no thing such strsb










    mov w8, #93 
    svc #0

