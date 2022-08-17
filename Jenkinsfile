pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                echo 'Hello World'
            }
        }
        stage('maven_build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('build && SonarQube analysis') {
            steps {
                withSonarQubeEnv('My SonarQube Server') {
                    // Optionally use a Maven environment you've configured already
                    withMaven(maven:'Maven 3.5') {
                        sh 'mvn clean package sonar:sonar'
                    }
                }
            }
        }
        stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        stage('build the docker image') {
            steps {
                echo 'Hello World'
            }
        }
        stage('push to artifact') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
