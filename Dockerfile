FROM ligo/base:stretch-proposed

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170616" \
      support="Reference Platform"

RUN apt-get update \
    && apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
    && rm -rf /var/lib/apt/lists/*
