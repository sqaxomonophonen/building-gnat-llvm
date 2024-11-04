#!/usr/bin/env bash
set -e
cd /src
dget http://deb.debian.org/debian/pool/main/l/llvm-toolchain-16/llvm-toolchain-16_16.0.6-15~deb12u1.dsc
apt-get -y build-dep llvm-16
cd llvm-toolchain-16-16.0.6 # sanity check; fails if directory does not exist
