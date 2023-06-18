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
        
        stage('Deploy') {
            steps {
                sh 'mvn deploy'
            }
        }
    }
}
