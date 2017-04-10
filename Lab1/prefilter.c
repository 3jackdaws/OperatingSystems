#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

const int LINE_BUFFER_SIZE = 16000;

int first_index(char c, char * string)
{
    int index = 0;
    for(;*string != 0 && *string != c;string++)
    {
        index++;
    }
    return string == 0 ? -1 : index;
}

int main(int argc, char **argv)
{
    char line_buffer[LINE_BUFFER_SIZE];
    char filter_character  = 0;
    char * filtered_string = 0;
    
    long process_id        = getpid();
    int first_char_at      = -1;
    int filter_offset      = -1;
    int string_size        = 0;
    char * rval = 0;
    
    if(argc >= 2) filter_character = argv[1][0];
    else
    {
        fprintf(stderr, "A filtered character must be provided\n");
        return -1;
    }
    
    while(fgets (line_buffer, LINE_BUFFER_SIZE, stdin))
    {
        // printf("%ld\n", (long)rval);
        // get input line
        // if()
        // {
            
            string_size   = strlen(line_buffer);
            // if(line_buffer[string_size-1] != '\n') fprintf(stderr, "Your input string is too long\n");

            first_char_at = first_index(filter_character, line_buffer);
            
            filtered_string = malloc(string_size - first_char_at + 1);
            
            if(filtered_string == 0) return -1;
            
            memcpy(filtered_string, line_buffer + first_char_at, string_size - first_char_at);
            
            //print stderr info
            fprintf(stderr, "%ld pre %c: %s", process_id, filter_character, line_buffer);
            fprintf(stderr, "%ld rest: %s", process_id, filtered_string);
            
            //print a newline if there was no newline in the filtered string
            if(!*filtered_string) fprintf(stderr, "\n");
            
            fprintf(stdout, "%s", filtered_string);
            
            free(filtered_string);
        // }
        
    }
    
}