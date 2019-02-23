#!/bin/bash

. dut_config.sh

ssh-keygen -N "" -t rsa -f $HOME/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id vagrant@${DUT_ADDR}
