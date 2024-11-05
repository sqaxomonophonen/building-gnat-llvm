#!/usr/bin/env bash
set -e

apt-get -y install python3-yaml libobjc-12-dev

cd /src

dpkg -i libllvm16_16.0.6-15~deb12u1_amd64.deb
dpkg -i llvm-16-runtime_16.0.6-15~deb12u1_amd64.deb
dpkg -i llvm-16-linker-tools_16.0.6-15~deb12u1_amd64.deb
dpkg -i llvm-16_16.0.6-15~deb12u1_amd64.deb
dpkg -i llvm-16-tools_16.0.6-15~deb12u1_amd64.deb
dpkg -i libclang-cpp16_16.0.6-15~deb12u1_amd64.deb
dpkg -i llvm-16-dev_16.0.6-15~deb12u1_amd64.deb

dpkg -i libclang1-16_16.0.6-15~deb12u1_amd64.deb
dpkg -i libclang-common-16-dev_16.0.6-15~deb12u1_all.deb
dpkg -i libclang-16-dev_16.0.6-15~deb12u1_amd64.deb
