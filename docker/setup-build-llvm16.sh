#!/usr/bin/env bash
set -e
cd /src/llvm-toolchain-16-16.0.6
debuild -b -uc -us # -b: build binary packages, -uc / -us: don't sign anything
