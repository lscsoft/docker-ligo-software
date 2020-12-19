FROM igwn/base:el7-testing

LABEL name="LIGO Software Environment for Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      support="Reference Platform"

RUN yum -y install \
      ccache \
      clang \
      lscsoft-all && \
    yum clean all
