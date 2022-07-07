FROM centos:latest
MAINTAINER zeeshan
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://https://www.free-css.com/assets/images/free-css-templates/page279/jack-and-rose.jpg /var/www/html/
WORKDIR /var/www/html
RUN unzip jack-and-rose.zip
RUN cp -rvf jack-and-rose/* .
RUN rm -rf jack-and-rose jack-and-rose.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
