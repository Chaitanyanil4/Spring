
# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at the specified path
COPY  target/demoGit-0.0.1-SNAPSHOT.jar /app/demoGit-0.0.1-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 8080

# Specify the command to run on container start
CMD ["java", "-jar", "demoGit-0.0.1-SNAPSHOT.jar"]

