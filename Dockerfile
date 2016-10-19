# Ubuntu 16.04 has the GCC cilk compiler built in to version 5.4, we just need to install it
FROM ubuntu:16.04


RUN apt-get update && \

    # install gnu c/c++ toolchain, make, vim and valgrind
    apt-get install -y  g++ gcc make vim valgrind && \

    # cleanup
    rm -fr /var/lib/apt/lists/

