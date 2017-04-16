#include "memory.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char ** argv)
{
    char * string1 = my_malloc(64);
    memset(string1, 0, 64);
    
    // char * string2 = my_malloc(12);
    // char * string3 = my_malloc(2000);
    // char * string4 = my_malloc(64);
    return 0;
}