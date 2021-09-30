#!/bin/sh

REPO=$(dirname $(realpath $0))

# Configure & build Ulib
cd $REPO/thirdparty/ULib/
./configure --disable-shared && make