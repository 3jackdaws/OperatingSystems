#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#define MEM_SIZE 2048
static const int MIN_FRAGMENT_SIZE = 16;
static int g_Memory_Area[MEM_SIZE/sizeof(int)]; 
static char *g_Memory = (char *)g_Memory_Area;
static void * free_list = 0;

static const int FREE_HASH = (int)587243957984375;        //chosen randomly by mashing the keyboard
static const int BUSY_HASH = (int)854792834604560;        //chosen randomly by mashing the keyboard

typedef struct free_header_s
{
    int hash;
    int size;
    struct free_header_s * next;
    struct free_header_s * prev;
}free_header_t;

typedef struct busy_header_s
{
    int hash;
    int size;
}busy_header_t;



free_header_t * free_block(void * block, int size)
{
    free_header_t * start_header;
    free_header_t * end_header;
    
    if(size < MIN_FRAGMENT_SIZE + sizeof(busy_header_t))
    {
        fprintf(stderr, "Error: freed block would be less than the minimum memory fragment size.");
    }
    if(size < 2*sizeof(free_header_t))
    {
        fprintf(stderr, "Error: freed block cannot be marked as free.");
    }
    
    start_header = (free_header_t* )block;
    end_header = (free_header_t *)((block + size) - sizeof(free_header_t));
    
    start_header->hash = FREE_HASH;
    start_header->size = size;
    start_header->next = end_header;
    
    end_header->hash = FREE_HASH;
    end_header->size = 0;
    end_header->prev = start_header;
    return start_header;
}

//returns the total available data size of the free block
int data_size(free_header_t * block)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8)%8;
    return block->size - offset;
}

int busy_block_size(void * block, int data_size)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8)%8;
    return data_size + offset +sizeof(busy_header_t);
}

void * data_start(void * block)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8)%8;
    return start + offset;
}

void my_mem_init()
{
    free_header_t * first_block = free_block(g_Memory, MEM_SIZE);
    free_list = first_block;
    
    first_block->prev = first_block->next;
    first_block->next->next = first_block;
    
}

void * my_malloc(int size)
{
    void * allocation = 0;
    busy_header_t * new_block;
    free_header_t * block;
    block = (free_header_t *)free_list;
    if(size < 16) size = 16;
    do{
        if(data_size(block) >= size)
        {
            //is potential free block
            int total_block_size = busy_block_size(block, size); //allocated block size is size + (size of busy header)
            
            free_header_t old_header = *block;  //save old header
            
            
            //SUPER IMPORTANT CHECK TO SEE IF NEXT ALLOCATION WILL RUIN EVERYTHING
            if((long)block + total_block_size > (long)g_Memory + MEM_SIZE) return NULL;
            //-----------------------------------------------------------------------
            
            
            //create new header
            
            free_header_t * new_header = (free_header_t *)((long)block + total_block_size);
            new_header->hash = FREE_HASH;
            new_header->next = old_header.next;
            new_header->prev = old_header.prev;
            new_header->size = old_header.size - total_block_size;
            
            
            //create busy block
            allocation = data_start(block);
            new_block = (busy_header_t *)block;
            new_block->size = size;
            new_block->hash = BUSY_HASH;
            
            //if block changed was first block, set free_list to new block
            if(free_list == block) free_list = new_header;
            
            
        }
        else
        {
            if((char *)block->next != g_Memory)
                block = block->next;
            else return NULL;   //no next block
        }
    }while(!allocation);
    return allocation;
}


void my_free(void * ptr)
{
    busy_header_t * block;
    free_header_t * new_block;
    char * block_start;
    char * block_end;
    int size;
    block_start = (char *)(ptr - (sizeof(busy_header_t)));
    block = (busy_header_t *)block_start;
    size = block->size;
    block_end = ptr + size;
    
    if(block->hash != BUSY_HASH)
    {
        fprintf(stderr, "Memory is corrupted at %ld\n", (long)block);
        exit(2);
    }

    //set free header at end of block
    new_block = (free_header_t *)(block_end - sizeof(free_header_t));
    new_block->hash = FREE_HASH;
    new_block->size = size;
    
    //set free header at beginning of block
    new_block = (free_header_t *)(block_start);
    new_block->hash = FREE_HASH;
    new_block->size = size;
}

void my_validate()
{
    free_header_t * start_free_header = 0;
    free_header_t * end_free_header = 0;
    busy_header_t * busy_header = 0;
    for (int i = 0; i<MEM_SIZE; i++)
    {
        void * block_start = g_Memory + i;
        if((int)block_start == FREE_HASH)
        {
            start_free_header = (free_header_t *)block_start;
            int size = start_free_header->size;
            
            end_free_header = (free_header_t *)1;
            
        }
    }
}

void my_print_mem()
{
    char * start = g_Memory;
    free_header_t * free_block;
    busy_header_t * busy_block;
    int size;
    char * next_free;
    char * first_free = 0;
    char * current_byte = start;
    int * current;
    
    printf("Address\t\tsize\t\tbusy\t\tnext free\n");
    
    do{
        current = (int *)current_byte;
        next_free = 0;
        if(*current == FREE_HASH)
        {
            if(!first_free){
                
            }
            free_block = (free_header_t *)current;
            size = free_block->size;
            next_free = free_block->next;
            printf("0x%04X\t\t0x%02X\t\t%s\t\t\t0x%04X\n",current_byte-g_Memory, size, "no", (char *)next_free - g_Memory);
        }
        else if(*current == BUSY_HASH)
        {
            busy_block = (busy_header_t *)current;
            size = busy_block->size;
            printf("0x%04X\t\t0x%02X\t\t%s\n",current_byte - g_Memory, size, "yes");
            
        }
        
        current_byte += 1;
        
    }while(current_byte < g_Memory + MEM_SIZE);
    
    
}
