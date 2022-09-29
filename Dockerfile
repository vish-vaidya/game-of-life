FROM tomcat:8.5.47-jdk8-openjdk
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
