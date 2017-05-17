/*************************************************************
 * Author:        Philip Howard
 * Filename:      prod_cons.h
 * Date Created:  5/4/2016
 * Modifications: 
 **************************************************************
 *
 * Lab/Assignment: Lab 5 - Producer Consumer
 * 
 * Overview:
 *    This program is a producer-consumer application. 
 *    The producers read text files and send the text, one line at a time,
 *    to the consumers. The consumers print the test along with a 
 *    thread-id to identify which thread printed each line.
 *
 * Input:
 *    Command line arguments are used to specify the number of consumers and
 *    the filenames of the files to be read by producers. One producer will 
 *    be started for each filename.
 *
 * Output:
 *    The lines of text from the collected input files.
 *    Note: If there are multiple consumers, there is no guarantee as to the 
 *    order of the output lines.
 *
 * NOTE: this is PSEUDO-CODE, and it will have to be turned into real code
 * to complete this lab.
 ************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "ts_queue.h"
#include "prod_cons.h"
#include <pthread.h>

typedef struct{
    queue_t queue;
    char * filename;
}args_t;

void * producer_start(void * args)
{
    args_t * arguments = (args_t *)args;
    
    // fprintf(stderr, "File pointer is: %p\n", arguments->filename);
    // fprintf(stderr, "Filename is: %s\n", arguments->filename);
    
    producer(arguments->queue, arguments->filename);
    free(args);
    return NULL;
}

void * consumer_start(void * args)
{
    queue_t queue;
    queue = (queue_t)args;
    consumer(queue);
    return NULL;
}

int main(int argc, char **argv)
{
    int n_consumers;
    int ii;
    pthread_t consumer_threads[10];
    pthread_t producer_threads[10];
    queue_t queue;

    if (argc < 3)
    {
        fprintf(stderr, "Must specify the number of threads "
                        "and at least one file\n");
        return 1;
    }

    n_consumers = atoi(argv[1]);
    if (n_consumers < 1)
    {
        fprintf(stderr, "Must specify the number of threads "
                        "and at least one file\n");
        return 1;
    }

    queue = Q_Init();
    if(!queue){
        fprintf(stderr, "Error creating queue\n");
        exit(3);
    }

    
    for (ii=0; ii<n_consumers; ii++)
    {
        if(pthread_create(&consumer_threads[ii], NULL, &consumer_start, (void*)(queue))){
            fprintf(stderr, "pthread_create error\n");
            exit(1);
        }else{
            fprintf(stderr, "Create consumer\n");
        }
        
    }

    for (ii=2; ii<argc; ii++)
    {
        args_t * args;
        args = malloc(sizeof(args_t));
        args->filename = argv[ii];
        // fprintf(stderr, "Filename is: %s\n", args->filename);
        args->queue = queue;
        if(pthread_create(&producer_threads[ii], NULL, &producer_start, args)){
            fprintf(stderr, "pthread_create error\n");
            exit(1);
        }
        fprintf(stderr, "Create producer\n");
        
    }

    for (ii=2; ii<argc; ii++)
    {
        if(pthread_join(producer_threads[ii], NULL)){
            fprintf(stderr, "pthread_join error\n");
            exit(2);
        }
        fprintf(stderr, "Join producer\n");
    }
    

    // producer(queue, argv[2]);

    Q_Close(queue);
    fprintf(stderr, "Close queue\n");

    // consumer(queue);
    
    for (ii=0; ii<n_consumers; ii++)
    {
        if(pthread_join(consumer_threads[ii], NULL)){
            fprintf(stderr, "pthread_join error\n");
            exit(2);
        }
        fprintf(stderr, "Join consumer\n");
    }
    

    Q_Destroy(queue);

    return 0;
}
