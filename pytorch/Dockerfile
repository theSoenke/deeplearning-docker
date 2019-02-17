FROM nvidia/cuda:10.0-base

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    build-essential \
    ca-certificates \
    libjpeg-dev \
	zip \
	unzip \
    libgtk2.0-dev \
    ffmpeg

RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
     chmod +x ~/miniconda.sh && \
     ~/miniconda.sh -b -p /opt/conda && \
     rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build
ENV PATH=$PATH:/opt/conda/bin/
COPY environment.yml /environment.yml
RUN conda env create -f environment.yml

WORKDIR /notebooks

COPY run.sh /run.sh
CMD ["/run.sh"]
