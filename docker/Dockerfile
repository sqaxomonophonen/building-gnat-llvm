# docker build -t gnat-llvm .
# docker run -it --rm gnat-llvm

FROM debian:12

RUN mkdir /src

COPY debian.sources /etc/apt/sources.list.d/debian.sources

RUN apt-get update
RUN apt-get -y install build-essential fakeroot devscripts git

COPY setup-git-clones.sh /
RUN /setup-git-clones.sh

COPY setup-llvm16.sh /
RUN /setup-llvm16.sh

COPY setup-llvm16-patches.sh /
RUN /setup-llvm16-patches.sh

COPY setup-build-llvm16.sh /
RUN /setup-build-llvm16.sh

COPY setup-install-llvm16.sh /
RUN /setup-install-llvm16.sh

RUN apt-get -y install gnat-12

COPY setup-gprbuild.sh /
RUN /setup-gprbuild.sh

COPY setup-git-commit-locks.sh /
RUN /setup-git-commit-locks.sh

COPY setup-build-gnat-llvm.sh /
COPY gnat-llvm.patch /
RUN /setup-build-gnat-llvm.sh

COPY gnat-llvm-dot-env /

CMD [ "bash" ]
