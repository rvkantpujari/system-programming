#include <stdio.h> 
#include <sys/types.h> 
#include <unistd.h>

int main()
{
  int pid = fork();
  if(pid==0)
  {
	printf("Child Process\n"); 
        printf(" my id is %d \n", getpid()); 
  }
  else
  {
	printf("Parent Process\n"); 
        printf(" my id is %d \n", getpid()); 
  }
  return 0; 
} 

