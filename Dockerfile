# Start with the official Tomcat 10 image
FROM tomcat:10.1.0-jdk17-openjdk-slim-bullseye

# Install OpenJDK 21
RUN apt-get update && apt-get install -y \
    openjdk-21-jdk \
    && rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME and PATH to point to the newly installed OpenJDK 21
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Set Tomcat home directory
ENV CATALINA_HOME=/usr/local/tomcat

# Copy the ROOT.war file into the webapps directory of Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Expose port 8080 for HTTP
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
