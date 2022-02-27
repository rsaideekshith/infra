provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
      bucket = "devops-grooming"
      region = "ap-south-1"
      key = "mystate.tfstate"
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
