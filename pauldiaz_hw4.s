; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
; *************************************************************
; hw4.s Paul Diaz
; *************************************************************
.bss  
u8_i:    .space 1
u8_k:    .space 1
u8_j:	 .space 1
; Assembly Code
.text
.global __reset
__reset:  
    mov.b #0xE2, W0
    mov WREG, u8_j
    mov #0x0000, W0
start_loop:
    cp.b W0, #8		;test if u8_i !=8
    bra Z, end_loop
    btst.b u8_j, #0	;test LSB of u8_j
    bra Z, skip		;
    inc.b u8_k		;u8_k + 1
skip:
    lsr.b u8_j		;u8_j >> 1
    inc.b W0, W0	;u8_i + 1
    goto start_loop	;back to loop
end_loop:
    mov.b WREG, u8_i	;u8_i = 8
    mov.b #0xE2, W0	
    mov.b WREG, 0x1002  ;0x1002=0xE2 for readability
    mov.b u8_k, WREG	;W0=4 since, there are 4 increment count for u8_k
			;these 4 are the numbers that has 0x01 at the end
    
    
   
    
    
    
    
    
    
    