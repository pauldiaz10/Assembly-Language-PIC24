; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
; *************************************************************
; hw3.s Paul Diaz
; *************************************************************
.bss  
value1:	    .space 2
value2:	    .space 2
result1:    .space 2
result2:    .space 2
; Assembly Code
.text
.global __reset
__reset:   
    mov #0xAB90, W0
    mov WREG, value1
    
    mov #0x12CD, W0
    mov WREG, value2
    
    mov value1, W0
    mov value2, W1
    mov.b W1, W0
    mov WREG, result1	;result1 = 0xABCD
    
    mov #0xAAAA, W0	;0xAAAA can inverts all the odd position bits
    mov result1, W1
    xor W0, W1, W0
    mov WREG, result2  ;result2 = 0x0176
done:
  goto     done    ;Place holder for last line of executed code