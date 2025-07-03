pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')   
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')   
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Seetharamj/terraform-jenkins-project.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        failure {
            echo '❌ Build failed due to an error in Terraform code.'
        }
        success {
            echo '✅ Terraform deployment succeeded!'
        }
    }
}
