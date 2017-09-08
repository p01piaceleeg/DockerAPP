FROM centos
MAINTAINER peya
RUN yum upgrade -y && yum install httpd -y && yum install php -y
EXPOSE 8080
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]
