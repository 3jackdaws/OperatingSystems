
#pragma feature inp
#pragma systrap systrap
#pragma startup startup__
#pragma once

#include "machine_defines.h"
#include <string.h>

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


io_blk_t * validate(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
   if(ptr >= 0 && ptr < (lp - bp) && ptr->str >= 0 && ptr->str < (lp - bp))
    {
        ptr = (char *)ptr + bp;
        ptr->str += bp;
        ptr->addr = bp;
        
    }else{
        ptr->addr = BAD_ACCESS;
    }
    
    return ptr;
}

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
        asm("OUTS", args->str);
    }
    else if (args->op == GETS_CALL)
    {
        asm("INP", args);
        while (args->op >= 0);
    }
    else if (args->op == GETI_CALL)
    {
        asm("INP", args);
        while (args->op >= 0);
    }
    else if (args->op == HALT_CALL)
    {
        asm("HALT");
    }
    
    else 
    { 
        
    }
    
    args->addr = 0;
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
    bp += 64;
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
