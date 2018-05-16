#include <stdio.h>
#include <stdlib.h>

#define DEBUG 1
#define MAX_PHYSICAL_MEMORY 500

static long MACHINE_MEMORY[MAX_PHYSICAL_MEMORY] = {
273, 274, 3, 270, 274, 6, 267, 270, 9, 271, 271, 12, 271, 267, 15, 22, 271, 18, 272, 272, 21, 272, 0, 24, 262, 272, 27, 270, 265, 30, 268, 270, 33, 271, 271, 36, 271, 268, 39, 46, 271, 42, 272, 272, 45, 272, 0, 48, 263, 272, 51, 270, 265, 54, 269, 270, 57, 271, 271, 60, 271, 269, 63, 70, 271, 66, 272, 272, 69, 272, 0, 72, 264, 272, 75, 262, 265, 84, 262, 261, 81, 261, 266, 114, 262, 261, 114, 263, 265, 96, 263, 261, 93, 261, 266, 114, 263, 261, 114, 264, 265, 108, 264, 261, 105, 261, 266, 114, 264, 261, 114, 261, 266, 258, 144, 144, 117, 271, 271, 120, 271, 262, 123, 271, 274, 126, 144, 271, 129, 145, 145, 132, 272, 272, 135, 272, 263, 138, 272, 274, 141, 145, 272, 144, 262, 263, 150, 270, 265, 159, 270, 270, 153, 264, 273, 156, 270, 264, 159, 267, 267, 162, 267, 270, 165, 271, 271, 168, 271, 267, 171, 181, 181, 174, 181, 271, 177, 271, 271, 180, 271, 0, 183, 262, 262, 186, 262, 271, 189, 270, 265, 192, 268, 268, 195, 268, 270, 198, 271, 271, 201, 271, 268, 204, 214, 214, 207, 214, 271, 210, 271, 271, 213, 271, 0, 216, 263, 263, 219, 263, 271, 222, 270, 265, 225, 269, 269, 228, 269, 270, 231, 271, 271, 234, 271, 269, 237, 247, 247, 240, 247, 271, 243, 271, 271, 246, 271, 0, 249, 264, 264, 252, 264, 271, 255, 261, 266, 75, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 275,
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

    //printf("\n");

    A = MACHINE_MEMORY[index];
    B = MACHINE_MEMORY[index + 1];
    C = MACHINE_MEMORY[index + 2];

    if (DEBUG) {
      printf("%d: sbn %ld=%ld, %ld=%ld, %ld\n",index/3, A,MACHINE_MEMORY[A],B,MACHINE_MEMORY[B],C / 3);
      //printf("%d\t", index/3);
    }
    if (A < 0 || B < 0 || C < 0) {
      printf("error on run %d\n", runs);
      break;
    }
    runs++;
    if (runs > 100000){
      break;
      printf("too many runs\n");
    }
  }

  printf("exited after %d runs \n", runs);
  for (printIndex = 0; printIndex < MAX_PHYSICAL_MEMORY; ++printIndex) {
    printf("%ld ", MACHINE_MEMORY[printIndex]);
  }

  printf("\n");
  return 0;
}
