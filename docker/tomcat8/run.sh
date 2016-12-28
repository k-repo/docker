#!/bin/bash

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

date
#sleep 25
date

./$CATALINA_HOME/bin/startup.sh && tail -f /opt/tomcat/logs/catalina.out
