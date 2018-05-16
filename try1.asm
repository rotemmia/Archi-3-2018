neg_start_of_memory start_of_memory +
index start_of_memory +
A_pointer index +
temp1 temp1 +
temp1 A_pointer +
init_a+1 temp1 +
temp2 temp2 +
init_a: temp2 0 +
A temp2 +
index one +
B_pointer index +
temp1 temp1 +
temp1 B_pointer +
init_b+1 temp1 +
temp2 temp2 +
init_b: temp2 0 +
B temp2 +
index one +
C_pointer index +
temp1 temp1 +
temp1 C_pointer +
init_c+1 temp1 +
temp2 temp2 +
init_c: temp2 0 +
C temp2 +
check_zero: A one check_zero_2
  A neg_one +
  neg_one zero continue_loop
check_zero_2:  A neg_one continue_loop
check_zero_3:  B one check_zero_4
  B neg_one +
  neg_one zero continue_loop
check_zero_4: B neg_one continue_loop
check_zero_5:  C one check_zero_6
  C neg_one +
  neg_one zero continue_loop
check_zero_6:  C neg_one continue_loop
  neg_one zero exit
  continue_loop: run_command run_command +
  temp1 temp1 +
  temp1 A +
  temp1 start_of_memory +
  run_command temp1 +
  run_command+1 run_command+1 +
  temp2 temp2 +
  temp2 B +
  temp2 start_of_memory +
  run_command+1 temp2 +
  run_command: A B loop_result_neg
  index one re_loop
loop_result_neg: index index +
  C neg_start_of_memory +
  index C +
re_loop: A_pointer A_pointer +
  A_pointer index +
  temp1 temp1 +
  temp1 A_pointer +
  assign_a+1 assign_a+1 +
  assign_a+1 temp1 +
  temp1 temp1 +
  assign_a: temp1 0 +
  A A +
  A temp1 +
  index one +
  B_pointer B_pointer +
  B_pointer index +
  temp1 temp1 +
  temp1 B_pointer +
  assign_b+1 assign_b+1 +
  assign_b+1 temp1 +
  temp1 temp1 +
  assign_b: temp1 0 +
  B B +
  B temp1 +
  index one +
  C_pointer C_pointer +
  C_pointer index +
  temp1 temp1 +
  temp1 C_pointer +
  assign_c+1 assign_c+1 +
  assign_c+1 temp1 +
  temp1 temp1 +
  assign_c: temp1 0 +
  C C +
  C temp1 +  ; jump to start of loop (check ABC != 0)
  neg_one zero check_zero
exit: 0 0 0
neg_one: -1
A: 0
B: 0
C: 0
one: 1
zero: 0
A_pointer: 0
B_pointer: 0
C_pointer: 0
index: 0
temp1: 0
temp2: 0
neg_start_of_memory: 0
start_of_memory: +
