#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    int ii;
    int count = atoi(argv[1]);

    for (ii=0; ii<count; ii++)
    {
	printf("%s %d abcdefghijklmnopqrstuvwxyz\n", argv[2], ii);
    }

    return 0;
}
