FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/devfolio.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip devfolio.zip
RUN cp -rvf developer-portfolio-template/* .
RUN rm -rf developer-portfolio-template devfolio.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
