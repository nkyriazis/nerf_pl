FROM nvcr.io/nvidia/cuda:11.7.1-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

# RUN apt update && apt install -y software-properties-common
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN apt install -y python3.9 python3-pip
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1

RUN apt update && apt install -y libgl1 

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt