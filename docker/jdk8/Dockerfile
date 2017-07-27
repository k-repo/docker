FROM ubuntu:xenial
MAINTAINER Azaddyne Kamal < kazaddyne [at] gmail {dot} com>

ENV http_proxy 'http://proxy:3128'
ENV https_proxy 'http://proxy:3128'
ENV HTTP_PROXY 'http://proxy:3128'
ENV HTTPS_PROXY 'http://proxy:3128'

# proxy settings
RUN echo 'Acquire::http::proxy "http://proxy:3128/";' >> /etc/apt/apt.conf
RUN echo 'Acquire::https::proxy "https://proxy:3128/";' >> /etc/apt/apt.conf

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# always make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu xenial main universe" > /etc/apt/sources.list
RUN apt-get update 
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update && apt-get -y upgrade

# automatically accept oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# and install java 8 oracle jdk
RUN apt-get -y install oracle-java8-installer && apt-get clean
RUN update-alternatives --display java
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/environment

RUN java -version
