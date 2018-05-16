#include <stdio.h>
#include <stdlib.h>

#define DEBUG 1
#define MAX_PHYSICAL_MEMORY 328

static long MACHINE_MEMORY[MAX_PHYSICAL_MEMORY] = {
264, 268, 3, 261, 264, 6, 265, 265, 9, 265, 261, 12, 19, 265, 15, 266, 266, 18, 266, 0, 21, 266, 268, 24, 256, 266, 27, 264, 259, 30, 262, 264, 33, 265, 265, 36, 265, 262, 39, 46, 265, 42, 266, 266, 45, 266, 0, 48, 266, 268, 51, 257, 266, 54, 264, 259, 57, 263, 264, 60, 265, 265, 63, 265, 263, 66, 73, 265, 69, 266, 266, 72, 266, 0, 75, 266, 268, 78, 258, 266, 81, 256, 259, 90, 256, 255, 120, 255, 260, 120, 256, 255, 120, 257, 259, 102, 257, 255, 120, 255, 260, 120, 257, 255, 120, 258, 259, 114, 258, 255, 120, 255, 260, 120, 258, 255, 120, 255, 260, 252, 256, 257, 126, 264, 259, 132, 264, 264, 129, 264, 258, 132, 261, 261, 135, 261, 264, 138, 265, 265, 141, 265, 261, 144, 154, 154, 147, 154, 265, 150, 265, 265, 153, 265, 0, 156, 265, 268, 159, 256, 256, 162, 256, 265, 165, 264, 259, 168, 262, 262, 171, 262, 264, 174, 265, 265, 177, 265, 262, 180, 190, 190, 183, 190, 265, 186, 265, 265, 189, 265, 0, 192, 265, 268, 195, 257, 257, 198, 266, 266, 201, 266, 265, 204, 257, 266, 207, 264, 259, 210, 263, 263, 213, 263, 264, 216, 265, 265, 219, 265, 263, 222, 232, 232, 225, 232, 265, 228, 265, 265, 231, 265, 0, 234, 265, 268, 237, 258, 258, 240, 266, 266, 243, 266, 265, 246, 258, 266, 249, 255, 260, 81, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 269,
  56, 54, 36, 55, 55, 6, 55, 52, 9, 55,
  53, 12, 52, 52, 15, 51, 51, 18, 51, 53,
  21, 52, 51, 24, 53, 53, 27, 53, 55, 30,
  55, 55, 33, 55, 54, 0, 0, 0, 39, 51,
  51, 42, 51, 52, 45, 0, 51, 48, 0, 0,
  0, 0, 0, 1, 1, 0, 20
};

int main() {

  int index = 0;
  int printIndex = 0;
  long sbn_result = 0;
  long A = MACHINE_MEMORY[index];
  long B = MACHINE_MEMORY[index + 1];
  long C = MACHINE_MEMORY[index + 2];
int runs = 0;
  if (DEBUG) {
    printf("%d: sbn %ld=%ld, %ld=%ld, %ld=%ld\n",index, A,MACHINE_MEMORY[A],B,MACHINE_MEMORY[B],C,MACHINE_MEMORY[C]);
  }


  while (A || B || C) {


    sbn_result = (MACHINE_MEMORY[A] -= MACHINE_MEMORY[B]);
    if (sbn_result < 0) {
      // Jump to C.
      index = C;
    }
    else {
      index += 3;
    }

    printf("\n");

    A = MACHINE_MEMORY[index];
    B = MACHINE_MEMORY[index + 1];
    C = MACHINE_MEMORY[index + 2];

    if (DEBUG) {
      printf("%d: sbn %ld=%ld, %ld=%ld, %ld=%ld\n", index/3, A,MACHINE_MEMORY[A],B,MACHINE_MEMORY[B],C,MACHINE_MEMORY[C]);
    }
    if (A < 0 || B < 0 || C < 0) {
      printf("error on run %d\n", runs);
      break;
    }
    runs++;
    if (runs > 1000){
      break;
      printf("too many runs\n");
    }
  }

  for (printIndex = 0; printIndex < MAX_PHYSICAL_MEMORY; ++printIndex) {
    printf("%ld ", MACHINE_MEMORY[printIndex]);
  }

  printf("\n");
  return 0;
}
