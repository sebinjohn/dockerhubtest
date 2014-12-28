FROM ubuntu:14.04
RUN apt-get -y install wget && apt-get -y update
RUN wget downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb
RUN apt-get -y install libsqlite3-dev
RUN apt-get -y install docker.io
