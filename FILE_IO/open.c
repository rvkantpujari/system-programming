#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int main()
{
 int fo = open("./readme_FILE_IO.txt",O_RDONLY);
 printf("%d",fo);
 return 0;
}
