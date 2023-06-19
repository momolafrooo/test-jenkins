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
        
        stage('Nexus deploy') {
            steps {
                nexusArtifactUploader artifacts: [[artifactId: 'mouhamedfall', classifier: '', file: 'target/mohamedfall-0.0.2-SNAPSHOT.war', type: 'war']], credentialsId: 'nexus', groupId: 'com.groupeisi.m2gl', nexusUrl: '13.53.89.207:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '0.0.2-SNAPSHOT'
            }
        }
    }
}

