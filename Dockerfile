FROM centos:latest

LABEL MAINTAINER "Clement"

RUN yum -y install httpd

COPY src/ /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80