#!/usr/bin/env bash
set -e
cd /src/llvm-toolchain-16-16.0.6
patch -p1 < /src/gnat-llvm/llvm/patches/LLVMCreateTargetMachineWithABI.diff
cd llvm
patch -p0 < /src/gnat-llvm/llvm/patches/LLVMStructTBAAPatch.diff
# XXX skipping patch that seems to cause compilation to fail (after 2+
# hours...); it seems to relate to some nvidia cuda stuff (NVPTX) I don't care
# about either
# patch -p0 < /src/gnat-llvm/llvm/patches/NVPTXTargetMachinepatch.diff
patch -p0 < /src/gnat-llvm/llvm/patches/ScalarEvolutionExpanderPatch.diff
