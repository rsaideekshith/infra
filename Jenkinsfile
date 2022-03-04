pipeline {
  agent any
  tools {
      terraform "Terraform-1.1.6"
  }

  stages {
    stage('Git Checkout') {
      steps {
        git branch: 'main', credentialsId: 'gitHUB', url: 'git@github.com:rsaideekshith/infra.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh label: '', script: 'terraform init'
      }
    }
    
    stage('Terraform apply') {
      steps {
        sh label: '', script: 'terraform apply --auto-approve'
      }
    }
  }
}