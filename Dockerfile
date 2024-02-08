FROM maven:3.5.3-jdk-8-alpine

WORKDIR /code

COPY src src
COPY pom.xml .
COPY testng.xml .

ENTRYPOINT mvn clean test -DBROWSER=$BROWSER -DHUB_HOST=$HUB_HOST