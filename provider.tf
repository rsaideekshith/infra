provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
      bucket = "devops-grooming"
      region = "ap-south-1"
      key = "mystate.tfstate"
      # dynamodb_table = "mydynamo-tf-state-lock"
}
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
