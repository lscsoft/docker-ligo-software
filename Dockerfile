FROM igwn/base:buster

LABEL name="LIGO Software Environment for Debian Buster" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      support="Best Effort"

RUN apt-get update \
    && apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
      lscsoft-all \
    && rm -rf /var/lib/apt/lists/*
