#!/usr/bin/env bash
set -e
#ln -s /usr/bin/opt-16 /usr/bin/opt
#ln -s /usr/bin/llvm-dis-16 /usr/bin/llvm-dis

cd /src/gnat-llvm
ln -s gcc/gcc/ada llvm-interface/gnat_src
patch -p1 < /gnat-llvm.patch
make
