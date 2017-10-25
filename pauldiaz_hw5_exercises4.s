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

loop:
    mov u32_j, w0
    cp u32_i
    
    mov u32_j+2, w0
    cpb u32_j+2
    bra NZ, end_loop
    
    lsr u32_k+2
    rrc u32_k
    dec u32_j
    goto loop

end_loop:
    
done:
  goto     done    ;Place holder for last line of executed code