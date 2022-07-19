FROM debian

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install tor
RUN apt-get -y install openssh-server

ENTRYPOINT service ssh start; tor