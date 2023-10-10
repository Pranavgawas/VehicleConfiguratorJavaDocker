FROM openjdk:17-alpine
WORKDIR /myapp
ENV port=8080
EXPOSE 8080
COPY target/*.jar /myapp/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar