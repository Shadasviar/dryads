#!/bin/bash

TIMESTAMP=$(date +%Y%m%d%H%M%S)

echo BOARD=crossplatform
echo BUILD_TIME=$TIMESTAMP
echo TOOLCHAIN=g++
echo BUILD_STATUS=SUCCEED
echo BUILD_HASH=unknown
echo REPO_NAME=unknown
echo BRANCH=unknown
echo OUT_DIR=$(pwd)/simple-weles-test/bin
