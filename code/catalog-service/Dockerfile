FROM openjdk:8-jre-slim

COPY build/libs/catalog-service-0.0.1-SNAPSHOT.jar /opt/app/

EXPOSE 8080

ENV SPRING_PROFILES_ACTIVE=set_at_command_line

ENTRYPOINT ["java", "-jar", "/opt/app/catalog-service-0.0.1-SNAPSHOT.jar"]
