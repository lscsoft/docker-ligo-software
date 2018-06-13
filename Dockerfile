FROM ligo/base:stretch

LABEL name="LIGO Software Environment for Debian Stretch" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180613" \
      support="Reference Platform"

RUN apt-get update \
    && apt-get --assume-yes install \
      build-essential \
      ccache \
      clang \
      lscsoft-all && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get -qq update && apt-get -qq -y install curl bzip2 \
    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda.sh \
    && conda install -y python=3 \
    && conda update conda \
    && apt-get -qq -y autoremove \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log \
    && conda clean --all --yes \
    && conda install --yes matplotlib \
    && ln -s /usr/local/etc/profile.d/conda.sh /etc/profile.d/conda.sh
