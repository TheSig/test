FROM ubuntu

RUN apt-get update && \
    apt-get -y install mc nginx nano

COPY nginx.conf /etc/nginx/nginx.conf
#COPY index.html /var/www/html/index.html

CMD nginx

EXPOSE 80
VOLUME /var/www/html
