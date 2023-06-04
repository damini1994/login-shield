#!groovy
pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
               sh 'docker build -t nodejs/mynodejs:latest .'
            }
        }
    }

        stages {
        stage('Container Start) {
            steps {
               sh 'docker run -d -p 80:3000 nodejs/mynodejs:latest'
            }
        }
    }
}
