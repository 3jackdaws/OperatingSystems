//I wrote this because I had no idea there was already a machine_def file
#pragma once

#define EXIT_CALL   1
#define PRINTI_CALL 2
#define PRINTS_CALL 3
#define GETS_CALL   6
#define GETI_CALL   7
#define EXEC_CALL   8
#define SLEEP_CALL  31
#define YIELD_CALL  32
#define TIME_CALL   33


#define BAD_ACCESS  1
#define BAD_OPCODE  2
#define DATA_TRUNC  3

#define REG_BP      0
#define REG_LP      1
#define REG_IP      2
#define REG_SP      3
#define REG_FP      4
#define REG_FLAG    5
#define REG_IVEC    6

#define FL_HALTED       0x0001
#define FL_USER_MODE    0x0002
#define FL_INT_MODE     0x0004
#define FL_INT_DIS      0x0008
#define FL_VMEM         0x0010

#define FL_I_FIRST_INT  0x00010000
#define FL_I_ALL        0xFFFF0000
#define FL_I_MACH       0x00010000
#define FL_I_TRAP       0x00020000


typedef struct io_blk_s
{
   int op;
   int str;
   int addr;
}io_blk_t;


typedef struct
{
    int sp;
    int flag;
    int bp;
    int lp;
    int ip;
    int fp;
} isr_call_frame_t;
