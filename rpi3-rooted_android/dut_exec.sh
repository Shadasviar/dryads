#!/bin/bash

if [[ $# -eq 0 ]]; then
    adb shell su
else
    adb shell su -c $@
fi
