# Use uma imagem base de Tomcat 8.5 com JDK 8
FROM tomcat:8.5-jdk8-openjdk

# Remova o aplicativo de exemplo do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copie o arquivo WAR gerado pela sua aplicação para o Tomcat
COPY target/business-manager.war /usr/local/tomcat/webapps/ROOT.war

# Exponha a porta padrão do Tomcat
EXPOSE 8080

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]
