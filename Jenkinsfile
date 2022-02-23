
def user
node {
  wrap([$class: 'BuildUser']) {
    user = env.BUILD_USER_ID
  }
  
  emailext mimeType: 'text/html',
                 subject: "[Jenkins]${currentBuild.fullDisplayName}",
                 to: "valentine.akem@nexgbits.com",
                 body: '''<a href="${BUILD_URL}input">click to approve</a>'''
}

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
                    sh 'terraform --version'
                    sh 'terraform init'
                }

        } 
        stage('TF Plan') {
            // when {
            //     branch 'plan'
            // }
            steps {
                sh 'terraform plan'
                }    
         }
        // stage ('Send Aproval Email') {
        //     steps {
        //         mail(
        //         body: "Hi ${currentBuild.fullDisplayName}, please kindly login and approve the pipeline build stage. Link to pipeline  ${env.BUILD_URL} has result ${currentBuild.result}", 
        //         cc: "", 
        //         from: "valentine.akem@nexgbits.com", 
        //         replyTo: "valentine.akem@nexgbits.com", 
        //         subject: "Test email using mailer", 
        //         to: "valentine.akem@nexgbits.com"
        //         )
        //     }
        // }
        stage('TF Apply') {
            input {
                message "Should we continue?"
                ok "Yes"
            }
            // when {
            //     branch 'main'
            // }
            steps {
                sh 'terraform apply -auto-approve'
                }    
         }

        stage('TF Destroy') {
            // when {
            //     branch 'destroy'
            // }
            steps {
                sh 'terraform destroy -auto-approve'
                sh 'echo Destroy completed'
                }    
         }
    }
}
