CC=gcc
CFLAGS=-c -g
DUMP=objdump

all: main.o
	$(CC) main.o -o main

main.o: main.c
	$(CC) $(CFLAGS) main.c -o main.o

dump: main.o
	$(DUMP) -d -S -M intel main.o

.PHONY: run
run: main
	./main

.PHONY: clean
clean:
	rm -rf *.o main
