FROM tomcat:8.5-jdk8-openjdk

RUN apt-get update && apt-get install -y maven

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY . /usr/local/tomcat/

WORKDIR /usr/local/tomcat

RUN mvn clean package

COPY /usr/local/tomcat/target/business-manager-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]
