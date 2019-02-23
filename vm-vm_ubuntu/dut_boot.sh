#!/bin/bash

. dut_config.sh

sshpass -p vagrant ssh -o StrictHostKeyChecking=no vagrant@${DUT_ADDR} sudo reboot now
sleep 10
for i in {1..100}; do
    ping ${DUT_ADDR} -c1 -w1 >/dev/null
    if [ $? -eq 0 ]; then
        exit 0
    fi
    printf "."
done
exit -1
