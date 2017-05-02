#pragma once

#include <syscodes.h>

typedef struct
{
    int op;
    char *buff;
    int status;
} io_blk_t;

int syscall(io_blk_t *io_blk);
