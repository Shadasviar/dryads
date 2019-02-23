#!/bin/bash

ssh-keygen -N "" -t rsa -f $HOME/tmp/id_rsa

. dut_config.sh

sshpass -p vagrant ssh-copy-id vagrant@${DUT_ADDR}
