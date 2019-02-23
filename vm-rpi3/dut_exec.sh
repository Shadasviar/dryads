#!/bin/bash

. dut_config.sh

ssh pi@${DUT_ADDR} $@
