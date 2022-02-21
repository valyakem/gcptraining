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
                sh 'terraform init'
                sh 'terraform plan'
                }    
         }

        stage('TF Apply') {
            when {
                branch 'main'
            }
            steps {
                sh 'terraform apply -auto-approve'
                sh 'terraform destroy -auto-approve'
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
                }    
         }
    }
}
