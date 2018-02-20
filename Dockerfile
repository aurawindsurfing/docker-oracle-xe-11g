FROM ubuntu:16.04

MAINTAINER Wei-Ming Wu <wnameless@gmail.com>

RUN locale-gen pl_PL.UTF-8
ENV LANG pl_PL.UTF-8  
ENV LANGUAGE pl_PL:pl  
ENV LC_ALL pl_PL.UTF-8 

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
