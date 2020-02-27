#include <stdio.h> 
#include <sys/types.h> 
#include <unistd.h>

// The number of times ‘Hello World’ is printed is equal to number of process created. Total Number of Processes = 2^n, where n is number of fork system calls. So here n = 3, 2^3 = 8

int main()
{
  fork();
  fork();
  fork();
  printf("Hello World\n");
  return 0; 
} 

