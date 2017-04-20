//t
#include "memory.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char ** argv)
{
    void * address;
    void * address1;
    void * address2;
    void * address3;
    void * address4;
    void * address5;
    
    for (int i = 16; i<2000; i++)
    {
        my_mem_init();
        do{
            address = my_malloc(i);
        }while(address);
        my_validate();

    }
    
    for (int i = 16; i<2000; i += 3)
    {
        my_mem_init();
        address = my_malloc(i);
        address1 = my_malloc(i + 1);
        address2 = my_malloc(i + 2);
        address3 = my_malloc(i + 3);
        address4 = my_malloc(i + 4);
        address5 = my_malloc(i + 5);
        
        if(address2)
            my_free(address2);
        
        if(address4)
            my_free(address4);
        
        address = my_malloc(i);
        
        address = my_malloc(i -2);
        
        address = my_malloc(i - 5);
        
        if(address5)
            my_free(address5);
        
        address = my_malloc(i);
        address = my_malloc(i);
        if(address)
            my_free(address);
        
        my_validate();
        my_print_mem();
        
        
        
        
    }
    
    return 0;
}
