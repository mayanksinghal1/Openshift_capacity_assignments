FROM registry.access.redhat.com/ubi7
MAINTAINER mayank
RUN yum install httpd -y
COPY index.html /var/www/html
CMD ["-D" , "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 80
