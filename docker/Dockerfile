FROM debian:12
COPY debian.sources /etc/apt/sources.list.d/debian.sources
RUN apt-get update
RUN apt-get -y install build-essential fakeroot devscripts git
RUN apt-get -y install gnat-12 gprbuild
COPY setup-git-clones.sh /
RUN /setup-git-clones.sh
CMD [ "bash" ]
