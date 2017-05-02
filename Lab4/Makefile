all: os.slb user.slb

clean:
	rm -f *.sl
	rm -f *.slb
	rm -f out
	rm -f *.ast
	rm -f *.dbg
	rm -f *.lst

os.slb: os.sl oslib.sl userlib.sl pio.sl
	slasm -dbg os.sl oslib.sl userlib.sl pio.sl

user.slb: user.sl oslib.sl userlib.sl
	slasm user.sl oslib.sl userlib.sl

os.sl: os.c userlib.h oslib.h
	stacklc -dbg -c os.c

user.sl: user.c userlib.h oslib.h
	stacklc -dbg -c user.c

userlib.sl: userlib.c userlib.h oslib.h
	stacklc -dbg -c userlib.c

oslib.sl: oslib.c oslib.h
	stacklc -dbg -c oslib.c

pio.sl: pio.c oslib.h pio.h
	stacklc -dbg -c pio.c
