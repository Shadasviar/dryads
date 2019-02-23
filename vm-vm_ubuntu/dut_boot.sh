#!/bin/bash

. dut_config.sh

sshpass -p vagrant ssh vagrant@${DUT_ADDR} sudo reboot now
sleep 20
