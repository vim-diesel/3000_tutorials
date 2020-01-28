# Tutorial 3 
## COMP 3000 W2020
## Ian Clark 100803045

---


1. 
2. When program i srun in backgorund, the parent process continues execution. If it is not run in the background, then the 3000shell waits for the program to return. This results in the output of the background program being printed to the terminal, while the 3000shell is still waiting for more input, how ever it does not interfere witht he 3000shell.
3. Find process id using `top` and use `kill -9 [id]`
4. 
* GDB output for child shows lots of memory manipulation
* GDB output for parent shows lots of file access
* Strace shows all of them, but in different format.
* The GDB shows that the function calls are coming from inside libraries. 
5. 


