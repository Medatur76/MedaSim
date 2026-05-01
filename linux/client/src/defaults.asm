.globl read
.type read,%function
.section .text
read:
    mov x8, #64
    svc #0
    
    ret
