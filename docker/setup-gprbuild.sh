#!/usr/bin/env bash
set -e

# XXX debian does come with a gprbuild, however it doesn't seem to work
# properly; in particular it appears to ignore the statement in gnat_llvm.gpr
# that says (and probably also the one adjacent to it):
#    for Executable ("gcc_wrapper.adb") use "llvm-gcc";
# Instead it tries to compile with gcc-12.

# One weird thing though: the new gprbuild says v18 and copyright 2004-2016,
# and so does the debian-provided version? Github has a v25 release... not sure
# what's going on, but the gprbuild we build here fixes the problem mentioned
# above

# XXX here we undoing apt-get install gprbuild from earlier; I can't remove it
# right now because it would invalidate 3½ hours worth of caching... I can't
# even add a comment about it without invalidating the cache :)
apt-get -y remove gprbuild gprconfig-kb libgnatprj10 libxmlada-dom8 libxmlada-input7 libxmlada-sax7 libxmlada-schema7 libxmlada-unicode7

mkdir /src/gprbuild-root
cd /src/gprbuild-root
git clone https://github.com/AdaCore/gprbuild
git clone https://github.com/AdaCore/xmlada
git clone https://github.com/AdaCore/gprconfig_kb

cd /src/gprbuild-root/gprbuild
./bootstrap.sh --with-xmlada=../xmlada --with-kb=../gprconfig_kb --prefix=./bootstrap
BOOTSTRAP_PATH=/src/gprbuild-root/gprbuild/bootstrap/bin:$PATH
cd /src/gprbuild-root/xmlada
PATH=$BOOTSTRAP_PATH ./configure --prefix=/usr
PATH=$BOOTSTRAP_PATH make
PATH=$BOOTSTRAP_PATH make install
cd /src/gprbuild-root/gprbuild
PATH=$BOOTSTRAP_PATH make prefix=/usr setup
PATH=$BOOTSTRAP_PATH make all
PATH=$BOOTSTRAP_PATH make install
