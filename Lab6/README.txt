user.c calls test.c and test2.c.  They all have the same workload and they 
all print out an identifying string.  The identifying strings from one program 
do not all output squentially.  This demonstrates that the os is switching 
between processes.

It takes 1.042 seconds to run just user.c on my machine.

It takes 1.174 seconds to run all three programs simultaneously.

