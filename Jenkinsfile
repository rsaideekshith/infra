pipeline {
  agent any
  tools {
      terraform "Terraform1.0.0"
  }
  environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIAQJC5LZFL5N4RLMYZ')
        AWS_SECRET_ACCESS_KEY = credentials('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')
        TF_IN_AUTOMATION      = '1'
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
        sh label: '', script: 'terraform apply --var-file = def.tfvars'
      }
    }
  }
}