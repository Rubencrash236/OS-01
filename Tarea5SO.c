/*
author: Ruben Osmani Diaz Cabrera
purpose: C program that receive any bash command and execute it in a child process
            then it prints its PID and the PID of the father process
            When the word end is received it tends the program.
*/
#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>
#include <signal.h>

#define SONSIZE 5

void threadRipper(char *, pid_t *);
int freeSpace(pid_t *);


int main() {
    
    pid_t parent, sons[SONSIZE] = {-1,-1,-1,-1,-1};
    char input[100];
    int pos = 0;
    size_t size = 100;

    parent = getpid();

    do{
        printf("Command: ");
        gets(input);
        //getline(&input,&size,stdin);
        if((strcmp(input,"end")) == 0){
            kill(-1*parent,SIGKILL); //mata todos los procesos padre e hijos pero dura bastante para hacerlo 
            break;
        }else{
            if((strcmp(input,"!")) != 0){
                if((pos = freeSpace(sons)) != -1){
                    if((sons[pos] = fork()) == 0){
                        threadRipper(input, &sons[pos]);
                        //kill(getpid(),SIGKILL);
                        strcpy(input,"!");
                    }
                }   
            }
        }
    }while(1);
    exit(0);
}

int freeSpace(pid_t *son){
    for(int i = 0; i < SONSIZE; i ++){
        if(son[i] == -1){
            return i;
        }
    }
    return -1;
}

void threadRipper(char *input, pid_t *son){
    printf("PID son %d PID father %d", getpid(), getppid());
    printf("\n\n");
    system(input);
    son = NULL;
    //kill(getpid(), SIGQUIT);
    //exit(0);
}