#include<stdio.h>
#include<sys/stat.h>
#include<unistd.h>

int main(int argc, char * argv[])
{
 chmod(argv[1],0744);
 return 0;
}
