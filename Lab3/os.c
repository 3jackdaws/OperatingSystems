
#pragma feature inp
#pragma systrap systrap
#pragma startup startup__
#pragma once

#include "machine_defines.h"
#include <string.h>


/***************************************
 * For testing purposes only
 * ***/
int sys_printi(int i)
{
    char buff[20];
    itostr(i, buff);
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = buff;
    asm("OUTS", buff);
    asm("OUTS", "\n");
    return 0;
}

io_blk_t * real_address(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    ptr = (char *)ptr + bp;
    ptr->str += bp;
    ptr->addr = bp;
    return ptr;
}

/***************************************
 Description: Validates args, 
 Returns: A real address version of the struct pointer.
    If invalid, the ptr->addr is set to BAD_ACCESS
 * *************************************/
io_blk_t * validate(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);

    if(ptr >= 0 && ptr < (lp - bp)) //if ptr is valid
    {
        ptr = (char *)ptr + bp;
        if(ptr->str >= 0 && ptr->str < (lp - bp))
        {
            ptr->str += bp;
            return ptr;
        }
        ptr->addr = BAD_ACCESS;
    }
    else
    {
        ptr = real_address(ptr);
        ptr->addr = BAD_ACCESS;
    }
    return ptr;
}


/***************************************
 Description: Writes up to 256 chars all over user data, 
 Returns: Sets user_data->addr to DATA_TRUNC if read data has to be truncated, otherwise 0
 * *************************************/
void safe_gets(io_blk_t * user_data){
    
    char buffer[256];
    int bp;
    int lp;
    char * char_ptr;
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    
    io_blk_t blk;
    blk.op = GETS_CALL;
    blk.str = buffer;
    blk.addr = 0;
    asm("INP", &blk);
    while (blk.op >= 0);
    int i;
    for(i = 0; buffer[i]; i++)
    {
        char_ptr = user_data->str + i;
        
        if(char_ptr >= lp - 1 || char_ptr < bp || char_ptr + 1 == (char *)user_data)
        {
            *char_ptr = 0;
            user_data->addr = DATA_TRUNC;
            return;
        }
        else{
            *char_ptr = buffer[i];
        }
            
    }
    user_data->addr = 0;
}

/***************************************
 Description: Prints to console, makes sure it doesn't read pas user data 
 Returns: sets user_data->addr to DATA_TRUNC if it runs into the upper bounds of user memory
 * *************************************/
void safe_prints(io_blk_t * user_data)
{
    int bp;
    int lp;
    int string_size = 0;
    char * str = user_data->str;
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    while((int)(*str++) && (int)(str < lp) ) string_size++;
        
    if(user_data->str + string_size >= lp -1 )  //make sure string is within bounds
    {
        *(char *)(lp -1) = 0;
        user_data->addr = DATA_TRUNC;
    }
    else
    {
        char * str_end = user_data->str + string_size;
        *str_end = user_data->addr = 0;
    }
    
    asm("OUTS", user_data->str);
}


/***************************************
 Description: Takes a real address and returns a virtual address 
 Returns: the io_blk_t pointer that represents user memory
 * *************************************/
io_blk_t * virtual_address(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    ptr = (char *)ptr - bp;
    ptr->str -= bp;
    return ptr;
}

/***************************************
 Description: Validates args then executes operations, 
 Returns: sets args->addr to BAD_ACCESS if memory access is out of user memory, otherwise 0
 * *************************************/
void systrap(io_blk_t * args)
{
    args = validate(args);
    
    if(args->addr == BAD_ACCESS)
    {
        
        /***
         * Bad Memory Access
         * **/
       
        asm("RTI");
        return;
    }
    
    if (args->op == PRINTS_CALL)
    {
        safe_prints(args);
        
    }
    else if (args->op == GETS_CALL)
    {
        safe_gets(args);
    }
    else if (args->op == GETI_CALL)
    {
        asm("INP", args);
        while (args->op >= 0);
        args->addr = 0;
    }
    else if (args->op == HALT_CALL)
    {
        asm("HALT");
    }
    else 
    { 
        args->addr = BAD_OPCODE;
    }
    
    // args = virtual_address(args); //this breaks my code
    asm("RTI");
}



int startup__()
{
    io_blk_t io_blk;

    int bp;
    int high_mem;
    int *stack_size;

    // Set the BP leaving enough room for our stack
    bp = asm2("PUSHREG", REG_SP);
    bp += (64 + 64);
    asm2("POPREG", REG_BP, bp);

    // Load user.slb into memory
    io_blk.op = EXEC_CALL;
    io_blk.str = "user.slb";
    io_blk.addr = 0;
    asm("INP", &io_blk);
    while (io_blk.op >= 0)
    {
    }

    // Set the LP leaving 1000 bytes of stack space
    stack_size = io_blk.addr;
    high_mem = io_blk.addr + *stack_size;
    asm2("POPREG", REG_LP, high_mem);

    // Set SP and FP
    // NOTE: FP must be set LAST!
    high_mem = io_blk.addr + 4 - bp;
    asm("DUP", high_mem);
    asm2("POPREG", REG_FP);
    asm2("POPREG", REG_SP);

    // Execute user.slb
    asm2("JMPUSER", 8); 
    asm("HALT");
}
