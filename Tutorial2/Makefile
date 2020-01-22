CC=gcc
CFLAGS=-Wall
CLIBS=-lpthread
OUT=threadTest
OBJS=threadTest.o

$(OUT): threadTest.o
	$(CC) $(CFLAGS) $(CLIBS) -o /build_output/$(OUT) $(OBJS)
threadTest.o: threadTest.c
	$(CC) $(CFLAGS) -c threadTest.c -o threadTest.o


.PHONY: clean

clean:
	rm -rf *.o ./build_output/$(OUT)
