FROM centos
MAINTAINER peya
RUN yum upgrade -y && \
yum install httpd -y && \
yum install php -y && \
yum install php-mysql -y

ADD info.php /var/www/html

RUN cd /var/www/html && \
	curl https://wordpress.org/latest.tar.gz && \
	tar -vxzf wordpress.tar.qz && \
	chown -R apache:apache /var/www

EXPOSE 80

VOLUME ["/sys/fs/cgroup","/var/www/html"]

ENTRYPOINT ["httpd","-D","FOREGROUND"]
