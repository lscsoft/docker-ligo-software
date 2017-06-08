FROM ligo/base:jessie

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170608" \
      support="Reference Platform"

RUN apt-get update && \
    apt-get --assume-yes install lscsoft-all && \
    rm -rf /var/lib/apt/lists/*
