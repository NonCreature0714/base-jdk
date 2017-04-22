FROM jboss/base:latest
LABEL maintainer.name="Marek Goldmann" \
      maintainer.email="mgoldman@redhat.com"

# User root user to install software
USER root

# Install necessary packages
RUN yum -y install java-1.7.0-openjdk-devel && yum clean all

# Switch back to jboss user
USER jboss

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
