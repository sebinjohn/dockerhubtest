FROM centos:centos6
RUN yum -y update
RUN yum -y install httpd
RUN yum -y install createrepo
RUN mkdir /var/www/html/repo_dir
VOLUME ["/User/JohnS5/repo/cm]:/var/www/html/repo"]


FROM centos:centos6
RUN yum -y update
#RUN curl -o /etc/yum.repos.d/cloudera-manager.repo http://172.17.0.82/repo/cloudera-manager.repo
RUN echo -e "[cloudera-manager]\nname=Cloudera Manager\nbaseurl=http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/4/\ngpgcheck = 0">/etc/yum.repos.d/cloudera-manager.repo
RUN yum -y install cloudera-manager-server
