FROM centos:7
LABEL maintainer = "benjigalante@gmail.com"
RUN yum update -y
RUN yum install -y curl
RUN yum install -y vim
RUN yum install -y tree
RUN yum install -y httpd
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
