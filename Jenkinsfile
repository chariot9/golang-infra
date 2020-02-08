pipeline {
    agent any

    stages {
        stage('Build base image') {
            steps {
                sh 'sudo apt-get install build-essential'
                sh 'make build-base'
            }
        }
    }
}