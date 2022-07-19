FROM debian

EXPOSE 4242
EXPOSE 80

#update and install nginx
RUN apt-get -y update 
RUN apt-get -y upgrade 
RUN apt-get -y install nginx

#install ssh
RUN apt-get -y install openssh-server

#install tor 
RUN apt-get -y install tor

#make user for ssh login
RUN useradd migue
RUN echo migue:hola | chpasswd

#copy config files inside
COPY files/index.html /var/www/html/index.html
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/sshd_config /etc/ssh/sshd_config
COPY files/torrc /etc/tor/torrc

ENTRYPOINT nginx; service ssh start; tor
