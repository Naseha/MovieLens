pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                   credentialsId: 'github-pat', 
                   url: 'https://github.com/Naseha/MovieLens.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t naseha/movielens:latest .'  
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'naseha', passwordVariable: 'AlMughnee1!')]) {
                    sh 'docker login -u $naseha -p $AlMughnee1!'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker push naseha/movielens:latest' 
            }
        }
    }
}
