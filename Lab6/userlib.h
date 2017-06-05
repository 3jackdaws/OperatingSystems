#pragma once

// Creates a new process and loads the SLB file indicated by filename
int exec(char *filename);

// Prints a null terminated string
int prints(char *string);

// Converts the integer to a string and prints it
int printi(int value);

// Terminates the calling process
int exit();

// Not implemnted in this version
int getl(char *buff);


// Causes the process to give up the CPU
int yield();

// Causes the process to sleep for the specified number of instructions
int sleep(int duration);

// Returns the current system time
int time();

// Causes the system to halt
int halt();