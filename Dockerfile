FROM ligo/base:el7

LABEL name="LIGO Software Environment for Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170616" \
      support="Reference Platform"

RUN yum -y install \\
      ccache \
      clang \
      lscsoft-all && \
    yum clean all
