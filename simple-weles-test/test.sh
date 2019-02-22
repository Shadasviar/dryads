#!/bin/sh

function runtest    {
    printf "$1 ... "
    $2 2>/dev/null 1>/dev/null
    if [ $? -eq 0 ]; then
        echo "OK"
    else
        echo "FAILED"
    fi
}

    runtest "SSH available" "ssh -V"
    runtest "Get kernel info" "uname -a"
    runtest "GCC available" "gcc -v"
    runtest "G++ available" "g++ -v"
    runtest "Get user name" "whoami"
    runtest "Network is available" "ping 127.0.0.1 -c 3"
    runtest "Make is available" "make -v"
    runtest "PS check" "ps"
    runtest "Vim available" "vim --version"
