FROM centos:6.4
MAINTAINER lucas@rufy.com

RUN mkdir /build
ADD ./stack/ /build
RUN /build/prepare
