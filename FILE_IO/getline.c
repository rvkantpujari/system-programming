#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{
 char c[1000];
 FILE *f=fopen(argv[1],"r");
 while(!feof(f))
      {
	fgets(c,strlen(c)+1,f);
	printf("%s",c);
      }
 fclose(f);
}
