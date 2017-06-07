FROM ligo/base:el7

LABEL name="LIGO Software Environment for Enterprise Linux 7" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20170607" \
      support="Reference Platform"

RUN yum -y install ldg-client \
      lscsoft-all

RUN yum clean all
