# Tutorial 3 
## COMP 3000 W2020
## Ian Clark 100803045
https://github.com/vim-diesel/3000_tutorials/tree/master/Tutorial3
---


1. 
2. When program i srun in backgorund, the parent process continues execution. If it is not run in the background, then the 3000shell waits for the program to return. This results in the output of the background program being printed to the terminal, while the 3000shell is still waiting for more input:
* Nano takes over input while 3000shell waits for input in background, as does top, 
* When the process exits, we return to the 3000shell, but we are missing the prompt `$` because it was printed before the executed process printed it's output to terminal
3. Find process id using `top` and use `kill -9 [id]`
4. 
* GDB output for child shows lots of memory manipulation, mmap and mprotect 
* GDB output for parent shows lots of file access, write and read and fstat
* Strace shows all of them, but in different format, including arguments and return value.
* The GDB shows that the function calls are coming from inside libraries. 
5. The shell uses `>` to redirect output to a file (lines 294)
6. IIf `wait` returns a value of -1 then there was not child processes to wait for.
7. `if (the_signal == SIGUSR1)` was placed in the singal_handler function, but didn't work. 
8. 


