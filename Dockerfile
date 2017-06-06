FROM ligo/base:jessie-proposed

LABEL name="LIGO Software Environment for Debian Jessie" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170606" \
      support="Reference Platform"

RUN apt-get update && \
      apt-get --assume-yes install cvmfs cvmfs-x509-helper \
        ldg-client lscsoft-all singularity-container && \
      rm -rf /var/lib/apt/lists/*
