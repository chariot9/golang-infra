pipeline {
    agent any

    stages {
        stage('Build base image') {
            steps {
                sh 'ls'
                sh 'which make'
                sh 'make build-base'
            }
        }
        stage('Unit tests') {
            steps {
                sh 'make unit-test'
            }
        }
        stage('Build image') {
            steps {
                sh 'make build'
            }
        }
    }
}