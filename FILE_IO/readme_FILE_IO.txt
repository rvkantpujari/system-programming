# To the kernel all open files are referred to by file descriptors.

# A file descriptor is a non-negative integer.

# When we open an existing file or create a new one, the kernel returns a file descriptor to the process.

# When we want to read/write a file, we identify the file with the file descriptor that was returned by open or creat as an argument to either read or write.

# Symbolic constants STDIN_FILENO, STDOUT_FILENO and STDERR_FILENO are defined in <unistd.h> header.

# File descriptors range from 0 through OPEN_MAX.

#---------------- Functions ----------------
	#include<sys/types.h>
	#include<sys/stat.h>
	#include<fcntl.h>
#-------------------------------------------
# open function
# int open(const char *path, int oflag, [mode_t]);
#-------------------------------------------
# oflags are: O_RDONLY, O_WRONLY, O_RDWR
# O_APPEND - Append to the end of the file.
# O_CREAT - Create file if doesn't exist.
# O_EXCL - Produces error if O_CREAT is specified and the file already exists.
# O_TRUNC - if file exists or successfully opened for either write-only or read-write, truncate its length to 0.
#-------------------------------------------
# creat function
# int creat(const char *path, mode_t mode);
#-------------------------------------------
# close function
# int close(const char *path, mode_t mode);
#-------------------------------------------



