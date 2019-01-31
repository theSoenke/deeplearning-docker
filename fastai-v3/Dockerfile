FROM nvidia/cuda:9.2-base

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    curl \
    vim \
    ca-certificates \
    python-qt4 \
    libjpeg-dev \
    zip \
    unzip \
    libpng-dev && \
    rm -rf /var/lib/apt/lists/*

RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
     chmod +x ~/miniconda.sh && \
     ~/miniconda.sh -b -p /opt/conda && \
     rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build
ENV PATH=$PATH:/opt/conda/bin/
COPY environment.yml /environment.yml
RUN conda env create -f environment.yml

WORKDIR /notebooks
RUN git clone https://github.com/fastai/course-v3

COPY run.sh /run.sh
CMD ["/run.sh"]
