# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-17 AS build


# Copy the Maven project files to the container
COPY src app/src
COPY pom.xml app/
# Set the working directory inside the container
WORKDIR /app

# Run Maven to download dependencies and package the application
RUN mvn clean package

# Default command to run Maven
#CMD ["mvn", "clean", "install"]

FROM openjdk:17-jdk-slim
# Set the working directory inside the container
COPY --from=build /app/target/*.jar /app/app.jar
# Use an official OpenJDK image as the base image for running the application

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]