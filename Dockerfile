FROM tomcat:9.0.78-jre11-temurin-focal

COPY ./target/product-svc.war /usr/local/tomcat/webapps/product-svc.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
