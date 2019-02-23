#!/bin/bash

. dut_config.sh

sshpass -p vagrant ssh vagrant@${DUT_ADDRESS} sudo reboot now
