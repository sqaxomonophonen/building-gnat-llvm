#!/usr/bin/env bash
set -e
mkdir /src
git clone https://github.com/AdaCore/gnat-llvm /src/gnat-llvm
git clone git://gcc.gnu.org/git/gcc.git /src/gnat-llvm/llvm-interface/gcc
