#FROM maven:3.6
FROM ubuntu:20.04
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install openjdk-8-jdk maven git -y
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /app/boxfuse-sample-java-war-hello
RUN mvn package
RUN mv target/hello-1.0.war ROOT.war
