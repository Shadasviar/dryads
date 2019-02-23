#!/bin/bash

. dut_config.sh

yes | ssh-keygen
sshpass -p vagrant ssh-copy-id vagrant@${DUT_ADDR}
