CC=stacklc

all: os user test

test: test.sl userlib.sl
	slasm test.sl 
	

clean:
	rm -f *.sl*

os: os.sl mymalloc.sl sched.sl
	slasm os.sl mymalloc.sl sched.sl
	
user: user.sl userlib.sl
	slasm user.sl 
	
%.sl:%.c
	$(CC) -c $<

