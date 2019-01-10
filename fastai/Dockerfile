FROM nvidia/cuda:9.2-base

RUN apt-get update && apt-get install -y git curl bzip2
RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
     chmod +x ~/miniconda.sh && \
     ~/miniconda.sh -b -p /opt/conda && \
     rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build

WORKDIR /notebooks
RUN git clone https://github.com/fastai/fastai
WORKDIR /notebooks/fastai
RUN /opt/conda/bin/conda env create -f environment.yml
RUN /opt/conda/bin/conda activate fastai
