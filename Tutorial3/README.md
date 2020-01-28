# Tutorial 3 
## COMP 3000 W2020
## Ian Clark 100803045

---


1. 
2. When program i srun in backgorund, the parent process continues execution. If it is not run in the background, then the 3000shell waits for the program to return.
3. Find process id using `top` and use `kill [id]`
4. 
* GDB output for child shows lots of memory manipulation
* GDB output for parent shows lots of file access
* Strace shows all of them, but in different format.
* The GDB shows that the function calls are coming from inside libraries. in this case, /sysdeps/


