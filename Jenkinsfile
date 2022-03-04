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
    parameters {
        string(name: 'environment', defaultValue: 'default', description: 'Workspace/environment file to use for deployment')
        string(name: 'version', defaultValue: '', description: 'Version variable to pass to Terraform')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    }
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIAQJC5LZFL5N4RLMYZ')
        AWS_SECRET_ACCESS_KEY = credentials('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')
        TF_IN_AUTOMATION      = '1'
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