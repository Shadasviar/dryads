#!/bin/bash

. dut_config.sh

ssh vagrant@${DUT_ADDR} $@
