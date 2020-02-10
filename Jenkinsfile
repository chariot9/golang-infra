pipeline {
    agent any

    stages {

        stage('pr-hack') {
            when { changeRequest() }
            steps {
                script {
                    echo "Workaround for PR auto-cancel feature. Borrowed from https://issues.jenkins-ci.org/browse/JENKINS-43353"
                    def buildNumber = env.BUILD_NUMBER as int
                    if (buildNumber > 1) milestone(buildNumber - 1)
                    milestone(buildNumber)
                }
            }
        }

        stage("Print info") {
            steps {
                sh 'docker version'
                sh 'docker info'
            }
        }

        stage('Build base image') {
            steps {
                sh 'make build-base'
            }
        }

        stage('Unit test') {
          steps {
            sh 'make build-test'
            sh 'make unit-test'
            sh 'ls'
            junit 'report/report.xml'
          }
        }

        stage('Build image') {
          steps {
            sh 'make release'
          }
        }
    }
}