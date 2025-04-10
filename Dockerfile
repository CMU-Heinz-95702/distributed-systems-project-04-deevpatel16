# Use a Linux image with Tomcat 10
FROM tomcat:10.1.0-jdk16-openjdk-slim-bullseye

# Set environment variables for Java and Tomcat
ENV JAVA_HOME=/usr/local/openjdk-16
ENV CATALINA_HOME=/usr/local/tomcat
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy the ROOT.war file into the webapps directory of Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Expose port 8080 for HTTP
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
