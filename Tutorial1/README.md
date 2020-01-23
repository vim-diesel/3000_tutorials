# Tutorial 1

Answers for Tutorial 1

1. There are five sections in the man pageThey are detailed enough to ube able to use all arguments.  

2. Press q to quit :less
  From SO: "use / followed by your pattern to do interactive searching (forwards). n and N repeat the search in the forward and reverse direction, respectively"

3. /bin/kill    -rwxr-xr-x 1 root root
  Kill is owned by root of group root
  "tldr" is owned by user of group user
    "top" is owned by root:root and is in /usr/bin/top

4. "man 2" shows more system calls

5. -rw-r--r-- 1 root root 1820 Jan 21 19:34 /etc/passwd
  -rw-r----- 1 root shadow 1040 Jan 21 19:34 /etc/shadow
  passwd stores general user info and shadow stores user passwd info.
  shadow is encrypted.

6. execute permission allows you to enter the directory (i.e., cd into it), and to access any of its files.

 7. ls -a
  files with a . are hidden

  8. https://help.ubuntu.com/community/EnvironmentVariables
  echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
  will permanently add the current directory to the PATH

  9.'cd' is built into shell because running "which cd" shows there is no executable for it.

  10.
