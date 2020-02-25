#include <stdio.h>
int main(int argc, char* argv[])
{
 char c;
 FILE *f=fopen(argv[1],"r");
 while((c=fgetc(f))!=EOF)
       printf("%c",c);
}


