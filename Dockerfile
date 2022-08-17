FROM Tomcat:8-Jre11
LABEL "name" "app1"
COPY ./target/*.jar ./webapps/*.jar
WORKDIR ./apps
CMD ["java","-jar","app.jar"]
