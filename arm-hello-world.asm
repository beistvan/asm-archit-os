main:
        sub     sp, sp, #32
        stp     x29, x30, [sp, #16]
        add     x29, sp, #16
        mov     w8, wzr
        str     w8, [sp, #4]
        stur    wzr, [x29, #-4]
        mov     w8, #10
        str     w8, [sp, #8]
        ldr     w1, [sp, #8]
        adrp    x0, .L.str
        add     x0, x0, :lo12:.L.str
        bl      printf
        ldr     w0, [sp, #4]  
        ldp     x29, x30, [sp, #16]
        add     sp, sp, #32
        ret
.L.str:
        .asciz  "Hello World, x = %d"
