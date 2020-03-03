FROM ubuntu:18.04

RUN apt update && apt install -y --no-install-recommends apt-transport-https ca-certificates gnupg git curl unzip apt-utils wget openssh-server nano software-properties-common python-pip ansible bc \
  && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  && apt-add-repository ppa:ansible/ansible \
  && apt update

RUN pip install packet-python
RUN mkdir /root/.ssh
COPY ./config/ scripts
