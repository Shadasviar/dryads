#!/bin/bash

. dut_config.sh

scp boruta-user@${DUT_ADDR}:$1 $2
