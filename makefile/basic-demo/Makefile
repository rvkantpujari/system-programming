all: main.out

main.out: main.o add.o sub.o
	gcc main.o add.o sub.o -o main.out

main.o: main.c
	gcc -c main.c

add.o: add.c
	gcc -c add.c

sub.o: sub.c
	gcc -c sub.c

clean:
	rm -rf *.o main.out
