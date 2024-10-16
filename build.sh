#!/bin/bash
set -ex
cd hardened_malloc
make
cp -vf out/libhardened_malloc.so /out
