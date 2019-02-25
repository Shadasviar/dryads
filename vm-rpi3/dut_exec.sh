#!/bin/bash

. dut_config.sh

sshpass -p test ssh -o StrictHostKeyChecking=no test@${DUT_ADDR} $@
