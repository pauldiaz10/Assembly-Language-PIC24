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
   mov #0x00E2, W1
   btst
   ;mov W1, value1
   
   ;lsr	value1
   ;mov value1, W2
   
   ;lsr	value1 
   ;mov value1, W3
   
   ;lsr	value1 
   ;mov value1, W4
   
   ;lsr	value1 
   ;mov value1, W5
   
  ; lsr	value1 
   ;mov value1, W6
   
   ;lsr	value1 
   ;mov value1, W7
   
   ;lsr	value1 
   ;mov value1, W8
   
   
done:
  goto     done    ;Place holder for last line of executed code