# Use a Linux image with Tomcat 10
FROM tomcat:11.0.0-M24-jdk21-temurin-noble

# Copy the ROOT.war file into the webapps directory of Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Start Tomcat
CMD ["catalina.sh", "run"]
