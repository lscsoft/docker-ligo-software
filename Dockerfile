FROM ligo/base:stretch

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180131" \
      support="Reference Platform"

RUN apt-get update \
    && apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
      lscsoft-all \
    && rm -rf /var/lib/apt/lists/*
