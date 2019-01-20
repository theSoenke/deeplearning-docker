FROM nvidia/cuda:9.2-base

RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    curl \
    wget \
    build-essential \
    ca-certificates \
    libjpeg-dev \
	zip \
	unzip

RUN pip3 install torch torchvision fastai pandas matplotlib numpy imageio opencv-python jupyter

WORKDIR /notebooks
