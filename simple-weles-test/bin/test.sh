#!/bin/sh

function runtest {
    printf "$1 ... " >> $3
    $2 2>/dev/null 1>/dev/null
    if [ $? -eq 0 ]; then
        echo "OK" >> $3
    else
        echo "FAILED" >> $3
    fi
}

    runtest "SSH available" "ssh -V" $1
    runtest "Get kernel info" "uname -a" $1
    runtest "GCC available" "gcc -v" $1
    runtest "G++ available" "g++ -v" $1
    runtest "Get user name" "whoami" $1
    runtest "Network is available" "ping 127.0.0.1 -c 3" $1
    runtest "Make is available" "make -v" $1
    runtest "PS check" "ps" $1
    runtest "Vim available" "vim --version" $1
