#include<stdio.h>
#include<sys/stat.h>

int main(int argc, char * argv[])
{
 mkdir(argv[1],0744);
 return 0;
}
