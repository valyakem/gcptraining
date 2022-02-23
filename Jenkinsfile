pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'githubpassword', url: 'https://github.com/valyakem/gcptraining']]]) 
            }
        }
        
        stage("Terraform Init"){
            steps{
                sh ('terraform init');
            }
        }
        stage("Terraform Action"){
            steps{
                sh ("terraform plan");
            }
        }
    }
}







// pipeline {
//     agent any

//     stages {

//         stage ('Checkout') {
//             steps {
//                     checkout([$class: 'GitSCM', 
//                     branches: [[name: '*/main']], 
//                     extensions: [], 
//                     userRemoteConfigs: [[credentialsId: 'githubpassword', 
//                     url: 'https://github.com/valyakem/gcptraining.git']]]);

//                     sh 'echo terraform --version'
//                     sh 'terraform --version'
//                     sh 'terraform init'
//                 }

//         } 
//         stage('TF Plan') {
//             steps {
//                 if (CURRENT_BRANCH == 'plan') {
//                     sh 'terraform plan'
//                     }
//                 else if(CURRENT_BRANCH == 'main') {
//                     sh 'terraform apply'
//                 }
//                 else {
//                     sh 'terraform destroy'
//                 }



                
//             }    
//          }
//         // stage ('Send Aproval Email') {
//         //     steps {
//         //         mail(
//         //         body: "Hi ${currentBuild.fullDisplayName}, please kindly login and approve the pipeline build stage. Link to pipeline  ${env.BUILD_URL} has result ${currentBuild.result}", 
//         //         cc: "", 
//         //         from: "valentine.akem@nexgbits.com", 
//         //         replyTo: "valentine.akem@nexgbits.com", 
//         //         subject: "Test email using mailer", 
//         //         to: "valentine.akem@nexgbits.com"
//         //         )
//         //     }
//         // }
//         // stage('TF Apply') {
//         //     input {
//         //         message "Should we continue?"
//         //         ok "Yes"
//         //     }
//         //     // when {
//         //     //     branch 'main'
//         //     // }
//         //     steps {
//         //         sh 'terraform apply -auto-approve'
//         //         }    
//         //  }

//         // stage('TF Destroy') {
//         //     // when {
//         //     //     branch 'destroy'
//         //     // }
//         //     steps {
//         //         sh 'terraform destroy -auto-approve'
//         //         sh 'echo Destroy completed'
//         //         }    
//         //  }
//     }
// }
