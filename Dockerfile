FROM ubuntu
MAINTAINER madhav@gmail.com
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html
ENTRYPOINT service nginx restart && bash
EXPOSE 85/tcp
WORKDIR /var/www/html
VOLUME /var/www/html 

