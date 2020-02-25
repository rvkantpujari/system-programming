// C program to illustrate dup2() 
#include<stdlib.h> 
#include<unistd.h> 
#include<stdio.h> 
#include<fcntl.h> 

int main() 
{ 
  int file_desc = open("test.txt",O_WRONLY | O_APPEND); 	
  // here the newfd is the file descriptor
  dup2(file_desc, 1) ; // File descriptor i.e. 1 is for STDOUT
  // All the printf statements will be written in the file
  printf("I will be printed in the file test.txt (written by dup2() system call).\n");
  return 0;
} 

