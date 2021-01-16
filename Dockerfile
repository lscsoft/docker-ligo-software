FROM igwn/base:el7-testing

LABEL name="LIGO Software Environment for Enterprise Linux 7"
LABEL maintainer="Adam Mercer <adam.mercer@ligo.org>"
LABEL support="Reference Platform"

RUN yum -y install \
      ccache \
      clang \
      lscsoft-all && \
    yum clean all
