FROM ubuntu:18.04

RUN apt-get update && apt install -y apt-transport-https ca-certificates gnupg git curl unzip apt-utils wget openssh-server nano software-properties-common \
  && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  && apt-add-repository ppa:ansible/ansible \
  && apt-get update

RUN apt-get install -y python-pip ansible
RUN pip install packet-python

COPY ./config/ scripts
