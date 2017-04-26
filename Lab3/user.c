#include "io.c"

int main()
{
    char buffer[100];
    int r;
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
    
    prints("Get string from STDIN: \n");
    r = gets(buffer);
    prints("Got: ");
    prints(buffer);
    
    
}