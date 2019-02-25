#!/bin/bash

. dut_config.sh

sshpass -p test scp -o StrictHostKeyChecking=no $1 test@${DUT_ADDR}:$2
