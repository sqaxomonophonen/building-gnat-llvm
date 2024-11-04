#!/bin/sh
docker build -t gnat-llvm .
echo 'run with $ docker run -it --rm gnat-llvm'
