FROM ligo/base:el7-testing

LABEL name="LIGO Software Environment for Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170926" \
      support="Reference Platform"

RUN yum -y install \\
      ccache \
      clang \
      lscsoft-all && \
    yum clean all
