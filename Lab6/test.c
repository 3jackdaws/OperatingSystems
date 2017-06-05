#include "userlib.c"

int main(){
    int counter = 0;
    prints("******************** START TEST *****************\n");
    while(counter < 5){
        prints("TEST.C - ");
        printi(counter);
        prints("\n");
        counter++;
        yield();
    }
    prints("**********************   FIN TEST   ****************\n");
    halt();
    prints("**********************   FIN TEST   ****************\n");
    prints("**********************   FIN TEST   ****************\n");
    prints("**********************   FIN TEST   ****************\n");
}