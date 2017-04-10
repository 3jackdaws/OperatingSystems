#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


const int LINE_BUFFER_SIZE = 16000;




int main(int argc, char **argv)
{
    char line_buffer[LINE_BUFFER_SIZE];
    char pre_filter_character[2] = {0};
    char post_filter_character[2] = {0};
    char ** command_array      = 0;
    
    long process_id        = 0;
    long cmd_pid = 0;
    long pre_pid = 0;
    long post_pid = 0;

    int status, result;
    int pipe_1[2];
    int pipe_2[2];
    
    if(argc >= 4)
    {
        int i;
        pre_filter_character[0] = argv[1][0];
        post_filter_character[0] = argv[2][0];
        
        command_array = malloc(sizeof(char *) * (argc - 2));
        for (i = 3; i<argc; i++) 
        {
            command_array[i-3] = argv[i];
        }
        command_array[argc-3] = 0;
    }
    else
    {
        fprintf(stderr, "process <x> <y> <command>\n");
        return -1;
    }
    
    
    if(pipe(pipe_1) == -1){
        exit(1);
    };
    if(pipe(pipe_2) == -1){
        exit(1);
    };
    
    //Get first command output
    cmd_pid = fork();
    if(cmd_pid < 0){
        //Fork Error
        exit(1);
    }
    else if(cmd_pid == 0)
    {
        close(pipe_1[0]); //close read end
        dup2(pipe_1[1], 1);
        execvp(command_array[0], command_array);
    }
    close(pipe_1[1]); //close write end
    
    pre_pid = fork();
    if(pre_pid < 0){
        //fork error
        exit(1);
    }
    else if(pre_pid == 0)
    {
        close(pipe_2[0]); //close read end
        dup2(pipe_1[0], 0);
        
        dup2(pipe_2[1], 1);
        
        execl("./prefilter", "prefilter", pre_filter_character, (char *)0);
    }
    close(pipe_2[1]);
    
    post_pid = fork();
    if(post_pid < 0){
        //fork error
        exit(1);
    }
    else if(post_pid == 0)
    {
        close(pipe_2[1]); //close write end
        dup2(pipe_2[0], 0);
        
        execl("./postfilter", "postfilter", post_filter_character, (char *)0);
    }
    
    wait();
    
    wait();
    
    wait();
    
    // waitpid(cmd_pid);
    
    // printf("CMD: has left\n");
    
    // while(waitpid(pre_pid) != pre_pid);
    
    // fprintf(stderr, "PRE: %d\n", waitpid(pre_pid));
    // close(pipe_2[1]);
    // wait();
    
    
}