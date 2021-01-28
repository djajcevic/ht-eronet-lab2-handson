#FROM maven:3.6-jdk-11
#VOLUME /root/.m2
#COPY . /project
#WORKDIR /project
#RUN mvn clean install
FROM openjdk:11
COPY target/*.jar app.jar
CMD ["java", "-jar", "app.jar"] 
