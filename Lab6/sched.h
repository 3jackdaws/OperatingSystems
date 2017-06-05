#pragma once

#include "machine_defines.h"

#define P_READY   1
#define P_WAITING 2
#define P_UNUSED  3
#define P_RUNNING 4
#define P_SLEEPING 5

const int INSTRUCTIONS_PER_SECOND = 10000000;


int sched_exec(char * filename);
void save_state(isr_call_frame_t * frame);

typedef struct{
    int lp;
    int bp;
    int fp;
    int sp;
    int ip;
    int flag;
    int status;
    int wakeup = 0;
}Process;

Process * sched_init();
void set_state(Process * process, isr_call_frame_t * frame);
Process * next_process();
Process * sched_exit(isr_call_frame_t * frame);
// Process * switch_process(isr_call_frame_t * call_frame);

void sleep_process(Process * process, int instructions);