CFLAGS=-Wall -g -c -O0
CC=c99

OBJS=memory.o \
	main.o

all: test

clean:
	rm -rf $(OBJS) test
	
test: $(OBJS)
	$(CC) $(OBJS) -o test

main.o: main.c memory.c
	$(CC) $(CFLAGS) main.c -o $@
	
memory.o: memory.c
	$(CC) $(CFLAGS) memory.c -o memory.o
	


