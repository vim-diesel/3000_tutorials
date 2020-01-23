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

**nm** shows `0000000000000000 r .LC0
                 U _GLOBAL_OFFSET_TABLE_
0000000000000000 T main
                 U puts
`
syscall-hello.o shows a similar output, with `syscall` instead of puts, with a `buf` symbol

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
.strtab
.shstrtab
.text
.data
.bss
.rodata.str1.1
.rela.text.startup
.comment
.note.GNU-stack
.rela.eh_frame
`

running **objdump -td hello-dyn.o** on the dynamic object file shows this 

![pic](https://github.com/vim-diesel/3000_tutorials/blob/master/Tutorial2/Annotation%202020-01-23%20122615.png)

objdump -td on the static program is too long to read in console

>> Object files are almost full executables. They contain machine code, but that code still requires a relocation step. It also contains metadata about the addresses of its variables and functions (called symbols) in an associative data structure called a symbol table. The addresses may not be the final address of the symbol in the final executable. They also contain some information for the loader and probably some other stuff.
>>(https://nickdesaulniers.github.io/blog/2016/08/13/object-files-and-symbols/)



3.




