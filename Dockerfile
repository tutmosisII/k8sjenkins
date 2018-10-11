FROM jenkins/jenkins:2.146-alpine
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
COPY master-executors.groovy /usr/share/jenkins/ref/init.groovy.d/
