# Tutorial 2
https://github.com/vim-diesel/3000_tutorials/tree/master/Tutorial2

---
Answers for Tutorial 2

# Function calls, library calls, and system calls

1. 
Both programs output "Hello world!" to console. 

2. 
It is a much larger file size (10x) for the statically linked file

3. 
hello-static generates one more syscall than syscall-hello-static+

4. 
both logs have one line, one is puts the other is syscall

5. 
they all have all their permission bits set and they are all owned by user:user

6. 
http://man7.org/linux/man-pages/man2/write.2.html search in upper right

---
# Comparing C and assembly

1. 

The hello-static program defines much more symbols than the hello-dyn. However the syscall-hello-dynamic has one extra symbol a `0000000000201010 D buf` right after a start symbol `nm -u ./hello-dyn` shows 6 undefined symbols, where the static has none. 

2.

running **objdump** on the object file shows this 

![pic](https://github.com/vim-diesel/3000_tutorials/blob/master/Tutorial2/Annotation%202020-01-23%20113416.png)

syscall-hello.o shows a similar output, with `syscall` instead of puts. The only ones with values are `main` and `buf` 

3.




