pipeline {
    agent any 
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }
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
                bat 'start /B cmd /C docker build -t naseha/movielens:latest .'  
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'naseha', passwordVariable: 'AlMughnee1!')]) {
                    bat 'start /B cmd /C docker login -u %naseha% -p %AlMughnee1%!'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                bat 'start /B cmd /C docker push naseha/movielens:latest' 
            }
        }
    }
}
