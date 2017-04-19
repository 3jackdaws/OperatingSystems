#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define MEM_SIZE 2048
static const int MIN_FRAGMENT_SIZE = 16;
static int g_Memory_Area[MEM_SIZE/sizeof(int)]; 
static char *g_Memory = (char *)g_Memory_Area;



static const int FREE_HASH = 0x77777777;        //chosen randomly by mashing the keyboard
static const int BUSY_HASH = 0xAAAAAAAA;        //chosen randomly by mashing the keyboard

typedef struct free_header_s
{
    int hash;
    int size;
    struct free_header_s * next;
    struct free_header_s * prev;
}free_header_t;

static free_header_t * free_list = 0;
static const int SIZEOF_FREE_HEADER = sizeof(free_header_t);

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
        return NULL;
    }
    if(size < 2*sizeof(free_header_t))
    {
        fprintf(stderr, "Error: freed block cannot be marked as free.");
        return NULL;
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
    return block->size - offset - sizeof(busy_header_t);
}

int busy_block_size(void * block, int data_size)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8) % 8;
    return data_size + offset +sizeof(busy_header_t);
}

void * data_start(void * block)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8) % 8;
    return start + offset;
}

free_header_t * append_free_block(free_header_t * block)
{
    free_header_t * end_of_list = free_list->prev;
    free_header_t * block_tail = block->next;
    
    
    end_of_list->next->prev = block_tail;   //set old next's prev block to new block's tail header
    block_tail->next = end_of_list->next;   //set new block_tail's next to old end of list block's next
    block->prev = end_of_list;              //set new block's prev to end_of_list
    end_of_list->next = block;              //set end_of_list's next to block
    return block;
}

free_header_t * coalesce(free_header_t * block_hi, free_header_t * block_low)
{
    if(block_hi < block_low)
    {
        free_header_t * store = block_low;
        block_low = block_hi;
        block_hi = store;
    }
    free_header_t * block_hi_tail = block_hi->next;
    free_header_t * block_low_tail = block_low->next;
    
    if((char *)block_low_tail + sizeof(free_header_t) != (char *)block_hi)
    {
        fprintf(stderr, "block_hi does not immediatly follow block_low\n");
        return NULL;
        // no error message because this function cannot be called by a consumer
    }
    
    //make one big block
    block_low->next = block_hi_tail;
    block_hi_tail->prev = block_low;
    
    
    //clean up loose ends
    block_low_tail->next->prev = block_hi_tail;
    block_hi->prev->next = block_low;
    
    block_low_tail->hash = 0;
    block_hi->hash = 0;
    
    if(block_hi == free_list)free_list = block_low;
    
    return block_low;
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
        int data_max = data_size(block);
        if(data_max >= size)
        {
            //is potential free block
            int total_block_size = busy_block_size(block, size); //allocated block size is size + (size of busy header)
            
            free_header_t old_header = *block;  //save old header
            
//            //SUPER IMPORTANT CHECK TO SEE IF NEXT ALLOCATION WILL RUIN EVERYTHING
//            if((long)block + total_block_size > (long)g_Memory + MEM_SIZE)
//                return NULL;
//            //-----------------------------------------------------------------------
            
            //create new header
            
            free_header_t * new_header = (free_header_t *)((long)block + total_block_size);
            void * mem_max = (free_header_t *)(g_Memory + MEM_SIZE - 2*sizeof(free_header_t));
            if(new_header > mem_max)
            {
                return NULL;
            }

            new_header->hash = FREE_HASH;
            new_header->next = old_header.next;
            new_header->prev = old_header.prev;
            new_header->size = old_header.size - total_block_size;
            new_header->prev->next = new_header;
            new_header->next->prev = new_header;
            
            //create busy block
            allocation = data_start(block);
            new_block = (busy_header_t *)block;
            new_block->size = size;
            new_block->hash = BUSY_HASH;
            
            //if block changed was first block, set free_list to new block
            if(free_list == block){
                free_list = new_header;
                if(my_validate())
                    fprintf(stderr, "reeeee");
            }
        }
        else
        {
            
            if(block->next->next != free_list)
                block = block->next->next;
            else return NULL;   //no next block
        }
    }while(!allocation);

    return allocation;
}


void my_free(void * ptr)
{
    void * mem_start = (void *)g_Memory;
    free_header_t * start_free_block = 0;
    busy_header_t * block = ptr - sizeof(busy_header_t);
    free_header_t * temp = 0;
    int offset = 0;
    while(block->hash != BUSY_HASH){
        offset++;
        block = (busy_header_t *)((char *)block - 1);
        if((char *)block <= g_Memory || offset > 7)
        {
            fprintf(stderr, "Memory is corrupted at 0x%04X\n", (int)((char *)block - g_Memory));
            exit(1);
        }
    }
    
    int total_block_size = block->size + offset + sizeof(busy_header_t);
    start_free_block = free_block(block, total_block_size);
    if(!start_free_block)
    {
        return;
    }
    
    append_free_block(start_free_block);
    
    //check if can coalesce
    if(start_free_block != (free_header_t *)g_Memory)
    {
        temp = (free_header_t *)((char *)start_free_block - sizeof(free_header_t));
        if(temp->hash == FREE_HASH)
        {
            start_free_block = coalesce(temp->prev, start_free_block);
        }
    }
    
    if(start_free_block->next != (free_header_t *)(g_Memory_Area + MEM_SIZE - sizeof(free_header_t)))
    {
        temp = (free_header_t *)((char *)start_free_block->next + sizeof(free_header_t));
        if(temp->hash == FREE_HASH)
        {
            start_free_block = coalesce(start_free_block, temp);
        }
    }
}

int my_validate()
{
    
    free_header_t * last_free_header = free_list;
    free_header_t * current_free_header = free_list->next;
    
    while(current_free_header != free_list)
    {
        last_free_header = current_free_header;
        current_free_header = current_free_header->next;
        if(last_free_header != current_free_header->prev)
        {
            fprintf(stderr, "Memory is corrupted at 0x%04X\n", (int)((char *)current_free_header - g_Memory));
            return -1;
        }
    }
    return 0;
}

void my_print_mem()
{
    char * start = g_Memory;
    free_header_t * free_block;
    busy_header_t * busy_block;
    int size;
    free_header_t * next_free;
    free_header_t * prev_free;
    free_header_t * first_free = 0;
    char * current_byte = start;
    int * current;
    
    printf("Address\t\tsize\t\tbusy\t\tnext free\t\tPrevious Free\n");
    
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
            prev_free = free_block->prev;
            printf("0x%04X\t\t0x%04X\t\t%s\t\t\t0x%04X\t\t\t0x%04X\n",
                   current_byte-g_Memory,
                   size,
                   "no",
                   (char *)next_free - g_Memory,
                   (char *)prev_free - g_Memory);
        }
        else if(*current == BUSY_HASH)
        {
            busy_block = (busy_header_t *)current;
            size = busy_block->size;
            printf("0x%04X\t\t0x%04X\t\t%s\n",current_byte - g_Memory, size, "yes");
        }
        
        current_byte += 1;
        
    }while(current_byte < g_Memory + MEM_SIZE);
}
