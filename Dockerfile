FROM containers.ligo.org/docker/base:buster

LABEL name="LIGO Software Environment for Debian Buster" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20190909" \
      support="Reference Platform"

RUN apt-get update \
    && apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
      lscsoft-all \
    && rm -rf /var/lib/apt/lists/*
