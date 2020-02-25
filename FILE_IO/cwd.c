#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <string.h>
#include <unistd.h>

int main()
{
 char path[100];
 getcwd(path, 101);
 printf("%s\n",path);
}
