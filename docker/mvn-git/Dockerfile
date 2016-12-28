FROM kazaddyne/jdk8
MAINTAINER Azaddyne Kamal < kazaddyne [at] gmail {dot} com>

# install nano 
# (my prefered text editor xD)
# you may need it to edit your poms
RUN apt-get install nano -y
RUN nano --version

# maven install and auto accept
# install directory /usr/share/maven
# maven conf files are stored in /etc/maven
RUN apt-get install maven -y
RUN mvn -version

# git install and auto accept
RUN apt-get install git -y
RUN git --version
