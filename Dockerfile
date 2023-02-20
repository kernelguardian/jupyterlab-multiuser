FROM nvidia/cuda:12.0.1-base-ubuntu22.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app/

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    wget \
    vim \
    nodejs \
    npm \
    git 

RUN pip install \
    jupyterhub notebook jupyterlab

RUN npm install -g configurable-http-proxy

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python
