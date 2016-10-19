# docker-cilkplus
A small and simple dev environment for building and running C/C++ Cilk Plus applications with the GNU Compiler. This image was specifically built to avoid using the 4GB virtual machine image that is provided for the COMP 4009 Fall 2016 course at Carleton University.

This docker image is based off of the ubuntu:16.04 image and adds the `gcc`, `g++`, `make`, `vim` and `valgrind` packages.

# Using

To quickly get going with Cilk Plus, execute `docker run -it --rm jonniesweb/cilkplus` for a bash shell where you can then start using GCC.

It's more helpful to mount the directory with your code into the container, that way you can edit the code from your host and execute `gcc`/`g++` from inside of the container. eg.

```
docker run -it --rm -v /home/jon/git/comp-4009/a1:/root/a1 jonniesweb/cilkplus
```

# Misc

Issues and pull requests welcome :smiley:
