#!/bin/bash

. dut_config.sh

scp $1 pi@${DUT_ADDR}:$2
