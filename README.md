#   Selenium Webdriver with Docker

Selenuium 4.1.0

## Running tests using Jar file
`mvn clean package -DskipTests`

`cd target`
### Windows
**(Selenium grid must be running)**

`java -cp "selenium-docker.jar;selenium-docker-tests.jar;libs/*" org.testng.TestNG ../search-module.xml`

`java -cp "selenium-docker.jar;selenium-docker-tests.jar;libs/*" -DBROWSER=firefox org.testng.TestNG ../search-module.xml`
## Running using Maven surefire plugin
`mvn test`

## Docker commands
### Dockerfile.surefireplugin
Build image
`docker build -t selenium-docker -f Dockerfile.surefireplugin .`

Run container
`docker run selenium-docker mvn -f /code/pom.xml test -D HUB_HOST=192.168.100.7`

Enter container
`docker run -it --entrypoint=/bin/sh selenium-docker`

Run tests inside container **(Selenium Server must be running)**
`mvn test -DHUB_HOST=192.168.100.7`

### Dockerfile
Build image
`docker build -t selenium-docker-jars -f Dockerfile .`

Run container
`docker run -e HUB_HOST=192.168.100.7 -e MODULE=testng.xml selenium-docker-jars`

Enter container
`docker run -it --entrypoint=/bin/sh selenium-docker-jars`

Run tests inside container **(Selenium Server must be running)**
`java -cp selenium-docker.jar:selenium-docker-tests.jar:libs/* -DHUB_HOST=192.168.100.7 org.testng.TestNG search-module.xml`

Map Test Output
`docker run -e HUB_HOST=192.168.100.7 -e MODULE=testng.xml -v /target/test-output:/usr/share/code/test-output selenium-docker-jars`