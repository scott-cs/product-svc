FROM tomcat:9.0.78-jre11-temurin-focal

COPY common/contrast.jar /usr/local/tomcat/lib/

COPY target/product-svc-1.0.war /usr/local/tomcat/webapps/product-svc.war

EXPOSE 8080

ENV CATALINA_OPTS="-javaagent:/usr/local/tomcat/lib/contrast.jar"
CMD ["catalina.sh", "run"]
