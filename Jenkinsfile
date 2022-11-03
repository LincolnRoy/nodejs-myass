pipeline {
    agent any
    tools {
  terraform 'Terraform'
}


    stages {
        stage('Git checkout') {
           steps {
                git branch: 'main', credentialsId: '6dab4611-fc67-4d25-aa00-8e0e207f3c83', url: 'https://github.com/LincolnRoy/nodejs-myass.git'
            }
        }
        
        stage('terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }    
}
