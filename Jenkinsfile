pipeline {
    agent any

    stages {
        stage('Terraform init') {
            steps {
                sh 'cd roboshop-shell-scripting ; terraform init'
            }
        }

         stage('Destroy') {
             steps {
                sh '''
                 cd roboshop-shell-scripting
                 terraform destroy -auto-approve
                 '''
             }
         }
    }
}