# Use OpenJDK 8 Alpine base
FROM openjdk:8-jdk-alpine

# Optional: temp volume
VOLUME /tmp

# Copy the JAR built by Maven from target folder
COPY target/mythical-mysfits-1.0-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
