#include "memory.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char ** argv)
{
    char * ree = "Hello!";
    my_mem_init();
    void * address;
    do{
        address = my_malloc(100);
    }while (address != NULL);
    
//    my_free(donger);
    
    my_print_mem();
    
    return 0;
}
