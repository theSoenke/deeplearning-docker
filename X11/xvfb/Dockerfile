FROM tensorflow/tensorflow:1.13.1-gpu-py3

ENV DEBIAN_FRONTEND noninteractive
RUN  apt-get update && apt-get install -y --no-install-recommends \
    xserver-xorg \
    mesa-utils \
    xvfb \
    git \
    wget \
    unzip

ENV DISPLAY :1.0

CMD ["./run.sh"]
