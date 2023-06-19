pipeline {
    agent any

    tools {
        maven "maven 3.9.2"
    }
    
    stages {
        
        stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
        
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Build docker image') {
            steps {
                sh 'docker build -t momolafrooo/test-jenkins:latest .'
            }
        }
    }
}
