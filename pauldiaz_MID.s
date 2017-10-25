; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
; *************************************************************
; hw3.s Paul Diaz
; *************************************************************
.bss  
first:	    .space 1
second:	    .space 1
result:	    .space 1
fill0:	    .space 1
word:	    .space 2
dword:	    .space 4
; Assembly Code
.text
.global __reset
__reset:   
  mov #0x1000, W1
  mov #1, W4
  add W4, W1, W2
  add W4, W2, W3
  
  mov.b #0, W0
  mov.b W0, [W1]
  mov.b #1, W0
  mov.b W0, [W2]
  
  mov.b [W1], W0
  add.b W0, [W2], [W3]
  
  mov.b [W2], W0
  mov	W3, W2
  inc	W3, W3
  add.b W0, [W2], [W3]
  
  mov.b [W2], W0
  mov	W3, W2
  inc	W3, W3
  add.b W0, [W2], [W3]
  
  mov.b [W2], W0
  mov	W3, W2
  inc	W3, W3
  add.b W0, [W2], [W3]
  
  mov.b [W2], W0
  mov	W3, W2
  inc	W3, W3
  add.b W0, [W2], [W3]
  
done:
  goto     done    ;Place holder for last line of executed code