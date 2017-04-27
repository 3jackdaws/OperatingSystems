//I wrote this because I had no idea there was already a machine_def file


#define PRINTS_CALL 1
#define PRINTI_CALL 2
#define GETI_CALL   7
#define GETS_CALL   6
#define HALT_CALL   3
#define EXEC_CALL   8


#define BAD_ACCESS  1
#define BAD_OPCODE  2
#define DATA_TRUNC  3

#define REG_BP      0
#define REG_LP      1
#define REG_IP      2
#define REG_SP      3
#define REG_FP      4
#define REG_FLAG    5

typedef struct
{
   int op;
   int str;
   int addr;
} io_blk_t;
