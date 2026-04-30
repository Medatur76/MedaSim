.globl _read
.type _read,%function
.section .text
_read:

    mov x8, #64
    

    //Open/trunicate file
    mov x8, #56
    mov x0, #-100
    adr x1, output_file
    mov x2, #577    //Might add O_CLOEXEC later
    mov x3, #0644
    svc #0
    
    adrp x1, output_fd
    add x1, x1, :lo12:output_fd
    str w0, [x1]      // Use str w0 for 32-bit fd

    mov x8, #220
    mov x0, #17
    mov x1, #0
    mov x2, #0
    mov x3, #0
    mov x4, #0
    svc 0

    cmp x0, #0
    b.eq git_process

    mov x8, #260
    adrp x1, status
    add x1, x1, :lo12:status
    mov x2, #0          // options: 0 (blocking)
    mov x3, #0          // rusage: NULL
    svc #0

    adrp x1, status
    add  x1, x1, :lo12:status
    ldr  w0, [x1]

    // if (WIFEXITED(status))
    and  w2, w0, #0x7f
    cbnz w2, not_normal_exit

    // exit_code = (status >> 8) & 0xff
    lsr  w0, w0, #8
    and  w0, w0, #0xff

_cleanup:

    mov x2, x0

    mov x8, #57
    adr x0, output_fd
    svc #0

    mov x0, x2

    ret
