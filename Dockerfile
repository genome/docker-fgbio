FROM ubuntu:xenial
MAINTAINER Jason Walker <jason.walker@wustl.edu>

LABEL \
    description="Image for using fgbio"

RUN apt-get update -y && apt-get install -y \
    ant \
    apt-utils \
    build-essential \
    bzip2 \
    default-jdk \
    default-jre \
    gcc-multilib \
    git \
    libncurses5-dev \
    libnss-sss \
    nodejs \
    python-dev \
    python-pip \
    tzdata \
    unzip \
    wget \
    zlib1g-dev

#############
#fgbio 0.4.0#
#############
ENV fgbio_version 0.4.0

RUN mkdir /usr/fgbio
WORKDIR /usr/fgbio
RUN wget https://github.com/fulcrumgenomics/fgbio/releases/download/${fgbio_version}/fgbio-${fgbio_version}.jar

