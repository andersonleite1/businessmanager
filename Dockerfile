FROM maven:3.8.5-openjdk-17 AS build

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo pom.xml e outros arquivos necessários para o build
COPY pom.xml /app/
COPY src /app/src
COPY init.sh /app/

# Executa o comando de build
RUN mvn clean package

# Usa uma imagem Tomcat com OpenJDK 17 como a base para executar a aplicação
FROM tomcat:9.0-jdk17-openjdk

# Remove a aplicação padrão ROOT
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia o arquivo WAR construído para o diretório webapps do Tomcat
COPY --from=build /app/target/business-manager-0.0.1.war /usr/local/tomcat/webapps/business-manager.war

# Exponha a porta 8080 e 80
EXPOSE 8080 80

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]
