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
        stage('TF Plan') {
            steps {
                sh 'terraform plan -out myplan'
                }    
         }

        stage('TF Plan') {
            steps {
                sh 'terraform apply myplan'
                }    
         }
    }
}