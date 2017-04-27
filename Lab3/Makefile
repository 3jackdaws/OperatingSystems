CC=bin/stacklc		# Ran everything on my own machine, pls no bad grade if I forget to change this

all: os user

clean:
	rm -f *.sl*

os:
	$(CC) os.c
	
user: userlib.c user.c
	$(CC) user.c
	

%.sl:%.c
	$(CC) -c $<

%.slb:%.sl
	$(CC) $<