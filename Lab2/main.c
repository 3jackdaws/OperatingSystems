#include "memory.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char ** argv)
{
    /**********************************************
     Loop through entire address space
     **/
    void * address = 0;
//    for (int i = 1; i<2048; i++)
//    {
//        printf("Allocation Size: %d\n", i);
//        my_mem_init();
//        do{
//            address = my_malloc(i);
//        }while(address != NULL);
//        my_print_mem();
//        if(my_validate())
//        {
//            return -1;
//        }
//    }

    my_mem_init();
    void * a1 = my_malloc(100);
    my_free(a1);
    my_validate();
    my_print_mem();
    return 0;
}
