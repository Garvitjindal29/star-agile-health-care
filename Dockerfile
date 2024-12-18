FROM openjdk:11

# Set the location of the JAR file as an argument
ARG JAR_FILE=target/*.jar

# Ensure that the JAR file exists and copy it into the image
COPY ${JAR_FILE} app.jar

# Run the application when the container starts
ENTRYPOINT ["java", "-jar", "/app.jar"]
