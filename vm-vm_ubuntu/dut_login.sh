#!/bin/bash

yes | ssh-keygen -N "" -t rsa -f /tmp/id_rsa

. dut_config.sh

for i in {1..30}; do
    sshpass -p vagrant ssh-copy-id vagrant@${DUT_ADDR}
    if [ $? -eq 0 ]; then
        exit 0
    fi
    sleep 1
done
