index start_of_memory +
A_pointer index +
temp1 temp1 +
temp1 A_pointer +
init_a+1 init_a+1 +
init_a+1 temp1 +
temp2 temp2 +
init_a: temp2 0 +
A temp2 +
index one +
B_pointer index +
temp1 temp1 +
temp1 B_pointer +
init_b+1 init_b+1 +
init_b+1 temp1 +
temp2 temp2 +
init_b: temp2 0 +
B temp2 +
index one +
C_pointer index +
temp1 temp1 +
temp1 C_pointer +
init_c+1 init_c+1 +
init_c+1 temp1 +
temp2 temp2 +
init_c: temp2 0 +
C temp2 +
; Check A == 0 && B == 0 && C == 0
; if so exit program.
  ; if A -1 < 0
check_zero: A one check_zero_2
  ; A-1 > 0 continue loop.
  A neg_one continue_loop
  ; jmp continue_loop
  neg_one zero continue_loop
  ; Add 1 back if still negative then we keep going
check_zero_2:  A neg_one continue_loop
  ; A == 0. Check B
  ; if b -1 < 0
check_zero_3:  B one check_zero_4
  ; B-1 > 0 continue loop.
  B neg_one continue_loop
  ; jmp continue_loop
  neg_one zero continue_loop
  ; Add 1 back if still negative then we keep going
check_zero_4: B neg_one continue_loop
  ; B == 0 check C.
  ; if C -1 < 0
check_zero_5:  C one check_zero_6
  ; C-1 > 0 continue loop.
  C neg_one continue_loop
  ; jmp continue_loop
  neg_one zero continue_loop
  ; Add 1 back if still negative then we keep going
check_zero_6:  C neg_one continue_loop
  ; A B C all equal 0. Exit.
  neg_one zero exit
continue_loop:  A B loop_result_neg
  index one re_loop
  ; jmp to new index.
loop_result_neg:  index index +
  index C +
re_loop: A A +
  A index +
  index one +
  B B +
  B index +
  index one +
  C C +
  C index +
  ; jump to start of loop (check ABC != 0)
  neg_one zero check_zero
exit: 0 0 0
three: 3
zero: 0
neg_one: -1
one: 1
index: 0
; TODO
A: 0
A_pointer: 0
Areturn: neg_one zero return_address
B: 0
B_pointer: 0
Breturn: neg_one zero return_address
C: 0
C_pointer: 0
Creturn: neg_one zero return_address
temp1: 0
temp2: 0
temp3: 0
temp4: 0
temp5: 0
return_address: 0
neg_start_of_memory: +
start_of_memory: +
