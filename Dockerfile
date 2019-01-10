FROM nvidia/cuda:9.2-base

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install jupyter
