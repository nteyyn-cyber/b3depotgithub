pipeline {
    agent any
    stages {
        stage('Nettoyage') {
            steps {
                cleanWs()
            }
        }
        stage('Clone Git') {
            steps {
                git branch: 'main', url: 'https://github.com/TON_USERNAME/b3depogithub.git'
            }
        }
        stage('Vérification') {
            steps {
                sh 'ls -la'
                sh 'echo Build terminé !'
            }
        }
    }
}
