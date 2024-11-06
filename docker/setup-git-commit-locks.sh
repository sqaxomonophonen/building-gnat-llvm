#!/usr/bin/env bash
set -e

cd /src/gnat-llvm/llvm-interface/gcc
git checkout 28e2d41fa6a2ff9c2510887ef10243560fc3eb40

cd /src/gnat-llvm
git checkout 49889ceb2bbb79cba26c7c70d9ae6c181788e214
