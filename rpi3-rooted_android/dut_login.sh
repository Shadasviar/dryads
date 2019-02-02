#!/bin/bash

. dut_config.sh

adb devices

${BIN_PATH}/dut_exec.sh chmod 777 /sdcard
