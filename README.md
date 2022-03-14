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