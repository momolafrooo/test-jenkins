node {

    // environment {
    //     DOCKER_IMAGE_NAME = 'momolafrooo/test-jenkins'
    //     DOCKER_IMAGE_TAG = 'latest'
    // }

    // stage('Checkout') {
    //     // Checkout the source code from the GitHub repository
    //     git 'https://github.com/momolafrooo/test-jenkins.git'
    // }

    stage('Clean') {
        sh 'mvn clean'
    }
    
    stage('Package') {
        sh 'mvn package'
    }

    stage('Test') {
        sh 'mvn test'
    }
    
    stage('Deploy') {
        sh 'mvn deploy'
    }

    // stage('Build Docker Image') {
    //     // Build the Docker image using the Dockerfile in the project
    //     docker.build(DOCKER_IMAGE_NAME + ':' + DOCKER_IMAGE_TAG, '.')
    // }

    // stage('Push Docker Image') {
    //     // Push the Docker image to Docker Hub
    //     withCredentials([string(credentialsId: DOCKER_HUB_CREDENTIALS, variable: 'DOCKER_HUB_CREDENTIALS')]) {
    //         docker.withRegistry('', 'dockerhub') {
    //             sh 'docker push ' + DOCKER_IMAGE_NAME + ':' + DOCKER_IMAGE_TAG
    //         }
    //     }
    // }
}
