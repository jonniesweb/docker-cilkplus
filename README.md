# docker-cilkplus
A small and simple dev environment for building and running C/C++ Cilk Plus applications with the GNU Compiler. This image was specifically built to avoid using the 4GB virtual machine image that is provided for the COMP 4009 Fall 2016 course at Carleton University.

This was most recently tested for COMP 4009 A1 in Fall 2018.

This docker image is based off of the ubuntu:16.04 image and adds the `gcc`, `g++`, `make`, `vim` and `valgrind` packages.

# Using

To quickly get going with Cilk Plus, execute `docker run -it --rm jonniesweb/cilkplus` for a bash shell where you can then start using GCC.

It's more helpful to mount the directory with your code into the container, that way you can edit the code from your host and execute `gcc`/`g++` from inside of the container. To mount the current directory you are in, you can use,

```
docker run -it --rm -v $(pwd):/root/a1 -w /root/a1 jonniesweb/cilkplus
```

To compile your Cilk files, make sure to use the compiler option `-std=c++0x` to force use of C++11. Also, use `-fcilkplus` to allow use of Cilk in your program. For example, if you wanted to compile main.cpp, you might use this command,

```
g++ -std=c++0x main.cpp -O3 -fcilkplus -o main
```

# Misc

Issues and pull requests welcome :smiley:
