FROM centos:7
LABEL org.opencontainers.image.authors="57978199+awagenknecht@users.noreply.github.com"
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page216/adriya.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip adriya.zip
RUN cp -rvf adriya/* .
RUN rm -rf adriya adriya.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
