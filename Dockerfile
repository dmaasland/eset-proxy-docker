FROM httpd:latest

COPY httpd2.conf /usr/local/apache2/conf/httpd.conf

EXPOSE 3128/tcp