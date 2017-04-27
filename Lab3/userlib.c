
#include <string.h>
#include "machine_defines.h"


 
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
    if(args >= 0 && args < (lp - bp) && args->str >= 0 && args->str < (lp - bp))
    {
        asm("TRAP");
    }else{
        args->addr = BAD_ACCESS;
    }
    
}

/***************************************
 Description: Halts the machine
 * *************************************/
int halt()
{
    io_blk_t args;
    args.op = HALT_CALL;
    syscall(&args);
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int prints(char * string)
{
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = string;
    syscall(&args);
    return args.addr;
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int printi(int i)
{
    char buff[20];
    memset(buff, 0, 20);
    itostr(i, buff);
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = buff;
    syscall(&args);
    return args.addr;
}

/***************************************
 Returns: 0 on success otherwise, BAD_ACCESS or DATA_TRUNC
 * *************************************/
int gets(char * buffer)
{
    io_blk_t args;
    args.op = GETS_CALL;
    args.str = buffer;
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
    args.str = &temp;
    syscall(&args);
    return temp;
}

