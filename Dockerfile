FROM tomcat:8.5.47-jdk8-openjdk
COPY ./usr/local/tomcat/webapps
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
