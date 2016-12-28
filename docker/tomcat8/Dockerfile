FROM kazaddyne/jdk8
MAINTAINER Azaddyne Kamal < kazaddyne [at] gmail {dot} com>

# Use IPv4 by default and UTF-8 encoding. These are almost universally useful.
ENV JAVA_OPTS -Djava.net.preferIPv4Stack=true -Dfile.encoding=UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV CATALINA_HOME /opt/tomcat

RUN java -version

# tomcat 8 conf
RUN wget http://mirrors.ircam.fr/pub/apache/tomcat/tomcat-8/v8.5.9/bin/apache-tomcat-8.5.9.tar.gz
RUN tar xvzf apache-tomcat-8.5.9.tar.gz
RUN mv apache-tomcat-8.5.9 /opt/tomcat
RUN echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> /etc/environment
RUN echo 'export CATALINA_HOME=/opt/tomcat' >> /etc/environment

RUN /bin/bash -c "source /etc/environment"

RUN echo $JAVA_HOME
RUN echo $CATALINA_HOME


ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

# Expose HTTP
EXPOSE 8080

CMD ["/run.sh"]

