#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<string.h>

int main(int argc, char * argv[])
{
 int fo = creat(argv[1], 0600);
 //int fo = open(argv[1], O_CREAT | O_WRONLY, 0600);
 //printf("%d",fo);
 if(argc!=3)
    printf("Invalid arguments...\ncommand filename text\n");
 else if(fo==-1)
    	 printf("Failed to create file.");
 close(fo);
 return 0;
}
