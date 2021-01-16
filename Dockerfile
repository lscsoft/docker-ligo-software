FROM igwn/base:stretch-proposed

LABEL name="LIGO Software Environment for Debian Stretch"
LABEL maintainer="Adam Mercer <adam.mercer@ligo.org>"
LABEL support="Reference Platform"

RUN apt-get update && \
    apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
      lscsoft-all && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
