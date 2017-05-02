#include "oslib.h"
#include <pio_term.h>

int syscall(io_blk_t *io_blk)
{
    if (io_blk->op == PRINTS_CALL)
    {
     
        asm("TRAP");
        while (io_blk->op >= 0)
        {
            
        }
    } else {
        asm("TRAP");
    }

    return 0;
}
