# Start with a base image containing Java runtime
FROM openjdk:11-jre-slim

# Add Maintainer Info
LABEL maintainer="abhoygorai04@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8090

# The application's jar file (when packaged)
ARG JAR_FILE=target/*.jar

# Copy the application's jar to the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
