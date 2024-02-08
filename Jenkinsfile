pipeline {
    agent any
    parameters{
        choice(choices:["firefox","chrome"],description:"Which bowser?",name:"browser")
    }
    stages {
        stage('Build and Deploy') {
            steps {
                sh "docker compose run -e BROWSER=${params.browser} app"
            }
        }
    }
}