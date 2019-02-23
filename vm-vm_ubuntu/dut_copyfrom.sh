#!/bin/bash

. dut_config.sh

scp vagrant${DUT_ADDR}:$1 $2
