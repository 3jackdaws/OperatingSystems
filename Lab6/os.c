
#pragma once
#pragma feature inp
#pragma startup startup__

#include "sched.h"
#include "machine_defines.h"
#include <string.h>
#include "mymalloc.h"

#include <timer.h>





/***************************************
 * For testing purposes only
 * ***/
int sys_printi(int i)
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

void print_bp(){
    int bp;
    bp = asm2("PUSHREG", REG_BP);
    asm("OUTS", "BP:");
    sys_printi(bp);
}

int sys_printx(int i)
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

int Interrupt_Vector[16];

const int OS_STACK_SIZE = 512;
const int OS_PAD = 0;

isr_call_frame_t * g_isr_call_frame;
Process * g_current_process;

void set_timer_rate(int frequency){
    
    *(int*)TIMER_CSR &= ~TIMER_CSR_IE;
    *(int*)TIMER_COUNT = 0;
    *(int*)TIMER_LIMIT = INSTRUCTIONS_PER_SECOND/frequency;
    *(int*)TIMER_CSR |= TIMER_CSR_IE;
    *(int*)TIMER_COUNT = 0;

}

void timer_interrupt(){

    g_isr_call_frame = asm2("PUSHREG", REG_SP);
    g_isr_call_frame--;

    save_state(g_isr_call_frame);
    g_current_process->status = P_READY;
    

    g_current_process = next_process();

    set_state(g_current_process, g_isr_call_frame);
    
    asm("RTI");
}

io_blk_t * real_address(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    ptr = (int)((char *)ptr + bp);
    ptr->str += bp;
    ptr->addr = bp;
    return ptr;
}

/***************************************
 Description: Validates args, 
 Returns: A real address version of the struct pointer.
    If invalid, the ptr->addr is set to BAD_ACCESS
 * *************************************/
io_blk_t * validate(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    if((int)ptr >= 0 && (int)ptr < (lp - bp)) //if ptr is valid
    {
        ptr = (int)((char *)ptr + bp);
        if(ptr->str >= 0 && ptr->str < (lp - bp))
        {
            
            ptr->str += bp;
            return ptr;
        }
        ptr->addr = BAD_ACCESS;
    }
    else
    {
        ptr = real_address(ptr);
        ptr->addr = BAD_ACCESS;
    }
    return ptr;
}


/***************************************
 Description: Writes up to 256 chars all over user data, 
 Returns: Sets user_data->addr to DATA_TRUNC if read data has to be truncated, otherwise 0
 * *************************************/
void safe_gets(io_blk_t * user_data){
    
    char buffer[256];
    int bp;
    int lp;
    char * char_ptr;
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    
    io_blk_t blk;
    blk.op = GETS_CALL;
    blk.str = (int)buffer;
    blk.addr = 0;
    asm("INP", &blk);
    while (blk.op >= 0);
    int i;
    for(i = 0; buffer[i]; i++)
    {
        char_ptr = user_data->str + i;
        
        if((int)char_ptr >= lp - 1 || (int)char_ptr < bp || (int)char_ptr + 1 == (int)user_data)
        {
            *char_ptr = 0;
            user_data->addr = DATA_TRUNC;
            return;
        }
        else{
            *char_ptr = buffer[i];
        }
            
    }
    user_data->addr = 0;
}

/***************************************
 Description: Prints to console, makes sure it doesn't read pas user data 
 Returns: sets user_data->addr to DATA_TRUNC if it runs into the upper bounds of user memory
 * *************************************/
void safe_prints(io_blk_t * user_data)
{
    int bp;
    int lp;
    int string_size = 0;
    char * str = user_data->str;

    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    
    while((int)(*str++) && (int)((int)str < lp) ) string_size++;
        
    if(user_data->str + string_size >= lp -1 )  //make sure string is within bounds
    {
        *(char *)(lp -1) = 0;
        user_data->addr = DATA_TRUNC;
    }
    else
    {
        char * str_end = user_data->str + string_size;
        *str_end = 0;
        user_data->addr = 0;
    }
    

    
    asm("INP", user_data);

}


/***************************************
 Description: Takes a real address and returns a virtual address 
 Returns: the io_blk_t pointer that represents user memory
 * *************************************/
io_blk_t * virtual_address(io_blk_t * ptr)
{
    int bp;
    int lp;
    
    bp = asm2("PUSHREG", REG_BP);
    lp = asm2("PUSHREG", REG_LP);
    ptr->str -= bp;
    ptr = (int)ptr - bp;

    return ptr;
}

/***************************************
 Description: Validates args then executes operations, 
 Returns: sets args->addr to BAD_ACCESS if memory access is out of user memory, otherwise 0
 * *************************************/
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
        safe_prints(args);
    }
    else if (args->op == GETS_CALL)
    {
        safe_gets(args);
    }
    else if (args->op == GETI_CALL)
    {
        asm("INP", args);
        while (args->op >= 0);
        args->addr = 0;
    }
    else if (args->op == EXIT_CALL)
    {
        // asm("OUTS", "HALT\n");
        g_isr_call_frame = asm2("PUSHREG", REG_SP);
        g_isr_call_frame--;
        g_current_process = sched_exit(g_isr_call_frame);
    }
    else if (args->op == EXEC_CALL)
    {

        args->addr = sched_exec(args->str);
    
        
    }
    else if (args->op == SLEEP_CALL)
    {
        g_isr_call_frame = asm2("PUSHREG", REG_SP);
        g_isr_call_frame--;
        sleep_process(g_current_process, *(int*)args->str);
        save_state(g_isr_call_frame);
        g_current_process = next_process();
        set_state(g_current_process, g_isr_call_frame);
    }
    else if (args->op == YIELD_CALL){
        g_isr_call_frame = asm2("PUSHREG", REG_SP);
        g_isr_call_frame--;
        // sleep_process(g_current_process, 0);
        g_current_process->status = P_READY;
        save_state(g_isr_call_frame);
        g_current_process = next_process();
        set_state(g_current_process, g_isr_call_frame);
    }
    else if (args->op == TIME_CALL){
        args->addr = *(int *)TIMER_TIME;
        
    }
    else 
    { 
        args->addr = BAD_OPCODE;
    }

    args = virtual_address(args);
   
    asm("RTI");
}



int startup__()
{
    memset(&Interrupt_Vector, 1, sizeof(int) * 16); //set all interrupts to machine check
    Interrupt_Vector[1] = (int)systrap;
    Interrupt_Vector[3] = (int)timer_interrupt;
    asm2("POPREG", REG_IVEC, &Interrupt_Vector);
    
    set_timer_rate(10);
    
    int base;
    int limit;
    int size;
    base = asm2("PUSHREG", REG_SP);
    base += OS_STACK_SIZE;
    asm2("POPREG", REG_BP, base);
    limit = asm2("PUSHREG", REG_LP);
    
    size = limit - base - OS_PAD;
    
    
    
    my_mem_init((void *)base, size);
    asm("OUTS", "MAX MEM: ");
    sys_printi(size);
    
    g_current_process = sched_init();
    sched_exec("test.slb");

    
    while(1){
        
    }
}
