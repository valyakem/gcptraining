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
<<<<<<< Updated upstream
                sh 'terraform plan -out myplan'
=======
                sh 'terraform plan'
>>>>>>> Stashed changes
                }    
         }

        stage('TF Apply') {
            steps {
                sh 'terraform apply -auto-approve'
                sh 'terraform destroy'
                }    
         }
         
<<<<<<< Updated upstream
=======

        stage('TF Destroy') {
            when {
                branch 'destroy'
            }
            steps {
                sh 'echo destroy files'
                sh 'terraform destroy -auto-approve'
                }    
         }
>>>>>>> Stashed changes
    }
}