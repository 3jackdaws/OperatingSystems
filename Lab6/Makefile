CC=stacklc

all: os user test

test: test.sl userlib.sl
	slasm test.sl userlib.sl
	

clean:
	rm -f *.sl*

os: os.sl mymalloc.sl sched.sl
	slasm os.sl mymalloc.sl sched.sl
	
user: user.sl userlib.sl
	slasm user.sl userlib.sl
	
userlib.sl: userlib.c
	stacklc -c userlib.c
	
%.sl:%.c
	$(CC) -c $<

