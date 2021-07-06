FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache-2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
