FROM openjdk:18-alpine
WORKDIR /app
COPY target/*.jar /app/university_service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/university_service.jar"]