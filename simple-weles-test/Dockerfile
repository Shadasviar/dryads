FROM ubuntu

RUN apt update
RUN apt install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf

COPY test.cpp ./test.cpp

RUN arm-linux-gnueabihf-g++ test.cpp -o test
