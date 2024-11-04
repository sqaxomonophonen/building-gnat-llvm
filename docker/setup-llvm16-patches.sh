#!/usr/bin/env bash
set -e
cd /src/llvm-toolchain-16-16.0.6
cat /src/gnat-llvm/llvm/patches/LLVMCreateTargetMachineWithABI.diff | patch -p1
cd llvm
cat /src/gnat-llvm/llvm/patches/LLVMStructTBAAPatch.diff | patch -p0
# XXX skipping patch that seems to cause compilation to fail (after 2+
# hours...); it seems to relate to some nvidia cuda stuff (NVPTX) I don't care
# about either
# cat /src/gnat-llvm/llvm/patches/NVPTXTargetMachinepatch.diff  | patch -p0

cat /src/gnat-llvm/llvm/patches/ScalarEvolutionExpanderPatch.diff  | patch -p0
