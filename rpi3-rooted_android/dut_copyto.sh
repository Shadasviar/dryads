#!/bin/bash

. dut_config.sh

adb push $1 /sdcard/$(basename $2)

${BIN_PATH}/dut_exec.sh mv /sdcard/$(basename $2) $2
