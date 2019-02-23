#!/bin/bash

. dut_config.sh

scp -o StrictHostKeyChecking=no $1 vagrant@${DUT_ADDR}:$2
