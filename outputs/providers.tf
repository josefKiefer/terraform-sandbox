terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.terraform_sandbox_aws_access_key
  secret_key = var.terraform_sandbox_aws_secret_key
}
