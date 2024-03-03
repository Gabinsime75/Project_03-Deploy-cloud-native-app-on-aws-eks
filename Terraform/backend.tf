terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket         = "three-tier-proj-bucket"
    region         = "us-east-1"
    key            = "End-to-End-DevSecOps-Kubernetes-Three-Tier-Project/Terraform/terraform.tfstate"
    dynamodb_table = "mystatefilelockDB"
    encrypt        = true
  }

}