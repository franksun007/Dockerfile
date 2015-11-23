FROM ubuntu:15.04
MAINTAINER CHENFAN SUN

RUN echo "Update Repo"
RUN apt-get update

RUN echo "Install essential"
RUN apt-get install -y build-essential python fish vim emacs python2.7-dev openssl libssl-dev

RUN echo "Install gperftools"
RUN apt-get install -y libgoogle-perftools-dev

RUN echo "Install Caffe"
RUN apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev
RUN sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
RUN sudo apt-get install -y --no-install-recommends libboost-all-dev
