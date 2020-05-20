FROM centos
RUN yum install update
RUN yum install openssh-server
RUN yum install -y vim
RUN yum install net-tools
RUN yum install update
ENTRYPOINT service ssh start &&bash

FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install openssh-server passwd; yum clean all
ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh
EXPOSE 22
RUN ./start.sh
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
####################
working centos docker file

FROM centos
RUN yum -y update
RUN yum install -y openssh-server
RUN echo root:1234| chpasswd
RUN ssh-keygen -A
CMD /usr/sbin/sshd -D
EXPOSE 22
###################################################
commands to docker 
ssh root@localhost -p 2201
docker run -itd -p 2201:22 --name=centos 
#####################################
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y openssh-server
RUN apt-get install -y vim
RUN apt-get install net-tools
RUN apt-get update
ENTRYPOINT service ssh start &&bash








