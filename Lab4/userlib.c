#include <string.h>

#include "oslib.h"
#include "userlib.h"

int prints(char *string)
{
    io_blk_t io_blk;

    io_blk.op = PRINTS_CALL;
    io_blk.buff = string;
    io_blk.status = 0;
    syscall(&io_blk);

    return io_blk.status;
}

int printi(int value)
{
    char buff[20];
    itostr(value, buff);
    return prints(buff);
}

int halt()
{
    io_blk_t io_blk;
    io_blk.op = EXIT_CALL;
    io_blk.status = 0;
    syscall(&io_blk);

    return -1;
}

