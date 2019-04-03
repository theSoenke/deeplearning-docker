FROM nvidia/cudagl:10.0-runtime-ubuntu18.04

ENV DEBIAN_FRONTEND noninteractive
RUN  apt-get update && apt-get install -y --no-install-recommends \
    xserver-xorg \
    mesa-utils \
    libxrender1 \
    git \
    wget \
    unzip

ENV CUDNN_VERSION 7.5.0.56
RUN apt-get install -y --no-install-recommends \
        libcudnn7=$CUDNN_VERSION-1+cuda10.0 && \
    apt-mark hold libcudnn7

RUN apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
