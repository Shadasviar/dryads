#!/bin/bash

. dut_config.sh

${BIN_PATH}/dut_exec.sh cp $1 /sdcard/$(basename $1)

adb pull /sdcard/$(basename $1) $2

${BIN_PATH}/dut_exec.sh rm /sdcard/$(basename $1)
