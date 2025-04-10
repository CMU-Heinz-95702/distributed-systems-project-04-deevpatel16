# Use a Linux image with Tomcat 10
FROM tomcat:10.1.0-jdk16-openjdk-slim-bullseye

# Copy the ROOT.war file into the webapps directory of Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Expose port 8080 for HTTP
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
