FROM openjdk:18-alpine
WORKDIR /app
COPY target/*.jar /app/university_service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "-DPOSTGRES_USER=${POSTGRES_USER}", "-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD}", "-DPOSTGRES_DB=${POSTGRES_DB}", "/app/university_service.jar"]