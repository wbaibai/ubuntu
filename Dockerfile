FROM ubuntu:13.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y openssh-server 
RUN mkdir -p /var/run/sshd
EXPOSE 22 
command=/usr/sbin/sshd -D
