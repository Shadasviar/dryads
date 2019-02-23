#!/bin/bash

. dut_config.sh

sshpass -p vagrant ssh vagrant@${DUT_ADDR} sudo reboot now
sleep 10
for i in {1..30}; do
    ping ${DUT_ADDR} -c1 -w1
    if [ $? -eq 0 ]; then
        exit 0
    fi
    printf "."
done
exit -1
