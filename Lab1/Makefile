COPTS=-Wall -g -c -O0

OBJS=prefilter.o \
	postfilter.o \
	process.o \

PROGS=prefilter \
		postfilter \
		process \

all: $(PROGS)

clean:
	rm -rf $(OBJS) $(PROGS)

prefilter: prefilter.o
	c99 prefilter.o -o prefilter
	
postfilter: postfilter.o
	c99 postfilter.o -o postfilter
	
process: process.o
	c99 process.o -o process


