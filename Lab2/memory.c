#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "memory.h"

#define MEM_SIZE 2048
static const int MIN_FRAGMENT_SIZE = 16; //used once
static int g_Memory_Area[MEM_SIZE/sizeof(int)]; 
static char *g_Memory = (char *)g_Memory_Area;

//chosen randomly by mashing the keyboard
static const int FREE_HASH = (int)837249238473984;
static const int BUSY_HASH = (int)492803948230948;

/**
 free block structure
 
 ************************
 *  free_header_t head
 *
 *
 *
 *  Random garbage
 *
 *
 * free_header_t tail
 *************************
 
 head->next points to tail
 tail->prev points to head
 head->size is &tail - &head + sizeof(free_header_t)
 tail->size is 0
 
 tail->next points to next free block's head
 head->prev points to prev free block's tail
 **/
typedef struct free_header_s
{
    int hash;
    int size;
    struct free_header_s * next;
    struct free_header_s * prev;
}free_header_t;

static free_header_t * free_list = 0;

//used for debugging purposes
static const int SIZEOF_FREE_HEADER = sizeof(free_header_t);

typedef struct busy_header_s
{
    int hash;
    int size;
}busy_header_t;

/*****************************************************
 Description:
    Creates a free block that starts at the address of
    block and the TOTAL BLOCK SIZE including headers is size
 Thread Safety: 
    Definitely not
 Returns:
    The address of the START FREE BLOCK.
    NULL if the arguments passed make no sense
 ****************************************************/
static free_header_t * free_block(void * block, int size)
{
    free_header_t * start_header;
    free_header_t * end_header;
    
    if(size < MIN_FRAGMENT_SIZE + sizeof(busy_header_t))
    {
        fprintf(stderr, "Error: freed block supported memory \
                would be less than the minimum memory fragment size.");
        return NULL;
    }
    if(size < 2*sizeof(free_header_t))
    {
        fprintf(stderr, "Error: freed block cannot be marked as free.");
        return NULL;
    }
    //get start header
    start_header = (free_header_t* )block;
    //get end header
    end_header = (free_header_t *)(((char*)block + size)
                                   - sizeof(free_header_t));
    
    //set both
    start_header->hash = FREE_HASH;
    start_header->size = size;
    start_header->next = end_header;
    
    end_header->hash = FREE_HASH;
    end_header->size = 0;
    end_header->prev = start_header;
    
    return start_header; //returns the "start" of a newly freed area
}

/*****************************************************
 Description:
    Returns the total available data size of the free block.
    Since data must be 8 byte aligned, the data size of the
    block can be smaller than the total size
 Thread Safety:
    Sure, doesn't modify data
 Returns:
    The maximum data that a consumer
    would be able to store if they requested this block
 ****************************************************/
static int data_size(free_header_t * block)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8)%8;
    return block->size - offset - sizeof(busy_header_t);
}

/*****************************************************
 Description:
    calculates and returns the total size that a busy
    block will take up with padding, busy header and data 
 Thread Safety:
    Sure, doesn't modify data
 Returns:
    The the TOTAL SIZE of a busy block if made from this free block
 ****************************************************/
static int busy_block_size(void * block, int data_size)
{
    void * start = (void *)((char*)block + sizeof(busy_header_t));
    int offset = ((long)start % 8) % 8;
    int bsize = data_size + offset +sizeof(busy_header_t);
    
    //BUSY BLOCK must be at least 2 * the size of a free header,
    //TWO FREE HEADERS MUST BE WRITTEN TO 'free' MEMORY
    return bsize >= 2*sizeof(free_header_t) ? bsize : \
    2*sizeof(free_header_t);
}

/*****************************************************
 Description:
    none
 Thread Safety:
    Sure, doesn't modify data
 Returns:
    returns the address of the start of the data section of a busy block
 ****************************************************/
static void * data_start(void * block)
{
    void * start = (void *)(block + sizeof(busy_header_t));
    int offset = ((long)start % 8) % 8;
    return start + offset;
}



/*****************************************************
 Description:
    appends a free blcok to the managed free list
 Thread Safety:
    None at all
 Returns:
    returns the address the consumer passes in
 ****************************************************/
static free_header_t * append_free_block(free_header_t * block)
{
    free_header_t * end_of_list = free_list->prev;
    free_header_t * block_tail = block->next;
    
    //set old next's prev block to new block's tail header
    end_of_list->next->prev = block_tail;
    //set new block_tail's next to old end of list block's next
    block_tail->next = end_of_list->next;
    //set new block's prev to end_of_list
    block->prev = end_of_list;
    //set end_of_list's next to block
    end_of_list->next = block;
    return block;
}

/*****************************************************
 Description:
    joins a higher memory free block to a lower memory block
 Thread Safety:
    None
 Returns:
    returns the address of the START HEADER for the coalesced block
 ****************************************************/
static free_header_t * coalesce(free_header_t * block_hi,
                                free_header_t * block_low)
{
    if(block_hi < block_low)
    {
        free_header_t * store = block_low;
        block_low = block_hi;
        block_hi = store;
    }
    free_header_t * block_hi_tail = block_hi->next;
    free_header_t * block_low_tail = block_low->next;
    
    if((char *)block_low_tail + sizeof(free_header_t) != \
       (char *)block_hi)
    {
        //for debugging purposes
        fprintf(stderr, "Potentially joinable blocks are not \
                contiguous in memory.  If you see this error, \
                something is horribly wrong.  Your program will \
                now exit.\n");
        exit(2);
        
    }
    
    //make one big block
    block_low->next = block_hi_tail;
    block_hi_tail->prev = block_low;
    if(block_hi == free_list)free_list = block_low;
    
    
    
    //clean up loose ends
    if(block_low_tail->next != block_hi)
    {
        block_low_tail->next->prev = block_hi_tail;
        block_hi->prev->next = block_low;
    }
    
    
    block_low_tail->hash = 0;
    block_low_tail->next = 0;
    block_low_tail->prev = 0;
    
    block_hi->hash = 0;
    block_hi->next = 0;
    block_hi->prev = 0;
    
    
    
    block_low->size += block_hi->size;
    
    return block_low;
}

/*****************************************************
 Thread Safety:
    None
 Returns:
    none
 ****************************************************/
void my_mem_init()
{
    //internal data structure means this must be done
    memset(g_Memory, 0, MEM_SIZE);
    free_header_t * first_block = free_block(g_Memory, MEM_SIZE);
    free_list = first_block;
    first_block->prev = first_block->next;
    first_block->next->next = first_block;
}

/*****************************************************
 Thread Safety:
    None
 Returns:
    returns the address of an allocated block of memory 
    that is at least as big as the size requested, 
    otherwise, NULL
 ****************************************************/
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
            int total_block_size = busy_block_size(block, size);
            //allocated block size is size + (size of busy header)
            
            free_header_t old_header = *block;  //save old header
            
            free_header_t * new_header = \
            (free_header_t *)((char*)block + total_block_size);
            void * mem_max = (free_header_t *)(g_Memory + MEM_SIZE \
                                               - 2*sizeof(free_header_t));
            
            //make sure the new header isn't
            //being built outside of memory bounds
            if((void *)new_header > mem_max)
            {
                return NULL;
            }
            
            if(block->size - total_block_size >= 2*sizeof(free_header_t))
            {
                //we can subdivide this memory
                new_header->hash = FREE_HASH;
                new_header->next = old_header.next;
                new_header->prev = old_header.prev;
                new_header->size = old_header.size - total_block_size;
                new_header->prev->next = new_header;
                new_header->next->prev = new_header;
            }
            else
            {
                //can't subdivide the memory
                size = old_header.size;
                new_header = old_header.next->next;
                new_header->prev = old_header.prev;
                old_header.prev->next = new_header;
            }

            
            
            //create busy block
            allocation = data_start(block);
            new_block = (busy_header_t *)block;
            new_block->size = size;
            new_block->hash = BUSY_HASH;
            
            //if block changed was first block, set free_list to new block
            if(free_list == block)
            {
                free_list = new_header;
            }
        }
        else
        {
            //always call next->next to get to beginning of free block
            if(block->next->next != free_list)
                block = block->next->next;
            //loop starts at free_list, if it makes it
            //back without allocating, there are no available blocks left
            else return NULL;
        }
    }while(!allocation);
    
    return allocation;
}

/*****************************************************
 Thread Safety:
    None
 Returns:
    None
 ****************************************************/
void my_free(void * ptr)
{
    free_header_t * start_free_block = 0;
    busy_header_t * block = ptr - sizeof(busy_header_t);
    free_header_t * temp;;
    int offset = 0;
    while(block->hash != BUSY_HASH){
        //backtrack until the busy header is found
        offset++;
        block = (busy_header_t *)((char *)block - 1);
        
        //if we backtrack more than 7 bytes, the allocator
        //messed up and the program should explode
        
        //Also if we backtrack past the beginning of memory,
        //it's probably the consumer's fault in which case their
        //program deserves to explode
        
        //If the consumer passes in a bad pointer,
        //this will catch it and explode
        if((char *)block <= g_Memory || offset > 7)
        {
            fprintf(stderr,
                    "Memory could not be identified as busy at 0x%04X\n",
                    (int)((char *)block - g_Memory));
            exit(1);
        }
    }
    
    int total_block_size = block->size + offset ;
    total_block_size = total_block_size >= 2*sizeof(free_header_t) \
    ? total_block_size : 2*sizeof(free_header_t);
    start_free_block = free_block(block, total_block_size);
    
    //if free_block returns NULL, something is very wrong
    //the consumer will recieve an error message from
    //free_block, so no message included here
    if(!start_free_block)
    {
        exit(1);
        return;
    }
    
    //put freed block back in rotation
    append_free_block(start_free_block);
    
    //check if can coalesce
    if(start_free_block != (free_header_t *)g_Memory)
    {
        temp = (free_header_t *)((char *)start_free_block \
                                 - sizeof(free_header_t));
        
        //is the block before this one free?
        if(temp->hash == FREE_HASH && temp->prev->hash == FREE_HASH)
        {
            start_free_block = coalesce(temp->prev, start_free_block);
            //don't need to check for null
            //if coalesce messes up, it will imediatly exit the program
        }
    }
    
    if(start_free_block->next != \
       (free_header_t *)(g_Memory_Area \
                         + MEM_SIZE - sizeof(free_header_t)))
    {
        temp = (free_header_t *)((char *)start_free_block->next \
                                 + sizeof(free_header_t));
        //is the block after this one free?
        if(temp->hash == FREE_HASH && temp->next->hash == FREE_HASH)
        {
            start_free_block = coalesce(start_free_block, temp);
        }
    }
}

/*****************************************************
 Thread Safety:
    None
 ****************************************************/
void my_validate()
{
    free_header_t * last_free_header = free_list;
    free_header_t * current_free_header = free_list->next;
    
    while(current_free_header != free_list)
    {
        last_free_header = current_free_header;
        current_free_header = current_free_header->next;
        if(last_free_header != current_free_header->prev)
        {
            fprintf(stderr, "Memory is corrupted at 0x%04X\n",
                    (int)((char *)current_free_header - g_Memory));
            return;
        }
    }
}


/*****************************************************
 Thread Safety:
    None
 ****************************************************/
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
                first_free = (free_header_t *)current;
            }
            free_block = (free_header_t *)current;
            size = free_block->size;
            next_free = free_block->next;
            prev_free = free_block->prev;
            printf("0x%04X\t\t0x%04X\t\t%s\t\t\t0x%04X\t\t\t0x%04X\n",
                   (int)(current_byte-g_Memory),
                   size,
                   "no",
                   (int)((char *)next_free - g_Memory),
                   (int)((char *)prev_free - g_Memory));
        }
        else if(*current == BUSY_HASH)
        {
            busy_block = (busy_header_t *)current;
            size = busy_block->size;
            printf("0x%04X\t\t0x%04X\t\t%s\n",
                   (int)(current_byte - g_Memory), size, "yes");
        }
        
        current_byte += 1;
        
    }while(current_byte < g_Memory + MEM_SIZE);
}
