FROM ligo/software:jessie

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170608" \
      support="Reference Platform"

RUN apt-get update && \
    apt-get upgrade && \
    apt-get dist-upgrade && \
    rm -rf /var/lib/apt/lists/*
