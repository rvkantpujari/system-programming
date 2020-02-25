#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char *argv[])
{
  if(argc<2)
  {
   fprintf(stderr, "USAGE: stat_example.out file_or_dir_with_path\n");
   exit(1);
  }	
  struct stat st;
  stat(argv[1], &st);
  printf("st_mode value for %s is %o\n", argv[1], st.st_mode);
  // Check file types using macros
  if (S_ISREG(st.st_mode))
	printf("%s is regular file\n", argv[1]);
  else if (S_ISDIR(st.st_mode))
	printf("%s is a directory\n", argv[1]);
  else if (S_ISLNK(st.st_mode))
	printf("%s is symbolic link\n", argv[1]);
  // Check file types using bitwise
  if (st.st_mode & S_IFREG)
	printf("%s is regular file\n", argv[1]);
  else if (st.st_mode & S_IFDIR)
	printf("%s is a directory\n", argv[1]);
  else if (st.st_mode & S_IFLNK)
	printf("%s is symbolic link\n", argv[1]);	
  // Check for access
  printf("Owner\'s Permissions on %s\n", argv[1]);
  if (st.st_mode & S_IRUSR)
	printf("Owner has read access to %s \n", argv[1]);
  if (st.st_mode & S_IWUSR)
	printf("Owner has write access to %s \n", argv[1]);
  if (st.st_mode & S_IXUSR)
	printf("Owner has execute access to %s \n", argv[1]);
  if (st.st_mode & S_IRWXU)
	printf("Owner has read AND/OR write AND/OR execute/search access to %s \n", argv[1]);
  printf("Group\'s Permissions on %s\n", argv[1]);
  if (st.st_mode & S_IRGRP)
	printf("Group has read access to %s \n", argv[1]);
  if (st.st_mode & S_IWGRP)
	printf("Group has write access to %s \n", argv[1]);
  if (st.st_mode & S_IXGRP)
	printf("Group has execute access to %s \n", argv[1]);
  if (st.st_mode & S_IRWXG)
	printf("Group has read AND/OR write AND/OR execute/search access to %s \n", argv[1]);
}
