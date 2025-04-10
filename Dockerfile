# Use a Linux image with Tomcat 10
FROM tomcat:10.1-jdk21-temurin

# Copy the ROOT.war file into the webapps directory of Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Start Tomcat
CMD ["catalina.sh", "run"]
