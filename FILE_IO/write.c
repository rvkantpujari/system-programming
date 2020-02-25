#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<string.h>

int main(int argc, char * argv[])
{
 int fo = open(argv[1], O_CREAT | O_WRONLY, 0600);
 char msg[1000];
 printf("\nPlease enter the text: ");
 gets(msg);
 if(fo==-1)
    printf("Error Occured.");
 write(fo, msg, strlen(msg)+1);
 close(fo);
 return 0;
}
