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
    
    int i = 0;
    
    if(argc >= 4)
    {
        int i;
        pre_filter_character[0] = argv[1][0];
        post_filter_character[0] = argv[2][0];
        
        command_array = malloc(sizeof(char *) * (argc - 2));
        if(!command_array) exit(-3);
        for (i = 3; i<argc; i++) 
        {
            command_array[i-3] = argv[i];
        }
        command_array[argc-3] = 0;
    }
    else
    {
        if(fprintf(stderr, "process <x> <y> <command>\n") < 0) exit(-4);
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
        if(close(pipe_1[0]) < 0) _exit(2); //close read end
        if(dup2(pipe_1[1], 1) < 0) _exit(3);
        if(execvp(command_array[0], command_array) == -1) _exit(-1);
    }
    if(close(pipe_1[1]) < 0) exit(2); //close write end
    
    pre_pid = fork();
    if(pre_pid < 0){
        //fork error
        exit(1);
    }
    else if(pre_pid == 0)
    {
        if(close(pipe_2[0]) < 0) _exit(2); //close read end
        if(dup2(pipe_1[0], 0) < 0) _exit(3);
        
        if(dup2(pipe_2[1], 1) < 0) _exit(3);
        
        if(execl("./prefilter", "prefilter", pre_filter_character, (char *)0) == -1) _exit(-1);
    }
    if(close(pipe_2[1])< 0) exit(2);
    
    post_pid = fork();
    if(post_pid < 0){
        //fork error
        exit(1);
    }
    else if(post_pid == 0)
    {
        if(dup2(pipe_2[0], 0)) _exit(3);
        
        if(execl("./postfilter", "postfilter", post_filter_character, (char *)0) == -1) _exit(-1);
    }
    
    for(i = 0; i< 3; i++){
        
        if (wait(&status) == -1) {     //copied directly from the wait man page
            perror("waitpid");
            exit(EXIT_FAILURE);
        }
    }
    
    free(command_array);
    return 0;
}