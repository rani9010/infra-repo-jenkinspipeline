pipeline {
    agent { label 'INFRA' }

    stages {
        stage('Git Checkout') {
            steps {
                git(
                    url: 'https://github.com/rani9010/infra-repo-jenkinspipeline',
                    branch: 'main'
                )
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

        stage('Terraform Format') {
            steps {
                sh 'terraform fmt'
            }
        }

        stage('Infra Scan') {
            steps {
                sh 'terraform scan' // You may want to replace this with tfsec or checkov
            }
        }

        stage('Lint') {
            steps {
                sh 'tflint'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
