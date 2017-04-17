COPTS=-Wall -g -c -O0

OBJS=memory.o \
	main.o

all: test

clean:
	rm -rf $(OBJS) test
	
test: $(OBJS)
	c99 $(OBJS) -o test

main.o: main.c memory.c
	c99 $(COPTS) main.c -o $@
	
memory.o: memory.c
	c99 $(COPTS) memory.c -o memory.o
	


