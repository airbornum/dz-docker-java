MAINTAINER Yevhen Khadzhamov
FROM ubuntu:20.04
RUN apt update
RUN apt install openjdk-8-jdk -y
RUN apt install maven git -y
RUN git clone https://gitlab.com/nanuchi/java-maven-app.git
WORKDIR ./java-maven-app
RUN mvn package
ENTRYPOINT ["java", "-jar", "target/java-maven-app-1.1.0-SNAPSHOT.jar"]
