#!/bin/bash

. dut_config.sh

scp -o StrictHostKeyChecking=no vagrant${DUT_ADDR}:$1 $2
