#!/bin/bash

. dut_config.sh

sshpass -p test scp -o StrictHostKeyChecking=no test@${DUT_ADDR}:$1 $2
