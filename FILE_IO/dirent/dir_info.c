#include<stdio.h>
#include<sys/types.h>
#include<dirent.h>

int main(int argc, char * argv[])
{
 struct dirent *d;
 DIR *pdir;
 if(argc == 1)
    pdir = opendir(".");
 else
    pdir = opendir(argv[1]);
 if(pdir == NULL)
   {
    perror("Opendir: ");
    return -1;
   }
 while(d=readdir(pdir))
 {
  printf("%ld %s %d\n",d->d_ino,d->d_name, d->d_reclen);
 }
 closedir(pdir);
}
