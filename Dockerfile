FROM openjdk:8u191-jre-alpine3.8

# Workspace
WORKDIR /usr/share/code

# Add .jar under target from host
# into this image
ADD target/selenium-docker.jar selenium-docker.jar
ADD target/selenium-docker-tests.jar selenium-docker-tests.jar
ADD target/libs libs

# in case of any other depandency like .csv .json .xls
# please ADD that as well
ADD book-flight-module.xml book-flight-module.xml
ADD search-module.xml search-module.xml
ADD testng.xml testng.xml

ENTRYPOINT java -cp selenium-docker.jar:selenium-docker-tests.jar:libs/* -DBROWSER=$BROWSER -DHUB_HOST=$HUB_HOST  org.testng.TestNG $MODULE

