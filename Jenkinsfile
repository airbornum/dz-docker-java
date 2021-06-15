pipeline {
    agent any

    stages {

    stage('Build image') {
        sh "docker build -t airbornum/java-app-docker:latest ."
    }
    stage('Push image') {
        sh "docker push airbornum/java-app-docker:latest"
  }
 } 
}
