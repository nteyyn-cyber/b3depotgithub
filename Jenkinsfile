pipeline {
    agent any
    stages {
        stage('Nettoyage workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Clone Git') {
            steps {
                sh "git clone https://github.com/nteyyn-cyber/b3depotgithub.git"
            }
        }
        stage('Vérification') {
            steps {
                sh "ls -la b3depotgithub/"
                sh "echo Build terminé avec succès !"
            }
        }
    }
}
