FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DOCKER_VERSION=18.06.3

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
    testinfra && \
  wget https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}-ce.tgz && \
  tar zxfv docker-${DOCKER_VERSION}-ce.tgz && \
  chmod a+x ./docker/docker && \
  mv ./docker/docker /usr/local/bin && \
  rm -rf ./docker docker-${DOCKER_VERSION}-ce.tgz
