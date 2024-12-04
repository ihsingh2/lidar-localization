#!/usr/bin/env bash

set -o errexit
set -o pipefail

mkdir -p 3d_bbs/build
cd 3d_bbs/build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
sudo make install
cd ..

mkdir -p test/build
cd test/build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../..

ln -s 3d_bbs/test/build/cpu_test cpu_test
ln -s 3d_bbs/test/build/gpu_test gpu_test
