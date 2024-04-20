pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Naseha/MovieLens.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t movielens:latest .'
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'naseha', passwordVariable: 'AlMughnee1!')]) {
                    sh 'docker login -u $naseha -p $AlMughnee1!'
                }
            }
        }
        // ... Tagging and Push Stages... 
        stage('Pull and Run') { // Optional
            steps {
                sh 'docker pull your_dockerhub_username/movielens:latest'
                sh 'docker run -d -p 8888:8888 your_dockerhub_username/movielens:latest'
            }
        }
    }
}
