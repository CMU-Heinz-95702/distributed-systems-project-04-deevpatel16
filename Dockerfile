FROM tomcat:9.0-jdk11

# Copy the WAR file to Tomcat's webapps directory
COPY ./target/BookService-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/BookService.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
