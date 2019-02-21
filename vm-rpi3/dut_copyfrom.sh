#!/bin/bash

. dut_config.sh

scp pi${DUT_ADDR}:$1 $2
