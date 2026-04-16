pipeline {
    agent any
    stages {
        stage('Nettoyage') {
            steps {
                cleanWs()
            }
        }
        stage('Clone GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/nteyyn-cyber/b3depotgithub.git'
            }
        }
        stage('Build image Docker') {
            steps {
                sh 'docker build -t mon-apache2 .'
            }
        }
        stage('Déployer conteneur') {
            steps {
                sh 'docker stop monsite || true'
                sh 'docker rm monsite || true'
                sh 'docker run -d --name monsite --hostname monsite -p 80:80 mon-apache2'
                sh 'docker ps'
            }
        }
    }
}
