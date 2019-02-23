#!/bin/bash

. dut_config.sh

scp $1 vagrant@${DUT_ADDR}:$2
