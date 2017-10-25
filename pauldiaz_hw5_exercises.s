; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
; *************************************************************
; hw5.s Paul Diaz
; *************************************************************
.bss  
u32_i:	.space 4
u32_j:	.space 4
u32_k:	.space 4
; Assembly Code
.text
.global __reset
__reset:   

    mov u32_i, w0
    ior u32_i+2, WREG
    bra Z, end_if
    mov u32_j, w0
    ior u32_j, WREG
    bra Z, end_if

    mov #0x0489, w4
    mov #0xCFAB, W6
    
    mov u32_k, w0
    and w4, w0, w0
    mov w0, u32_k
    
    mov u32_k+2, w0
    and w4, w0, w0
    mov w0, u32_k+ 2
end_if:
    
done:
  goto     done    ;Place holder for last line of executed code