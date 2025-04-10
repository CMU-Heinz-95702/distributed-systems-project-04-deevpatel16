# Use the official OpenJDK 21 image as base
FROM openjdk:21-slim

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-21
ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$JAVA_HOME/bin:$PATH

# Install Tomcat (you can change the version if needed)
RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz -P /tmp
RUN tar xzvf /tmp/apache-tomcat-9.0.62.tar.gz -C /opt && mv /opt/apache-tomcat-9.0.62 /opt/tomcat

# Expose Tomcat's port
EXPOSE 8080

# Copy the ROOT.war file to Tomcat's webapps directory
COPY ROOT.war $CATALINA_HOME/webapps/ROOT.war

# Set the working directory to Tomcat
WORKDIR $CATALINA_HOME

# Run Tomcat when the container starts
CMD ["bin/catalina.sh", "run"]
