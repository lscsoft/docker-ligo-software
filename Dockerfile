FROM ligo/base:jessie

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170605" \
      support="Reference Platform"

RUN apt-get --assume-yes install ldg-client \
      lscsoft-all
