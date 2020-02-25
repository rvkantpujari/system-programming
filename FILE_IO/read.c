#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<string.h>

int main(int argc, char * argv[])
{
 int fo = open(argv[1], O_RDONLY, 0600);
 char msg[1000];
 if(fo==-1)
    printf("Error Occured.");
 read(fo, msg, strlen(msg)+1);
 puts(msg);
 close(fo);
 return 0;
}
