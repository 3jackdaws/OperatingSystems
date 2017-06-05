#include "sched.h"
#include "mymalloc.h"
#include <string.h>

#include "machine_defines.h"
#include <timer.h>
#include "queue.h"
const int MAX_PROCESSES = 10;
static Process scheduled_processes[MAX_PROCESSES];
static int current_process_index;
static queue_t ready_queue;

int t_printi(int i)
{
    char buff[20];
    itostr(i, buff);
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = (int)buff;
    asm("OUTS", buff);
    asm("OUTS", "\n");
    return 0;
}

int t_printx(int i)
{
    char buff[20];
    xtostr(i, buff);
    io_blk_t args;
    args.op = PRINTS_CALL;
    args.str = (int)buff;
    asm("OUTS", buff);
    asm("OUTS", "\n");
    return 0;
}

Process * sched_init()
{
    ready_queue = Q_Init(MAX_PROCESSES);
    scheduled_processes[0].status = P_RUNNING;
    current_process_index = 0;
    int i;
    for (i = 1; i < MAX_PROCESSES; i++) {
        scheduled_processes[i].status = P_UNUSED;
    }
    return &scheduled_processes[0];
}

Process * get_open_slot()
{
    int i;
    for (i = 1; i < MAX_PROCESSES; i++) {
        if(scheduled_processes[i].status == P_UNUSED)
            return &scheduled_processes[i]; 
    }
    return (Process *)0;
}


int sched_exec(char * filename)
{
    
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    int size;
    io_blk_t io_blk;
    
    Process * process = get_open_slot();
    
    process->bp = (int)my_get_largest(&size);
    process->lp = bp + size;
    
    asm2("POPREG", REG_BP, process->bp);
    asm2("POPREG", REG_LP, process->lp);
    
    io_blk.op = EXEC_CALL;
    io_blk.str = (int)filename;
    io_blk.addr = 0;
    
    asm("INP", &io_blk);
    
    while (io_blk.op >= 0)
    {
    }
    
    
    if(io_blk.addr < 0){
        // asm("OUTS", "EXEC FAIL\n");
        asm2("POPREG", REG_BP, bp);
        asm2("POPREG", REG_LP, lp);
        return -1;
    }
    
    process->sp = io_blk.addr - process->bp;
    process->fp = io_blk.addr - process->bp;
    process->lp = io_blk.addr + *((int *)io_blk.addr);
    process->ip = 8;
    process->flag = FL_USER_MODE;
    // t_printi(process->bp);
    // t_printi(process->lp);
    // t_printi(process->sp);
    // t_printi(process->fp);
    // t_printi(process->flag);
    // asm2("POPREG", REG_LP, process->lp);
    
    my_set_limit((void*)process->bp, (void *)process->lp);
    
    process->status = P_READY;
    asm2("POPREG", REG_BP, bp);
    asm2("POPREG", REG_LP, lp);
    Q_Enqueue(ready_queue, process);
    return 0;
}

Process * next_process()
{
    int index;
    int p_number;
    int counter = 0;
    int done;
    int * time;
    
    Process * next_proc = 0;
    index = current_process_index + 1;
    if(index >= MAX_PROCESSES)
    {
        index = 1;
    }
    for (done = 0; counter < MAX_PROCESSES && !done; index++) {
        counter++;
        p_number = index % MAX_PROCESSES;
        if(p_number == 0) p_number = 1;
        
        
        
        if(scheduled_processes[p_number].status == P_SLEEPING){
            time = (int *)TIMER_TIME;
            if(scheduled_processes[p_number].wakeup <= *time){
                // scheduled_processes[p_number].wakeup = 0;
                scheduled_processes[p_number].status = P_READY;
                
                // asm("OUTS", "PROC WAKE: ");
                // t_printi(p_number);
                // t_printi(*time);
                // t_printi(scheduled_processes[p_number].wakeup);
                
            }
        }
        
        if(scheduled_processes[p_number].status == P_READY)
        {
            current_process_index = p_number;
            scheduled_processes[current_process_index].status = P_RUNNING;
            // asm("OUTS", "SCHED: ");
            // t_printi(p_number);
            return &scheduled_processes[p_number];
        }
    }
    return &scheduled_processes[0];
}

void set_state(Process * process, isr_call_frame_t * frame)
{
    // asm("OUTS", "SWITCH TO: ");
    // t_printi((int)process);
    // t_printi((int)process->lp);
    // t_printi((int)process->bp);
    // t_printi((int)process->sp);
    // t_printi((int)process->fp);
    // t_printi((int)process->ip);
    // t_printx((int)process->flag);
    // asm("OUTS", "***************\n");
    frame->sp = process->sp;
    frame->flag = process->flag;
    frame->bp = process->bp;
    frame->lp = process->lp;
    frame->ip = process->ip;
    frame->fp = process->fp;
    // asm("OUTS", "SET IP: ");
    // t_printi(frame->ip);
}

void save_state(isr_call_frame_t * frame)
{
    Process * current_process = &scheduled_processes[current_process_index];
    // t_printx((int)current_process);
    // t_printx((int)scheduled_processes);
    current_process->sp = frame->sp;
    current_process->flag = frame->flag;
    current_process->bp = frame->bp;
    current_process->lp = frame->lp;
    current_process->ip = frame->ip;
    current_process->fp = frame->fp;
    // asm("OUTS", "SAVE IP: ");
    // t_printi(frame->ip);
}

Process * sched_exit(isr_call_frame_t * frame)
{
    Process * current_process = &scheduled_processes[current_process_index];
    if(current_process->flag & FL_USER_MODE){
        current_process->status = P_UNUSED;
        my_free(current_process->bp);
        current_process = next_process();
        set_state(current_process, frame);
    }else{
        asm("OUTS", "REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\n");
        asm("HALT");
    }
    return current_process;
}

void sleep_process(Process * process, int instructions){
    int * time;
    time = (int *)TIMER_TIME;
    // t_printi(instructions);
    process->status = P_SLEEPING;
    process->wakeup = *time + instructions;

}