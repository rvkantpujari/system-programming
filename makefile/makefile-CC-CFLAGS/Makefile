CC=gcc
CFLAGS=-c -Wall

all: main.out

main.out: main.o add.o sub.o
	$(CC) main.o add.o sub.o -o main.out

main.o: main.c
	$(CC) $(CFLAGS) main.c

add.o: add.c
	$(CC) $(CFLAGS) add.c

sub.o: sub.c
	$(CC) $(CFLAGS) sub.c

clean:
	rm -rf *.o main.out
