FROM nvidia/cuda:9.2-base

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    build-essential \
    ca-certificates \
    python-qt4 \
    libjpeg-dev \
	zip \
	unzip
RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
     chmod +x ~/miniconda.sh && \
     ~/miniconda.sh -b -p /opt/conda && \
     rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build

WORKDIR /notebooks
RUN git clone https://github.com/fastai/fastai
RUN ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
ENV PATH /opt/conda/bin:/opt/conda/envs/fastai/bin:$PATH

WORKDIR /notebooks/fastai
RUN conda env create -f environment.yml
RUN wget http://files.fast.ai/data/dogscats.zip && unzip dogscats.zip -d ../data/  && rm -f dogscats.zip
RUN wget files.fast.ai/part2/lesson14/rossmann.tgz && mkdir -p courses/dl1/data/rossmann && tar -xf rossmann.tgz --directory courses/dl1/data/rossmann  && rm -f rossmann.tgz

CMD conda activate fastai
