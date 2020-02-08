pipeline {
    agent any

    stages {
        stage('Build base image') {
            steps {
                sh 'apt-get install build-essential'
                sh 'make build-base'
            }
        }
    }
}