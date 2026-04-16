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
        stage('Install Docker') {
            steps {
                sh 'sudo apt update -y'
                sh 'sudo apt install -y docker.io'
                sh 'sudo systemctl start docker.service'
                sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'docker --version'
            }
        }
        stage('Lancer conteneur') {
            steps {
                sh 'sudo docker stop monsite || true'
                sh 'sudo docker rm monsite || true'
                sh 'sudo docker run -d --name monsite --hostname monsite nginx:latest'
                sh 'docker ps'
            }
        }
    }
}
