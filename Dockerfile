FROM ligo/base:el7

LABEL name="LIGO Software Environment for Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180613" \
      support="Reference Platform"

RUN yum -y install \\
      ccache \
      clang \
      lscsoft-all && \
    yum clean all

RUN yum install -y curl bzip2 \
    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda.sh \
    && yum clean all \
    && conda install -y python=3 \
    && conda update conda \
    && conda clean --all --yes \
    && conda install --yes matplotlib \
    && ln -s /usr/local/etc/profile.d/conda.sh /etc/profile.d/conda.sh
