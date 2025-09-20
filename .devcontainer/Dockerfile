FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip python3-venv git wget curl mysql-client build-essential sudo && \
    ln -s /usr/bin/python3 /usr/bin/python

RUN python3 -m pip install --upgrade pip
