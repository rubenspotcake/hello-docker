# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-17 AS build

#Set the working directory inside the container
WORKDIR /app/hello-docker

# Copy the Maven project files to the container
COPY src ./src
COPY pom.xml .

# Run Maven to download dependencies and package the application
RUN mvn clean package

# Default command to run Maven
#CMD ["mvn", "clean", "install"]

FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app/hello-docker

#Copy the JAR file from the build stage
COPY --from=build /app/hello-docker/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
