#pragma once
#include <string.h>
#include "machine_defines.h"

void yield();
int prints(char * string);
 
/***************************************
 Description: used to validate args then Trap
 Returns: nothing
 * *************************************/
void syscall(io_blk_t * args)
{
    int bp;
    int lp;
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    if((int)args >= 0 && (int)args < (int)(lp - bp) && (int)(args->str) >= 0 && (int)(args->str) < (lp - bp))
    {
        asm("TRAP");
        if(args->op == YIELD_CALL 
            || args->op == SLEEP_CALL 
            || args->op == EXEC_CALL 
            || args->op == EXIT_CALL 
            || args->op == TIME_CALL);
        else
        {
            while(args->op >= 0)
            {
                yield();
            }
        }
    }else{
        args->addr = BAD_ACCESS;
    }
    
}

void yield(){
    io_blk_t args;
    args.op = YIELD_CALL;
    syscall(&args);
}

/***************************************
 Description: Halts the machine
 * *************************************/
int halt()
{
    io_blk_t args;
    args.op = EXIT_CALL;
    args.str=0;
    syscall(&args);
    return args.addr;
}

int get_time()
{
    io_blk_t args;
    args.op = TIME_CALL;
    args.str=0;
    syscall(&args);
    return args.addr;
}


int exec(char * filename){
    io_blk_t args;
    args.op = EXEC_CALL;
    args.str = (int)filename;
    syscall(&args);
    // prints("eeee\n");
    return args.addr;
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int prints(char * string)
{
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = (int)string;
    syscall(&args);
    return args.addr;
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int printi(int i)
{
    char buff[20];
    memset((void *)buff, 0, 20);
    itostr(i, buff);
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = (int)buff;
    syscall(&args);
    return args.addr;
}

int sleep(int instructions)
{
    io_blk_t args;
    args.op = SLEEP_CALL;
    args.str = (int)(&instructions);
    syscall(&args);
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int gets(char * buffer)
{
    io_blk_t args;
    args.op = GETS_CALL;
    args.str = (int)buffer;
    syscall(&args);
    return args.addr;
}

/***************************************
 Returns: an integer
 * *************************************/
int geti()
{
    io_blk_t args;
    int temp;
    args.op = GETI_CALL;
    args.str = (int)(&temp);
    syscall(&args);
    return temp;
}

