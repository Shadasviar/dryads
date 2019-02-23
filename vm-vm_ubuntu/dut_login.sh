#!/bin/bash

. dut_config.sh

ssh-keygen -t rsa -N ""
sshpass -p vagrant ssh-copy-id vagrant@${DUT_ADDR}
