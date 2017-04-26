CC=bin/stacklc

all: os user

clean:
	rm -f *.sl*

os:
	$(CC) os.c
	
user: io.c user.c
	$(CC) user.c
	

%.sl:%.c
	$(CC) -c $<

%.slb:%.sl
	$(CC) $<