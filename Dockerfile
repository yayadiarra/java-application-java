FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080
LABEL maintainer="yaya@gmail.com"
COPY target/*.jar /maven/yannick.jar
CMD ["java", "-jar","spring-boot-0.0.1-SNAPSHOT.jar"]
