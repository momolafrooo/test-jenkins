pipeline {
    agent any

    tools {
        maven "maven 3.9.2"
        dockerTool "Docker"
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
                script {
                    withDockerRegistry(toolName: 'Docker') {
                        sh 'docker build -t momolafrooo/test-jenkins:latest .'
                    }
                }
            }
        }
    }
}

