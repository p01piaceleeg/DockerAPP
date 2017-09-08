FROM centos
MAINTAINER peya
RUN yum upgrade -y && yum install httpd -y && yum install php -y
ADD info.php /var/www/html
EXPOSE 80
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]
