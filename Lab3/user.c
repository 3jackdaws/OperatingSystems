#include "userlib.c"
const int BUFF_SIZE = 10;
int main()
{
    
    char buffer[BUFF_SIZE];
    int r;
    buffer[0] = 'a';
    
    prints("Print invalid strings:\n");
    prints("Address 123456: ");
    r = prints(123456);
    printi(r);
    prints("\n");
    
    prints("Address -1: ");
    r = prints(-1);
    printi(r);
    prints("\n");
    
    prints("Address 0: ");
    r = prints(0);
    printi(r);
    prints("\n");
    
    r = prints("Print valid strings:\n");
    r = prints("Hello: ");
    printi(r);
    prints("\n");
    
    r = prints("World: ");
    printi(r);
    prints("\n");
    
    prints("Print integers:\n");
    r = printi(483709287849827498237498273948723984792384792387492837492384);
    prints("\nVal: ");
    printi(r);
    prints("\n");
    
    r = printi(4324);
    prints("\nVal: ");
    printi(r);
    prints("\n");
    
    r = geti();
    printi(r);
    prints("\n");
    gets(buffer);
    
    
    memset(buffer, 0, BUFF_SIZE);
    r = gets(buffer);
    prints("Got: ");
    prints(buffer);
    prints("\n");
    printi(r);
    prints("\n");
    
    halt();
}