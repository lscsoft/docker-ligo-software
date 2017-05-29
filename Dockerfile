FROM ligo/ligo-base:jessie

LABEL name="LSCSoft-All Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170529" \
      support="Reference Platform"

RUN apt-get --assume-yes install ldg-client \
      lscsoft-all
