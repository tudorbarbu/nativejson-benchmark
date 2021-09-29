#!/bin/sh

set -x

# Init build environment
cd /nativejson-benchmark/build 
./premake.sh
./machine.sh 

# Build and run tests
cd /nativejson-benchmark 
make
