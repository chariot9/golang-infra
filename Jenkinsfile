pipeline {
    agent any

    stages {
        stage('Build base image') {
            steps {
                sh 'bash hack/make.sh'
            }
        }
    }
}