CC=gcc
CFLAGS=-Wall -O2
CLIBS=-lpthread
OUT=output
OBJS=threadTest.c

$(OUT): threadTest.c
	$(CC) $(CFLAGS) $(CLIBS) -o $(OUT) $(OBJS)



.PHONY: clean

clean:
	rm -rf *.o $(OUT)
