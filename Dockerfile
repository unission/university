FROM openjdk:18-alpine
WORKDIR /app
COPY target/*.jar /app/university_service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "-DPOSTGRES_USER=admin", "-DPOSTGRES_PASSWORD=root", "-DPOSTGRES_DB=university_db", "/app/university_service.jar"]