#!/usr/bin/env bash
set -e
cd /src/gnat-llvm
git checkout 1515dee961b9da9400add4166b4ad66bf6746d65
cd /src/gnat-llvm/llvm-interface/gcc
git checkout d3d925b47430b4c9e5189b0346ec88d8cc1c5b21
