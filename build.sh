#!/bin/bash
set -ex
git clone https://github.com/GrapheneOS/hardened_malloc.git /hardened_malloc
cd hardened_malloc
make -j$(nproc)
cp -vf out/libhardened_malloc.so /out
cd ..
