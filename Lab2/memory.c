#include <stdlib.h>
#include <string.h>


#define MEM_SIZE 2048
static const int MIN_FRAGMENT_SIZE = 16;
static int g_Memory_Area[MEM_SIZE/sizeof(int)]; 
static char *g_Memory = (char *)g_Memory_Area;
static char * free_list = 0;

static const int FREE_HASH = (int)587243957984375;        //chosen randomly by mashing the keyboard
static const int BUSY_HASH = (int)854792834604560;        //chosen randomly by mashing the keyboard

typedef struct free_header_s
{
    int hash;
    int size;
    char * next;
    char * prev;
}free_header_t;

typedef struct busy_header_s
{
    int hash;
    int size;
}busy_header_t;

void my_mem_init()
{
    free_list = g_Memory;
    free_header_t header =   {  FREE_HASH, 
                                MEM_SIZE - (sizeof(free_header_t)*2), 
                                0,
                                0
                            };
    memcpy(g_Memory, &header, sizeof(free_header_t));
    header.size = 0;
    memcpy(g_Memory + (MEM_SIZE - sizeof(free_header_t)), &header, sizeof(free_header_t));
    
}

void * my_malloc(int size)
{
    char * current = free_list;
    char * allocation = 0;
    busy_header_t * new_block = 0;
    free_header_t * block = 0;
    do{
        block = (free_header_t *)current;
        if(block->hash == FREE_HASH && block->size >= (size + sizeof(free_header_t)))
        {
            //is potential free block
            int total_block_size = size + sizeof(busy_header_t); //allocated block size is size + (size of busy header)
            if(free_list == current) //if allocating at the beginning of the free list
            {
                if( ! block->next) //no next free block
                {
                    free_list += total_block_size;      //set beginning of free list to 
                    
                    //create new free header
                    free_header_t * fl_header = ((free_header_t *)free_list);
                    fl_header->size = block->size - total_block_size;
                    fl_header->hash = FREE_HASH;
                    fl_header->next = 0;
                    fl_header->prev = 0;
                    
                }
                
                
            }
            allocation = current + sizeof(busy_header_t); //start
            new_block = (busy_header_t *)block;
            new_block->size = size;
            new_block->hash = BUSY_HASH;
            
            
            
        }
        else
        {
            if(block->next)
                current = block->next;
            else return NULL;   //no next block
        }
    }while(!allocation);
    return allocation;
}


void my_free(void * ptr)
{
    
}

void my_validate()
{
    
}

void my_print_mem()
{
    
}