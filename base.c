#include <stdio.h>
#include <stdlib.h>

#define vm_block 500

int main() {

  int index = 0;
  int printIndex = 0;
  long sbn_result = 0;

  long* MACHINE_MEMORY = (long *) calloc(vm_block, sizeof(long));
  int memory_size = vm_block;
  int readIndex = 0;

  while(scanf("%ld", &MACHINE_MEMORY[readIndex]) != EOF) {
    readIndex++;
    if (readIndex >= memory_size) {
      // Get more memoryyyy
      MACHINE_MEMORY = realloc(MACHINE_MEMORY, (sizeof(long) * (vm_block * (((readIndex) / vm_block) + 1))));
      memory_size += vm_block;
    }
  }

  // Reset memory to the amount needed.
  MACHINE_MEMORY = realloc(MACHINE_MEMORY, (sizeof(long) * (readIndex)));
  memory_size = readIndex;

  long A = MACHINE_MEMORY[index];
  long B = MACHINE_MEMORY[index + 1];
  long C = MACHINE_MEMORY[index + 2];

  while (A || B || C) {

    sbn_result = (MACHINE_MEMORY[A] -= MACHINE_MEMORY[B]);
    if (sbn_result < 0) {
      // Jump to C.
      index = C;
    }
    else {
      index += 3;
    }

    A = MACHINE_MEMORY[index];
    B = MACHINE_MEMORY[index + 1];
    C = MACHINE_MEMORY[index + 2];

  }

  for (printIndex = 0; printIndex < memory_size; ++printIndex) {
    printf("%ld ", MACHINE_MEMORY[printIndex]);
  }

  printf("\n");
  return 0;
}
