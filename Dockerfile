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
RUN apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
RUN apt-get install -y --no-install-recommends libboost-all-dev
RUN apt-get install -y python-pip

RUN echo "Install tensorflow"
RUN pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

RUN echo "Install git, ssh"
RUN apt-get install -y git ssh

RUN echo "Install yaml"
RUN apt-get install -y python-yaml

RUN echo "Install ATLAS"
RUN apt-get install -y libatlas-base-dev

RUN echo "Install cmake"
RUN apt-get install -y cmake

RUN echo "SOME PACKAGE..." 
RUN apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

RUN echo "INSTALL CLANG"
RUN apt-get install -y clang
