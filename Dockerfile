#Asset Server

FROM centos:centos6
RUN yum -y update
RUN yum -y install httpd
RUN yum -y install createrepo
RUN mkdir /var/www/html/repo_dir
VOLUME ["/var/www/html/repo"]

# MySQL Server
FROM centos:centos6
RUN yum -y install mysql-server
VOLUME ["/var/lib/mysql"]


# Cloudera Server
FROM centos:centos6
RUN yum -y update
RUN echo -e "[cloudera-manager]\nname=Cloudera Manager\nbaseurl=http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/4/\ngpgcheck = 0">/etc/yum.repos.d/cloudera-manager.repo
RUN yum -y install vim && yum -y install lsof
RUN yum -y install jdk
RUN yum -y install mysql-connector-java
RUN yum -y install cloudera-manager-server
