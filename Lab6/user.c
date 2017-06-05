
#include "userlib.h"

int main()
{
    
    if(exec("d") != 0){
        
        prints("EXEC FAILED\n");
    }
    int counter = 0;
    prints("******************** START USER.C *****************\n");
    while(counter < 10000){
        counter++;
        if(counter % 100 == 0){
            prints("USER.C - ");
            printi(counter);
            prints("\n");
        } 
    }
    
    prints("**********************   FIN USER.C   ****************\n");
}