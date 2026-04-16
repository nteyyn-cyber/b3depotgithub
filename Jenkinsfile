pipeline {
    agent any
    stages {
        stage('Nettoyage workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Clone GitHub') {
            steps {
                sh "git clone https://github.com/nteyyn-cyber/b3depotgithub.git"
            }
        }
        stage('Vérification Docker') {
            steps {
                sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'docker --version'
                sh 'docker ps'
            }
        }
        stage('Lancer conteneur nginx') {
            steps {
                sh 'docker stop monsite || true'
                sh 'docker rm monsite || true'
                sh 'docker run -d --name monsite --hostname monsite nginx:latest'
                sh 'docker ps'
            }
        }
    }
}
