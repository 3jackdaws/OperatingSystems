/*************************************************************
 * Author:      Philip Howard
 * Filename:    ts_queue.c
 * Purpose:     Implementation of a thread safe queue
 **************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "ts_queue.h"
#include <pthread.h>
#include <semaphore.h>

static const int GENERAL_ERROR[1] = {1};


typedef struct item_s
{
    void *data;
    struct item_s *next;
} item_t;

typedef struct
{
    int closed;
    item_t *first;
    item_t *last;
    pthread_mutex_t lock;
    sem_t has_content;
} my_queue_t;

/********************************************************************** 
 * Purpose: This function initializes a queue. 
 * It returns an opaque pointer to the queue. The queue must be destroyed when
 * no longer needed by calling Q_Destroy()
 *
 * Precondition: 
 *     None
 *
 * Postcondition: 
 *      Queue has been created.
 *      Returns NULL on failure
 *
 ************************************************************************/
queue_t Q_Init()
{
    my_queue_t *queue = malloc(sizeof(my_queue_t));
    queue->first = NULL;
    queue->last = NULL;
    queue->closed = 0;
    
    if(pthread_mutex_init(&(queue->lock), NULL)){
        return (queue_t)NULL;
    }
    if(sem_init(&(queue->has_content), 0, 0)){
        return (queue_t)NULL;
    }
    

    return (queue_t)queue;
}

/********************************************************************** 
 * Purpose: This function cleans up any memory occupied by the queue. 
 * It should only be called when the queue is no longer needed, and is no
 * longer being accessed by any other threads.
 *
 * Precondition: 
 *     The queue is a valid queue that has been closed and emptied.
 *     No other threads are currently accessing the queue, and none will in
 *     the future.
 *
 * Postcondition: 
 *      Queue has been destroyed; all memory has been reclaimed.
 *      Returns zero on success and non-zero on failure
 *
 ************************************************************************/
int Q_Destroy(queue_t q)
{
    my_queue_t *queue = (my_queue_t *)q;
    free(queue);

    return 0;
}

/********************************************************************** 
 * Purpose: This markes the queue as closed. Dequeue operations are allowed
 * after a queue is marked as closed, but no further enqueue operations should
 * be performed.
 *
 * Precondition: 
 *     Queue is a valid queue.
 *
 * Postcondition: 
 *      Queue has been marked as closed.
 *      Returns zero on success, non-zero on failure
 ************************************************************************/
int Q_Close(queue_t q)
{
    my_queue_t *queue = (my_queue_t *)q;

    queue->closed = 1;

    return 0;
}

/********************************************************************** 
 * Purpose: Places a new element into the queue.
 *
 * Precondition: 
 *     Queue is a valid queue that has not been marked as closed.
 *
 * Postcondition: 
 *      Queue contains one additional element
 *      Returns zero on success, non-zero on failure
 ************************************************************************/
int Q_Enqueue(queue_t q, char *buffer)
{
    my_queue_t *queue = (my_queue_t *)q;
    item_t *item = (item_t *)malloc(sizeof(item_t));
    assert(item != NULL);

    item->data = buffer;
    item->next = NULL;

    if(pthread_mutex_lock(&(queue->lock))){
        return 1;
    }
    if (queue->first == NULL)
    {
        queue->first = item;
        queue->last = item;
    } else {
        queue->last->next = item;
        queue->last = item;
    }
    if(sem_post(&(queue->has_content))){
        return 2;
    }
    if(pthread_mutex_unlock(&(queue->lock)))
    {
        return 3;
    }

    return 0;
}

/********************************************************************** 
 * Purpose: Removes an element from the queue
 *
 * Precondition: 
 *     Queue is a valid queue
 *
 * Postcondition: 
 *      If the queue was not empty, it contains one less element
 *      Returns a pointer to the string stored in the queue.
 *      Returns NULL if the queue is empty.
 *      NOTE: This behavior will be changed as part of this lab
 ************************************************************************/
char *Q_Dequeue(queue_t q)
{
    my_queue_t *queue = (my_queue_t *)q;
    char *buffer = NULL;
    item_t *item;
    if(sem_wait(&(queue->has_content)))
    {
        return (char *)NULL;
    }
    
    if(pthread_mutex_lock(&(queue->lock))){
        return (char *)NULL;
    }
    if (queue->first != NULL)
    {
        item = queue->first;
        queue->first = item->next;
        if (queue->first == NULL) queue->last = NULL;
       

        buffer = item->data;
        free(item);
    }
    if(pthread_mutex_unlock(&(queue->lock))){
        return (char *)NULL;
    }
    return buffer;
}

/********************************************************************** 
 * Purpose: Indicates whether the queue is open
 *
 * Precondition: 
 *     Queue is a valid queue
 *
 * Postcondition: 
 *      Returns zero if either the queue has not been marked as close OR
 *                             the queue is not empty
 *      Returns non-zero of BOTH: the queue has been marked as closed AND
 *                                the queue is empty
 ************************************************************************/
int Q_Is_Closed(queue_t q)
{
    my_queue_t *queue = (my_queue_t *)q;
    int result = 0;

    if (queue->closed && queue->first == NULL) result = 1;

    return result;
}
