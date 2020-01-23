CC=gcc
CFLAGS=-Wall
CLIBS=-lpthread
OUT=3000shell
OBJS=3000shell.o

$(OUT): 3000shell.o
	$(CC) $(CFLAGS) $(CLIBS) -o $(OUT) $(OBJS)
3000shell.o: 3000shell.c
	$(CC) $(CFLAGS) -c 3000shell.c -o 3000shell.o


.PHONY: clean

clean:
	rm -rf *.o $(OUT)
