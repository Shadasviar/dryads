#!/bin/bash

. dut_config.sh

ssh -o StrictHostKeyChecking=no vagrant@${DUT_ADDR} $@
