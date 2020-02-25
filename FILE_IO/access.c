#include<stdio.h>
#include<unistd.h>
#include<errno.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
  
extern int errno;
  
int main(int argc, const char *argv[])
{
 int fd1 = access(argv[1], R_OK);
 int fd2 = access(argv[1], W_OK);
 int fd3 = access(argv[1], X_OK);
 if(fd1 == -1){
    printf("Error Number : %d\n", errno);
    perror("Error Description:");
 }
 else
    printf("%s has read permission.\n",argv[1]);
 if(fd2 == -1){
    printf("Error Number : %d\n", errno);
    perror("Error Description:");
 }
 else
    printf("%s has write permission.\n",argv[1]);
 if(fd3 == -1){
    printf("Error Number : %d\n", errno);
    perror("Error Description:");
 }
 else
    printf("%s has execute permission.\n",argv[1]);
 return 0; 
} 

