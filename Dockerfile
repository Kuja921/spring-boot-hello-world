FROM openjdk:8-jdk-alpine
RUN cd ../..
ARG JAR_FILE=home/runner/work/spring-boot-hello-world/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080