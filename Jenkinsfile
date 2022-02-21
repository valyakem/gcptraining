pipeline {
    agent any

    stages {

        stage ('Checkout') {
            steps {
                    checkout([$class: 'GitSCM', 
                    branches: [[name: '*/main']], 
                    extensions: [], 
                    userRemoteConfigs: [[credentialsId: 'githubpassword', 
                    url: 'https://github.com/valyakem/gcptraining.git']]]);

                    sh 'echo terraform --version'
                }

        } 
        stage('plan') {
            steps {
                sh 'terraform plan -auto-approve'
            }
        }
    }
}