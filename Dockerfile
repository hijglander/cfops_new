FROM ubuntu:latest

RUN \
      apt-get -qq update && \
      apt-get -y install --fix-missing \
            build-essential \
            wget \
      && \
      apt-get clean

RUN wget https://github.com/pivotalservices/cfops/releases/download/v3.1.2/cfops_linux64
RUN mv cfops_linux64 /usr/local/bin/cfops
RUN chmod +x /usr/local/bin/cfops
