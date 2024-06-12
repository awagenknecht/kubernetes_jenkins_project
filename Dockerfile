FROM centos:7
LABEL org.opencontainers.image.authors="57978199+awagenknecht@users.noreply.github.com"
RUN yum install -y httpd \
 zip\
 unzip
ADD photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
