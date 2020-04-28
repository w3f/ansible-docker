FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt-get install -y --no-install-recommends apt-transport-https ca-certificates gnupg git curl unzip apt-utils wget software-properties-common bc ssh tree nano rsync python3-pip ansible \
  && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  && apt update && apt upgrade \
  && pip3 install molecule docker lint requests>=2.23.0 ansible-lint flake8 testinfra
