
#include "userlib.c"

int main()
{
    
    if(exec("hdjshdj") != 0){
        
        prints("EXEC FAILED\n");
    }
    int counter = 0;
    prints("******************** START *****************\n");
    while(counter < 10){
        // halt();
        prints("******  USER.C - ");
        printi(counter);
        prints("\n");
        printi(get_time());
        counter++;
        yield();
    }
    
    prints("**********************   FIN   ****************\n");
    printi(halt());
    prints("");
}