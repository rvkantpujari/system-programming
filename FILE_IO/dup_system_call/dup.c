// C program to illustrate system call dup() 
#include<stdio.h> 
#include <unistd.h> 
#include <fcntl.h>

int main()
{
  //open() returns a file descriptor fd to a the file "dup.txt" here"
  int fd = open("test.txt", O_WRONLY | O_APPEND);
  if(fd < 0)
     printf("Error opening the file\n");
  // dup() will create the copy of fd as the copy_desc 
  // then both can be used interchangeably. 
  int copy_desc1 = dup(fd);
  int copy_desc2 = dup(fd);
  // write() will write the given string into the file
  // referred by the file descriptors
  write(copy_desc1,"This is written by copy_desc1 file descriptor.\n", 48);
  write(copy_desc2,"This is written by copy_desc2 file descriptor.\n", 48);
  write(fd,"This is written by fd file descriptor.\n", 40);
  return 0;
}
