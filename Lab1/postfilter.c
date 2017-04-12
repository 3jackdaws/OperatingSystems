#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

const int LINE_BUFFER_SIZE = 16000;

int last_index(char c, char * string)
{
    int index = 0;
    int last  = -1;
    while(*string++)
    {
        index++;
        if(*string == c) last = index;
    }
    return last;
}

int main(int argc, char **argv)
{
    char line_buffer[LINE_BUFFER_SIZE];
    char filter_character  = 0;
    char * filtered_string = 0;
    
    long process_id        = getpid();
    int last_char_at      = -1;
    int filter_offset      = -1;
    int string_size        = 0;
    
    if(argc >= 2) filter_character = argv[1][0];
    else
    {
        fprintf(stderr, "A filtered character must be provided\n");
        return -1;
    }
    
    while(fgets (line_buffer, LINE_BUFFER_SIZE, stdin))
    {
        // get input line
        
            
        string_size   = strlen(line_buffer);
        if(line_buffer[string_size-1] == '\n') line_buffer[string_size -1] = 0;

        last_char_at = last_index(filter_character, line_buffer);
        
        filtered_string = malloc(last_char_at + 1);
        
        if(filtered_string == 0) return -1;
        
        memcpy(filtered_string, line_buffer, last_char_at + 1);
        
        //print stderr info
        fprintf(stderr, "%ld post %c: %s", process_id, filter_character, line_buffer);
        fprintf(stderr, "%ld rest: %s", process_id, filtered_string);
        
        //print a newline if there was no newline in the filtered string
        if(filtered_string[string_size] != '\n') fprintf(stderr, "\n");
        
        fprintf(stdout, "%s\n", filtered_string);
        
        free(filtered_string);
        
        
    }
    // close(0);
}