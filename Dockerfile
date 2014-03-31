FROM ubuntu:lucid
MAINTAINER progrium progrium@gmail.com

RUN apt-get update && apt-get install python-software-properties -y
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update && apt-get install git-core rubygems -y
RUN mkdir /build
ADD ./stack/ /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN apt-get install curl -y
RUN apt-get clean
