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

>> Object files are almost full executables. They contain machine code, but that code still requires a relocation step. It also contains metadata about the addresses of its variables and functions (called symbols) in an associative data structure called a symbol table. The addresses may not be the final address of the symbol in the final executable. They also contain some information for the loader and probably some other stuff.
>>(https://nickdesaulniers.github.io/blog/2016/08/13/object-files-and-symbols/)

**nm** shows 
`0000000000000000 r .LC0
                 U _GLOBAL_OFFSET_TABLE_
0000000000000000 T main
                 U puts
`
syscall-hello.o shows a similar output, with `syscall` instead of puts, and with a `buf` symbol

running **strings** 

>> Want to see the text inside a binary or data file?  The Linux strings command pulls those bits of text—called “strings”—out for you.
`strings hello.o`

`GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0
hello.c
.LC0
main
_GLOBAL_OFFSET_TABLE_
puts
.symtab
...`

running **objdump -td hello-dyn.o** on the dynamic object file shows this (objdump -td on the static object file (hello-static.o) is too long to read in console.)

![pic](https://github.com/vim-diesel/3000_tutorials/blob/master/Tutorial2/Annotation%202020-01-23%20122615.png)

These instructions can be stored as a unisgned char array `unsigned char[]` because they are all hexadecimal pairs


3.

In hello.s we can see:
* `	call	puts@PLT` 
* `ret`
*  no push, pop, 
* a `subq	$8, %rsp`
* no syscall

In syscall-hello.s we can see a syscall, everything else similar

4. 

The disassembly from `objdump -d hello.o` only includes the `main` section, whereas the `gcc -S` includes other sections

5. 
6.
7.
All of the output of `gcc -v` is info from the compiler, including linking info and GCC Options, and lbrary path info

---
# Examining the runtime memory map

1. 

The addresses change because the program gets allocated different virtual memory each time it is run. 

2.

![adr space](https://github.com/darshanime/notes/raw/master/assets/ucbOS_11.png)
The stack would be located at the top, so it seems like `envp[0]` and `argv[0]` are contenders for locating the stack, as they have the highest hex values.

`sbrk(0)` gives us the start of the heap, because we have not used `malloc` yet. after that it gets us the end of the heap.

The code begins at `main`

The global variables have a lower hex value, as expected as they are before the heap.







