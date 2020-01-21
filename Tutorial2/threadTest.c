#include <stdio.h>
#include <stdlib.h>  //exit()
#include <string.h>  //strstr() strcmp()
#include <unistd.h>  //open() read() fork() pipe()
#include <errno.h>
#include <pthread.h>

void error(char *msg){
  fprintf(stderr, "%s: %s\n", msg, strerror(errno));
  exit(1);
}





//global mutex
//static pthread_mutex_t mut = PTHREAD_MUTEX_INITIALIZER;

int main(int argc, char *argv[]) {

        pthread_mutex_t lmut;
        if ((pthread_mutex_init(&lmut,NULL)) == -1){
          fprintf(stderr,"init fail\n");
          exit(1);
        }




        pthread_mutex_lock(&lmut);
        /* Do work */
        pthread_mutex_unlock(&lmut);


        return 0;
}
