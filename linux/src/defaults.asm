.globl write
.type write,%function
.globl read
.type read,%function
.section .text
write:
    mov x8, #64
    svc #0
    
    ret
read:
    mov x8, #63
    svc #0
    
    ret
