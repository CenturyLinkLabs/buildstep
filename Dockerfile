FROM ubuntu:lucid
MAINTAINER progrium progrium@gmail.com

RUN apt-get update && apt-get install python-software-properties -y
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update && apt-get install git-core curl rubygems libmysqlclient-dev libxml2 libxslt1.1 libfreetype6 libjpeg-dev liblcms-utils libxt6 libltdl-dev -y
RUN mkdir /build
ADD ./stack/ /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN apt-get clean
