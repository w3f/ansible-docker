FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    ansible \
    apt-transport-https \
    apt-utils \
    bc \
    ca-certificates \
    curl \
    git \
    gnupg \
    jq \
    openssh-client \
    python3-pip \
    python3-jmespath \
    rsync \
    software-properties-common \
    sudo \
    tree \
    unzip \
    wget && \
  ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
  pip3 install \
    ansible-lint \
    docker \
    flake8 \
    lint \
    molecule \
    testinfra
