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
            when {
                branch 'plan'
            }
            steps {
                sh 'terraform plan -out myplan'
                }    
         }

        stage('TF Apply') {
            when {
                branch 'main'
            }
            steps {
                sh 'terraform apply -auto-approve'
                }    
         }
    }
}