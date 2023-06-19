# Use a base image with Java 11 installed
FROM adoptopenjdk:11-jdk-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/mohamedfall-0.0.2-SNAPSHOT.war app.war

# Expose the port your application listens on
EXPOSE 8080

# Set any necessary environment variables
ENV SPRING_PROFILES_ACTIVE=production

# Run the Spring Boot application when the container starts
CMD ["java", "-war", "app.war"]

