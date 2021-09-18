FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
