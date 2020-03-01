FROM tomcat:9.0

ADD boxfuse1/target/hello-1.0.war $CATALINA_HOME/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
