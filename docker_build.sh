#!/bin/sh

set -x

REPO=$(dirname $(realpath $0))

# Init build environment
cd $REPO/build 
./premake.sh
./machine.sh 

# Build and run tests
cd $REPO
make
