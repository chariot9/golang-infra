pipeline {
    agent any

    stages {
        stage('Build base image') {
            steps {
                sh 'make build-base'
            }
        }
    }
}