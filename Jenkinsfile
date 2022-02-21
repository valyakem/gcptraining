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

                    sh 'terraform --version'
                    sh 'terraform init'
                }

        } 
        stage('TF Plan') {
            when {
                branch 'plan'
            }
            steps {
<<<<<<< HEAD
<<<<<<< Updated upstream
                sh 'terraform plan -out myplan'
=======
                sh 'terraform plan'
>>>>>>> Stashed changes
=======
                sh 'terraform plan'
>>>>>>> 00b68aa0fc6847f5275e2ce6790deb8a2514cccb
                }    
         }

        stage('TF Apply') {
            when {
                branch 'main'
            }
            steps {
                sh 'terraform apply -auto-approve'
                sh 'terraform destroy'
<<<<<<< HEAD
=======
                }    
         }

        stage('TF Destroy') {
            when {
                branch 'destroy'
            }
            steps {
                sh 'echo destroy files'
                sh 'terraform init'
                sh 'terraform destroy -auto-approve'
>>>>>>> 00b68aa0fc6847f5275e2ce6790deb8a2514cccb
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
